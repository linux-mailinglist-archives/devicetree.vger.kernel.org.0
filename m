Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C9B264F0A6
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 18:50:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231474AbiLPRud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 12:50:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231655AbiLPRub (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 12:50:31 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1C3D6F0EB
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 09:50:29 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1p6Eqk-0003G5-4n; Fri, 16 Dec 2022 18:50:22 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1p6Eqi-004yLn-6f; Fri, 16 Dec 2022 18:50:20 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1p6Eqi-005bHr-8U; Fri, 16 Dec 2022 18:50:20 +0100
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] dt-bindings: display: imx: Describe drm binding for fsl,imx-lcdc
Date:   Fri, 16 Dec 2022 18:50:05 +0100
Message-Id: <20221216175006.456831-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
References: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2213; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=+o97UWNKOITFTgJZ9g5S548bst7Mc0sIQYEM3Ley3OI=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBjnK/GwgdSSfWpYxhChKhhr/8KA8c9ANecPeod0MvZ 7b+78HqJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCY5yvxgAKCRDB/BR4rcrsCUXZB/ 9TiDQbLJq05xjVFKZpPTl81n0cV6K1tt2H1MFbs81egis7yQPpAuTcrnVcbZn9NJzl1sALlxPKE5dr 51mjckQ8Fp5Hlk0tWu/tEUPbsl4I7/xat9G7Ibt2qzUmez52JmB+zY246Kv2iDBjobiMdL/grT0iPl i4VSZxEaOleucLFyIc16IXww4niI+su45qRzeMEsDc52vsVDnCfWwhRtBfrAl3Eu4G9WjR7Y/+ptK/ 4wsTc+xlibc7YNz+OrCWeeJILhG61bkuR/ptFtQPsUIVQLLsnDlnNc+JEbWC6gVkQNDRgQGOTIyC1y QXVuiZboE1Nz4/eBjXWX2l91oH12sq
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
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
index 35a8fff036ca..c2a063bd5fb3 100644
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
+  if:
+    properties:
+      compatible:
+        contains:
+          enum:
+            - fsl,imx1-lcdc
+            - fsl,imx21-lcdc
+  then:
+    properties:
+      display: false
+      fsl,dmacr: false
+      fsl,lpccr: false
+      fsl,lscr1: false
+
+    required:
+      - port
+
+  else:
+    properties:
+      port: false
+
+    required:
+      - display
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
2.38.1

