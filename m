Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32A48282733
	for <lists+devicetree@lfdr.de>; Sun,  4 Oct 2020 00:46:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725931AbgJCWqb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 18:46:31 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:44060 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726048AbgJCWqa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 18:46:30 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C3hmh4zqdz1qs3n;
        Sun,  4 Oct 2020 00:46:28 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C3hmh4l8xz1qy6R;
        Sun,  4 Oct 2020 00:46:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id hHhi1YgtMIEG; Sun,  4 Oct 2020 00:46:27 +0200 (CEST)
X-Auth-Info: 7MJTfldTMV5KB5P7NMznqfNlf4WWtG6ZlkhGgAqWVXE=
Received: from desktop.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sun,  4 Oct 2020 00:46:27 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>, Abel Vesa <abel.vesa@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 3/5] dt-bindings: reset: imx8mm: Add media blk_ctl reset IDs
Date:   Sun,  4 Oct 2020 00:45:53 +0200
Message-Id: <20201003224555.163780-3-marex@denx.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201003224555.163780-1-marex@denx.de>
References: <20201003224555.163780-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These will be used by the imx8mm for blk_ctl driver.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Abel Vesa <abel.vesa@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Guido Günther <agx@sigxcpu.org>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org
---
 include/dt-bindings/reset/imx8mm-reset.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/dt-bindings/reset/imx8mm-reset.h

diff --git a/include/dt-bindings/reset/imx8mm-reset.h b/include/dt-bindings/reset/imx8mm-reset.h
new file mode 100644
index 000000000000..1dda59d30c06
--- /dev/null
+++ b/include/dt-bindings/reset/imx8mm-reset.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Marek Vasut <marex@denx.de>
+ */
+
+#ifndef DT_BINDING_RESET_IMX8MM_H
+#define DT_BINDING_RESET_IMX8MM_H
+
+#define IMX8MM_MEDIA_BLK_CTL_RESET_MIPI_DSI_I_PRESET	0
+#define IMX8MM_MEDIA_BLK_CTL_RESET_MIPI_M_RESET		1
+
+#define IMX8MM_MEDIA_BLK_CTL_RESET_NUM			2
+
+#endif
-- 
2.28.0

