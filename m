Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72F571F6594
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2020 12:24:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727094AbgFKKYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Jun 2020 06:24:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727097AbgFKKYQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Jun 2020 06:24:16 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0D04C08C5C4
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2020 03:24:15 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id B41122A4B71
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, robh+dt@kernel.org, airlied@linux.ie
Subject: [PATCH v3 3/5] drm/bridge: tfp410: fix de-skew value retrieval from DT
Date:   Thu, 11 Jun 2020 12:23:54 +0200
Message-Id: <20200611102356.31563-4-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The tfp410 has a data de-skew feature that allows the user to compensate
the skew between IDCK and the pixel data and control signals.

In the driver, the setup and hold times are calculated from the de-skew
value. This retrieves the deskew value from the DT using the proper
datatype and range check as described by the binding (u32 from 0 to 7).

This fix results from a change in the ti,tfp410 DT binding.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/gpu/drm/bridge/ti-tfp410.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
index e3eb6364c0f7..dfde811f3411 100644
--- a/drivers/gpu/drm/bridge/ti-tfp410.c
+++ b/drivers/gpu/drm/bridge/ti-tfp410.c
@@ -220,7 +220,7 @@ static int tfp410_parse_timings(struct tfp410 *dvi, bool i2c)
 	struct device_node *ep;
 	u32 pclk_sample = 0;
 	u32 bus_width = 24;
-	s32 deskew = 0;
+	u32 deskew = 0;
 
 	/* Start with defaults. */
 	*timings = tfp410_default_timings;
@@ -274,12 +274,12 @@ static int tfp410_parse_timings(struct tfp410 *dvi, bool i2c)
 	}
 
 	/* Get the setup and hold time from vendor-specific properties. */
-	of_property_read_u32(dvi->dev->of_node, "ti,deskew", (u32 *)&deskew);
-	if (deskew < -4 || deskew > 3)
+	of_property_read_u32(dvi->dev->of_node, "ti,deskew", &deskew);
+	if (deskew > 7)
 		return -EINVAL;
 
-	timings->setup_time_ps = min(0, 1200 - 350 * deskew);
-	timings->hold_time_ps = min(0, 1300 + 350 * deskew);
+	timings->setup_time_ps = min(0, 1200 - 350 * ((s32)deskew - 4));
+	timings->hold_time_ps = min(0, 1300 + 350 * ((s32)deskew - 4));
 
 	return 0;
 }
-- 
2.18.0

