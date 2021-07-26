Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A17F93D6863
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 23:03:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233199AbhGZUWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 16:22:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233081AbhGZUWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 16:22:42 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2FF9C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 14:03:10 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 0CF8983343;
        Mon, 26 Jul 2021 23:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1627333388;
        bh=TL41y2FDQuhG0hYx54miiXzWh4R1JANiHcbnbdyX8pM=;
        h=From:To:Cc:Subject:Date:From;
        b=uMJyOE66hTE32wOThFSCo9AlZ18g6BzQpN1k3rkVcI9ragHYvYxtwX9PgOZqADSik
         Bgy0/iUXnh8ByobHbqgmkH2chaCm8NmKOQnHha2+y4SZgmJ0olcPWW+odc/uZ2pv/Z
         zA73xOr+eoK85Tb1hCsEXOeZ8lNg3j8YFa9L0wphGXilsNHD1wUoynwVwuSt8GItob
         NPT6/KlvdgRNuiTig5UBOxcgQIE98UptATiKp9RlDCtQ4PPwEPQMlkXiFGWMxJ6wJh
         2Q6cuG78TOr4COrZMhGch9zxxznZcI//iHPLwLMQX+Zb3sY5ZOtkVlS3R+R5hjqVQO
         QByM3T+LJd3OA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH V3 1/2] dt-bindings: display: bridge: lvds-codec: Document LVDS data mapping select
Date:   Mon, 26 Jul 2021 23:02:49 +0200
Message-Id: <20210726210250.531544-1-marex@denx.de>
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
---
 .../bindings/display/bridge/lvds-codec.yaml   | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 304a1367faaa7..f795c671c3ce1 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -60,6 +60,21 @@ properties:
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

