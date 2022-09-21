Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCCDD5BF790
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:24:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229872AbiIUHYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:24:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230007AbiIUHYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:24:11 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B99E383061
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:24:09 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id x18so2324790wrm.7
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=FvFLA+S1lRFt/JueeCu2r+WwrSSqHntcJhz81L/DILY=;
        b=U1O18qu/KsAw/dyvLfv2lzy52aPIv9IKiY2mxnUasY4xO5+bj4u6dLLHVtw8twVC87
         Nqa+76NQcBqIQda9w0C2nchCM4zHxIPUF2Tw07n6JLzwU2fWe5Rk+tDWa+KzNOPfYBOg
         r85Mn4Rb6O8rYcl7T7iF15tDbeRtDUxIOWVKnRW/3/coyayBApZcoQyWWYXFnbYX/9/m
         X88ADothvVOWtNBWAD9WtyI78HvPz75uoCBEzswrm5Q/LwgpdNIf02G9UWs/IXB3TUhZ
         uTxWiq+AdKUM4LvL+AJ3fm5yH0p6nttZV+o5GHtRlV0NwHThwjOgfQh8QnrfzYJKM0IE
         aKkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=FvFLA+S1lRFt/JueeCu2r+WwrSSqHntcJhz81L/DILY=;
        b=HMWbSOe2nLYXfN6n4S+riGnVzKo892mvyBwwEntIBuuJkDf7B2pS7d8/dJeVy0zHsl
         AXxoVKwhO8E56IplwGGLkY4J0aQxQZc04zvXN4bRP7uN0cIJdPOagyNn12Hfs1fsq38o
         BH0bxfa4Ah1PfbSaKQYiSFtSVTCcgHbP1DveqJJxnP1xNA2oQt/VxG94W49wlaakD9dU
         DrauA4IU0iYKUzWqQ6LnW0gcsaKpbFGt4b0Sw7Hf7QnlIlImsQdBoXH5LrQdskcjq4lB
         f40pqnKOzFe23S+vgQUew6jx0xIJqB18OCe2NAJf1dr22PlheUKOEWZCHtPvXuwJAk/e
         x3IA==
X-Gm-Message-State: ACrzQf0bvPevL83J+bZzP+jL4djlUAWGaAJdDtOM0S67EXDKv/4nXMh/
        O8Ay380cNG4zrbzrIuh52H2G0wf35Y2q7w==
X-Google-Smtp-Source: AMsMyM73g84q8Ra71xV7Ui3pivwHRSSZTwKvwMjEjk2R+qC0fsKrRy+QgiUvB6PXQvhOvjnn+f8Nug==
X-Received: by 2002:a05:6000:69d:b0:22a:fa56:86b9 with SMTP id bo29-20020a056000069d00b0022afa5686b9mr9760544wrb.193.1663745047898;
        Wed, 21 Sep 2022 00:24:07 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id bi19-20020a05600c3d9300b003a83ca67f73sm2194349wmb.3.2022.09.21.00.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 00:24:07 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com
Subject: [PATCH v3] dt-bindings: interrupt-controller: migrate MIPS CPU interrupt controller text bindings to YAML
Date:   Wed, 21 Sep 2022 09:24:05 +0200
Message-Id: <20220921072405.610739-1-sergio.paracuellos@gmail.com>
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
Changes in v3:
- Remmove 'bindings' keyword from title.
- Put 'compatible' the first also in node sample.

Changes in v2:
- Address review comment from Krzysztof:
- Rebase onto last kernel version.
- Add Thomas Bogendoerfer as maintainer since this is arch stuff.
- Change compatible to go first as property and required.
- Change sample node name to be generic. Use 'interrupt-controller'.

 .../mti,cpu-interrupt-controller.yaml         | 46 ++++++++++++++++++
 .../devicetree/bindings/mips/cpu_irq.txt      | 47 -------------------
 2 files changed, 46 insertions(+), 47 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
 delete mode 100644 Documentation/devicetree/bindings/mips/cpu_irq.txt

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
new file mode 100644
index 000000000000..46a1f5f54b74
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/mti,cpu-interrupt-controller.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/mti,cpu-interrupt-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MIPS CPU Interrupt Controller
+
+description: >
+   On MIPS the mips_cpu_irq_of_init() helper can be used to initialize the 8 CPU
+   IRQs from a devicetree file and create a irq_domain for IRQ controller.
+
+   With the irq_domain in place we can describe how the 8 IRQs are wired to the
+   platforms internal interrupt controller cascade.
+
+maintainers:
+  - Thomas Bogendoerfer <tsbogend@alpha.franken.de>
+
+properties:
+  compatible:
+    const: mti,cpu-interrupt-controller
+
+  '#interrupt-cells':
+    const: 1
+
+  '#address-cells':
+    const: 0
+
+  interrupt-controller: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - '#interrupt-cells'
+  - '#address-cells'
+  - interrupt-controller
+
+examples:
+  - |
+    interrupt-controller {
+      compatible = "mti,cpu-interrupt-controller";
+      #address-cells = <0>;
+      #interrupt-cells = <1>;
+      interrupt-controller;
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

