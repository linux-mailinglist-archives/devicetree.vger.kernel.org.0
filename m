Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E6B14BE796
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 19:03:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379836AbiBUQFH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 11:05:07 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379837AbiBUQFF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 11:05:05 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF9FF26AF6
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 08:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645459481; x=1676995481;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Gp05FQuMMtqmQ8ZU85DxD5yJk7dMIe1Er0E8gBFpu/c=;
  b=nZuzx3poGqDdoeXXUpJDM0SKkHR5nMhJuAs42wXt1I+KXR3l9fwb6Ctu
   Y1Ldz0Jfa35of2jw7iH7SnaGdrimeJOaQBGB7xuW2NC+DBBdqfiHJuQyh
   bMV7JnG/Yce+sMqY2KU8yIt+NoFSDw6IzL9jq8vd1OLVwQEFi7JgOmDTm
   MavmMUzSH3vAeGcdTn832LYJRTrQxqZQW1PKV3V5x8vRJmRl6esWThOs9
   a/esg+b+e9+NWERhdbFDuvEeQNw8s+gegq+3/UQ93cubZNHoZI4M79F1A
   hoFKouDaORTLCRZUbQfj8LU6QjgITbu/2VM7QqlG2Ogcl/zWUYKKW5tg8
   A==;
X-IronPort-AV: E=Sophos;i="5.88,386,1635199200"; 
   d="scan'208";a="22216146"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 21 Feb 2022 17:04:37 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 21 Feb 2022 17:04:37 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 21 Feb 2022 17:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645459477; x=1676995477;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Gp05FQuMMtqmQ8ZU85DxD5yJk7dMIe1Er0E8gBFpu/c=;
  b=GrYGx7G1Yc+vTYIxgzEIJp1f+y5oU+5umkSfsKlG4k3o6j3gtv++J8i/
   XdVT7isaXmfqKJQZE1NDf3daByG6GphAhtX17Lp913O9cwlNJrk93+0ec
   Lw5oWAl/YxqWUtYpDg8SeV0seRqJuRklT90aFwIkupmo4NI4i4gLeTRgv
   Aj0bLsFRtStaGQyAoxo9jSdXXpcNcfSdkNhs3V79XQrdJh66eaK4jQGSG
   T/OJk5HI6c6tussANQbcj7N5dPKmBs2+5rJmE/O70T42BJHRTrX6mgMsj
   wPsyqEUY6o1FiYhpycD9VB/AAt6ffFRwGmpqw9wNlv64SEPTi3CQZqc0J
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,386,1635199200"; 
   d="scan'208";a="22216145"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 21 Feb 2022 17:04:37 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id AA7E4280065;
        Mon, 21 Feb 2022 17:04:37 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/5] ARM: dts: imx6ull: add TQ-Systems MBa6ULLx device trees
Date:   Mon, 21 Feb 2022 17:04:18 +0100
Message-Id: <20220221160419.550640-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
References: <20220221160419.550640-1-alexander.stein@ew.tq-group.com>
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

Add device trees for the MBa6ULx mainboard with TQMa6ULLx SoMs.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* None

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/imx6ull-tqma6ull2-mba6ulx.dts    | 15 ++++
 arch/arm/boot/dts/imx6ull-tqma6ull2.dtsi      | 76 +++++++++++++++++++
 3 files changed, 92 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2-mba6ulx.dts
 create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2.dtsi

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 4112b618a539..3a6eccb6371a 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -709,6 +709,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ull-phytec-segin-ff-rdk-nand.dtb \
 	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
 	imx6ull-phytec-segin-lc-rdk-nand.dtb \
+	imx6ull-tqma6ull2-mba6ulx.dtb \
 	imx6ulz-14x14-evk.dtb \
 	imx6ulz-bsh-smm-m2.dtb
 dtb-$(CONFIG_SOC_IMX7D) += \
diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2-mba6ulx.dts b/arch/arm/boot/dts/imx6ull-tqma6ull2-mba6ulx.dts
new file mode 100644
index 000000000000..e593b7036fc7
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-tqma6ull2-mba6ulx.dts
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+/dts-v1/;
+
+#include "imx6ull-tqma6ull2.dtsi"
+#include "mba6ulx.dtsi"
+
+/ {
+	model = "TQ-Systems TQMa6ULL2 SoM on MBa6ULx board";
+	compatible = "tq,imx6ull-tqma6ull2-mba6ulx", "tq,imx6ull-tqma6ull2", "fsl,imx6ull";
+};
diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2.dtsi b/arch/arm/boot/dts/imx6ull-tqma6ull2.dtsi
new file mode 100644
index 000000000000..326e6da91ed4
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-tqma6ull2.dtsi
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Copyright 2018-2022 TQ-Systems GmbH
+ * Author: Markus Niebel <Markus.Niebel@tq-group.com>
+ */
+
+#include "imx6ull.dtsi"
+#include "imx6ul-tqma6ul-common.dtsi"
+#include "imx6ul-tqma6ulx-common.dtsi"
+
+/ {
+	model = "TQ-Systems TQMa6ULL2 SoM";
+	compatible = "tq,imx6ull-tqma6ull2", "fsl,imx6ull";
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

