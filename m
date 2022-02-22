Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 330AD4BF26E
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 08:13:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230399AbiBVHKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 02:10:25 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:34398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230395AbiBVHKY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 02:10:24 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0753B1511
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 23:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1645513799; x=1677049799;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=rhsUWz7SHv3lr76I8xNQhDpxPB6DLVk51RLoMcJdTM4=;
  b=mRC30Z4O8ncp9UDscZSpV9I12bEwmJsmEpyl69x6YziCI2+dFOeEWqlG
   gxSj7vYomK2lmzNHikFvKWmowVxR23C74xvKwibohYmk/kTqYipAUeccy
   sMQAwc/N7Z/WzOcHiM1b4m/fPVW1Y9Qg8sJq3ANAgL/cl3Q60siKb8oX1
   9CeZ/IaRtJGRKDy39zrNRVBLDtfGVAcNXDO2dv3qcp3I7+Sjt85jYnG1l
   qxx0kDLaVzh8/Db38z9oU5WGapZomz0lr1/7/N0Wn/KxxBWTiWzgiMkY0
   Y53FXxpvllpiM6jMB+eeloTC177vu+aAsWy2qGvzOMI+1ibL2BnI0hj+Y
   g==;
X-IronPort-AV: E=Sophos;i="5.88,387,1635199200"; 
   d="scan'208";a="22225728"
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
  bh=rhsUWz7SHv3lr76I8xNQhDpxPB6DLVk51RLoMcJdTM4=;
  b=QLr+6D+bsmt5WV3GGMxAp0eWpRx/zkQGg+MZONkWEBMGI+W3gn7ZDqYI
   I7BNmzGl6sOZFIMBFEpC2R1aHsUevrY/eYQUUuyEva0Q9TZZ292LCqXHp
   6oKcdQq5fhjycghqi1P8Oac5VkdI8n0qK+ln2wpsfk5HEU5yBJe29Tt6M
   RHsolXIvtNI/SWuswP68iXCDAL9SGduE6wpC96NhHOIUEbHX8OkeNlUmW
   gllHE5sEstcU3DwE14B49O8TTl67sCwN3XkHeKz6ANE31nTTONxszy7xT
   9ih+N2cr5XicCPQH+ybjxMY32OhhLY3i5Sl9eWdD5/MbLFdqPvKVklf82
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,387,1635199200"; 
   d="scan'208";a="22225727"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 22 Feb 2022 08:09:54 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 8D82F280065;
        Tue, 22 Feb 2022 08:09:54 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/5] ARM: dts: imx6ull: add TQ-Systems MBa6ULLx device trees
Date:   Tue, 22 Feb 2022 08:09:44 +0100
Message-Id: <20220222070945.563672-5-alexander.stein@ew.tq-group.com>
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

Add device trees for the MBa6ULx mainboard with TQMa6ULLx SoMs.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v3:
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

