Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EE2E4548E9
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:34:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236432AbhKQOhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:37:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbhKQOhT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 09:37:19 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B95DC061570
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:34:21 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1mnM0e-0005te-FA; Wed, 17 Nov 2021 15:34:00 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1mnM0b-001P6K-2l; Wed, 17 Nov 2021 15:33:57 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 05/12] of: graph: Allow disabled endpoints
Date:   Wed, 17 Nov 2021 15:33:40 +0100
Message-Id: <20211117143347.314294-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are cases in which a SoC allows many different routes between
components, but not all of them make sense for a board. With this patch
we allow standard status = "disabled" properties for ports. With this
a SoC level dtsi file can describe all possible ports and only the ones
that make sense for the given hardware are enabled at board level.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpu/drm/drm_of.c | 6 ++----
 drivers/of/property.c    | 3 +++
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 37c34146eea83..c2fd9fe505767 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -67,10 +67,8 @@ uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
 
 	for_each_endpoint_of_node(port, ep) {
 		remote_port = of_graph_get_remote_port(ep);
-		if (!remote_port) {
-			of_node_put(ep);
-			return 0;
-		}
+		if (!remote_port)
+			continue;
 
 		possible_crtcs |= drm_of_crtc_port_mask(dev, remote_port);
 
diff --git a/drivers/of/property.c b/drivers/of/property.c
index a3483484a5a2a..40f8da7baa0a9 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -730,6 +730,9 @@ EXPORT_SYMBOL(of_graph_get_endpoint_by_regs);
  */
 struct device_node *of_graph_get_remote_endpoint(const struct device_node *node)
 {
+	if (!of_device_is_available(node))
+		return NULL;
+
 	/* Get remote endpoint node. */
 	return of_parse_phandle(node, "remote-endpoint", 0);
 }
-- 
2.30.2

