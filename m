Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1481C4EA9C8
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 10:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234207AbiC2IwW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 04:52:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234209AbiC2IwW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 04:52:22 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9214B4C7AA
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 01:50:39 -0700 (PDT)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id AB48483FB5;
        Tue, 29 Mar 2022 10:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1648543837;
        bh=w3eqjtmimpuk6Dm7HKnrnO7NcTl4iXt0otP/1Wg8+9U=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=bTHfaqJfcFFmKXpbz2t9zhyAu4waxvIebM4HBNxWXNtbihFElkxggvaEpTF8z2GpL
         B6MNkD+RESMFiDF4lDEBcz36+tm0DUaFPDXiI2X8CzL5zyTERp3sxzs8hyLbYA5ew+
         kjJvs+QA8ZRbr1jSIe6inblBWpzuJSOjumkI1wJt57rjPr3PMO1K4Gg2Fd8DT8O5+a
         NjTgBP3jVqicaze5cdo9SIsWxZBFaNvJ+FyQhfd55pfaclgsO3AWK5MRrVvTk6ChM8
         UIsoNz3IiI49RvaxW7EiRlOPnLfsxz9ZN089qvMjhuM0ormEd88W5FBEIhyboAB0Qn
         hDo6IAAvOF/bQ==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     l.stach@pengutronix.de, Marek Vasut <marex@denx.de>,
        Rob Herring <robh@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH v5 02/11] dt-bindings: display: bridge: tc358867: Document DSI data-lanes property
Date:   Tue, 29 Mar 2022 10:50:06 +0200
Message-Id: <20220329085015.39159-3-marex@denx.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329085015.39159-1-marex@denx.de>
References: <20220329085015.39159-1-marex@denx.de>
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

Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Lucas Stach <l.stach@pengutronix.de> # In both DPI to eDP and DSI to DPI mode.
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
V4: - Add RB by Rob, AB/TB by Lucas
V5: - No change
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
2.35.1

