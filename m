Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A596A381B14
	for <lists+devicetree@lfdr.de>; Sat, 15 May 2021 22:47:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234963AbhEOUsa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 May 2021 16:48:30 -0400
Received: from phobos.denx.de ([85.214.62.61]:50376 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234934AbhEOUsa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 15 May 2021 16:48:30 -0400
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B7D7C81CD1;
        Sat, 15 May 2021 22:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1621111635;
        bh=zXp6+1xGDa5IGQZccezDb6veQ9bou6I1w8cLQoApeCM=;
        h=From:To:Cc:Subject:Date:From;
        b=vh1ZLHvOJVQ6RESbW9wuQbNW+qKGUbmyW4dpKREiCJNSnlQ93FMc6P3oUkdjWPIgs
         cW4ca0pwRCWtwndoBzpCIv4wmqlbAt9mjUfliJvsD7qajhYv8ogt8xMPGc2M+WaSUO
         RFGnkYn5PiMxTe27c3Bq7yY7OBDOJqLDQTd/UuuOlrCHz3cv7hNytqNDTmn6zgy7oC
         5DuQVQBxnKNDi7/rtFcTXvb5KumRom5lbuKRgneeuRIYI81Zlny5n2iziGvvhpB/YU
         3RIeHNZgJWpWLdN4jSxGCZA9PwX9lj5L4cROlyRXXZOy2WyLYVLgi1LowsOzOey+OC
         G9ElqZ9TZoF+w==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     ch@denx.de, Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: bridge: lvds-codec: Document LVDS data mapping select
Date:   Sat, 15 May 2021 22:46:55 +0200
Message-Id: <20210515204656.367442-1-marex@denx.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
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
 .../bindings/display/bridge/lvds-codec.yaml   | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index f4dd16bd69d2..f0abb94f8f2e 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -64,6 +64,15 @@ properties:
       - port@0
       - port@1
 
+  data-mapping:
+    enum:
+      - jeida-18
+      - jeida-24
+      - vesa-24
+    description: |
+      The color signals mapping order. See details in
+      Documentation/devicetree/bindings/display/panel/lvds.yaml
+
   pclk-sample:
     description:
       Data sampling on rising or falling edge.
@@ -79,6 +88,16 @@ properties:
 
   power-supply: true
 
+if:
+  not:
+    properties:
+      compatible:
+        contains:
+          const: lvds-decoder
+then:
+  properties:
+    data-mapping: false
+
 if:
   not:
     properties:
-- 
2.30.2

