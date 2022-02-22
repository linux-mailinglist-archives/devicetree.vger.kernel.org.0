Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FFD84BF26C
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 08:13:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230397AbiBVHKY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 02:10:24 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:34394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbiBVHKX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 02:10:23 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 837EBB16E3
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 23:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645513798; x=1677049798;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=U0dx42iOhSJjNbk7A4uPQPT68VVVNQaf6K8v5iWBqbM=;
  b=S7PtxsPNwMDM03WB2FqrIZE+QL1p5Yux/qLkvypB6gE1A3BFdgEgikd2
   4GC0CaSQYAtj7UQTN1k3x7S2E5ZHT3J01XYpSgzTTcuhUfUABKibFdW5a
   LhVtq/LqIRtrGm9FPSOyUOxMJQzbsURrGbGODac6vCYyehgIazuHyX4Jr
   alucpHiiWho4Q/9fUEKgdADkU+Aadn4p+mwXDjRL2Qv8wo3YRj7O5stAG
   2k+L0oSxT/+VNnGs/ea2DAjnEDhAHAlNxY6W7BpQPtIicf4gCymwEQwqn
   S2Iuc1OaOHDIzsmuH6sPSM8qp9vqpCH0IY2S2VBD4K79UvAhmFrLr8C76
   w==;
X-IronPort-AV: E=Sophos;i="5.88,387,1635199200"; 
   d="scan'208";a="22225726"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 22 Feb 2022 08:09:54 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 22 Feb 2022 08:09:54 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 22 Feb 2022 08:09:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645513794; x=1677049794;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=U0dx42iOhSJjNbk7A4uPQPT68VVVNQaf6K8v5iWBqbM=;
  b=DYgRFcFiLVB8UypfOm0RmJv5XvM/thV9UcBZ9AOG9zydFStaSKcEPcHY
   BHpxt3dm1X+Ycq+RLFmeMbdDUR/nf00mFEfNFtuPFbPk0TqKhGlAtJyNt
   VSaqyZVokcpQvuVPCRWuHbXtxhi7GAIMIdZDQ+w4mTLeyyOxc6y/GTP8W
   GHZxNjWtmxvJA5W7ld+QLDlnNpzRHPZV6jgWqzQt0lU7OzXBmCO3jLnWp
   AzJgibFexsYVebnskmGw46jaoZxJKnk8c4YpID6495U+rx8EmuGZCmDhI
   lXyXfrOu2LkuLno91u2iumgdhluojR4TeDraUqUvOD8sRSfi0JhG9IXS5
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,387,1635199200"; 
   d="scan'208";a="22225725"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Feb 2022 08:09:54 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 551FF280075;
        Tue, 22 Feb 2022 08:09:54 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/5] ARM: dts: imx6ul: add TQ-Systems MBa6ULxL device trees
Date:   Tue, 22 Feb 2022 08:09:43 +0100
Message-Id: <20220222070945.563672-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220222070945.563672-1-alexander.stein@ew.tq-group.com>
References: <20220222070945.563672-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device trees for the MBa6ULx mainboard with TQMa6ULxL SoMs.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v3:
* None

 arch/arm/boot/dts/Makefile                    |  1 +
 .../arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dts | 15 ++++
 arch/arm/boot/dts/imx6ul-tqma6ul2l.dtsi       | 71 +++++++++++++++++++
 .../arm/boot/dts/imx6ul-tqma6ulxl-common.dtsi | 48 +++++++++++++
 4 files changed, 135 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ul2l.dtsi
 create mode 100644 arch/arm/boot/dts/imx6ul-tqma6ulxl-common.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index ce4673e270a2..4112b618a539 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -688,6 +688,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ul-liteboard.dtb \
 	imx6ul-tqma6ul1-mba6ulx.dtb \
 	imx6ul-tqma6ul2-mba6ulx.dtb \
+	imx6ul-tqma6ul2l-mba6ulx.dtb \
 	imx6ul-opos6uldev.dtb \
 	imx6ul-pico-dwarf.dtb \
 	imx6ul-pico-hobbit.dtb \
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dts b/arch/arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dts
new file mode 100644
index 000000000000..9d9b6b744a1c
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul2l-mba6ulx.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/dts-v1/;
+
+#include "imx6ul-tqma6ul2l.dtsi"
+#include "mba6ulx.dtsi"
+
+/ {
+	model = "TQ Systems TQMa6UL2L SoM on MBa6ULx board";
+	compatible = "tq,imx6ul-tqma6ul2l-mba6ulx", "tq,imx6ul-tqma6ul2l", "fsl,imx6ul";
+};
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul2l.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ul2l.dtsi
new file mode 100644
index 000000000000..caf2c5d03f7e
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul2l.dtsi
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+#include "imx6ul.dtsi"
+#include "imx6ul-tqma6ul-common.dtsi"
+#include "imx6ul-tqma6ulxl-common.dtsi"
+
+/ {
+	model = "TQ-Systems TQMa6UL2L SoM";
+	compatible = "tq,imx6ul-tqma6ul2l", "fsl,imx6ul";
+};
+
+&usdhc2 {
+	fsl,tuning-step= <6>;
+};
+
+&iomuxc {
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x00017051
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x00017051
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x00017051
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x00017051
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x00017051
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x00017051
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x00017051
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x00017051
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x00017051
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x00017051
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x000170e1
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x000170f1
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x000170f1
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x000170f1
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x000170f1
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x000170f1
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x000170f1
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x000170f1
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x000170f1
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x000170f1
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x000170f9
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x000170f1
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x000170f1
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x000170f1
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x000170f1
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x000170f1
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x000170f1
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x000170f1
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x000170f1
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x000170f1
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+};
diff --git a/arch/arm/boot/dts/imx6ul-tqma6ulxl-common.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ulxl-common.dtsi
new file mode 100644
index 000000000000..ba84a4f70ebd
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ul-tqma6ulxl-common.dtsi
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/*
+ * Common for
+ * - TQMa6ULxL
+ * - TQMa6ULLxL
+ */
+
+/ {
+	reg_vin: reg-vin {
+		compatible = "regulator-fixed";
+		regulator-name = "VIN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+};
+
+&m24c64_50 {
+	vcc-supply = <&reg_vin>;
+};
+
+&m24c02_52 {
+	vcc-supply = <&reg_vin>;
+};
+
+/* eMMC */
+&usdhc2 {
+	vmmc-supply = <&reg_vin>;
+	vqmmc-supply = <&reg_vldo4>;
+};
+
+&iomuxc {
+	pinctrl_qspi: qspigrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_WP_B__QSPI_A_SCLK      0x70a9
+			MX6UL_PAD_NAND_READY_B__QSPI_A_DATA00 0x70a9
+			MX6UL_PAD_NAND_CE0_B__QSPI_A_DATA01   0x70a9
+			MX6UL_PAD_NAND_CE1_B__QSPI_A_DATA02   0x70a9
+			MX6UL_PAD_NAND_CLE__QSPI_A_DATA03     0x70a9
+			MX6UL_PAD_NAND_DQS__QSPI_A_SS0_B      0x70a1
+		>;
+	};
+};
-- 
2.25.1

