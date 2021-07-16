Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7364C3CBFBF
	for <lists+devicetree@lfdr.de>; Sat, 17 Jul 2021 01:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238186AbhGPXc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 19:32:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238210AbhGPXcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 19:32:25 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F968C06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 16:29:29 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1m4XGl-0002Kr-R2; Sat, 17 Jul 2021 01:29:23 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: [PATCH 08/17] dt-bindings: power: imx8mm: add defines for VPU blk-ctrl domains
Date:   Sat, 17 Jul 2021 01:29:07 +0200
Message-Id: <20210716232916.3572966-9-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210716232916.3572966-1-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the defines for the power domains provided by the VPU
blk-ctrl.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/dt-bindings/power/imx8mm-power.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/power/imx8mm-power.h b/include/dt-bindings/power/imx8mm-power.h
index fc9c2e16aadc..38b0a56fd7d0 100644
--- a/include/dt-bindings/power/imx8mm-power.h
+++ b/include/dt-bindings/power/imx8mm-power.h
@@ -19,4 +19,8 @@
 #define IMX8MM_POWER_DOMAIN_DISPMIX	10
 #define IMX8MM_POWER_DOMAIN_MIPI	11
 
+#define IMX8MM_VPUBLK_PD_G1		0
+#define IMX8MM_VPUBLK_PD_G2		1
+#define IMX8MM_VPUBLK_PD_H1		2
+
 #endif
-- 
2.30.2

