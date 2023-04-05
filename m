Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 202E66D841E
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 18:52:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231967AbjDEQwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 12:52:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232850AbjDEQwq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 12:52:46 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C7FF49D6
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 09:52:45 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E1A2385F86;
        Wed,  5 Apr 2023 18:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680713563;
        bh=FVSiV68+JIH8EwI4F/MEFywOc/lZdYIrdvA77h4mhcw=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=NNM/X1T3hkmKl6ombQC0WAj1qb9Bvefs+ZrmIPuy180MpXf1B8VmDyNzvXj8DuDC7
         RHLy1h32Dc8PQJgQH/pBjV/cd0v0VS7uqoOis8MNTTJIwHnscMNBS/qHza4zF7aR6+
         zRftLBEEoyQVVmOvNjuEJuFWHcPlfIZxFzzOAY2h3m50xQm68RcqKzjLG3bHY0tJD2
         uh8s/BGvCznVILhEI/GdG4P+0MnZKy4uDF2jAE7/WaFAEXt7B2ISDMI5KMY3B90eCR
         ZLWlm/QcK7IxvEGvGJyIxa9/TzrX+wvWAlxiUAYjWTBUPOmvrwAYRMBYLIqcO901Ea
         Z/JCq0Hz1RMFw==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Abel Vesa <abel.vesa@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: imx8mp: Add display pipeline components
Date:   Wed,  5 Apr 2023 18:52:14 +0200
Message-Id: <20230405165214.95574-3-marex@denx.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230405165214.95574-1-marex@denx.de>
References: <20230405165214.95574-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LCDIF scanout engine and DSIM bridge nodes for i.MX8M Plus.
This makes the DSI display pipeline available on this SoC.

Reviewed-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Abel Vesa <abel.vesa@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Guido Günther <agx@sigxcpu.org>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
V2: - Drop the address-cells/size-cells from DSIM node
    - Add RB from Fabio
    - CC Alexander, Jagan
    - Bundle the MX8MM,N,P patches together in one series
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 55 +++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 2a3fb62db4e64..605d699e780dc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1126,6 +1126,61 @@ aips4: bus@32c00000 {
 			#size-cells = <1>;
 			ranges;
 
+			mipi_dsi: dsi@32e60000 {
+				compatible = "fsl,imx8mp-mipi-dsim";
+				reg = <0x32e60000 0x400>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF>;
+				clock-names = "bus_clk", "sclk_mipi";
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_APB>,
+						  <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+							 <&clk IMX8MP_CLK_24M>;
+				assigned-clock-rates = <200000000>, <24000000>;
+				samsung,pll-clock-frequency = <24000000>;
+				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_DSI_1>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						dsim_from_lcdif1: endpoint {
+							remote-endpoint = <&lcdif1_to_dsim>;
+						};
+					};
+				};
+			};
+
+			lcdif1: display-controller@32e80000 {
+				compatible = "fsl,imx8mp-lcdif";
+				reg = <0x32e80000 0x10000>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_DISP1_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
+				clock-names = "pix", "axi", "disp_axi";
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_DISP1_PIX_ROOT>,
+						  <&clk IMX8MP_CLK_MEDIA_AXI>,
+						  <&clk IMX8MP_CLK_MEDIA_APB>;
+				assigned-clock-parents = <&clk IMX8MP_CLK_MEDIA_DISP1_PIX>,
+							 <&clk IMX8MP_SYS_PLL2_1000M>,
+							 <&clk IMX8MP_SYS_PLL1_800M>;
+				assigned-clock-rates = <594000000>, <500000000>, <200000000>;
+				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_LCDIF_1>;
+				status = "disabled";
+
+				port {
+					lcdif1_to_dsim: endpoint {
+						remote-endpoint = <&dsim_from_lcdif1>;
+					};
+				};
+			};
+
 			lcdif2: display-controller@32e90000 {
 				compatible = "fsl,imx8mp-lcdif";
 				reg = <0x32e90000 0x10000>;
-- 
2.39.2

