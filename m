Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE33E6D841D
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 18:52:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbjDEQwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 12:52:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231967AbjDEQwp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 12:52:45 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C29F14480
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 09:52:44 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 1C51F859E5;
        Wed,  5 Apr 2023 18:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680713562;
        bh=kBT0dcIJNjmB4JR1tNysZx9b8KqK3sqYUQaJcN6cBQs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=CxB/ezZ12XrBLaaZ3c4jUHn+kEIjRR8qHZo57/i8NVzY2gLCFlRIG60vZ9Yhtz7BE
         ARup82ngPKHmIcBpaXh1a+Hdtp5b1Qx9FzSpYToy64HCRsfPLjSMN7S76Mt1DozXDO
         IQtD60xKzkbfYIvzXbIy6neRt0dywoVMlBJJjkl9OtXNhLj+vS/OhzBI/KFtQF+Wh+
         pL79TFhEUKCdsmU8ioFM8s7tsqKnPFT+kV4W/AUG2DLWHbzCeFY7NhLe7/bACJxIP2
         BfLqCHOMGu3b3hKDj76sZggwxu23cgM/UK6c/PFTfzoU1tejQO4/uBZzOhgVSgz7v8
         y9ncrNCXMeO4g==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Abel Vesa <abel.vesa@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
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
Subject: [PATCH v2 2/3] arm64: dts: imx8mn: Add display pipeline components
Date:   Wed,  5 Apr 2023 18:52:13 +0200
Message-Id: <20230405165214.95574-2-marex@denx.de>
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

Add LCDIF scanout engine and DSIM bridge nodes for i.MX8M Nano.
This makes the DSI display pipeline available on this SoC.

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
    - CC Alexander, Jagan
    - Bundle the MX8MM,N,P patches together in one series
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 55 +++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 7b58660d9ef49..bd84db5500531 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -1062,6 +1062,61 @@ aips4: bus@32c00000 {
 			#size-cells = <1>;
 			ranges;
 
+			lcdif: lcdif@32e00000 {
+				compatible = "fsl,imx8mn-lcdif", "fsl,imx6sx-lcdif";
+				reg = <0x32e00000 0x10000>;
+				clocks = <&clk IMX8MN_CLK_DISP_PIXEL_ROOT>,
+					 <&clk IMX8MN_CLK_DISP_APB_ROOT>,
+					 <&clk IMX8MN_CLK_DISP_AXI_ROOT>;
+				clock-names = "pix", "axi", "disp_axi";
+				assigned-clocks = <&clk IMX8MN_CLK_DISP_PIXEL_ROOT>,
+						  <&clk IMX8MN_CLK_DISP_AXI>,
+						  <&clk IMX8MN_CLK_DISP_APB>;
+				assigned-clock-parents = <&clk IMX8MN_CLK_DISP_PIXEL>,
+							 <&clk IMX8MN_SYS_PLL2_1000M>,
+							 <&clk IMX8MN_SYS_PLL1_800M>;
+				assigned-clock-rates = <594000000>, <500000000>, <200000000>;
+				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&disp_blk_ctrl IMX8MN_DISPBLK_PD_LCDIF>;
+				status = "disabled";
+
+				port {
+					lcdif_to_dsim: endpoint {
+						remote-endpoint = <&dsim_from_lcdif>;
+					};
+				};
+			};
+
+			mipi_dsi: dsi@32e10000 {
+				compatible = "fsl,imx8mn-mipi-dsim", "fsl,imx8mm-mipi-dsim";
+				reg = <0x32e10000 0x400>;
+				clocks = <&clk IMX8MN_CLK_DSI_CORE>,
+					 <&clk IMX8MN_CLK_DSI_PHY_REF>;
+				clock-names = "bus_clk", "sclk_mipi";
+				assigned-clocks = <&clk IMX8MN_CLK_DSI_CORE>,
+						  <&clk IMX8MN_CLK_DSI_PHY_REF>;
+				assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_266M>,
+							 <&clk IMX8MN_CLK_24M>;
+				assigned-clock-rates = <266000000>, <24000000>;
+				samsung,pll-clock-frequency = <24000000>;
+				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&disp_blk_ctrl IMX8MN_DISPBLK_PD_MIPI_DSI>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						dsim_from_lcdif: endpoint {
+							remote-endpoint = <&lcdif_to_dsim>;
+						};
+					};
+				};
+			};
+
 			disp_blk_ctrl: blk-ctrl@32e28000 {
 				compatible = "fsl,imx8mn-disp-blk-ctrl", "syscon";
 				reg = <0x32e28000 0x100>;
-- 
2.39.2

