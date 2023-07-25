Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0098760C28
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 09:42:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232300AbjGYHmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 03:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232796AbjGYHly (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 03:41:54 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 113921BE1
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 00:41:50 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1qOCfb-0007JW-PF; Tue, 25 Jul 2023 09:41:23 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1qOCfb-0005IH-Af; Tue, 25 Jul 2023 09:41:23 +0200
Date:   Tue, 25 Jul 2023 09:41:23 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Adam Ford <aford173@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mn: Drop CSI1 PHY reference clock
 configuration
Message-ID: <20230725074123.dxf6qpaz7nnvifag@pengutronix.de>
References: <20230724222247.162806-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230724222247.162806-1-marex@denx.de>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-07-25, Marek Vasut wrote:
> The CSI1 PHY reference clock are limited to 125 MHz according to:
> i.MX 8M Nano Applications Processor Reference Manual, Rev. 2, 07/2022
> Table 5-1. Clock Root Table (continued) / page 319
> Slice Index n = 123 .
> 
> Currently those IMX8MN_CLK_CSI1_PHY_REF clock are configured to be
> fed directly from 1 GHz PLL2 , which overclocks them . Instead, drop
> the configuration altogether, which defaults the clock to 24 MHz REF
> clock input, which for the PHY reference clock is just fine.
> 
> Fixes: ae9279f301b5 ("arm64: dts: imx8mn: Add CSI and ISI Nodes")
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
> Cc: Adam Ford <aford173@gmail.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Li Jun <jun.li@nxp.com>
> Cc: Marco Felsch <m.felsch@pengutronix.de>
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
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index 9869fe7652fca..aa38dd6dc9ba5 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -1175,10 +1175,8 @@ mipi_csi: mipi-csi@32e30000 {
>  				compatible = "fsl,imx8mm-mipi-csi2";
>  				reg = <0x32e30000 0x1000>;
>  				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
> -				assigned-clocks = <&clk IMX8MN_CLK_CAMERA_PIXEL>,
> -						  <&clk IMX8MN_CLK_CSI1_PHY_REF>;
> -				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_1000M>,
> -							  <&clk IMX8MN_SYS_PLL2_1000M>;
> +				assigned-clocks = <&clk IMX8MN_CLK_CAMERA_PIXEL>;
> +				assigned-clock-parents = <&clk IMX8MN_SYS_PLL2_1000M>;
>  				assigned-clock-rates = <333000000>;
>  				clock-frequency = <333000000>;
>  				clocks = <&clk IMX8MN_CLK_DISP_APB_ROOT>,
> -- 
> 2.40.1
> 
> 
