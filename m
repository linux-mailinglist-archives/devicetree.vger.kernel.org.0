Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21B8E5BDC67
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 07:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230266AbiITFZo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 01:25:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230207AbiITFZ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 01:25:26 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2CD55A89F
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:25:09 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id s14so452758wro.0
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 22:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Btu1ztR3RNS7yGwse7tt56AH1XmmucvrpacPilF1ViI=;
        b=AVkhKBDBE4753ufHk0cJDEb3iU7R5wpQqWg3AsmAZ58SlqsWexMzYCzlj4bqd9A1vo
         PMXtbzcrSOba98jdH9A72z2SEjZ8wo4PPFjPWOqrCdMF4N2b/9x+FQlCGbb/uIqnEaiv
         VwOcANLHfeGs1kANF4+tKCIBV2gPz4xAGNt6mGLb0wFc0H3t0mKFT1yqQxEzI1Pm9xxd
         ZWAGU1bCpjefCFwzw24O9daNLySq6v/5aqto35ahf1tvO0nWxoL/DZWW0LG2Jr14uGmp
         MQlo72QkT/le2Z7JaZ3Zuj4VI3IGhgOzf5LDaBfQaD7lUeziZFIZyf7IeGJUlUFnnepd
         xhzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Btu1ztR3RNS7yGwse7tt56AH1XmmucvrpacPilF1ViI=;
        b=Z6YG7g4cIDpHElLDrJzXOOz8DMwGZI40xQpCgy9LxKGa0V2leI1x6lcWZckeq1yAAx
         zgUClRODI3yFHKmDGcnu3gHz8w3MapI5gVT9wpx0moe5RoNl6JTaBmVD9rR0rHBRBwZW
         QIbd/iDN57SU7OHdOyY/j64O1awgSJW1FFTtr+DHz//jGBmjl1FNxYxtie24L+y2eOdM
         q6LNTv0qWnInGc/y5Vgo4ffbR5Rq3KyBtEhC+rZBLZKKIZ7W2T6QmDiobhUoeLqphlim
         QWniqCiH8uDY6C3lu4jTSX1sQCtpCs4K7ug9ADAKaVWfbIW43woKusAyi//PEKwsXoxF
         AZiA==
X-Gm-Message-State: ACrzQf0v3LZSrKoGMYgesyjdZJS9U8IQEEDRRJaYLSJGLUHJwo4U9Usi
        r/6ichqBdeFYdsKVifuc4kjQp/DSvWEvDA==
X-Google-Smtp-Source: AMsMyM5zBrcCeuPDx+yNYE5U9IBma+Ow+P6dsKF1ePkXY2pckFngA5gbQujKTdXzDcmzCo7C1R99TQ==
X-Received: by 2002:adf:fb86:0:b0:21e:3cc8:a917 with SMTP id a6-20020adffb86000000b0021e3cc8a917mr13423282wrr.538.1663651497651;
        Mon, 19 Sep 2022 22:24:57 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id p19-20020a05600c1d9300b003b47ff3807fsm16656639wms.5.2022.09.19.22.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 22:24:57 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com
Subject: [PATCH v2] dt-bindings: interrupt-controller: migrate MIPS CPU interrupt controller text bindings to YAML
Date:   Tue, 20 Sep 2022 07:24:55 +0200
Message-Id: <20220920052455.582565-1-sergio.paracuellos@gmail.com>
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
index 000000000000..06dc65f0bbd2
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

