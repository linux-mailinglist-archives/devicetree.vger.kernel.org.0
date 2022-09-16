Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ABA35BA5F7
	for <lists+devicetree@lfdr.de>; Fri, 16 Sep 2022 06:34:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229483AbiIPEeU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Sep 2022 00:34:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbiIPEeU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Sep 2022 00:34:20 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EED5EA00D5
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 21:34:18 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id c11so34056610wrp.11
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 21:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=n3MZDqw79AO7W77hyVxMuo4XbeB+qq7GMr6SsHDCUYI=;
        b=bC7hkXX1yoFMjTkATCIH1MsG6HMszJ5iLt88XrB3Cw6bqGrAhRjgN607K06oCpLAFS
         RPhEu6pvcDeWTfB+sLB7uZDksOk/elA/BUUP2U4Ljqk9KEqjEWtFkBnGvGM/qNWR6v7i
         v522ajL6S4G/DhabOUHPyRuHiRoBjm3hpM9hwsUqviFVqgBTztBngzGKjPHQg70/zKzc
         1hxwXxfu39P5ZPsN0iEPlYiWPgPc5FO1fqV+XxtfkdZRzHaSHqldfpfeBo4GvIYfhsPV
         ZONVf01Au2B+Xy1ClIFEACF2GfapvpbRhH8JofVsOMRSQdvwqUWthSRXlVtfhc7gJ+08
         sjrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=n3MZDqw79AO7W77hyVxMuo4XbeB+qq7GMr6SsHDCUYI=;
        b=089dSZBmoBnZwsMd5QXdIeLSOHeuwm7DlG0qkYukTdiT05kSWYDnn9tN2lWHMzJ+g9
         KyinXY72SJzohsRATk35FuPmXHes+e22wUkrbvfSvbSYbPmC3BmV13sMPksUPN9aVKTj
         VBzRRu8wz9N5y1U7Zn9PywyUx71Xk5DDS7hsuCEyS4xRRU3GgmpqSLdc5nZNyp5+gFFZ
         e+A0IlyosV5/kmeBhjeyQXJnId+hEVJesUly0Pyr4AqPDn5zDQJFEKNrCvbocE0SwH1o
         PlE/Pm0i91B/XT9d6D5OEDFmWa0pSOqAEVg5gjtwT+mnUVL9f020UqL8ZqN5nJUMFMdu
         UwTg==
X-Gm-Message-State: ACrzQf34/qo1F8bC7JWri2K1lo5/ZNst42lM5UuRHcV7FBGfsgW79r4a
        y9T9Ayl6CDZGMndFlOJQmEZ3ffUdWrtYL3R/
X-Google-Smtp-Source: AMsMyM6WtB+z7Gs9jEmXqXE1ooq0eq3BqYg/fQMRAukHb42PJRbzL1xX8/d+YMkIy7m8EB5s9mS2XQ==
X-Received: by 2002:adf:f2c9:0:b0:228:63f6:73c2 with SMTP id d9-20020adff2c9000000b0022863f673c2mr1577573wrp.554.1663302857179;
        Thu, 15 Sep 2022 21:34:17 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id z15-20020adff74f000000b0021e4829d359sm4097438wrp.39.2022.09.15.21.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 21:34:16 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com
Subject: [PATCH] dt-bindings: interrupt-controller: migrate MIPS CPU interrupt controller text bindings to YAML
Date:   Fri, 16 Sep 2022 06:34:15 +0200
Message-Id: <20220916043415.489179-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MIPS CPU interrupt controller bindings used text format, so migrate them
to YAML.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../mti,cpu-interrupt-controller.yaml         | 46 ++++++++++++++++++
 .../devicetree/bindings/mips/cpu_irq.txt      | 47 -------------------
 2 files changed, 46 insertions(+), 47 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/mips/cpu_irq.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
new file mode 100644
index 000000000000..2db2ec816534
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/mti,cpu-interrupt-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MIPS CPU Interrupt Controller bindings
+
+description: >
+   On MIPS the mips_cpu_irq_of_init() helper can be used to initialize the 8 CPU
+   IRQs from a devicetree file and create a irq_domain for IRQ controller.
+
+   With the irq_domain in place we can describe how the 8 IRQs are wired to the
+   platforms internal interrupt controller cascade.
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+properties:
+  '#interrupt-cells':
+    const: 1
+
+  '#address-cells':
+    const: 0
+
+  compatible:
+    const: mti,cpu-interrupt-controller
+
+  interrupt-controller: true
+
+additionalProperties: false
+
+required:
+  - '#interrupt-cells'
+  - '#address-cells'
+  - compatible
+  - interrupt-controller
+
+examples:
+  - |
+    cpuintc {
+      #address-cells = <0>;
+      #interrupt-cells = <1>;
+      interrupt-controller;
+      compatible = "mti,cpu-interrupt-controller";
+    };
diff --git a/Documentation/devicetree/bindings/mips/cpu_irq.txt b/Documentation/devicetree/bindings/mips/cpu_irq.txt
deleted file mode 100644
index f080f06da6d8..000000000000
--- a/Documentation/devicetree/bindings/mips/cpu_irq.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-MIPS CPU interrupt controller
-
-On MIPS the mips_cpu_irq_of_init() helper can be used to initialize the 8 CPU
-IRQs from a devicetree file and create a irq_domain for IRQ controller.
-
-With the irq_domain in place we can describe how the 8 IRQs are wired to the
-platforms internal interrupt controller cascade.
-
-Below is an example of a platform describing the cascade inside the devicetree
-and the code used to load it inside arch_init_irq().
-
-Required properties:
-- compatible : Should be "mti,cpu-interrupt-controller"
-
-Example devicetree:
-	cpu-irq: cpu-irq {
-		#address-cells = <0>;
-
-		interrupt-controller;
-		#interrupt-cells = <1>;
-
-		compatible = "mti,cpu-interrupt-controller";
-	};
-
-	intc: intc@200 {
-		compatible = "ralink,rt2880-intc";
-		reg = <0x200 0x100>;
-
-		interrupt-controller;
-		#interrupt-cells = <1>;
-
-		interrupt-parent = <&cpu-irq>;
-		interrupts = <2>;
-	};
-
-
-Example platform irq.c:
-static struct of_device_id __initdata of_irq_ids[] = {
-	{ .compatible = "mti,cpu-interrupt-controller", .data = mips_cpu_irq_of_init },
-	{ .compatible = "ralink,rt2880-intc", .data = intc_of_init },
-	{},
-};
-
-void __init arch_init_irq(void)
-{
-	of_irq_init(of_irq_ids);
-}
-- 
2.25.1

