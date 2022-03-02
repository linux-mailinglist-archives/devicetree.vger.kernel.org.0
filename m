Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 822F54C9CF0
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 06:11:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236609AbiCBFMH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 00:12:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiCBFME (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 00:12:04 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68208A1462
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 21:11:10 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id d187so864660pfa.10
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 21:11:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VXYJujKtr44YtvQDoOdyVAgb3HOMrNGPu6HPM67Z31Y=;
        b=CI94sNlicCE8vnH2iXXu/anR1zPHMrfYfeJ8eYUU3X/4KZi2brqoqABHB4WVln2xQZ
         ZFO4w6MPQZrevm9xFmyWD1byh/PR8/zc1QJfDdj4rLDLQBh63r1aaK/WbVvI5aMqh2hG
         g6r64kFoS1XKPXSEelOx6A3j/7HV4OGWdu5b3c/68jXo0wGCriRFWqYGuKMhvHlzdedg
         +NiVerY1Exf3V7mq+IbTNjbJ1nXEZh2RvgPfmvn5QqGCmhhET3Bgp8A26nf65A0AxACY
         W5EbC3W2R6fNIaSwE6M7Gf5lBQJ7k509gopNRxsbq6rkmSYbIQ9/ziSsZXaFo4jgwQ8H
         TVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=VXYJujKtr44YtvQDoOdyVAgb3HOMrNGPu6HPM67Z31Y=;
        b=IrL2HrXrb4sUBeVvQZ/LuuCYvkPZnMZ/R36a6+/r0zDegGFzfsyszgZvB1pyj9zI9j
         Bp0fAKSHCoAyjUcyNyOrvbLR8rIZ/DRSdkfYWGaGnzIxFwdSIihmEKPP48C3BpCP2FiW
         /HZaQqA0xxz2g9A1pt1uWQENZY6XXENzdKcn5HcBjzWe8SRw3Bfe7k0UC5yd/DdSQSrG
         JnN/SvZwqc9AlUdGtZC5qMO2UR8ktuj8e1lmuzWSBaT6xqDBISh8ZEhy1AfWKFDPQ0bm
         89qug3j4hzNTcd84yqIZePZNNVMe5lKY1VXtmZ4TQ/1LVm+nh91d+o90MAOcu4fkwgTM
         L0pg==
X-Gm-Message-State: AOAM532XrOg1qfyvq9m3g1pmQSW7n6wIA9YyWkGE14auA1y8VcBVut5e
        w/s8eJ9RcYusv+vSwEWaNrA=
X-Google-Smtp-Source: ABdhPJxLjPxHaXKauIVKY96fVaLPwD3J1+P2lCyvRvSZNfehciKkFmVCRLxs1Ww9G/4haOE/E0ZtMA==
X-Received: by 2002:a63:cc52:0:b0:372:7f35:cf84 with SMTP id q18-20020a63cc52000000b003727f35cf84mr24662539pgi.211.1646197869757;
        Tue, 01 Mar 2022 21:11:09 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
        by smtp.gmail.com with ESMTPSA id nn10-20020a17090b38ca00b001bc3a60b324sm3386177pjb.46.2022.03.01.21.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 21:11:08 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Tommy Haung <tommy_huang@aspeedtech.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH] dt-bindings: gpu: Convert aspeed-gfx bindings to yaml
Date:   Wed,  2 Mar 2022 15:40:56 +1030
Message-Id: <20220302051056.678367-1-joel@jms.id.au>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the bindings to yaml and add the ast2600 compatible string.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 .../devicetree/bindings/gpu/aspeed,gfx.yaml   | 69 +++++++++++++++++++
 .../devicetree/bindings/gpu/aspeed-gfx.txt    | 41 -----------
 2 files changed, 69 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
 delete mode 100644 Documentation/devicetree/bindings/gpu/aspeed-gfx.txt

diff --git a/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml b/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
new file mode 100644
index 000000000000..8ddc4fa6e8e4
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpu/aspeed,gfx.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpu/aspeed,gfx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED GFX display device
+
+maintainers:
+  - Joel Stanley <joel@jms.id.au>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - aspeed,ast2400-gfx
+          - aspeed,ast2500-gfx
+          - aspeed,ast2600-gfx
+      - const: syscon
+
+  reg:
+    minItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  memory-region: true
+
+  syscon: true
+
+  reg-io-width: true
+
+required:
+  - reg
+  - compatible
+  - interrupts
+  - clocks
+  - resets
+  - memory-region
+  - syscon
+
+additionalProperties: false
+
+examples:
+  - |
+   #include <dt-bindings/clock/aspeed-clock.h>
+   gfx: display@1e6e6000 {
+       compatible = "aspeed,ast2500-gfx", "syscon";
+       reg = <0x1e6e6000 0x1000>;
+       reg-io-width = <4>;
+       clocks = <&syscon ASPEED_CLK_GATE_D1CLK>;
+       resets = <&syscon ASPEED_RESET_CRT1>;
+       interrupts = <0x19>;
+       syscon = <&syscon>;
+       memory-region = <&gfx_memory>;
+   };
+
+   gfx_memory: framebuffer {
+       size = <0x01000000>;
+       alignment = <0x01000000>;
+       compatible = "shared-dma-pool";
+       reusable;
+   };
diff --git a/Documentation/devicetree/bindings/gpu/aspeed-gfx.txt b/Documentation/devicetree/bindings/gpu/aspeed-gfx.txt
deleted file mode 100644
index 958bdf962339..000000000000
--- a/Documentation/devicetree/bindings/gpu/aspeed-gfx.txt
+++ /dev/null
@@ -1,41 +0,0 @@
-Device tree configuration for the GFX display device on the ASPEED SoCs
-
-Required properties:
-  - compatible
-    * Must be one of the following:
-      + aspeed,ast2500-gfx
-      + aspeed,ast2400-gfx
-    * In addition, the ASPEED pinctrl bindings require the 'syscon' property to
-      be present
-
-  - reg: Physical base address and length of the GFX registers
-
-  - interrupts: interrupt number for the GFX device
-
-  - clocks: clock number used to generate the pixel clock
-
-  - resets: reset line that must be released to use the GFX device
-
-  - memory-region:
-    Phandle to a memory region to allocate from, as defined in
-    Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
-
-
-Example:
-
-gfx: display@1e6e6000 {
-	compatible = "aspeed,ast2500-gfx", "syscon";
-	reg = <0x1e6e6000 0x1000>;
-	reg-io-width = <4>;
-	clocks = <&syscon ASPEED_CLK_GATE_D1CLK>;
-	resets = <&syscon ASPEED_RESET_CRT1>;
-	interrupts = <0x19>;
-	memory-region = <&gfx_memory>;
-};
-
-gfx_memory: framebuffer {
-	size = <0x01000000>;
-	alignment = <0x01000000>;
-	compatible = "shared-dma-pool";
-	reusable;
-};
-- 
2.34.1

