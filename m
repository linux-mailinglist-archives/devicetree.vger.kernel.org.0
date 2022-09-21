Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58B4B5BFFC4
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 16:21:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230016AbiIUOVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 10:21:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230107AbiIUOVe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 10:21:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 481233ED7C
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 07:21:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D763E63098
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 14:21:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E25EC433C1;
        Wed, 21 Sep 2022 14:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1663770091;
        bh=sZuUg6MHLptQb1xH+y+4v8/pAIwRKYIeNBbcXlslgbI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Db6adK9H1qWDNCoP3x5e6eq5kaSMb403SagtmMWCT5UbHySzfBZh+UDq4mMbRaqk0
         NVM921BmggbjZ6ZX7LK4ooi4yLHKld+x+4GIyqX23E/LHm/Y4Hr9AnQR9S1MF1YO+b
         ohSPVFRe4wA/b8wCIR70IFxIAZQfd2NC6r6wd7+17sCQSBWND8Ivx7UP59nB2UkExa
         ggBWpRWwOBVIOlShZ9xqssPiNl16SiIm/+EW3LgSikxgYGLWITkHQke9/ZT1vD1oyh
         z6OAKZB3Xmjd/VhA1PiLqb8pgEDNwvHG7I2ZBbDuygbXf2+BRjuu8KVMyE8muyLofB
         crsfW2AkPNfnA==
Date:   Wed, 21 Sep 2022 22:21:23 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Li Jun <jun.li@nxp.com>, Abel Vesa <abelvesa@kernel.org>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        l.stach@pengutronix.de, marex@denx.de, peng.fan@nxp.com,
        paul.elder@ideasonboard.com, Markus.Niebel@ew.tq-group.com,
        aford173@gmail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: imx8mp: correct usb clocks
Message-ID: <20220921142123.GT1728671@dragon>
References: <1663565197-3961-1-git-send-email-jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1663565197-3961-1-git-send-email-jun.li@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Added Abel.

On Mon, Sep 19, 2022 at 01:26:37PM +0800, Li Jun wrote:
> After commit cf7f3f4fa9e5 ("clk: imx8mp: fix usb_root_clk parent"),
> usb_root_clk is no longer for suspend clock so update dts accordingly
> to use right bus clock and suspend clock.
> 
> Fixes: fb8587a2c165 ("arm64: dtsi: imx8mp: add usb nodes")
> Cc: stable@vger.kernel.org # v5.19+
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Signed-off-by: Li Jun <jun.li@nxp.com>

I just realized this patch has a hard/build dependency on define
IMX8MP_CLK_USB_SUSP.  So the patch needs to go upstream via the same
tree that the define is applied.  I guess that's Abel's i.MX clk tree?
In that case:

Acked-by: Shawn Guo <shawnguo@kernel.org>

Shawn

> ---
> change for v3:
> -  Add fixes tag, Alexander's T-b and Peng's R-b tages.
> 
> change for v2:
> - Add stable tag to apply v5.19+
> 
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
> -- 
> 2.34.1
> 
