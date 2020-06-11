Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27F781F659D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2020 12:24:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727076AbgFKKYe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Jun 2020 06:24:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727119AbgFKKYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Jun 2020 06:24:18 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 403B4C08C5C5
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2020 03:24:16 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 79FD32A4B73
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, robh+dt@kernel.org, airlied@linux.ie
Subject: [PATCH v3 4/5] drm/bridge: tfp410: Fix setup and hold time calculation
Date:   Thu, 11 Jun 2020 12:23:55 +0200
Message-Id: <20200611102356.31563-5-ricardo.canuelo@collabora.com>
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

This fixes a bug in the calculation of the setup and hold times based on
the deskew configuration.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/gpu/drm/bridge/ti-tfp410.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
index dfde811f3411..21d99b4ea0c9 100644
--- a/drivers/gpu/drm/bridge/ti-tfp410.c
+++ b/drivers/gpu/drm/bridge/ti-tfp410.c
@@ -278,8 +278,8 @@ static int tfp410_parse_timings(struct tfp410 *dvi, bool i2c)
 	if (deskew > 7)
 		return -EINVAL;
 
-	timings->setup_time_ps = min(0, 1200 - 350 * ((s32)deskew - 4));
-	timings->hold_time_ps = min(0, 1300 + 350 * ((s32)deskew - 4));
+	timings->setup_time_ps = 1200 - 350 * ((s32)deskew - 4);
+	timings->hold_time_ps = max(0, 1300 + 350 * ((s32)deskew - 4));
 
 	return 0;
 }
-- 
2.18.0

