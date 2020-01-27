Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D2FFA14A268
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2020 12:00:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727326AbgA0LAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jan 2020 06:00:51 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:58048 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729912AbgA0LAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jan 2020 06:00:51 -0500
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 1E2E129344C;
        Mon, 27 Jan 2020 11:00:49 +0000 (GMT)
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Chris Healy <cphealy@gmail.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        kernel@collabora.com, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, intel-gfx-trybot@lists.freedesktop.org,
        Boris Brezillon <boris.brezillon@collabora.com>
Subject: [PATCH v9 02/12] drm/rcar-du: Plug atomic state hooks to the default implementation
Date:   Mon, 27 Jan 2020 12:00:33 +0100
Message-Id: <20200127110043.2731697-3-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200127110043.2731697-1-boris.brezillon@collabora.com>
References: <20200127110043.2731697-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is needed to pass a bridge state to all atomic hooks, if we don't
do that, the core can't duplicate/create bridge states.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
Changes in v9:
* Add Neil's R-b
* Move earlier in the series

Changes in v7:
* New patch
---
 drivers/gpu/drm/rcar-du/rcar_lvds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/rcar-du/rcar_lvds.c b/drivers/gpu/drm/rcar-du/rcar_lvds.c
index 8ffa4fbbdeb3..3a254f1b29fe 100644
--- a/drivers/gpu/drm/rcar-du/rcar_lvds.c
+++ b/drivers/gpu/drm/rcar-du/rcar_lvds.c
@@ -682,6 +682,9 @@ static void rcar_lvds_detach(struct drm_bridge *bridge)
 static const struct drm_bridge_funcs rcar_lvds_bridge_ops = {
 	.attach = rcar_lvds_attach,
 	.detach = rcar_lvds_detach,
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
 	.atomic_enable = rcar_lvds_atomic_enable,
 	.atomic_disable = rcar_lvds_atomic_disable,
 	.mode_fixup = rcar_lvds_mode_fixup,
-- 
2.24.1

