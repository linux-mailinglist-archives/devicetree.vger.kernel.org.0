Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30D514BE4A1
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:59:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356482AbiBULe4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 06:34:56 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347794AbiBULey (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 06:34:54 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F421DF41
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 03:34:29 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 96F98482;
        Mon, 21 Feb 2022 12:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1645443267;
        bh=SQelA6LOgFYfSyw2kG9TR+wmN6lPV2msLTlidoc5R00=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=s0B0Dywrdf8UWHDZ38Jiprm5ZlqjFevuAjpzSYu/4FJGQHX7/u0NrLlA36oNjnmFv
         Xo+hSNGLqZZKG3EjbW04M0dLSigF0bctypzlI7DgfNaHRsERtgEqfBwHJR7fVJCqNE
         kdKWN/Wfm5TzB5PB92kB6yrZGAdpVgmX6/tP8VaQ=
Date:   Mon, 21 Feb 2022 13:34:18 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v2 8/9] arm64: dts: imx8mp: add GPU power domains
Message-ID: <YhN4urs6KS2m5NBC@pendragon.ideasonboard.com>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-8-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-8-l.stach@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

Thank you for the patch.

On Mon, Feb 07, 2022 at 08:25:46PM +0100, Lucas Stach wrote:
> Add the power domains for the GPUs, which do not require any interaction with
> a blk-ctrl, but are simply two PU domains nested inside a MIX domain.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 27 +++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index dc488a147d0c..9ed57171b9fc 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -503,6 +503,33 @@ pgc_usb2_phy: power-domain@3 {
>  						reg = <IMX8MP_POWER_DOMAIN_USB2_PHY>;
>  					};
>  
> +					pgc_gpu2d: power-domain@6 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MP_POWER_DOMAIN_GPU2D>;
> +						clocks = <&clk IMX8MP_CLK_GPU2D_ROOT>;
> +						power-domains = <&pgc_gpumix>;
> +					};
> +
> +					pgc_gpumix: power-domain@7 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MP_POWER_DOMAIN_GPUMIX>;
> +						clocks = <&clk IMX8MP_CLK_GPU_ROOT>,
> +							 <&clk IMX8MP_CLK_GPU_AHB>;
> +						assigned-clocks = <&clk IMX8MP_CLK_GPU_AXI>,
> +								  <&clk IMX8MP_CLK_GPU_AHB>;
> +						assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
> +									 <&clk IMX8MP_SYS_PLL1_800M>;
> +						assigned-clock-rates = <800000000>, <400000000>;
> +					};
> +
> +					pgc_gpu3d: power-domain@9 {
> +						#power-domain-cells = <0>;
> +						reg = <IMX8MP_POWER_DOMAIN_GPU3D>;
> +						clocks = <&clk IMX8MP_CLK_GPU3D_ROOT>,
> +							 <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>;
> +						power-domains = <&pgc_gpumix>;
> +					};
> +
>  					pgc_hsiomix: power-domains@17 {
>  						#power-domain-cells = <0>;
>  						reg = <IMX8MP_POWER_DOMAIN_HSIOMIX>;
> 

-- 
Regards,

Laurent Pinchart
