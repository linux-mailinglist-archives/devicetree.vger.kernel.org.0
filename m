Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08D866D5554
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 02:02:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229576AbjDDACJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 20:02:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjDDACI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 20:02:08 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A573A88
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 17:02:05 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 3EBC4857B1;
        Tue,  4 Apr 2023 02:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1680566522;
        bh=QD7QJdu1lqi8IkDOhYzf/zR3EePifsz55yhYpFuKvLI=;
        h=From:To:Cc:Subject:Date:From;
        b=dtx0NlNqRDZkUUBXXM0KjtMUJ92O9WNSybWHL9UjVWWh4uXe01cnUGCJzaNZiRKFF
         iPPy1gFiBbSPs39xhmc7nx4lH5Sw1S9krzxOyi7VBwck3SXQQkLbCSwEiuiG84Ce+E
         2yuPY/XGKZBNZPlT0DMp7/1xoCPAetJ+T2O2zFd86eUTz3IrBnrC9NHgdmvlK6cbeZ
         dGdJV0XDeFqQgks55FTT6eF/PmuveRrErlfv0FAkjcntYsDY/Rmb3RYg8HQGFIIuyb
         w8hD1NBP/Fni/IIwPpjCKAjr20SaqMLaIy9OqKch4wYtfeYk9O96vpvVwBhzGU6W/D
         SKz6DEyKCyv2g==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Abel Vesa <abel.vesa@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mm: Add display pipeline components
Date:   Tue,  4 Apr 2023 02:01:51 +0200
Message-Id: <20230404000151.534530-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
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

Add LCDIF scanout engine and DSIM bridge nodes for i.MX8M Mini.
This makes the DSI display pipeline available on this SoC.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Abel Vesa <abel.vesa@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Guido Günther <agx@sigxcpu.org>
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
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 57 +++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index e311da7e87bdc..06495c225c94b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -1119,6 +1119,63 @@ aips4: bus@32c00000 {
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
 
+			lcdif: lcdif@32e00000 {
+				compatible = "fsl,imx8mm-lcdif", "fsl,imx6sx-lcdif";
+				reg = <0x32e00000 0x10000>;
+				clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
+					 <&clk IMX8MM_CLK_DISP_APB_ROOT>,
+					 <&clk IMX8MM_CLK_DISP_AXI_ROOT>;
+				clock-names = "pix", "axi", "disp_axi";
+				assigned-clocks = <&clk IMX8MM_CLK_LCDIF_PIXEL>,
+						  <&clk IMX8MM_CLK_DISP_AXI>,
+						  <&clk IMX8MM_CLK_DISP_APB>;
+				assigned-clock-parents = <&clk IMX8MM_VIDEO_PLL1_OUT>,
+							 <&clk IMX8MM_SYS_PLL2_1000M>,
+							 <&clk IMX8MM_SYS_PLL1_800M>;
+				assigned-clock-rates = <594000000>, <500000000>, <200000000>;
+				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&disp_blk_ctrl IMX8MM_DISPBLK_PD_LCDIF>;
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
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "fsl,imx8mm-mipi-dsim";
+				reg = <0x32e10000 0x400>;
+				clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+					 <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				clock-names = "bus_clk", "sclk_mipi";
+				assigned-clocks = <&clk IMX8MM_CLK_DSI_CORE>,
+						  <&clk IMX8MM_CLK_DSI_PHY_REF>;
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_266M>,
+							 <&clk IMX8MM_CLK_24M>;
+				assigned-clock-rates = <266000000>, <24000000>;
+				samsung,pll-clock-frequency = <24000000>;
+				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+				power-domains = <&disp_blk_ctrl IMX8MM_DISPBLK_PD_MIPI_DSI>;
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
 			csi: csi@32e20000 {
 				compatible = "fsl,imx8mm-csi", "fsl,imx7-csi";
 				reg = <0x32e20000 0x1000>;
-- 
2.39.2

