Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1503B59F5C5
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 10:56:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235602AbiHXI4m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 04:56:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236127AbiHXI4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 04:56:38 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 219E783072
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 01:56:36 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1oQmBW-00070E-F4; Wed, 24 Aug 2022 10:56:26 +0200
Message-ID: <cee9dddeab973d8b2bebbbcbde8eb06d007758d5.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: correct usb clocks
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Li Jun <jun.li@nxp.com>, shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com
Cc:     marex@denx.de, devicetree@vger.kernel.org, peng.fan@nxp.com,
        Markus.Niebel@ew.tq-group.com, laurent.pinchart@ideasonboard.com,
        paul.elder@ideasonboard.com, linux-imx@nxp.com, aford173@gmail.com,
        linux-arm-kernel@lists.infradead.org
Date:   Wed, 24 Aug 2022 10:56:22 +0200
In-Reply-To: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
References: <1661328612-3932-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, dem 24.08.2022 um 16:10 +0800 schrieb Li Jun:
> After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> usb_root_clk is no longer for suspend clock so update dts accordingly
> to use right bus clock and suspend clock.
> 
So who is keeping IMX8MP_CLK_USB_ROOT enabled after this change? What
is clocked by this and is it safe to disable while the USB subsystem is
in working state? I see that things may still work, due to the shared
gate with the suspend clock, but we should really try to model the DT
after the HW. Especially since this is a ABI breaking change it should
be right this time, so a unused USB_ROOT clock looks very suspicious.

Regards,
Lucas

> Signed-off-by: Li Jun <jun.li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index fe178b7d063c..2f18778a057f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1169,7 +1169,7 @@ usb3_0: usb@32f10100 {
>  			reg = <0x32f10100 0x8>,
>  			      <0x381f0000 0x20>;
>  			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
> -				 <&clk IMX8MP_CLK_USB_ROOT>;
> +				 <&clk IMX8MP_CLK_USB_SUSP>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
>  			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
> @@ -1182,9 +1182,9 @@ usb3_0: usb@32f10100 {
>  			usb_dwc3_0: usb@38100000 {
>  				compatible = "snps,dwc3";
>  				reg = <0x38100000 0x10000>;
> -				clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
> +				clocks = <&clk IMX8MP_CLK_USB_ROOT>,
>  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
> -					 <&clk IMX8MP_CLK_USB_ROOT>;
> +					 <&clk IMX8MP_CLK_USB_SUSP>;
>  				clock-names = "bus_early", "ref", "suspend";
>  				interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy0>, <&usb3_phy0>;
> @@ -1211,7 +1211,7 @@ usb3_1: usb@32f10108 {
>  			reg = <0x32f10108 0x8>,
>  			      <0x382f0000 0x20>;
>  			clocks = <&clk IMX8MP_CLK_HSIO_ROOT>,
> -				 <&clk IMX8MP_CLK_USB_ROOT>;
> +				 <&clk IMX8MP_CLK_USB_SUSP>;
>  			clock-names = "hsio", "suspend";
>  			interrupts = <GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>;
>  			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_USB>;
> @@ -1224,9 +1224,9 @@ usb3_1: usb@32f10108 {
>  			usb_dwc3_1: usb@38200000 {
>  				compatible = "snps,dwc3";
>  				reg = <0x38200000 0x10000>;
> -				clocks = <&clk IMX8MP_CLK_HSIO_AXI>,
> +				clocks = <&clk IMX8MP_CLK_USB_ROOT>,
>  					 <&clk IMX8MP_CLK_USB_CORE_REF>,
> -					 <&clk IMX8MP_CLK_USB_ROOT>;
> +					 <&clk IMX8MP_CLK_USB_SUSP>;
>  				clock-names = "bus_early", "ref", "suspend";
>  				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
>  				phys = <&usb3_phy1>, <&usb3_phy1>;


