Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8F1D791EBF
	for <lists+devicetree@lfdr.de>; Mon,  4 Sep 2023 23:00:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238406AbjIDVAT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Sep 2023 17:00:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230261AbjIDVAS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Sep 2023 17:00:18 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 765A2A9
        for <devicetree@vger.kernel.org>; Mon,  4 Sep 2023 14:00:15 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9785143D;
        Mon,  4 Sep 2023 14:00:52 -0700 (PDT)
Received: from slackpad.lan (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 08FC33F793;
        Mon,  4 Sep 2023 14:00:10 -0700 (PDT)
Date:   Mon, 4 Sep 2023 21:59:08 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        airlied@gmail.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V4 6/8] ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s
 dts
Message-ID: <20230904215908.563fa139@slackpad.lan>
In-Reply-To: <20230828181941.1609894-7-macroalpha82@gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
        <20230828181941.1609894-7-macroalpha82@gmail.com>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Aug 2023 13:19:39 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

Hi,

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the EHCI and OHCI controller to the Allwinner v3s to support using
> USB in host mode.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Looks good now, and the PHY connection is correct, even though the
current code is ... interesting in this regard. It looks like the
problem is more with the sunxi MUSB glue driver, though. Anyway:

Addresses, IRQs, clocks and resets checked against the manual:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> index c87476ea31e2..e8a04476b776 100644
> --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> @@ -319,6 +319,29 @@ usbphy: phy@1c19400 {
>  			#phy-cells = <1>;
>  		};
>  
> +		ehci: usb@1c1a000 {
> +			compatible = "allwinner,sun8i-v3s-ehci", "generic-ehci";
> +			reg = <0x01c1a000 0x100>;
> +			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>;
> +			resets = <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;
> +			phys = <&usbphy 0>;
> +			phy-names = "usb";
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
> +			phys = <&usbphy 0>;
> +			phy-names = "usb";
> +			status = "disabled";
> +		};
> +
>  		ccu: clock@1c20000 {
>  			compatible = "allwinner,sun8i-v3s-ccu";
>  			reg = <0x01c20000 0x400>;

