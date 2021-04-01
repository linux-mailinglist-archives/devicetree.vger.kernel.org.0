Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FE4335234B
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 01:17:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234272AbhDAXR0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 19:17:26 -0400
Received: from smtpcmd0876.aruba.it ([62.149.156.76]:46454 "EHLO
        smtpcmd0876.aruba.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234627AbhDAXRZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 19:17:25 -0400
Received: from ubuntu.localdomain ([146.241.168.220])
        by Aruba Outgoing Smtp  with ESMTPSA
        id S6YzlD4W1HTbyS6Z2lYTej; Fri, 02 Apr 2021 01:17:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
        t=1617319044; bh=bbs0eGpCqn47dK8aOtFOvDuMEcrO6Tn/0pjo+mewfy0=;
        h=From:To:Subject:Date:MIME-Version;
        b=K7s8VYBkr2MX/qZNHWgPGiV/j7OskIVU83ItJpirl7aFf9POYzk5yugXE+27HZp4Q
         J/6Upc/prnZl6E+39QLYVsw1eguD9MpYBMej8BhE4kqc5L/WUOmWIgphffrGXEKLZq
         PEuPxtHBPuzmUiCwQtWEJn5kqVUcVkXrqC+mL/PCnmggu6N4rar9y3PlKLe5YPtzhU
         4X3Wg+rcl90B/IYOHT4RYDWUQdUCAESrKVEX76S9/iehl6GyF12dQQdP4mkkQ2jvmx
         vCc4C7LhT0gazIW3THxo1b05lpaYsLPj0GNmrdqTLcT1zW8JakYkLoEr9fiTdHzZCW
         83ot2QlXXv/Og==
From:   Giulio Benetti <giulio.benetti@benettiengineering.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Giulio Benetti <giulio.benetti@benettiengineering.com>
Subject: [PATCH v3 8/9] drm/panel: simple: add Jenson JT60249-01
Date:   Fri,  2 Apr 2021 01:17:19 +0200
Message-Id: <20210401231720.2470869-9-giulio.benetti@benettiengineering.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
References: <20210305234427.572114-1-giulio.benetti@benettiengineering.com>
 <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4wfEZS3VVTb/oBuNqsOngSC5uenBTfoZ7FiTtzCt4o74v5RpycA+LV4eQiMgpd+8C8YcXRzU2JXwCWzTcRN0J9ig3wWmUPgh0E5NHxBNdY/IOt11u9N83U
 TJWNPwaM6iMOrWdyhnkKyOqiFd61EF+yxEFUecQc7C4qQ3V2TWrOa8B0yklHimww+8PAb3RqbeCKZ0j2Ads6/0EkBSd1k6WOXAiW1qZIDgCOYxYRbSPys8IW
 1sYvfeBLDVYL7G2ovVWCGtfZgFp7X0O1wR6SAgvczWEPXEoXVpQgdQkT7T9AqTXplUQUL0Rw0o65wDdeP+aKgz4HZ8l5Y/cPe5RPFr9aqgj5vB1Dccqh3SZT
 KY4E0WrYYwX9Q6Yw1XzryZ4sNRxMvtQyv+yvyOy89BPjbxQ34GJk6oRObwJUATW+uTvctX9KLQl7aB2IjFK+WV3vFGbnDz6iVfOMWypsSrMgxnOvaZM=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for Jenson JT60249-01 800x480 5" panel to DRM
simple panel driver.

Signed-off-by: Giulio Benetti <giulio.benetti@benettiengineering.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index f96f820a890b..1966ace764c3 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2580,6 +2580,30 @@ static const struct panel_desc jenson_jt60248_01 = {
 	.bus_flags = DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
 };
 
+static const struct drm_display_mode jenson_jt60249_01_mode = {
+	.clock = 25000,
+	.hdisplay = 800,
+	.hsync_start = 800 + 8,
+	.hsync_end = 800 + 8 + 4,
+	.htotal = 800 + 8 + 4 + 8,
+	.vdisplay = 480,
+	.vsync_start = 480 + 8,
+	.vsync_end = 480 + 8 + 4,
+	.vtotal = 480 + 8 + 4 + 8,
+	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+};
+
+static const struct panel_desc jenson_jt60249_01 = {
+	.modes = &jenson_jt60249_01_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 108,
+		.height = 65,
+	},
+	.bus_flags = DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
+};
+
 static const struct drm_display_mode kingdisplay_kd116n21_30nv_a010_mode = {
 	.clock = 81000,
 	.hdisplay = 1366,
@@ -4355,6 +4379,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "jenson,jt60248-01",
 		.data = &jenson_jt60248_01,
+	}, {
+		.compatible = "jenson,jt60249-01",
+		.data = &jenson_jt60249_01,
 	}, {
 		.compatible = "kingdisplay,kd116n21-30nv-a010",
 		.data = &kingdisplay_kd116n21_30nv_a010,
-- 
2.25.1

