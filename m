Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 950D114538B
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2020 12:17:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728939AbgAVLRN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jan 2020 06:17:13 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:60026 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728811AbgAVLRM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jan 2020 06:17:12 -0500
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DEFC229389D;
        Wed, 22 Jan 2020 11:17:10 +0000 (GMT)
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
        devicetree@vger.kernel.org,
        Boris Brezillon <boris.brezillon@collabora.com>
Subject: [PATCH v7 10/12] drm/bridge: panel: Propage bus format/flags
Date:   Wed, 22 Jan 2020 12:16:58 +0100
Message-Id: <20200122111700.1924960-11-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122111700.1924960-1-boris.brezillon@collabora.com>
References: <20200122111700.1924960-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

So that the previous bridge element in the chain knows which input
format the panel bridge expects.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v7:
* Set atomic state hooks explicitly

Changes in v3:
* Adjust things to match the new bus-format negotiation approach
* Use drm_atomic_helper_bridge_propagate_bus_fmt
* Don't implement ->atomic_check() (the core now takes care of bus
  flags propagation)

Changes in v2:
* Adjust things to match the new bus-format negotiation approach
---
 drivers/gpu/drm/bridge/panel.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/bridge/panel.c b/drivers/gpu/drm/bridge/panel.c
index f66777e24968..dcc72bd7df30 100644
--- a/drivers/gpu/drm/bridge/panel.c
+++ b/drivers/gpu/drm/bridge/panel.c
@@ -127,6 +127,10 @@ static const struct drm_bridge_funcs panel_bridge_bridge_funcs = {
 	.enable = panel_bridge_enable,
 	.disable = panel_bridge_disable,
 	.post_disable = panel_bridge_post_disable,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_get_input_bus_fmts = drm_atomic_helper_bridge_propagate_bus_fmt,
 };
 
 /**
-- 
2.24.1

