Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B1BF4C2FA6
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 16:28:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232486AbiBXP2N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 10:28:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236457AbiBXP2J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 10:28:09 -0500
Received: from asav22.altibox.net (asav22.altibox.net [109.247.116.9])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BEC61BA150
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 07:27:37 -0800 (PST)
Received: from localhost.localdomain (211.81-166-168.customer.lyse.net [81.166.168.211])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: noralf.tronnes@ebnett.no)
        by asav22.altibox.net (Postfix) with ESMTPSA id 7144623B80;
        Thu, 24 Feb 2022 16:27:35 +0100 (CET)
From:   =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
To:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, thierry.reding@gmail.com,
        =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: [PATCH v5 3/5] drm/modes: Add of_get_drm_panel_display_mode()
Date:   Thu, 24 Feb 2022 16:27:06 +0100
Message-Id: <20220224152708.14459-4-noralf@tronnes.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220224152708.14459-1-noralf@tronnes.org>
References: <20220224152708.14459-1-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=KbX8TzQD c=1 sm=1 tr=0
        a=OYZzhG0JTxDrWp/F2OJbnw==:117 a=OYZzhG0JTxDrWp/F2OJbnw==:17
        a=IkcTkHD0fZMA:10 a=M51BFTxLslgA:10 a=7gkXJVJtAAAA:8 a=SJz97ENfAAAA:8
        a=OiiWZbHGcwXQR5KGP08A:9 a=QEXdDO2ut3YA:10 a=E9Po1WZjFZOl8hwRPBS3:22
        a=vFet0B0WnEQeilDPIY6i:22
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a function to get a drm_display_mode from a panel-timing
device tree subnode.

Suggested-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
---
 drivers/gpu/drm/drm_modes.c | 49 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_modes.h     |  8 ++++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index 77a4c8dd0bb8..3f819c7a021b 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -35,6 +35,7 @@
 #include <linux/list_sort.h>
 #include <linux/export.h>
 
+#include <video/of_display_timing.h>
 #include <video/of_videomode.h>
 #include <video/videomode.h>
 
@@ -727,6 +728,54 @@ int of_get_drm_display_mode(struct device_node *np,
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_get_drm_display_mode);
+
+/**
+ * of_get_drm_panel_display_mode - get a panel-timing drm_display_mode from devicetree
+ * @np: device_node with the panel-timing specification
+ * @dmode: will be set to the return value
+ * @bus_flags: information about pixelclk, sync and DE polarity
+ *
+ * The Device Tree properties width-mm and height-mm will be read and set on
+ * the display mode if they are present.
+ *
+ * Returns:
+ * Zero on success, negative error code on failure.
+ */
+int of_get_drm_panel_display_mode(struct device_node *np,
+				  struct drm_display_mode *dmode, u32 *bus_flags)
+{
+	u32 width_mm = 0, height_mm = 0;
+	struct display_timing timing;
+	struct videomode vm;
+	int ret;
+
+	ret = of_get_display_timing(np, "panel-timing", &timing);
+	if (ret)
+		return ret;
+
+	videomode_from_timing(&timing, &vm);
+
+	memset(dmode, 0, sizeof(*dmode));
+	drm_display_mode_from_videomode(&vm, dmode);
+	if (bus_flags)
+		drm_bus_flags_from_videomode(&vm, bus_flags);
+
+	ret = of_property_read_u32(np, "width-mm", &width_mm);
+	if (ret && ret != -EINVAL)
+		return ret;
+
+	ret = of_property_read_u32(np, "height-mm", &height_mm);
+	if (ret && ret != -EINVAL)
+		return ret;
+
+	dmode->width_mm = width_mm;
+	dmode->height_mm = height_mm;
+
+	drm_mode_debug_printmodeline(dmode);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_get_drm_panel_display_mode);
 #endif /* CONFIG_OF */
 #endif /* CONFIG_VIDEOMODE_HELPERS */
 
diff --git a/include/drm/drm_modes.h b/include/drm/drm_modes.h
index 29ba4adf0c53..2fa6b2c33b3f 100644
--- a/include/drm/drm_modes.h
+++ b/include/drm/drm_modes.h
@@ -466,6 +466,8 @@ void drm_bus_flags_from_videomode(const struct videomode *vm, u32 *bus_flags);
 int of_get_drm_display_mode(struct device_node *np,
 			    struct drm_display_mode *dmode, u32 *bus_flags,
 			    int index);
+int of_get_drm_panel_display_mode(struct device_node *np,
+				  struct drm_display_mode *dmode, u32 *bus_flags);
 #else
 static inline int of_get_drm_display_mode(struct device_node *np,
 					  struct drm_display_mode *dmode,
@@ -473,6 +475,12 @@ static inline int of_get_drm_display_mode(struct device_node *np,
 {
 	return -EINVAL;
 }
+
+static inline int of_get_drm_panel_display_mode(struct device_node *np,
+						struct drm_display_mode *dmode, u32 *bus_flags)
+{
+	return -EINVAL;
+}
 #endif
 
 void drm_mode_set_name(struct drm_display_mode *mode);
-- 
2.33.0

