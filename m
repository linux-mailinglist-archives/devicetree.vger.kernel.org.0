Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC2F5493B35
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 14:40:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244477AbiASNkh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 08:40:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346871AbiASNkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 08:40:35 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07BE6C06173E
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 05:40:35 -0800 (PST)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nABCP-0006Kr-Fk; Wed, 19 Jan 2022 14:40:29 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: [PATCH 2/9] dt-bindings: power: add defines for i.MX8MP power domain
Date:   Wed, 19 Jan 2022 14:40:20 +0100
Message-Id: <20220119134027.2931945-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220119134027.2931945-1-l.stach@pengutronix.de>
References: <20220119134027.2931945-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the DT defines for the GPC power domains found on the
i.MX8MP SoC.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../bindings/power/fsl,imx-gpcv2.yaml         |  2 ++
 include/dt-bindings/power/imx8mp-power.h      | 29 +++++++++++++++++++
 2 files changed, 31 insertions(+)
 create mode 100644 include/dt-bindings/power/imx8mp-power.h

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
index 01bdda167eef..747622bdc57b 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
@@ -28,6 +28,7 @@ properties:
       - fsl,imx8mn-gpc
       - fsl,imx8mq-gpc
       - fsl,imx8mm-gpc
+      - fsl,imx8mp-gpc
 
   reg:
     maxItems: 1
@@ -57,6 +58,7 @@ properties:
               include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc and
               include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc
               include/dt-bindings/power/imx8mm-power.h for fsl,imx8mm-gpc
+              include/dt-bindings/power/imx8mp-power.h for fsl,imx8mp-gpc
             maxItems: 1
 
           clocks:
diff --git a/include/dt-bindings/power/imx8mp-power.h b/include/dt-bindings/power/imx8mp-power.h
new file mode 100644
index 000000000000..7c67689e4faf
--- /dev/null
+++ b/include/dt-bindings/power/imx8mp-power.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+/*
+ *  Copyright (C) 2020 Pengutronix, Sascha Hauer <kernel@pengutronix.de>
+ */
+
+#ifndef __DT_BINDINGS_IMX8MP_POWER_DOMAIN_POWER_H__
+#define __DT_BINDINGS_IMX8MP_POWER_DOMAIN_POWER_H__
+
+#define IMX8MP_POWER_DOMAIN_MIPI_PHY1			0
+#define IMX8MP_POWER_DOMAIN_PCIE_PHY			1
+#define IMX8MP_POWER_DOMAIN_USB1_PHY			2
+#define IMX8MP_POWER_DOMAIN_USB2_PHY			3
+#define IMX8MP_POWER_DOMAIN_MLMIX			4
+#define IMX8MP_POWER_DOMAIN_AUDIOMIX			5
+#define IMX8MP_POWER_DOMAIN_GPU2D			6
+#define IMX8MP_POWER_DOMAIN_GPUMIX			7
+#define IMX8MP_POWER_DOMAIN_VPUMIX			8
+#define IMX8MP_POWER_DOMAIN_GPU3D			9
+#define IMX8MP_POWER_DOMAIN_MEDIAMIX			10
+#define IMX8MP_POWER_DOMAIN_VPU_G1			11
+#define IMX8MP_POWER_DOMAIN_VPU_G2			12
+#define IMX8MP_POWER_DOMAIN_VPU_VC8000E			13
+#define IMX8MP_POWER_DOMAIN_HDMIMIX			14
+#define IMX8MP_POWER_DOMAIN_HDMI_PHY			15
+#define IMX8MP_POWER_DOMAIN_MIPI_PHY2			16
+#define IMX8MP_POWER_DOMAIN_HSIOMIX			17
+#define IMX8MP_POWER_DOMAIN_MEDIAMIX_ISPDWP		18
+
+#endif
-- 
2.30.2

