Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14C334C3F61
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 08:52:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234425AbiBYHwf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 02:52:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238273AbiBYHwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 02:52:34 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 675A849F36
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 23:52:02 -0800 (PST)
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nNVON-0000Q5-Cg; Fri, 25 Feb 2022 08:51:55 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nNVOL-00BSYU-El; Fri, 25 Feb 2022 08:51:53 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     dri-devel@lists.freedesktop.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v7 24/24] dt-bindings: display: rockchip: dw-hdmi: fix ports description
Date:   Fri, 25 Feb 2022 08:51:50 +0100
Message-Id: <20220225075150.2729401-25-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220225075150.2729401-1-s.hauer@pengutronix.de>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
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

Current port description doesn't cover all possible cases. It currently
expects one single port with two endpoints.

When the HDMI connector is described in the device tree there can be two
ports, first one going to the VOP and the second one going to the connector.

Also on SoCs which only have a single VOP there will be only one
endpoint instead of two.

This patch addresses both issues. With this there can either be a single
port ("port") , or two of them ("port@0", "port@1") when the connector
is also in the device tree. Also the first or only port can either have
one endpoint ("endpoint") for single VOP SoCs or two ("endpoint@0",
"endpoint@1") for dual VOP SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v6:
    - Add Reviewed-by: Rob Herring <robh@kernel.org>
    Changes since v5:
    - new patch

 .../display/rockchip/rockchip,dw-hdmi.yaml    | 24 +++++++------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 7dd753630b46a..fc26f1d4d001c 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -102,27 +102,21 @@ properties:
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-    properties:
-      port:
-        $ref: /schemas/graph.yaml#/$defs/port-base
-        unevaluatedProperties: false
+    patternProperties:
+      "^port(@0)?$":
+        $ref: /schemas/graph.yaml#/properties/port
         description: Input of the DWC HDMI TX
-
         properties:
+          endpoint:
+            description: Connection to the VOP
           endpoint@0:
-            $ref: /schemas/graph.yaml#/properties/endpoint
             description: Connection to the VOPB
-
           endpoint@1:
-            $ref: /schemas/graph.yaml#/properties/endpoint
             description: Connection to the VOPL
-
-        required:
-          - endpoint@0
-          - endpoint@1
-
-    required:
-      - port
+    properties:
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output of the DWC HDMI TX
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.30.2

