Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 007A7401FDB
	for <lists+devicetree@lfdr.de>; Mon,  6 Sep 2021 20:44:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244532AbhIFSox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Sep 2021 14:44:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244599AbhIFSow (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Sep 2021 14:44:52 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98459C06175F
        for <devicetree@vger.kernel.org>; Mon,  6 Sep 2021 11:43:47 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mNJan-0003Ue-6x; Mon, 06 Sep 2021 20:43:41 +0200
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Subject: [PATCH v3 09/18] dt-bindings: power: imx8mm: add defines for VPU blk-ctrl domains
Date:   Mon,  6 Sep 2021 20:43:24 +0200
Message-Id: <20210906184333.1855426-10-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210906184333.1855426-1-l.stach@pengutronix.de>
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
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

