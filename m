Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B902614A26F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2020 12:00:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729835AbgA0LA4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jan 2020 06:00:56 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:58222 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729912AbgA0LAz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jan 2020 06:00:55 -0500
Received: from localhost.localdomain (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 41BDA293475;
        Mon, 27 Jan 2020 11:00:53 +0000 (GMT)
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
Subject: [PATCH v9 09/12] dt-bindings: display: bridge: lvds-codec: Add new bus-width prop
Date:   Mon, 27 Jan 2020 12:00:40 +0100
Message-Id: <20200127110043.2731697-10-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200127110043.2731697-1-boris.brezillon@collabora.com>
References: <20200127110043.2731697-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the bus-width property to describe the input bus format.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
Changes in v7:
* Rebase on top of lvds-codec changes
* Drop the data-mapping property

Changes in v3:
* New patch
---
 .../devicetree/bindings/display/bridge/lvds-codec.yaml    | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 8f373029f5d2..7c4e42f4de61 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -55,6 +55,14 @@ properties:
         description: |
           For LVDS encoders, port 0 is the parallel input
           For LVDS decoders, port 0 is the LVDS input
+        properties:
+          bus-width:
+            allOf:
+              - $ref: /schemas/types.yaml#/definitions/uint32
+              - enum: [18, 24]
+              - default: 24
+          description:
+            Number of data lines used to transmit the RGB data.
 
       port@1:
         type: object
-- 
2.24.1

