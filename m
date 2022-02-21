Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 745504BE669
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 19:02:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356634AbiBULni (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 06:43:38 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:34934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356645AbiBULn2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 06:43:28 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29E661C908
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 03:43:04 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 83CBF482;
        Mon, 21 Feb 2022 12:43:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1645443782;
        bh=jb3qaqisCkrAvBcjPXhmh4ZGfGOuhEQj3VnPT/fa3xk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=LmfDhEuFQNeVrIpEes1jaD8tygocSr8Z+R8zXkQaiOtUyFtB20RJIRUvONElArL8h
         YTzbztLIrag28V5D12yIRQeBug+qpS4+sJOsuHMov0UEKKfI+fmzulcaMkVVdROHgp
         bJ69UfLYn/LIG+JfeeFCpOHUfo681/szXI2strzg=
Date:   Mon, 21 Feb 2022 13:42:53 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v2 9/9] arm64: dts: imx8mp: add GPU nodes
Message-ID: <YhN6vYNlB26pOmnz@pendragon.ideasonboard.com>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-9-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-9-l.stach@pengutronix.de>
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

On Mon, Feb 07, 2022 at 08:25:47PM +0100, Lucas Stach wrote:
> Add the DT nodes for both the 3D and 2D GPU cores found on the i.MX8MP.
> 
> etnaviv-gpu 38000000.gpu: model: GC7000, revision: 6204
> etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
> [drm] Initialized etnaviv 1.3.0 20151214 for etnaviv on minor 0
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 31 +++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 9ed57171b9fc..c89acb53be4a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -958,6 +958,37 @@ eqos: ethernet@30bf0000 {
>  			};
>  		};
>  
> +		gpu3d: gpu@38000000 {
> +			compatible = "vivante,gc";
> +			reg = <0x38000000 0x8000>;
> +			interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk IMX8MP_CLK_GPU3D_ROOT>,
> +				 <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>,
> +				 <&clk IMX8MP_CLK_GPU_ROOT>,
> +				 <&clk IMX8MP_CLK_GPU_AHB>;
> +			clock-names = "core", "shader", "bus", "reg";
> +			assigned-clocks = <&clk IMX8MP_CLK_GPU3D_CORE>,
> +					  <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>;
> +			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
> +						 <&clk IMX8MP_SYS_PLL1_800M>;
> +			assigned-clock-rates = <800000000>, <800000000>;
> +			power-domains = <&pgc_gpu3d>;
> +		};
> +
> +		gpu2d: gpu@38008000 {
> +			compatible = "vivante,gc";
> +			reg = <0x38008000 0x8000>;
> +			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk IMX8MP_CLK_GPU2D_ROOT>,
> +				 <&clk IMX8MP_CLK_GPU_ROOT>,
> +				 <&clk IMX8MP_CLK_GPU_AHB>;
> +			clock-names = "core", "bus", "reg";
> +			assigned-clocks = <&clk IMX8MP_CLK_GPU2D_CORE>;
> +			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
> +			assigned-clock-rates = <800000000>;
> +			power-domains = <&pgc_gpu2d>;
> +		};
> +
>  		gic: interrupt-controller@38800000 {
>  			compatible = "arm,gic-v3";
>  			reg = <0x38800000 0x10000>,
> 

-- 
Regards,

Laurent Pinchart
