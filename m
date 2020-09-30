Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A585527EDDA
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 17:50:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730959AbgI3PuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 11:50:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730946AbgI3PuW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 11:50:22 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B492C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 08:50:22 -0700 (PDT)
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNeMy-0006WU-TM; Wed, 30 Sep 2020 17:50:17 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Date:   Wed, 30 Sep 2020 17:50:03 +0200
Message-Id: <20200930155006.535712-9-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200930155006.535712-1-l.stach@pengutronix.de>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.2
Subject: [PATCH 08/11] dt-bindings: add defines for i.MX8MM power domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../bindings/power/fsl,imx-gpcv2.yaml         |  2 ++
 include/dt-bindings/power/imx8mm-power.h      | 22 +++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 include/dt-bindings/power/imx8mm-power.h

diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
index 9773771b9000..8dd86f67c210 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
@@ -26,6 +26,7 @@ properties:
     enum:
       - fsl,imx7d-gpc
       - fsl,imx8mq-gpc
+      - fsl,imx8mm-gpc
 
   reg:
     maxItems: 1
@@ -50,6 +51,7 @@ properties:
               Power domain index. Valid values are defined in
               include/dt-bindings/power/imx7-power.h for fsl,imx7d-gpc and
               include/dt-bindings/power/imx8m-power.h for fsl,imx8mq-gpc
+              include/dt-bindings/power/imx8mm-power.h for fsl,imx8mm-gpc
             maxItems: 1
 
           clocks:
diff --git a/include/dt-bindings/power/imx8mm-power.h b/include/dt-bindings/power/imx8mm-power.h
new file mode 100644
index 000000000000..fc9c2e16aadc
--- /dev/null
+++ b/include/dt-bindings/power/imx8mm-power.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
+/*
+ *  Copyright (C) 2020 Pengutronix, Lucas Stach <kernel@pengutronix.de>
+ */
+
+#ifndef __DT_BINDINGS_IMX8MM_POWER_H__
+#define __DT_BINDINGS_IMX8MM_POWER_H__
+
+#define IMX8MM_POWER_DOMAIN_HSIOMIX	0
+#define IMX8MM_POWER_DOMAIN_PCIE	1
+#define IMX8MM_POWER_DOMAIN_OTG1	2
+#define IMX8MM_POWER_DOMAIN_OTG2	3
+#define IMX8MM_POWER_DOMAIN_GPUMIX	4
+#define IMX8MM_POWER_DOMAIN_GPU		5
+#define IMX8MM_POWER_DOMAIN_VPUMIX	6
+#define IMX8MM_POWER_DOMAIN_VPUG1	7
+#define IMX8MM_POWER_DOMAIN_VPUG2	8
+#define IMX8MM_POWER_DOMAIN_VPUH1	9
+#define IMX8MM_POWER_DOMAIN_DISPMIX	10
+#define IMX8MM_POWER_DOMAIN_MIPI	11
+
+#endif
-- 
2.20.1

