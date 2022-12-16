Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B0DA64F223
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 21:08:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231298AbiLPUI2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 15:08:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231405AbiLPUI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 15:08:27 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ACF82EF22
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 12:08:27 -0800 (PST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1p6H0I-0000kf-QT; Fri, 16 Dec 2022 21:08:22 +0100
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Subject: [PATCH v3 2/5] soc: imx: add Kconfig symbols for blk-ctrl drivers
Date:   Fri, 16 Dec 2022 21:08:18 +0100
Message-Id: <20221216200821.3230165-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221216200821.3230165-1-l.stach@pengutronix.de>
References: <20221216200821.3230165-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the dependencies of the blk-ctrl drivers are not fully
described in Kconfig, which can trip over the compile tests on
platforms where those drivers are not usually enabled. Add a
non user-selectable symbol to be describe those dependencies.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
v3: new patch
---
 drivers/soc/imx/Kconfig  | 10 ++++++++++
 drivers/soc/imx/Makefile |  6 +++---
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 4b906791d6c7..179bcc896ea2 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -28,4 +28,14 @@ config SOC_IMX9
 	help
 	  If you say yes here, you get support for the NXP i.MX9 family
 
+config IMX8M_BLK_CTRL
+	bool
+	default SOC_IMX8M && IMX_GPCV2_PM_DOMAINS
+	depends on PM_GENERIC_DOMAINS
+
+config IMX9_BLK_CTRL
+	bool
+	default SOC_IMX9 && IMX_GPCV2_PM_DOMAINS
+	depends on PM_GENERIC_DOMAINS
+
 endmenu
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index 7b4099ceafd6..a28c44a1f16a 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -5,7 +5,7 @@ endif
 obj-$(CONFIG_HAVE_IMX_GPC) += gpc.o
 obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_SOC_IMX8M) += soc-imx8m.o
-obj-$(CONFIG_SOC_IMX8M) += imx8m-blk-ctrl.o
-obj-$(CONFIG_SOC_IMX8M) += imx8mp-blk-ctrl.o
+obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8m-blk-ctrl.o
+obj-$(CONFIG_IMX8M_BLK_CTRL) += imx8mp-blk-ctrl.o
 obj-$(CONFIG_SOC_IMX9) += imx93-src.o imx93-pd.o
-obj-$(CONFIG_SOC_IMX9) += imx93-blk-ctrl.o
+obj-$(CONFIG_IMX9_BLK_CTRL) += imx93-blk-ctrl.o
-- 
2.30.2

