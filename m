Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B7AC787A4C
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 23:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243153AbjHXVXE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 17:23:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243716AbjHXVW5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 17:22:57 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 507EFE7F
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 14:22:55 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29AC7D75;
        Thu, 24 Aug 2023 14:23:35 -0700 (PDT)
Received: from slackpad.lan (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E1713F740;
        Thu, 24 Aug 2023 14:22:52 -0700 (PDT)
Date:   Thu, 24 Aug 2023 22:21:50 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        mripard@kernel.org, jagan@edgeble.ai, heiko@sntech.de,
        uwu@icenowy.me, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, neil.armstrong@linaro.org, noralf@tronnes.org,
        samuel@sholland.org, jernej.skrabec@gmail.com, wens@csie.org,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V3 6/8] ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s
 dts
Message-ID: <20230824222150.5a0d16e3@slackpad.lan>
In-Reply-To: <20230823212554.378403-7-macroalpha82@gmail.com>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
        <20230823212554.378403-7-macroalpha82@gmail.com>
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

On Wed, 23 Aug 2023 16:25:52 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

Hi Chris,

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the EHCI and OHCI controller to the Allwinner v3s to support using
> USB in host mode.

Alright, so was it really that easy? I was afraid we left out host mode
for a reason back then ....

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> index c87476ea31e2..eb63dd274305 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> @@ -319,6 +319,25 @@ usbphy: phy@1c19400 {
>  			#phy-cells = <1>;
>  		};
>  
> +		ehci: usb@1c1a000 {
> +			compatible = "allwinner,sun8i-v3s-ehci", "generic-ehci";
> +			reg = <0x01c1a000 0x100>;
> +			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>;
> +			resets = <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;

Please add the link the PHY here:
			phys = <&usbphy 0>;
			phy-names = "usb";

> +			status = "disabled";
> +		};
> +
> +		ohci: usb@1c1a400 {
> +			compatible = "allwinner,sun8i-v3s-ohci", "generic-ohci";
> +			reg = <0x01c1a400 0x100>;
> +			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>,
> +				 <&ccu CLK_USB_OHCI0>;
> +			resets = <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;

... and here.

That would be definitely the right thing to do, but please check
whether it still works, especially OTG operation.

The addresses, clocks, resets and interrupts match the manual.

Cheers,
Andre.


> +			status = "disabled";
> +		};
> +
>  		ccu: clock@1c20000 {
>  			compatible = "allwinner,sun8i-v3s-ccu";
>  			reg = <0x01c20000 0x400>;

