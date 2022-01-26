Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 530D949CAB2
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 14:23:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238997AbiAZNXu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 08:23:50 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:18875 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S238940AbiAZNXt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 08:23:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643203429; x=1674739429;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=h5X4vEs0apE78xlx6za6Xi8OtpOXl9jPY1J31k+nOz8=;
  b=UsxRlZuoRyjHXkHaerNE34p5GFEZI8U5Ar7cnRysyf9Z/r3bK8q5F3bl
   nQdC03EnKpiqQLPrnQk8QZ8zuu2S10tZ1QC3jIT5PcO10Q5Bp+kVPtYCS
   i74sPWQg2ZC0jEz0fl7IEqumtnQgbJmIPmhLMyyIgx7uUve7cQCtGJJvq
   5ajH0PMbQj76RQeqdVFQdlfRcqHrm6ySkL8LNSuXuXXkXj9k8EsdFR4Hg
   Dn9s9bWZ6O0feuEuVdOgOqGbwa+LWwG82+ysfsz13uE4pkQQ81FbAIjDy
   +FPjsLvbFg8GyRAYjlF1tIguHhwgr1Z60iOC8SSYR8bOVnLnL6Or6awl3
   A==;
X-IronPort-AV: E=Sophos;i="5.88,318,1635199200"; 
   d="scan'208";a="21724106"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Jan 2022 14:23:48 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 26 Jan 2022 14:23:48 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 26 Jan 2022 14:23:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643203428; x=1674739428;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=h5X4vEs0apE78xlx6za6Xi8OtpOXl9jPY1J31k+nOz8=;
  b=eREyfF60yxSBjpcBIEgVY4AjkhT8eNlRm5oEuae5p+ZVV3M7cLAHTd5v
   fMGvt5xtfzPjFDy6tOyYRL1izt+hqsMBWu35MAK5DKihSW5Mg8m6SQGd7
   7UVQiMLWEBpKeSYEzr85Rr/j3GXg3Ancr9aVsYh6/ZPpGE8eEVbO20ukW
   2/o6XBFiezw3Cy4Q+bLevuamYIAnMY80O1MIk0ho7DuL6PTP06QdHATzh
   W//5EJSrLid+jnSFGSgQCcLHruLgtLp+ZAhYQLCLm/7dxDVuhyH45Q64G
   Qt7rLjJaNecbvtQMOHdRbGx8DVt9tRmA57jDM3Vus8rLjltfdt64Nfhq4
   A==;
X-IronPort-AV: E=Sophos;i="5.88,318,1635199200"; 
   d="scan'208";a="21724105"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Jan 2022 14:23:48 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A33FC280065;
        Wed, 26 Jan 2022 14:23:48 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] arm64: dts: tqma8mqml: add PCIe support
Date:   Wed, 26 Jan 2022 14:23:38 +0100
Message-Id: <20220126132339.60683-1-alexander.stein@ew.tq-group.com>
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

Changes in v2:
* rebased to Shawn's current imx/dt64 (as of 2022/01/26)

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
index f27e3c8de916..3ea34b3a55f8 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -66,6 +66,12 @@ led2: led2 {
 		};
 	};
 
+	pcie0_refclk: pcie0-refclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
 	reg_hub_vbus: regulator-hub-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "MBA8MX_HUB_VBUS";
-- 
2.25.1

