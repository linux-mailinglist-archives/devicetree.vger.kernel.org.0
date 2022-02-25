Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1FAB4C3F78
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 08:52:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236583AbiBYHxB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 02:53:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238291AbiBYHwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 02:52:53 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E05607DA95
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 23:52:21 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nNVOR-0000Q2-KU; Fri, 25 Feb 2022 08:51:59 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nNVOL-00BSYL-Ad; Fri, 25 Feb 2022 08:51:53 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v7 21/24] drm/rockchip: Make VOP driver optional
Date:   Fri, 25 Feb 2022 08:51:47 +0100
Message-Id: <20220225075150.2729401-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220225075150.2729401-1-s.hauer@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With upcoming VOP2 support VOP won't be the only choice anymore, so make
the VOP driver optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/rockchip/Kconfig            | 8 ++++++++
 drivers/gpu/drm/rockchip/Makefile           | 3 ++-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
 3 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 9f1ecefc39332..b9b156308460a 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -21,8 +21,16 @@ config DRM_ROCKCHIP
 
 if DRM_ROCKCHIP
 
+config ROCKCHIP_VOP
+	bool "Rockchip VOP driver"
+	default y
+	help
+	  This selects support for the VOP driver. You should enable it
+	  on all older SoCs up to RK3399.
+
 config ROCKCHIP_ANALOGIX_DP
 	bool "Rockchip specific extensions for Analogix DP driver"
+	depends on ROCKCHIP_VOP
 	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the Analogix Core DP driver. If you want to enable DP
diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
index 1a56f696558ca..dfc5512fdb9f1 100644
--- a/drivers/gpu/drm/rockchip/Makefile
+++ b/drivers/gpu/drm/rockchip/Makefile
@@ -4,8 +4,9 @@
 # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
 
 rockchipdrm-y := rockchip_drm_drv.o rockchip_drm_fb.o \
-		rockchip_drm_gem.o rockchip_drm_vop.o rockchip_vop_reg.o
+		rockchip_drm_gem.o
 
+rockchipdrm-$(CONFIG_ROCKCHIP_VOP) += rockchip_drm_vop.o rockchip_vop_reg.o
 rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
 rockchipdrm-$(CONFIG_ROCKCHIP_CDN_DP) += cdn-dp-core.o cdn-dp-reg.o
 rockchipdrm-$(CONFIG_ROCKCHIP_DW_HDMI) += dw_hdmi-rockchip.o
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 7920a4f44f693..cf8dba96a7dee 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -491,7 +491,7 @@ static int __init rockchip_drm_init(void)
 	int ret;
 
 	num_rockchip_sub_drivers = 0;
-	ADD_ROCKCHIP_SUB_DRIVER(vop_platform_driver, CONFIG_DRM_ROCKCHIP);
+	ADD_ROCKCHIP_SUB_DRIVER(vop_platform_driver, CONFIG_ROCKCHIP_VOP);
 	ADD_ROCKCHIP_SUB_DRIVER(rockchip_lvds_driver,
 				CONFIG_ROCKCHIP_LVDS);
 	ADD_ROCKCHIP_SUB_DRIVER(rockchip_dp_driver,
-- 
2.30.2

