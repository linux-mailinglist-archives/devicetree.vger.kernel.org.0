Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32B031FCA1D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2020 11:47:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725536AbgFQJrJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jun 2020 05:47:09 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:56706 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgFQJrH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jun 2020 05:47:07 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id D0F832A3878
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, robh+dt@kernel.org, airlied@linux.ie
Subject: [PATCH v4 2/4] dt-bindings: display: ti,tfp410.yaml: Redefine ti,deskew property
Date:   Wed, 17 Jun 2020 11:46:31 +0200
Message-Id: <20200617094633.19663-3-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
References: <20200617094633.19663-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This changes how the 'ti,deskew' property is defined. It's now an
unsigned value from 0 to 7 instead of a signed value from -4 to 3.
Until the dtc carries the integer sign through to the yaml output it's
easier to define signed types as unsigned.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../devicetree/bindings/display/bridge/ti,tfp410.yaml    | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
index 5569a4907765..605831c1e836 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
@@ -23,11 +23,12 @@ properties:
 
   ti,deskew:
     description:
-      Data de-skew in 350ps increments, from -4 to +3, as configured
-      through th DK[3:1] pins. This property shall be present only if the TFP410
-      is not connected through I2C.
-    maxItems: 1
+      Data de-skew value in 350ps increments, from 0 to 7, as configured
+      through the DK[3:1] pins. The de-skew multiplier is computed as
+      (DK[3:1] - 4), so it ranges from -4 to 3.
     $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 7
 
   ports:
     description:
-- 
2.18.0

