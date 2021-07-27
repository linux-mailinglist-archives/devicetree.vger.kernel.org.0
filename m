Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEF073D7AB1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 18:14:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229489AbhG0QOS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 12:14:18 -0400
Received: from phobos.denx.de ([85.214.62.61]:43262 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229497AbhG0QOR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 27 Jul 2021 12:14:17 -0400
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 254BF82F1A;
        Tue, 27 Jul 2021 18:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1627402456;
        bh=1oeNVlNxoucKGXuCnB3vAxpY6UMVbvWD9BSKIfMzzqA=;
        h=From:To:Cc:Subject:Date:From;
        b=O00lirTjx3CYtMmRJWtty2HZmnQa/TL+3fHtuvp6P7fCeNwAneAXOOJ5lo7qVwGl0
         Vl3FxQaW6QtBxqQLjEqIcFCzpqpzp1VzyxBwlCNdjTuf/lqhW56eCm+3tF8hE+Inex
         x2AiNYy0LAF4mXw4sbz6MsYiO2gWDEgOJvYur6OAt8pJobJNa2ODXAasaFFZ9Fqfc3
         8GzOBbC8zqhtsPfZpqZt0/Ch7iS6qatLjUI9B+lPMyznv8+V+WjAYbwlRc2eHLhsbj
         38mQP7JQmFOEm3nNuLQQ7hJj1/mnbdmFd42A8TjiU8qUO1RvEyw7IupODDkEfwm9gv
         dtpfzYhU4Fbcg==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH V4 1/2] dt-bindings: display: bridge: lvds-codec: Document LVDS data mapping select
Date:   Tue, 27 Jul 2021 18:13:56 +0200
Message-Id: <20210727161357.8842-1-marex@denx.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Decoder input LVDS format is a property of the decoder chip or even
its strapping. Add DT property data-mapping the same way lvds-panel
does, to define the LVDS data mapping.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V2: - Use allOf
    - Move the data-mapping to endpoint
V3: - Rebase on V2 submitted a while ago, reinstate changelog
    - Drop the allOf and un-rebase on previous pclk patch
V4: - port@1, remove $ref: /schemas/graph.yaml#/properties/port and
      add $ref: /schemas/graph.yaml#/$defs/port-base
---
 .../bindings/display/bridge/lvds-codec.yaml   | 33 ++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 304a1367faaa7..c0400c60f272a 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -55,11 +55,26 @@ properties:
           For LVDS decoders, port 0 is the LVDS input
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
         description: |
           For LVDS encoders, port 1 is the LVDS output
           For LVDS decoders, port 1 is the parallel output
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-mapping:
+                enum:
+                  - jeida-18
+                  - jeida-24
+                  - vesa-24
+                description: |
+                  The color signals mapping order. See details in
+                  Documentation/devicetree/bindings/display/panel/lvds.yaml
+
     required:
       - port@0
       - port@1
@@ -71,6 +86,22 @@ properties:
 
   power-supply: true
 
+if:
+  not:
+    properties:
+      compatible:
+        contains:
+          const: lvds-decoder
+then:
+  properties:
+    ports:
+      properties:
+        port@1:
+          properties:
+            endpoint:
+              properties:
+                data-mapping: false
+
 required:
   - compatible
   - ports
-- 
2.30.2

