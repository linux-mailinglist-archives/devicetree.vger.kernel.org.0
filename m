Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF3D86219DB
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 17:55:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233704AbiKHQzp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 11:55:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233410AbiKHQzo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 11:55:44 -0500
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 828541A826
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 08:55:42 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed10:410d:c657:be54:f60b])
        by laurent.telenet-ops.be with bizsmtp
        id hsve2800947WmLZ01sveWW; Tue, 08 Nov 2022 17:55:39 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1osRrt-0001Ld-MP; Tue, 08 Nov 2022 17:54:33 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1osM5W-00Chb8-RN; Tue, 08 Nov 2022 11:44:14 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-schema] test: Fix whitespace in example in good-example.yaml
Date:   Tue,  8 Nov 2022 11:44:13 +0100
Message-Id: <20221108104413.3027482-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

  - Add missing space between root path and opening curly brace,
  - Fix misaligned "cpus" subnode,
  - Add blank line between properties and subnodes,
  - Drop unneeded blank line,
  - Convert to customary 4-space indentation.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 test/schemas/good-example.yaml | 62 +++++++++++++++++-----------------
 1 file changed, 31 insertions(+), 31 deletions(-)

diff --git a/test/schemas/good-example.yaml b/test/schemas/good-example.yaml
index b8493a97b8e45ec8..b393ad9999b92736 100644
--- a/test/schemas/good-example.yaml
+++ b/test/schemas/good-example.yaml
@@ -185,34 +185,34 @@ additionalProperties: false
 
 examples:
   - |
-      /dts-v1/;
-      /{
-              model = "ARM Juno development board (r0)";
-              compatible = "arm,juno", "arm,vexpress";
-              interrupt-parent = <&gic>;
-              #address-cells = <2>;
-              #size-cells = <2>;
-
-                      cpus {
-                      #address-cells = <2>;
-                      #size-cells = <0>;
-                      A57_0: cpu@0 {
-                              compatible = "arm,cortex-a57","arm,armv8";
-                              reg = <0x0 0x0>;
-                              device_type = "cpu";
-                              enable-method = "psci";
-                      };
-
-                      .....
-
-                      A53_0: cpu@100 {
-                              compatible = "arm,cortex-a53","arm,armv8";
-                              reg = <0x0 0x100>;
-                              device_type = "cpu";
-                              enable-method = "psci";
-                      };
-
-                      .....
-              };
-
-      };
+    /dts-v1/;
+    / {
+        model = "ARM Juno development board (r0)";
+        compatible = "arm,juno", "arm,vexpress";
+        interrupt-parent = <&gic>;
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        cpus {
+            #address-cells = <2>;
+            #size-cells = <0>;
+
+            A57_0: cpu@0 {
+                compatible = "arm,cortex-a57","arm,armv8";
+                reg = <0x0 0x0>;
+                device_type = "cpu";
+                enable-method = "psci";
+            };
+
+            .....
+
+            A53_0: cpu@100 {
+                compatible = "arm,cortex-a53","arm,armv8";
+                reg = <0x0 0x100>;
+                device_type = "cpu";
+                enable-method = "psci";
+            };
+
+            .....
+        };
+    };
-- 
2.25.1

