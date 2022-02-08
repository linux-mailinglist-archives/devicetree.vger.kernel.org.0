Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65A1D4ADA40
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:43:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359726AbiBHNmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:42:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359867AbiBHNmj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 08:42:39 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FF08C03FECE
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 05:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644327757; x=1675863757;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Tiycpxswt/F4AZWVmFikdAU78/ZExPYXtROJms15M84=;
  b=jn9qAJSWYVODdJ2fTVf8PPAbvO2ex0jXdyNvIrqXryjLnrPaVkOur+U6
   FxqQuoDYFBiFKzGIIBjI8LeQy2/b3BySTcartXSHGPaR7R4EVl+zoed+D
   mn5EjcJpoLWvT7lMH67iQ/bjCMTdkiqatC+buT0hHGyWikY/U3G7RDxoE
   UWq5MEic1gcuGJrzCTQshhG8clk65hh9uD+t0+5TqDis2l6FGjq3bJz08
   WsJFN60ZrOKdx/t24hM340bGC4gSVLfAOh46zjQVXqGmI/hyTFS+f68HF
   3EpyshbecQsdC/Cmk8LiBlJ5+mc9DROjzhYO/cnSsIYdqSY/jPpEKzNPh
   g==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21962452"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Feb 2022 14:42:31 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 08 Feb 2022 14:42:31 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 08 Feb 2022 14:42:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644327751; x=1675863751;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Tiycpxswt/F4AZWVmFikdAU78/ZExPYXtROJms15M84=;
  b=gewaPIWhEIHN7D5s9Zul9U4v0rlVR+1BrCwjbqICllIXKBRzlBoO+/a8
   g6OH67rjGJBw2Hc8eA4lJ7vIbNOsDPsIoMlUVWozbWlpiOZM0mD4oDA5F
   VjSQDzkyVZamluP/7zIzz2d3aEYoOmISBriNz6DSg1aiAbeYdZYO5somz
   1okWQcWdYYhCJ8Tlx8h6/2N5kmzH5ukd9+hPUPFVV7dG0nIbHTIXL7vJn
   EUFf3Q6ro7Wj7nJ7Yoh0bfW59xsgTuasiyYWBgg4etP6Tvz5SBp81P7Mn
   0oWq/pjzSswaMGOHvGwZ7qejVrTXkwoxSq1IGr6V149Kk7hwrmCsmn1EP
   A==;
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; 
   d="scan'208";a="21962451"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Feb 2022 14:42:31 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 214F9280065;
        Tue,  8 Feb 2022 14:42:31 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL device trees
Date:   Tue,  8 Feb 2022 14:42:23 +0100
Message-Id: <20220208134223.908757-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
References: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
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

Add device trees for the MBa6ULx mainboard with TQMa6ULLxL SoMs.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts   | 15 ++++
 arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi     | 76 +++++++++++++++++++
 3 files changed, 92 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 3a6eccb6371a..9bf89273ae71 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -710,6 +710,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
 	imx6ull-phytec-segin-lc-rdk-nand.dtb \
 	imx6ull-tqma6ull2-mba6ulx.dtb \
+	imx6ull-tqma6ull2l-mba6ulx.dtb \
 	imx6ulz-14x14-evk.dtb \
 	imx6ulz-bsh-smm-m2.dtb
 dtb-$(CONFIG_SOC_IMX7D) += \
diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts b/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
new file mode 100644
index 000000000000..33437aae9822
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/dts-v1/;
+
+#include "imx6ull-tqma6ull2l.dtsi"
+#include "mba6ulx.dtsi"
+
+/ {
+	model = "TQ Systems TQMa6ULL2L SoM on MBa6ULx board";
+	compatible = "tq,imx6ull-tqma6ull2l-mba6ulx", "tq,imx6ull-tqma6ull2l", "fsl,imx6ull";
+};
diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi b/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
new file mode 100644
index 000000000000..8e4d5cd18614
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+#include "imx6ull.dtsi"
+#include "imx6ul-tqma6ul-common.dtsi"
+#include "imx6ul-tqma6ulxl-common.dtsi"
+
+/ {
+	model = "TQ Systems TQMa6ULL2L SoM";
+	compatible = "tq,imx6ull-tqma6ull2l", "fsl,imx6ull";
+};
+
+&usdhc2 {
+	fsl,tuning-step= <6>;
+	/* Errata ERR010450 Workaround */
+	max-frequency = <99000000>;
+	assigned-clocks = <&clks IMX6UL_CLK_USDHC2_SEL>, <&clks IMX6UL_CLK_USDHC2>;
+	assigned-clock-parents = <&clks IMX6UL_CLK_PLL2_PFD2>;
+	assigned-clock-rates = <0>, <198000000>;
+};
+
+&iomuxc {
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x00017031
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x00017039
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x00017039
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x00017039
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x00017039
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x00017039
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x00017039
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x00017039
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x00017039
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x00017039
+			/* rst */
+			MX6UL_PAD_NAND_ALE__GPIO4_IO10		0x0001b051
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x000170f1
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
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x000170f1
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
-- 
2.25.1

