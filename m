Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 155DA4F8782
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 20:56:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233753AbiDGS6i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 14:58:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233161AbiDGS6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 14:58:37 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6E2A1DFDF4
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 11:56:35 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B60B483C8C;
        Thu,  7 Apr 2022 20:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649357792;
        bh=bC0Px5YzU58joefUkn3NsLO86IbLJYTHdRr0+ibfnA8=;
        h=From:To:Cc:Subject:Date:From;
        b=PzVvapYO2/uYIepWK6zYGPHV4fNzm0CfSi7QQ0rGKLZ5l5WKaLW5auysFljdRiNmS
         Po95/nhwU5VwCrhLieeJQylfxdUZ5YSwPVLe0XoiWvodqM0VKTMpeBxCLn3pGIK6pa
         gL6BKJjVXQ3ZEN85NQaG7mXxDKjiRlsCAiQZE+0S4F6y/+mDJjkME0Q2sIcvQmqhKm
         aZsTU4zVlF1Au824NXAZT/Zs80J0gGQYbCQFVafzNuougBUafM5z02J/KJ2DuLzyqU
         okQ31JSrhsj0lQnKiHcb177859vhO/L4OtLfh55PylfihUH6cem48Z/Qxqzq8+ekUH
         jngY41JxDX7Ow==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: bridge: icn6211: Document DSI data-lanes property
Date:   Thu,  7 Apr 2022 20:56:16 +0200
Message-Id: <20220407185617.179573-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is necessary to specify the number of connected/used DSI data lanes when
using the DSI input port of this bridge. Document the 'data-lanes' property
of the DSI input port.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Maxime Ripard <maxime@cerno.tech>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Robert Foss <robert.foss@linaro.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
NOTE: This is consistent with all the other DSI panel and bridge bindings which
      document 'data-lanes' property, all of which already use OF graph and have
      the 'data-lanes' property in the port@N subnode, see:
      $ git grep -l data-lanes Documentation/devicetree/bindings/display/
---
 .../display/bridge/chipone,icn6211.yaml        | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
index 7257fd0ae4da8..4f0b7c71313c3 100644
--- a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
@@ -41,10 +41,26 @@ properties:
 
     properties:
       port@0:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description:
           Video port for MIPI DSI input
 
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
         description:
-- 
2.35.1

