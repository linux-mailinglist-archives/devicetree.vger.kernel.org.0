Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 170E1282732
	for <lists+devicetree@lfdr.de>; Sun,  4 Oct 2020 00:46:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726066AbgJCWqa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 18:46:30 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:40260 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725931AbgJCWq3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 18:46:29 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4C3hmg2FMrz1qs3T;
        Sun,  4 Oct 2020 00:46:27 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4C3hmg1B73z1qy6V;
        Sun,  4 Oct 2020 00:46:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id lJ6lxqqGBFM5; Sun,  4 Oct 2020 00:46:25 +0200 (CEST)
X-Auth-Info: NpyB8tc9Xcqbjjvi4qz3pTG08V7PpYIZ5PfH4b3TpeI=
Received: from desktop.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sun,  4 Oct 2020 00:46:25 +0200 (CEST)
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
Subject: [PATCH 2/5] dt-bindings: clock: imx8mm: Add media blk_ctl clock IDs
Date:   Sun,  4 Oct 2020 00:45:52 +0200
Message-Id: <20201003224555.163780-2-marex@denx.de>
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
 include/dt-bindings/clock/imx8mm-clock.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index e63a5530aed7..576b229a72f2 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -276,4 +276,11 @@
 
 #define IMX8MM_CLK_END				252
 
+#define IMX8MM_CLK_MEDIA_BLK_CTL_LCDIF_APB		0
+#define IMX8MM_CLK_MEDIA_BLK_CTL_LCDIF_PIXEL		1
+#define IMX8MM_CLK_MEDIA_BLK_CTL_MIPI_DSI_PCLK		2
+#define IMX8MM_CLK_MEDIA_BLK_CTL_MIPI_DSI_CLKREF	3
+
+#define IMX8MM_CLK_MEDIA_BLK_CTL_END			4
+
 #endif
-- 
2.28.0

