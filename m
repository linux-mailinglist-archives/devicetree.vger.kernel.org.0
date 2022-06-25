Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3842655A983
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232285AbiFYLhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232671AbiFYLhU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:20 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CF0516586
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:19 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N0WLC-1nhkPh1V1Y-00wTxi; Sat, 25 Jun 2022 13:37:01 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Rob Herring <robh@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V4 01/11] dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
Date:   Sat, 25 Jun 2022 13:36:09 +0200
Message-Id: <20220625113619.15944-2-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220625113619.15944-1-stefan.wahren@i2se.com>
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:msqBF+QLUnnWMtPx4/p2yPn6zghKFQymebuRS3n1XDjJk9nJka1
 r23Yv4ORbKSnV6PQGsKet8GpXQPvYvQryamimaSaHjVWC8qLpw+iIsdFoqsYmEShQ+Jsdlr
 H6yIl3EDxyIghzMni95c8Y0puDJoPL+W9JpEvxosem55CvbQV16R+3FfH0Y5Dzu81ME04x3
 PXtVyyvEHEtXMLAx26FwA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ez0nIWd3UkI=:wNuRCL4PzCgqB9H2uGFa98
 dBucIhFpQbvsjehK3nxW3b1Ot5stpY2Z+NtV8tXQx/UJXLSf41zUHe/40BwU+mi5XfPHtjpmA
 uCikDAlMiOhsIK8FX3uFOVTh/AWOSsRbzFj12FAyKt75YNSXZra21LlYfkukNmbOlo/q9foZm
 vkXxUbEAjx6fHJZijitP+VO8XcRIcYVkkrcvcpyy8M5C/4hxSrcRfsf3g5jRe2yobW9tG6bXr
 rnVvuCjkJVa9Mdba6ksJFQGwSLsqIrO0U91TVC7YIDSGPkh+s3go2/OD1yEQPG1UuEJ+VKJGd
 gz2I5A/oWBY2y7hh+6j02O8QNGmp1mbBr/w1pkXaTvwe4VeHGuWGUPfAAPZxc9gSDPxL3UB+h
 5U7LMVBXFHcjyXIPKAhchqxFK/DCpvN8Mlv4gL5/j7r9wbasErBjAA4ZSLO8zGMyItR2I2kgR
 Oi9+eeIj1OKYlcGzW+a5cj+mmCW3JRI8xmV9xAbasAit8OACqAKN58dVQOZNfIJfGdlzxOGds
 Uqiu1nYTYN/2EhfqVZ2h+go2j7k3TxLiQXBJYq29vUF6JXSID/ebk5zdffHWEysVIP23Aykwh
 tbwBiYI/uaI+vRoqlBUODCiClyQEOvm+QgTmIRZZqhKmGCb/xH4O/DgkC49gUwmJds2FGxfMT
 wift5pKuCkCS7fUB/qJjW/3BhVdXrJEJoEZF3TQ2mbMPBcPf6TOwzm0qRaO2sk5XsZ4U29Ysl
 /QHmT+ICFrEDQdoAFsus0+G1KSyubHFcR8ix5sNePWn1Pyge0uPGcUBWK3o=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
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

