Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D09C4788AF
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 11:22:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234674AbhLQKWS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 05:22:18 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:7832 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232987AbhLQKWQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 17 Dec 2021 05:22:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639736536; x=1671272536;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5I0ihnvMfqLIh9RRN7QgcnQvk3v4jjiIATukGz9d5P4=;
  b=iWwvE0JbMNuJciqdpUTXKbqUqNH6Ycaxm46M8xV7xwWE5qCESXAxte9q
   VDbjmAZzm7V0NxwwBwG0T5ITKQ+g5eqqDlmaSGZmpWhdksExUaGwFwN14
   4YWE7wrJDjjTt0GB2Jrzfr4VhyeqqfV449HLXV4I+URPCGqDKc1gXbtTu
   Lt3uegSDfhwx6u6a8iJyOFYBSRKafhO6aMt7Yy4yENK61342r5tYyXOBp
   GkuFUy33X7K1O+h95QdKaF53pApTVH+Om3Os2Ryur58AL9QLNd0cHbqgG
   nhqXo8HW0zjjrwyQuWq1CDx2O2yKMpF8ZP7w+tAfeAuGj9WF7+SrXJxDB
   g==;
X-IronPort-AV: E=Sophos;i="5.88,213,1635199200"; 
   d="scan'208";a="21118820"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 17 Dec 2021 11:22:15 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 17 Dec 2021 11:22:15 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 17 Dec 2021 11:22:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639736535; x=1671272535;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5I0ihnvMfqLIh9RRN7QgcnQvk3v4jjiIATukGz9d5P4=;
  b=UdCMEYAA3WaoEnVmKXwuTX1290UPNb29L4JEoJoZ4zVD3YGtnVNdcwNU
   ga1/S1IWPipNyEk1Rp3y2uYINh5Ccph14Kmbh3pE4uD76VDRpfOTzLVkQ
   C+Yqv9Ajz+SybF+Wybt0rxPTdFi42xUoh0rVfdF0jHaZ8djTw7L+ZFM+S
   4av4TL1pIl+wwiISso+Qq6kRWgbWYs1f1QoQa/MserJJTCy1cSrgmMdLs
   pKLXXxHFal0K0K4FFhh2SeXEPr4mrQ4utMopkdGobZ58fs7//6CutsHZJ
   pncS3i2zTl7NqyC0kVPZBRQAxckJF9wQzBgoZhyYz/AUtbrvCywsSWJ1f
   g==;
X-IronPort-AV: E=Sophos;i="5.88,213,1635199200"; 
   d="scan'208";a="21118819"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 17 Dec 2021 11:22:15 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 989C1280065;
        Fri, 17 Dec 2021 11:22:15 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] arm64: dts: tqma8mqml: add PCIe support
Date:   Fri, 17 Dec 2021 11:22:07 +0100
Message-Id: <20211217102207.722897-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add PCIe support to TQMa8MxML series.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This goes on top of the series recently applied to pci/dwc [1]:
[PATCH v7 0/8] Add the imx8m pcie phy driver and imx8mm pcie support
[1] https://patchwork.kernel.org/project/linux-pci/list/?series=589031&state=*

 .../dts/freescale/imx8mm-tqma8mqml-mba8mx.dts | 19 +++++++++++++++++++
 .../boot/dts/freescale/imx8mm-tqma8mqml.dtsi  |  5 +++++
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     |  6 ++++++
 3 files changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
index 7844878788f4..286d2df01cfa 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml-mba8mx.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/phy/phy-imx8-pcie.h>
 #include "imx8mm-tqma8mqml.dtsi"
 #include "mba8mx.dtsi"
 
@@ -58,6 +59,24 @@ expander2: gpio@27 {
 	};
 };
 
+&pcie_phy {
+	clocks = <&pcie0_refclk>;
+	status = "okay";
+};
+
+&pcie0 {
+	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
+	clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>, <&clk IMX8MM_CLK_PCIE1_AUX>,
+		<&pcie0_refclk>;
+	clock-names = "pcie", "pcie_aux", "pcie_bus";
+	assigned-clocks = <&clk IMX8MM_CLK_PCIE1_AUX>,
+				<&clk IMX8MM_CLK_PCIE1_CTRL>;
+	assigned-clock-rates = <10000000>, <250000000>;
+	assigned-clock-parents = <&clk IMX8MM_SYS_PLL2_50M>,
+				<&clk IMX8MM_SYS_PLL2_250M>;
+	status = "okay";
+};
+
 &sai3 {
 	assigned-clocks = <&clk IMX8MM_CLK_SAI3>;
 	assigned-clock-parents = <&clk IMX8MM_AUDIO_PLL1_OUT>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index 284e62acc0b4..16ee9b5179e6 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -227,6 +227,11 @@ eeprom0: eeprom@57 {
 	};
 };
 
+&pcie_phy {
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	fsl,clkreq-unsupported;
+};
+
 &usdhc3 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc3>;
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index e694dacb16af..42e12c190e9e 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -87,6 +87,12 @@ panel_in_lvds0: endpoint {
 		};
 	};
 
+	pcie0_refclk: pcie0-refclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
 	reg_12v: regulator-12v {
 		compatible = "regulator-fixed";
 		regulator-name = "MBA8MX_12V";
-- 
2.25.1

