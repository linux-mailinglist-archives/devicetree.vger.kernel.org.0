Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 539C3538558
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 17:49:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239330AbiE3PtM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 11:49:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240451AbiE3Psu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 11:48:50 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D8AECE5D9
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 08:06:12 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy4-0005Kw-Bj; Mon, 30 May 2022 17:06:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy4-005TIB-Q7; Mon, 30 May 2022 17:06:03 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvgy1-005Bdz-DD; Mon, 30 May 2022 17:06:01 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     robert.foss@linaro.org, laurent.pinchart@ideasonboard.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        maxime@cerno.tech
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: [PATCH 2/6] dt-bindings: drm/bridge: ti-sn65dsi83: add documentation for reverse lvds lanes
Date:   Mon, 30 May 2022 17:05:45 +0200
Message-Id: <20220530150548.1236307-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220530150548.1236307-1-m.felsch@pengutronix.de>
References: <20220530150548.1236307-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TI converter chip can swap the LVDS data lanes in a pre-defined
manner. This can be useful to improve the layout characteristic.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../bindings/display/bridge/ti,sn65dsi83.yaml | 58 ++++++++++++++++++-
 1 file changed, 56 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index 48a97bb3e2e0..7306b9874dc3 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -80,13 +80,67 @@ properties:
                   - const: 4
 
       port@2:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: Video port for LVDS Channel-A output (panel or bridge).
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                description: |
+                  Array of physical LVDS data lane indexes in reverse or normal
+                  order. Specify it in reverse order to enable the bridge CHA
+                  reverse ordering. If not specified normal order is used.
+                items:
+                  oneOf:
+                    # reverse order
+                    - items:
+                        - const: 4
+                        - const: 3
+                        - const: 2
+                        - const: 1
+                    # normal order
+                    - items:
+                        - const: 1
+                        - const: 2
+                        - const: 3
+                        - const: 4
+
       port@3:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description: Video port for LVDS Channel-B output (panel or bridge).
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                description: |
+                  Array of physical LVDS data lane indexes in reverse or normal
+                  order. Specify it in reverse order to enable the bridge CHB
+                  reverse ordering. If not specified normal order is used.
+                items:
+                  oneOf:
+                    # reverse order
+                    - items:
+                        - const: 4
+                        - const: 3
+                        - const: 2
+                        - const: 1
+                    # normal order
+                    - items:
+                        - const: 1
+                        - const: 2
+                        - const: 3
+                        - const: 4
+
     required:
       - port@0
       - port@2
-- 
2.30.2

