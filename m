Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B5AE4C365C
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 20:59:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230052AbiBXT7Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 14:59:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230023AbiBXT7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 14:59:24 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC3A618FAD3
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:58:53 -0800 (PST)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0AFF883CB7;
        Thu, 24 Feb 2022 20:58:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1645732731;
        bh=AkY0KH54MhGTDZTKwGecoPl4iLb/pqWTmjJxoHyApwo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=JM2M85unuplj3uAxG4Vqaj5IIsvDrGpMoG8GojW6glNfgav20csiK8qjAtH4KgvtE
         CSXOCZPtbP2fc9Hs4NE0+661XTcpmUEsdpOdtl7Vh5wodIXU2gejU6u94443cEOgP1
         eZff69bYUMMdrBTIHW10x6/r5ThLDHr3JWi1R8zOg9dK56cBfNTMa+luPYENWCQNwY
         IRXWf8ykCFRmy06Ser8volNf36P1Pka6etl3dTtPBvrBprOUWULHYQvMLCdLq77Nu3
         0g3vjSclC8Gs5eGXJag1yzoQoJRgxzJ3SeFIkyHA4dPYC1o+7HufqOCuCI5ilFwwhv
         5mDqQH9SOcK9w==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Jonas Karlman <jonas@kwiboo.se>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH V3 02/12] dt-bindings: display: bridge: tc358867: Document DSI data-lanes property
Date:   Thu, 24 Feb 2022 20:58:07 +0100
Message-Id: <20220224195817.68504-3-marex@denx.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220224195817.68504-1-marex@denx.de>
References: <20220224195817.68504-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is necessary to specify the number of connected/used DSI data lanes when
using the DSI input port of this bridge. Document the 'data-lanes' property
of the DSI input port.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Maxime Ripard <maxime@cerno.tech>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V3: - New patch
---
 .../display/bridge/toshiba,tc358767.yaml       | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index 5cfda6f2ba69c..ed280053ec62b 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -53,11 +53,27 @@ properties:
 
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: |
             DSI input port. The remote endpoint phandle should be a
             reference to a valid DSI output endpoint node
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                description: array of physical DSI data lane indexes.
+                minItems: 1
+                items:
+                  - const: 1
+                  - const: 2
+                  - const: 3
+                  - const: 4
+
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
         description: |
-- 
2.34.1

