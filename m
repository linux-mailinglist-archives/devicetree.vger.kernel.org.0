Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEFFB781BAF
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 02:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjHTAYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 20:24:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229899AbjHTAYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 20:24:18 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id AFC58F58A3
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 15:03:50 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EED6B1FB;
        Sat, 19 Aug 2023 15:04:30 -0700 (PDT)
Received: from slackpad.lan (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B9FAB3F64C;
        Sat, 19 Aug 2023 15:03:48 -0700 (PDT)
Date:   Sat, 19 Aug 2023 23:02:45 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        mripard@kernel.org, me@crly.cz, uwu@icenowy.me,
        samuel@sholland.org, jernej.skrabec@gmail.com, wens@csie.org,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 2/4] arm: dts: sun8i: V3s: Add pinctrl for pwm
Message-ID: <20230819230126.7a9d92df@slackpad.lan>
In-Reply-To: <20230819032105.67978-3-macroalpha82@gmail.com>
References: <20230819032105.67978-1-macroalpha82@gmail.com>
        <20230819032105.67978-3-macroalpha82@gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Aug 2023 22:21:03 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add pinctrl nodes for pwm0 and pwm1.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> index 2b76a5b8ec19..3276b3b5de19 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> @@ -414,6 +414,18 @@ mmc1_pins: mmc1-pins {
>  				bias-pull-up;
>  			};
>  
> +			/omit-if-no-ref/
> +			pwm0_pins: pwm0-pins {

Since conceptually a certain PWM only drives one output pin, I see
other DTs using singular for the names here, so:
			pwm0_pin: pwm0-pin {

The pins and function names match the manual and the driver, so that's
correct.

Cheers,
Andre.

> +				pins = "PB4";
> +				function = "pwm0";
> +			};
> +
> +			/omit-if-no-ref/
> +			pwm1_pins: pwm1-pins {
> +				pins = "PB5";
> +				function = "pwm1";
> +			};
> +
>  			spi0_pins: spi0-pins {
>  				pins = "PC0", "PC1", "PC2", "PC3";
>  				function = "spi0";

