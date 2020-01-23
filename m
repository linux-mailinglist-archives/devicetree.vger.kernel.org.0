Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7AE7014650A
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2020 10:53:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726227AbgAWJxl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jan 2020 04:53:41 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:43932 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728827AbgAWJxl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jan 2020 04:53:41 -0500
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 70F26293CFD;
        Thu, 23 Jan 2020 09:53:39 +0000 (GMT)
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
Subject: [PATCH v8 04/12] drm/bridge: analogix: Plug atomic state hooks to the default implementation
Date:   Thu, 23 Jan 2020 10:53:25 +0100
Message-Id: <20200123095333.2085810-5-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200123095333.2085810-1-boris.brezillon@collabora.com>
References: <20200123095333.2085810-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is needed to pass a bridge state to all atomic hooks, if we don't
do that, the core can't duplicate/create bridge states.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v7:
* New patch
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 6fab71985cd4..dfb59a5fefea 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1570,6 +1570,9 @@ static void analogix_dp_bridge_mode_set(struct drm_bridge *bridge,
 }
 
 static const struct drm_bridge_funcs analogix_dp_bridge_funcs = {
+	.atomic_duplicate_state = drm_atomic_helper_bridge_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_bridge_destroy_state,
+	.atomic_reset = drm_atomic_helper_bridge_reset,
 	.atomic_pre_enable = analogix_dp_bridge_atomic_pre_enable,
 	.atomic_enable = analogix_dp_bridge_atomic_enable,
 	.atomic_disable = analogix_dp_bridge_atomic_disable,
-- 
2.24.1

