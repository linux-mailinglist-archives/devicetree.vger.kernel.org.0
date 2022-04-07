Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F26CB4F83E1
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 17:44:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344994AbiDGPqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 11:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345021AbiDGPqM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 11:46:12 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5168FC1C8C
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 08:44:05 -0700 (PDT)
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncUIl-0007bF-OE; Thu, 07 Apr 2022 17:44:03 +0200
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH 07/14] dt-bindings: reset: oxsemi,oxnas-reset: Convert to yaml
Date:   Thu,  7 Apr 2022 17:43:31 +0200
Message-Id: <20220407154338.4190674-7-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220407154338.4190674-1-p.zabel@pengutronix.de>
References: <20220407154338.4190674-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::39
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the device tree bindings for the Oxford Semiconductor OXNAS
reset controllers to YAML schema to allow participating in DT
validation.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/reset/oxnas,reset.txt | 32 -------------
 .../bindings/reset/oxsemi,oxnas-reset.yaml    | 48 +++++++++++++++++++
 2 files changed, 48 insertions(+), 32 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/reset/oxnas,reset.txt
 create mode 100644 Documentation/devicetree/bindings/reset/oxsemi,oxnas-reset.yaml

diff --git a/Documentation/devicetree/bindings/reset/oxnas,reset.txt b/Documentation/devicetree/bindings/reset/oxnas,reset.txt
deleted file mode 100644
index d27ccb5d04fc..000000000000
--- a/Documentation/devicetree/bindings/reset/oxnas,reset.txt
+++ /dev/null
@@ -1,32 +0,0 @@
-Oxford Semiconductor OXNAS SoC Family RESET Controller
-================================================
-
-Please also refer to reset.txt in this directory for common reset
-controller binding usage.
-
-Required properties:
-- compatible: For OX810SE, should be "oxsemi,ox810se-reset"
-	      For OX820, should be "oxsemi,ox820-reset"
-- #reset-cells: 1, see below
-
-Parent node should have the following properties :
-- compatible: For OX810SE, should be :
-			"oxsemi,ox810se-sys-ctrl", "syscon", "simple-mfd"
-	      For OX820, should be :
-			"oxsemi,ox820-sys-ctrl", "syscon", "simple-mfd"
-
-Reset indices are in dt-bindings include files :
-- For OX810SE: include/dt-bindings/reset/oxsemi,ox810se.h
-- For OX820: include/dt-bindings/reset/oxsemi,ox820.h
-
-example:
-
-sys: sys-ctrl@000000 {
-	compatible = "oxsemi,ox810se-sys-ctrl", "syscon", "simple-mfd";
-	reg = <0x000000 0x100000>;
-
-	reset: reset-controller {
-		compatible = "oxsemi,ox810se-reset";
-		#reset-cells = <1>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/reset/oxsemi,oxnas-reset.yaml b/Documentation/devicetree/bindings/reset/oxsemi,oxnas-reset.yaml
new file mode 100644
index 000000000000..3cd2ce85a056
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/oxsemi,oxnas-reset.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/oxsemi,oxnas-reset.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Oxford Semiconductor OXNAS SoC Family RESET Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  Reset indices are in dt bindings include files:
+  - For OX810SE: include/dt-bindings/reset/oxsemi,ox810se.h
+  - For OX820: include/dt-bindings/reset/oxsemi,ox820.h
+
+properties:
+  compatible:
+    enum:
+      - oxsemi,ox810se-reset
+      - oxsemi,ox820-reset
+
+  reg:
+    maxItems: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    // For OX810SE:
+    #include <dt-bindings/reset/oxsemi,ox810se.h>
+
+    sys: sys-ctrl@000000 {
+        compatible = "oxsemi,ox810se-sys-ctrl", "syscon", "simple-mfd";
+        reg = <0x000000 0x100000>;
+
+        reset: reset-controller {
+            compatible = "oxsemi,ox810se-reset";
+            #reset-cells = <1>;
+        };
+    };
-- 
2.30.2

