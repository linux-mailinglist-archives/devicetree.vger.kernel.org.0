Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B5696FB63E
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 20:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230187AbjEHSRF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 14:17:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232779AbjEHSRE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 14:17:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B4175FE8
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 11:17:03 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id AA98A62F0F
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 18:17:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7550CC4339C;
        Mon,  8 May 2023 18:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1683569822;
        bh=pEkQiWBINoXiTLpYTJ+D1743e4SOfUpdwjwXGQmi2Nk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=LpCAVUaxcJjhoad5gbeqsUQCfaua+zg6IbA5rkPbTdwywu2JKINyDuAdkH7BIzECp
         FGXurYzC2J/OgJgceOMyePFn0+i9ll10Xs7l1qSVdNvvZmGQFn5BlxkCIGLPSCU7Zx
         78U2CcMMAvcG+15+JBjCBSaHVNmjA/4WRs7O0R7+7JCOnbBBn/KbvcH0TYsXod7j71
         hJ82onfdcnNyPY9edo8xz8xHVmu1Mt1BZLTmb8YdVvVRKz9ntuemhnyiTB9LFKPwhL
         EJ7W6SOmU2xtJe/ihfsP/hpaThNWYHyze+7zwmOAwvF44liqTxobAPUbWEHYwRZaO5
         6VNDvFIWa1yPA==
From:   Conor Dooley <conor@kernel.org>
To:     linux-riscv@lists.infradead.org
Cc:     conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>, devicetree@vger.kernel.org
Subject: [RFC 2/6] dt-bindings: riscv: add riscv,isa-extension-* property and incompatible example
Date:   Mon,  8 May 2023 19:16:22 +0100
Message-Id: <20230508-sneeze-cesarean-d1aff8be9cc8@spud>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230508-hypnotic-phobia-99598439d828@spud>
References: <20230508-hypnotic-phobia-99598439d828@spud>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3388; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=mr+KTOsZI6CeMW3M1d3JDMm2IRvhFpi9WHx/17JxyMg=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDCmRNqUqQpc3/nj4h//xeaPUtb86SlI0GVYZLykrf5tq+ 1RzZ5FJRykLgxgHg6yYIkvi7b4WqfV/XHY497yFmcPKBDKEgYtTACbyTIPhn7rL/Jb6hHuPuW2L P6o2LojcddjYO/DrjX82F5QKUw7fvsvwT2F1xbvzjdWcjxW2+t92Welp6KV85kzi7oD8O1f7eI/ 5cgEA
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

This dt-binding is illustrative *only*, it doesn't yet do what I want it
to do in terms of enforcement etc. I am yet to figure out exactly how to
wrangle the binding such that the individual properties have more
generous versions than the generic pattern property.
This binding *will* generate errors, and needs rework before it can
seriously be considered.
Nevertheless, it should demonstrate how I intend such a property be
used.

Not-signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/riscv/cpus.yaml       | 61 ++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 405915b04d69..cccb3b2ae23d 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -100,6 +100,15 @@ properties:
       lowercase.
     $ref: "/schemas/types.yaml#/definitions/string"
     pattern: ^rv(?:64|32)imaf?d?q?c?b?k?j?p?v?h?(?:[hsxz](?:[a-z])+)?(?:_[hsxz](?:[a-z])+)*$
+    deprecated: true
+
+  riscv,isa-base:
+    description:
+      Identifies the base ISA supported by a hart.
+    $ref: "/schemas/types.yaml#/definitions/string"
+    enum:
+      - rv32i
+      - rv64i
 
   # RISC-V requires 'timebase-frequency' in /cpus, so disallow it here
   timebase-frequency: false
@@ -136,8 +145,32 @@ properties:
       DMIPS/MHz, relative to highest capacity-dmips-mhz
       in the system.
 
+  riscv,isa-extension-v:
+    description: RISC-V Vector extension
+    $ref: "/schemas/types.yaml#/definitions/string"
+    oneOf:
+      - const: v1.0.0
+        description: the original incarnation
+      - const: v1.0.1
+        description: backwards compat was broken here
+
+patternProperties:
+  "^riscv,isa-extension-*":
+    description:
+      Catch-all property for ISA extensions that do not need any special
+      handling, and of which all known versions are compatible with their
+      original revision.
+    $ref: "/schemas/types.yaml#/definitions/string"
+    enum:
+      - v1.0.0
+
+oneOf:
+  - required:
+      - riscv,isa-base
+  - required:
+      - riscv,isa
+
 required:
-  - riscv,isa
   - interrupt-controller
 
 additionalProperties: true
@@ -208,4 +241,30 @@ examples:
                 };
         };
     };
+
+  - |
+    // Example 3: Extension specification
+    cpus {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        cpu@0 {
+                device_type = "cpu";
+                reg = <0>;
+                compatible = "riscv";
+                riscv,isa-base = "rv64i";
+                riscv,isa-extension-i = "v1.0.0";
+                riscv,isa-extension-m = "v1.0.0";
+                riscv,isa-extension-a = "v1.0.0";
+                riscv,isa-extension-f = "v1.0.0";
+                riscv,isa-extension-d = "v1.0.0";
+                riscv,isa-extension-c = "v2.0.0";
+                riscv,isa-extension-v = "v1.0.1";
+                mmu-type = "riscv,sv48";
+                interrupt-controller {
+                        #interrupt-cells = <1>;
+                        interrupt-controller;
+                        compatible = "riscv,cpu-intc";
+                };
+        };
+    };
 ...
-- 
2.39.2

