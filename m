Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AE2035234C
	for <lists+devicetree@lfdr.de>; Fri,  2 Apr 2021 01:17:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234857AbhDAXR0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 19:17:26 -0400
Received: from smtpcmd0876.aruba.it ([62.149.156.76]:55996 "EHLO
        smtpcmd0876.aruba.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234374AbhDAXR0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 19:17:26 -0400
Received: from ubuntu.localdomain ([146.241.168.220])
        by Aruba Outgoing Smtp  with ESMTPSA
        id S6YzlD4W1HTbyS6Z2lYTew; Fri, 02 Apr 2021 01:17:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
        t=1617319045; bh=DvsT8CmRrjeIKd6BdcBuSnIUTUX2BgBikZZZxdB8QNY=;
        h=From:To:Subject:Date:MIME-Version;
        b=fJwEtaqddFnuZCz6AksUpuHlwqeWzQYFm5dzQ7QMXlGLb5AnNibMjMgx3hHjEljDh
         YXL5vIE5vb9QdcvCFeMGVeLUlzYvYHkLGm8GZJy2Esi49XHFXE3uVtGkbiFE7U/WkP
         4IBmoxOOoMdrjbMM871WK0Pf3k2QCoAJ6FQR+NzNL4gQHDcyd3kmuHAaZ7/q1DjPxV
         +1NHb2QATdeGJdacmW+ohZcn9uH9Fu9LVVFu1brYXdNTMN3BXXpPmOAv6EPaXDOtOp
         o0mnfSp2lZ0aO985TaxvURFI4dUKEB/hBGGuxfje7MruWmBXJfziVev4pHBUoPiu0T
         4g2lfhorq4G/g==
From:   Giulio Benetti <giulio.benetti@benettiengineering.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Giulio Benetti <giulio.benetti@benettiengineering.com>
Subject: [PATCH v3 9/9] drm/panel: simple: add Jenson JT60250-02
Date:   Fri,  2 Apr 2021 01:17:20 +0200
Message-Id: <20210401231720.2470869-10-giulio.benetti@benettiengineering.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
References: <20210305234427.572114-1-giulio.benetti@benettiengineering.com>
 <20210401231720.2470869-1-giulio.benetti@benettiengineering.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4wfAsEO2oOl16uNPOxSnBrtqyzijUWPiHGsZ5M3Na065ZzWi9rs0RsNY07/AP725a9oFi9AhNeYYwSVYDLnnwb19FJ5BAEOOVw2hXQ7VRaIT2+bEjwXUcd
 FlZ9hrwRR+pvr0kFJUwSs4ow54K/xtxovR+/qWqwMHLxg84ihUJc2EA6ZN15LnBoKPsgPlB8qH2tAOnQCSBwzCcJTHmu2d6w7tjFZJqg8rAbo5zf562/EYJR
 vjbcsocceXkKswT3Pcm35y0wW4XG7iiALJKBlTA450K4JhWoMBMAvMVO2IQbGgfYKfhJzh3AgTgfQtj5s0RL5P1Y5OCggFBT3ruMOp3kTNjla2EiNbX7Helv
 UNild0V/5M87Bl9fzoKZWIc1VY1myh8zBdj1OY13q9fyYn7l9e6Ci1Oi/4HRxpG1mrA/FmNZ70NMOkoAfzFTDApN8SFY2F1GVkG+g5TEunF72492bF8=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds support for Jenson JT60250-02 1024x600 10.1" panel to DRM
simple panel driver.

Signed-off-by: Giulio Benetti <giulio.benetti@benettiengineering.com>
---
 drivers/gpu/drm/panel/panel-simple.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 1966ace764c3..2ebfe529e0c7 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2604,6 +2604,30 @@ static const struct panel_desc jenson_jt60249_01 = {
 	.bus_flags = DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
 };
 
+static const struct drm_display_mode jenson_jt60250_02_mode = {
+	.clock = 51000,
+	.hdisplay = 1024,
+	.hsync_start = 1024 + 160,
+	.hsync_end = 1204 + 160 + 10,
+	.htotal = 1024 + 160 + 10 + 160,
+	.vdisplay = 600,
+	.vsync_start = 600 + 12,
+	.vsync_end = 600 + 12 + 70,
+	.vtotal = 600 + 12 + 70 + 23,
+	.flags = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+};
+
+static const struct panel_desc jenson_jt60250_02 = {
+	.modes = &jenson_jt60250_02_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 223,
+		.height = 125,
+	},
+	.bus_flags = DRM_BUS_FLAG_PIXDATA_SAMPLE_NEGEDGE,
+};
+
 static const struct drm_display_mode kingdisplay_kd116n21_30nv_a010_mode = {
 	.clock = 81000,
 	.hdisplay = 1366,
@@ -4382,6 +4406,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "jenson,jt60249-01",
 		.data = &jenson_jt60249_01,
+	}, {
+		.compatible = "jenson,jt60250-02",
+		.data = &jenson_jt60250_02,
 	}, {
 		.compatible = "kingdisplay,kd116n21-30nv-a010",
 		.data = &kingdisplay_kd116n21_30nv_a010,
-- 
2.25.1

