Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7704E5279C3
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233033AbiEOUVj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229824AbiEOUVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:37 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26E8D1EAF1
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:35 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mn2Jj-1nRQ6b1e8V-00kBkK; Sun, 15 May 2022 22:21:18 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 01/11] dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
Date:   Sun, 15 May 2022 22:20:22 +0200
Message-Id: <20220515202032.3046-2-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220515202032.3046-1-stefan.wahren@i2se.com>
References: <20220515202032.3046-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:c7pGFENzAqMSCqN7MGXhkFOqceYQpzp1FDFxXFmlbRkX0WJuLVR
 qcx6ZWICXAURR6xq0e3VFto5fdnepYtfRBywg5pnESppn30Q9UvHo7x8yhkWTKFA5lT8ffq
 ZTG3rSiwthIl9lhh+V5AwVLftqrdvy1jJyAWh7WThaRKekP6TU+iN+qD/XA5JkTcPSZ2B/i
 pSxmNhnoM2Fi1bivPQUEg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:wSCxaowmMu0=:n2eFcECYIstpec0LUxz/aO
 wY8YORyMKu+IeVSWbaSJb+3p+BAUZkwe7wLRgG/9/rZEfC2opv6a8dHa8yF0ZAT4OWaLwNhf8
 QiGV5be/3yiLwNhjAdLiXrZtBSO7usjXJoGkdfOltAXUFrW5oBBIsIfWwPZ7u++8c0LGURNY4
 zPHufTolluKi1oxpgM0Hsl/73usVK0JpUp1LEnLN19O2F+WIzRpcwtD8jwg/4C7y4LGtZ2nd1
 FaMgP3Bsi4OmLGZFE8B4GezfMP7MPSTy9p3yA5wk3aUJshhDwwMATeiBOehoZr3WjzaJKneDk
 aiC+WF+Zj3/oIANYzfeMQEMH5rI4L9ioY0iDRNScaJ1a9gK0O3IFiXCNUBxYcr+KlAu8SweB1
 Ex9r4XHw5zhUJEl/XAj5ZkxL1ZS42SFyQEt/4FBr4d7tzg3ZvYViaKpklENaTpR/X5ceie8S6
 0ObbyDcmqj9sgRB68T2I33qFOcJoiEdNM4is0mk3OPOBR4wS0ib0XUXgn3SSv7RQBxDaWFmfL
 MeI3jvfBHCX9KhFE11NLVnqKJFqGQEihUlzogHrz8QD9LZW5y61QB/oc0ymj2j+jaJsbdlgek
 o967DAbyVMOScuWxKp5oAnF4vliGQV8hQs5h2hbt+fUIaSw618p004zD5Ms+Gd0mxj4NADVLC
 REHYkxMfzHtsMyDanBBpLwcYMMK2VMPmBKoIUsgmR8PjQl0nhm0EMGyxLqr7Dr+igvxbwzXQU
 sri93uiw021KfwDR
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

This converts the brcm,bcm2835-pm bindings from text to proper schema.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 .../bindings/soc/bcm/brcm,bcm2835-pm.txt      | 46 -----------
 .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 77 +++++++++++++++++++
 2 files changed, 77 insertions(+), 46 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
deleted file mode 100644
index 72ff033565e5..000000000000
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
+++ /dev/null
@@ -1,46 +0,0 @@
-BCM2835 PM (Power domains, watchdog)
-
-The PM block controls power domains and some reset lines, and includes
-a watchdog timer.  This binding supersedes the brcm,bcm2835-pm-wdt
-binding which covered some of PM's register range and functionality.
-
-Required properties:
-
-- compatible:		Should be "brcm,bcm2835-pm"
-- reg:			Specifies base physical address and size of the two
-			  register ranges ("PM" and "ASYNC_BRIDGE" in that
-			  order)
-- clocks:		a) v3d: The V3D clock from CPRMAN
-			b) peri_image: The PERI_IMAGE clock from CPRMAN
-			c) h264: The H264 clock from CPRMAN
-			d) isp: The ISP clock from CPRMAN
-- #reset-cells: 	Should be 1.  This property follows the reset controller
-			  bindings[1].
-- #power-domain-cells:	Should be 1.  This property follows the power domain
-			  bindings[2].
-
-Optional properties:
-
-- timeout-sec:		Contains the watchdog timeout in seconds
-- system-power-controller: Whether the watchdog is controlling the
-    system power.  This node follows the power controller bindings[3].
-
-[1] Documentation/devicetree/bindings/reset/reset.txt
-[2] Documentation/devicetree/bindings/power/power-domain.yaml
-[3] Documentation/devicetree/bindings/power/power-controller.txt
-
-Example:
-
-pm {
-	compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
-	#power-domain-cells = <1>;
-	#reset-cells = <1>;
-	reg = <0x7e100000 0x114>,
-	      <0x7e00a000 0x24>;
-	clocks = <&clocks BCM2835_CLOCK_V3D>,
-		 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
-		 <&clocks BCM2835_CLOCK_H264>,
-		 <&clocks BCM2835_CLOCK_ISP>;
-	clock-names = "v3d", "peri_image", "h264", "isp";
-	system-power-controller;
-};
diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
new file mode 100644
index 000000000000..5d1ff0f6c8ce
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/bcm/brcm,bcm2835-pm.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: BCM2835 PM (Power domains, watchdog)
+
+description: |
+  The PM block controls power domains and some reset lines, and includes a
+  watchdog timer.
+
+maintainers:
+  - Nicolas Saenz Julienne <nsaenz@kernel.org>
+
+allOf:
+  - $ref: ../../watchdog/watchdog.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: brcm,bcm2835-pm
+      - const: brcm,bcm2835-pm-wdt
+
+  reg:
+    items:
+      - description: PM registers
+      - description: ASB registers
+
+  "#power-domain-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  clocks:
+    minItems: 4
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: v3d
+      - const: peri_image
+      - const: h264
+      - const: isp
+
+  system-power-controller:
+    type: boolean
+
+  timeout-sec: true
+
+required:
+  - compatible
+  - reg
+  - "#power-domain-cells"
+  - "#reset-cells"
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/bcm2835.h>
+
+    watchdog@7e100000 {
+        compatible = "brcm,bcm2835-pm", "brcm,bcm2835-pm-wdt";
+        #power-domain-cells = <1>;
+        #reset-cells = <1>;
+        reg = <0x7e100000 0x114>,
+              <0x7e00a000 0x24>;
+        clocks = <&clocks BCM2835_CLOCK_V3D>,
+               <&clocks BCM2835_CLOCK_PERI_IMAGE>,
+               <&clocks BCM2835_CLOCK_H264>,
+               <&clocks BCM2835_CLOCK_ISP>;
+        clock-names = "v3d", "peri_image", "h264", "isp";
+        system-power-controller;
+    };
-- 
2.25.1

