Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FCB4704789
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 10:14:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231300AbjEPIOF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 04:14:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231577AbjEPIOC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 04:14:02 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86C5E44A7
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 01:14:00 -0700 (PDT)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C7EEC8663D;
        Tue, 16 May 2023 10:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684224839;
        bh=u83f3yVJzCKt3oBYz7orOZzoJEbfr2g45iQ+f85s5go=;
        h=From:To:Cc:Subject:Date:From;
        b=bbU8NqYu77eBXyubY2Q8Ow/n7p+PZNvX2HwWtPfwG3/sWpfZshCbfWpqGVjGvQGbG
         FpvlQCtRo9WuVBhn8SBUwKjnOyblWb2hWrr8DzTXSCKDsixEP8sh4kPPWd9RkjFHOm
         xgqEX1dDtZQBcAsPrEBx9tZJctT0z4Tbs7/eLSXF/ixoEQqeMla300hDcDHNBkzYQN
         qhcteWecQZc+OzCq7U+OhA/DvO2+AYxWom3GEF46DGEPpUtH5L31SEiEhQl2mgYTxT
         +OytCyF3+hFJWQC3qaQ3c2I/YE1ioCC5a1/28yCU57DoM7wUhxC18DN2NpFJY40DA8
         ogQyvH+fgl3hQ==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: imx8mp: Sort AIPS4 nodes
Date:   Tue, 16 May 2023 10:13:53 +0200
Message-Id: <20230516081354.38868-1-marex@denx.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sort AIPS4 nodes by node unit-address . No functional change .

Suggested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Richard Cochran <richardcochran@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
V2: New patch
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 204 +++++++++++-----------
 1 file changed, 102 insertions(+), 102 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index aabcf447e8931..a3ffd53a95357 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -1332,6 +1332,108 @@ aips4: bus@32c00000 {
 			#size-cells = <1>;
 			ranges;
 
+			isi_0: isi@32e00000 {
+				compatible = "fsl,imx8mp-isi";
+				reg = <0x32e00000 0x4000>;
+				interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
+				clock-names = "axi", "apb";
+				fsl,blk-ctrl = <&media_blk_ctrl>;
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_ISI>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						isi_in_0: endpoint {
+							remote-endpoint = <&mipi_csi_0_out>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						isi_in_1: endpoint {
+							remote-endpoint = <&mipi_csi_1_out>;
+						};
+					};
+				};
+			};
+
+			mipi_csi_0: csi@32e40000 {
+				compatible = "fsl,imx8mp-mipi-csi2", "fsl,imx8mm-mipi-csi2";
+				reg = <0x32e40000 0x10000>;
+				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+				clock-frequency = <500000000>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
+				clock-names = "pclk", "wrap", "phy", "axi";
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM1_PIX>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
+				assigned-clock-rates = <500000000>;
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mipi_csi_0_out: endpoint {
+							remote-endpoint = <&isi_in_0>;
+						};
+					};
+				};
+			};
+
+			mipi_csi_1: csi@32e50000 {
+				compatible = "fsl,imx8mp-mipi-csi2", "fsl,imx8mm-mipi-csi2";
+				reg = <0x32e50000 0x10000>;
+				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+				clock-frequency = <266000000>;
+				clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
+					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
+				clock-names = "pclk", "wrap", "phy", "axi";
+				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM2_PIX>;
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
+				assigned-clock-rates = <266000000>;
+				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_2>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+					};
+
+					port@1 {
+						reg = <1>;
+
+						mipi_csi_1_out: endpoint {
+							remote-endpoint = <&isi_in_1>;
+						};
+					};
+				};
+			};
+
 			mipi_dsi: dsi@32e60000 {
 				compatible = "fsl,imx8mp-mipi-dsim";
 				reg = <0x32e60000 0x400>;
@@ -1493,108 +1595,6 @@ ldb_lvds_ch1: endpoint {
 				};
 			};
 
-			isi_0: isi@32e00000 {
-				compatible = "fsl,imx8mp-isi";
-				reg = <0x32e00000 0x4000>;
-				interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
-					     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_APB_ROOT>;
-				clock-names = "axi", "apb";
-				fsl,blk-ctrl = <&media_blk_ctrl>;
-				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_ISI>;
-				status = "disabled";
-
-				ports {
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					port@0 {
-						reg = <0>;
-
-						isi_in_0: endpoint {
-							remote-endpoint = <&mipi_csi_0_out>;
-						};
-					};
-
-					port@1 {
-						reg = <1>;
-
-						isi_in_1: endpoint {
-							remote-endpoint = <&mipi_csi_1_out>;
-						};
-					};
-				};
-			};
-
-			mipi_csi_0: csi@32e40000 {
-				compatible = "fsl,imx8mp-mipi-csi2", "fsl,imx8mm-mipi-csi2";
-				reg = <0x32e40000 0x10000>;
-				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
-				clock-frequency = <500000000>;
-				clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
-				clock-names = "pclk", "wrap", "phy", "axi";
-				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM1_PIX>;
-				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
-				assigned-clock-rates = <500000000>;
-				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_1>;
-				status = "disabled";
-
-				ports {
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					port@0 {
-						reg = <0>;
-					};
-
-					port@1 {
-						reg = <1>;
-
-						mipi_csi_0_out: endpoint {
-							remote-endpoint = <&isi_in_0>;
-						};
-					};
-				};
-			};
-
-			mipi_csi_1: csi@32e50000 {
-				compatible = "fsl,imx8mp-mipi-csi2", "fsl,imx8mm-mipi-csi2";
-				reg = <0x32e50000 0x10000>;
-				interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
-				clock-frequency = <266000000>;
-				clocks = <&clk IMX8MP_CLK_MEDIA_APB_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT>,
-					 <&clk IMX8MP_CLK_MEDIA_AXI_ROOT>;
-				clock-names = "pclk", "wrap", "phy", "axi";
-				assigned-clocks = <&clk IMX8MP_CLK_MEDIA_CAM2_PIX>;
-				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>;
-				assigned-clock-rates = <266000000>;
-				power-domains = <&media_blk_ctrl IMX8MP_MEDIABLK_PD_MIPI_CSI2_2>;
-				status = "disabled";
-
-				ports {
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					port@0 {
-						reg = <0>;
-					};
-
-					port@1 {
-						reg = <1>;
-
-						mipi_csi_1_out: endpoint {
-							remote-endpoint = <&isi_in_1>;
-						};
-					};
-				};
-			};
-
 			pcie_phy: pcie-phy@32f00000 {
 				compatible = "fsl,imx8mp-pcie-phy";
 				reg = <0x32f00000 0x10000>;
-- 
2.39.2

