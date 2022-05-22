Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08C5D530627
	for <lists+devicetree@lfdr.de>; Sun, 22 May 2022 23:27:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231134AbiEVV1I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 May 2022 17:27:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347792AbiEVV1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 May 2022 17:27:02 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EAE8C2FFE3
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 14:26:58 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CB22113E;
        Sun, 22 May 2022 14:26:58 -0700 (PDT)
Received: from slackpad.lan (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4D58A3F66F;
        Sun, 22 May 2022 14:26:57 -0700 (PDT)
Date:   Sun, 22 May 2022 22:26:30 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Andrei Lalaev <andrey.lalaev@gmail.com>
Cc:     wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] arm: dts: sunxi: h3/h5: add gpio-ranges for pio and
 r_pio
Message-ID: <20220522222630.7faab948@slackpad.lan>
In-Reply-To: <20220522172018.238564-1-andrey.lalaev@gmail.com>
References: <20220522172018.238564-1-andrey.lalaev@gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 22 May 2022 20:20:19 +0300
Andrei Lalaev <andrey.lalaev@gmail.com> wrote:

> Without this property the next node can't be hogged:
> &r_pio {
> 	test_hog {
> 		gpio-hog;
> 		gpios = <0 6 GPIO_ACTIVE_HIGH>;
> 		output-high;
> 	};
> };
> And the appropriate error message:
> "requesting hog GPIO test_hog (chip 1f02c00.pinctrl, offset 6) failed, -517"
> 
> This problem occurs because the "pinctrl-sunxi" calls
> "gpiochip_add_data" that parses "gpio-ranges"
> (using "of_gpiochip_add_pin_range") and registers hogs
> (using "of_gpiochip_scan_gpios").
> So when the gpiolib tries to register hogs it can't find any ranges and
> fails.
> 
> Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
> ---
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> index d7e9f977f986..4193bf962b7d 100644
> --- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> +++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
> @@ -404,6 +404,9 @@ pio: pinctrl@1c20800 {
>  			#gpio-cells = <3>;
>  			interrupt-controller;
>  			#interrupt-cells = <3>;
> +			gpio-ranges = <&pio 0 0 22>, <&pio 64 64 17>,
> +				      <&pio 96 96 18>, <&pio 128 128 16>,
> +				      <&pio 160 160 7>, <&pio 192 192 14>;

But this is somewhat redundant information, because the pinctrl driver
knows about those values, as they are derived from the big struct
sunxi_desc_pin definition.
So wouldn't it be smarter to put a call to
gpiochip_add_pingroup_range() somewhere into the sunxi pinctrl driver,
so that it would automatically work for all SoCs?

Cheers,
Andre

>  
>  			csi_pins: csi-pins {
>  				pins = "PE0", "PE2", "PE3", "PE4", "PE5",
> @@ -937,6 +940,7 @@ r_pio: pinctrl@1f02c00 {
>  			#gpio-cells = <3>;
>  			interrupt-controller;
>  			#interrupt-cells = <3>;
> +			gpio-ranges = <&r_pio 0 352 12>;
>  
>  			r_ir_rx_pin: r-ir-rx-pin {
>  				pins = "PL11";

