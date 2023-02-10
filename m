Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22D156924F6
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 19:00:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232692AbjBJSAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 13:00:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232163AbjBJSAr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 13:00:47 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21F0575F40
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 10:00:47 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pQXhH-0001UU-UW; Fri, 10 Feb 2023 19:00:31 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pQXh4-0042Xj-Hj; Fri, 10 Feb 2023 19:00:19 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pQXh5-002UH3-2e; Fri, 10 Feb 2023 19:00:19 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/2] dt-bindings: display: imx: Describe drm binding for fsl,imx-lcdc
Date:   Fri, 10 Feb 2023 19:00:13 +0100
Message-Id: <20230210180014.173379-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230210180014.173379-1-u.kleine-koenig@pengutronix.de>
References: <20230210180014.173379-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2253; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=x6IJvlqrCUPOPz13nY7dPLDP98HvQ2GGgbTsyPTap4Y=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBj5oYj+Xv8MLKDESfCUw7E/vHZ8fyh9K1np03wbKA6 jyHSOIOJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCY+aGIwAKCRDB/BR4rcrsCf0ZCA CCbVUGTlDUOhFfUK60Il68YF+CuGMak1jmjcsVKDWjwciG1NDx6cZLQg72PCFLaeN5JKrRJ0ku+tn/ NwEEmW6bcdpyDGUFTjiZTu5Jc1RtPans23/nbQZmhyzQ5GHTHMWmwK1N23pI56ReGyAIRe4G/YfGzv 4tQM7eiZ8A/O9SkAo+eGy391GBVt3iSQu5LZ/pn+J452yl7RQM0JSX9SJ7ymQnwJIeABVVu0KluJ8w JKGdQMEEv2S8kr/KmrD+EyLe9ffKTav+5LrKq1VnG5ssD4zVwDnGv7xsj8BKv7PbCBJhTEAVoAMndX bF00n+XMTOR8YXGbpYNtERFi41EG1V
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Modify the existing (fb-like) binding to support the drm-like binding in
parallel.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 .../bindings/display/imx/fsl,imx-lcdc.yaml    | 46 ++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.yaml
index 35a8fff036ca..c2b29622bceb 100644
--- a/Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.yaml
+++ b/Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.yaml
@@ -21,6 +21,9 @@ properties:
               - fsl,imx25-fb
               - fsl,imx27-fb
           - const: fsl,imx21-fb
+      - items:
+          - const: fsl,imx25-lcdc
+          - const: fsl,imx21-lcdc
 
   clocks:
     maxItems: 3
@@ -31,6 +34,9 @@ properties:
       - const: ahb
       - const: per
 
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+
   display:
     $ref: /schemas/types.yaml#/definitions/phandle
 
@@ -59,17 +65,55 @@ properties:
     description:
       LCDC Sharp Configuration Register value.
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - fsl,imx1-lcdc
+              - fsl,imx21-lcdc
+    then:
+      properties:
+        display: false
+        fsl,dmacr: false
+        fsl,lpccr: false
+        fsl,lscr1: false
+
+      required:
+        - port
+
+    else:
+      properties:
+        port: false
+
+      required:
+        - display
+
 required:
   - compatible
   - clocks
   - clock-names
-  - display
   - interrupts
   - reg
 
 additionalProperties: false
 
 examples:
+  - |
+    lcdc@53fbc000 {
+        compatible = "fsl,imx25-lcdc", "fsl,imx21-lcdc";
+        reg = <0x53fbc000 0x4000>;
+        interrupts = <39>;
+        clocks = <&clks 103>, <&clks 66>, <&clks 49>;
+        clock-names = "ipg", "ahb", "per";
+
+        port {
+            parallel_out: endpoint {
+              remote-endpoint = <&panel_in>;
+            };
+        };
+    };
   - |
     imxfb: fb@10021000 {
         compatible = "fsl,imx21-fb";
-- 
2.39.0

