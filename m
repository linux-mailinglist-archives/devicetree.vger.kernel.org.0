Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2447133066E
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 04:28:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233950AbhCHD2K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Mar 2021 22:28:10 -0500
Received: from inva020.nxp.com ([92.121.34.13]:40752 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232355AbhCHD1i (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 7 Mar 2021 22:27:38 -0500
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BF4FA1A09CC;
        Mon,  8 Mar 2021 04:27:37 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 101891A0995;
        Mon,  8 Mar 2021 04:27:32 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D5D1240310;
        Mon,  8 Mar 2021 04:27:23 +0100 (CET)
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     dongas86@gmail.com, kernel@pengutronix.de, shawnguo@kernel.org,
        robh+dt@kernel.org, linux-imx@nxp.com, jan.kiszka@siemens.com,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Fabio Estevam <fabio.estevam@nxp.com>
Subject: [PATCH RESEND V5 10/14] arm64: dts: imx8qm: add conn ss support
Date:   Mon,  8 Mar 2021 11:14:26 +0800
Message-Id: <1615173270-6289-11-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1615173270-6289-1-git-send-email-aisheng.dong@nxp.com>
References: <1615173270-6289-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The CONN SS of MX8QM is mostly the same as MX8QXP except it has one more
USB HSIC module support. So we can fully reuse the exist CONN SS dtsi.
Add <soc>-ss-conn.dtsi with compatible string updated according to
imx8-ss-conn.dtsi.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v4->v5:
 * make mx8qm usdhc compatible with mx8qxp according to Haibo's suggestion
v2->v3:
 * no changes
v1->v2:
 * change to the new two cell scu clk binding
---
 .../boot/dts/freescale/imx8qm-ss-conn.dtsi    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
new file mode 100644
index 000000000000..42637a45701c
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2019-2020 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+&fec1 {
+	compatible = "fsl,imx8qm-fec", "fsl,imx6sx-fec";
+};
+
+&fec2 {
+	compatible = "fsl,imx8qm-fec", "fsl,imx6sx-fec";
+};
+
+&usdhc1 {
+	compatible = "fsl,imx8qm-usdhc", "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+};
+
+&usdhc2 {
+	compatible = "fsl,imx8qm-usdhc", "fsl,imx8qxp-usdhc", "fsl,imx7d-usdhc";
+};
-- 
2.25.1

