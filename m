Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B216A4E9A9F
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 17:12:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243475AbiC1PNw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 11:13:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244415AbiC1PNM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 11:13:12 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F39560078
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 08:11:31 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nYr1g-00006a-Kn; Mon, 28 Mar 2022 17:11:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nYr1c-003cTs-NH; Mon, 28 Mar 2022 17:11:23 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <sha@pengutronix.de>)
        id 1nYr1a-008XM1-Qp; Mon, 28 Mar 2022 17:11:18 +0200
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
Subject: [PATCH v9 23/23] dt-bindings: display: rockchip: dw-hdmi: fix ports description
Date:   Mon, 28 Mar 2022 17:11:16 +0200
Message-Id: <20220328151116.2034635-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220328151116.2034635-1-s.hauer@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
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
index d7cb2b2be60e8..7e59dee15a5f4 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -97,27 +97,21 @@ properties:
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

