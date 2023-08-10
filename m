Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4592E7771C1
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 09:43:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231872AbjHJHnO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 03:43:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231187AbjHJHnA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 03:43:00 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68B9530D2
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 00:42:31 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1qU0JQ-0005Wq-Rg; Thu, 10 Aug 2023 09:42:28 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1qU0JP-000776-Mb; Thu, 10 Aug 2023 09:42:27 +0200
Date:   Thu, 10 Aug 2023 09:42:27 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Frank Li <Frank.Li@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Adam Ford <aford173@gmail.com>, Peng Fan <peng.fan@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mp: Improve VPU clock configuration
Message-ID: <20230810074227.i62ybnbpcavsijum@pengutronix.de>
References: <20230810001320.626744-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230810001320.626744-1-marex@denx.de>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 23-08-10, Marek Vasut wrote:
> Update VPU clock according to reference manual to improve performance.
> i.MX 8M Plus Applications Processor Reference Manual, Rev. 1, 06/2021
> 
> Table 5-1. Clock Root Table (continued) reads as follows:
> Clock Root ............... Max Freq (MHz)
> VPU_BUS_CLK_ROOT ......... 800
> VPU_G1_CLK_ROOT .......... 800
> VPU_G2_CLK_ROOT .......... 700
> 
> 5.1.5.1 Input Clocks
> Input Clock .............. Frequency (MHz)
> VPU_PLL_CLK .............. 800

Acoording the datasheet not the reference manual, this would be the
overdrive mode now. Can we ensure that VDD_SOC is in overdrive state?

Regards,
  Marco

> The VPU G1 and VPU bus is now supplied from PLL1 which provides 800 MHz
> on one of its outputs, the VPU G2 is supplied from VPU PLL with 700 MHz
> which is a perfect fit for this setup. This also matches the NXP kernel
> fork configuration.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Adam Ford <aford173@gmail.com>
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Frank Li <Frank.Li@nxp.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Marek Vasut <marex@denx.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/boot/dts/freescale/imx8mp.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> index 6f2f50e1639c3..77974bd6da63a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> @@ -1928,8 +1928,8 @@ vpu_g1: video-codec@38300000 {
>  			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk IMX8MP_CLK_VPU_G1_ROOT>;
>  			assigned-clocks = <&clk IMX8MP_CLK_VPU_G1>;
> -			assigned-clock-parents = <&clk IMX8MP_VPU_PLL_OUT>;
> -			assigned-clock-rates = <600000000>;
> +			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
> +			assigned-clock-rates = <800000000>;
>  			power-domains = <&vpumix_blk_ctrl IMX8MP_VPUBLK_PD_G1>;
>  		};
>  
> @@ -1939,8 +1939,8 @@ vpu_g2: video-codec@38310000 {
>  			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&clk IMX8MP_CLK_VPU_G2_ROOT>;
>  			assigned-clocks = <&clk IMX8MP_CLK_VPU_G2>;
> -			assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
> -			assigned-clock-rates = <500000000>;
> +			assigned-clock-parents = <&clk IMX8MP_VPU_PLL_OUT>;
> +			assigned-clock-rates = <700000000>;
>  			power-domains = <&vpumix_blk_ctrl IMX8MP_VPUBLK_PD_G2>;
>  		};
>  
> @@ -1956,8 +1956,8 @@ vpumix_blk_ctrl: blk-ctrl@38330000 {
>  				 <&clk IMX8MP_CLK_VPU_VC8KE_ROOT>;
>  			clock-names = "g1", "g2", "vc8000e";
>  			assigned-clocks = <&clk IMX8MP_CLK_VPU_BUS>, <&clk IMX8MP_VPU_PLL>;
> -			assigned-clock-parents = <&clk IMX8MP_VPU_PLL_OUT>;
> -			assigned-clock-rates = <600000000>, <600000000>;
> +			assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
> +			assigned-clock-rates = <800000000>, <700000000>;
>  			interconnects = <&noc IMX8MP_ICM_VPU_G1 &noc IMX8MP_ICN_VIDEO>,
>  					<&noc IMX8MP_ICM_VPU_G2 &noc IMX8MP_ICN_VIDEO>,
>  					<&noc IMX8MP_ICM_VPU_H1 &noc IMX8MP_ICN_VIDEO>;
> -- 
> 2.40.1
> 
> 
> 
