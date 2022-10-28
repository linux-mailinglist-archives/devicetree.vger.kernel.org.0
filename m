Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E81D3611012
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 13:54:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbiJ1LyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 07:54:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230024AbiJ1LyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 07:54:06 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B480A1D2F42
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 04:54:04 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id u2so8064497ljl.3
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 04:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DEZSt98hHSJj7cf3ZfqmR5bgvqaU3IveLeY72/BlhHM=;
        b=n3mXmmdPYLbcZwTjjbD35qbIkWS6kej00R5A+lGE1tmr3Cea4M+NBNBTPXGQE32C8k
         Ft9VjTGATSIV3ibgZ8HhQlWTSVL3IKZ+SYt2HQLEAGaPCOPt8MBnK7Kw/jlw9dJVsGOs
         sDLnD4iq11ObEsUO7ZV4VemC7WphqbEux9Jg0Tk6p8DNeXqCem66Q4+DVev3/rQldPTs
         jcX0LHwnbAXRapYh6uzGlrz7xNJ0sqE6XzRTkmoQB0vJNO7nbWwdAr7ABLFFC6ADhS/b
         8xTd+oNkxiFhtDpOl50xXHJIVmCtjbJ7FpNlxyH8yzUbBPRUVu4qK2yxz/MyHKzD15EP
         LQBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DEZSt98hHSJj7cf3ZfqmR5bgvqaU3IveLeY72/BlhHM=;
        b=wjcnVUvb04isj2UU4H13AMJfW2pef+do22pDTeFailQTZ71CaOi4gUKHGspbqYVTvY
         nh74gNZ6dwv7g5N3N1l1ET5RZ5aqU7R/ye03t0ospnJhyXKmbLZZ8j9xTfIDpVon17Hb
         ripJYwhDYxIoK7K0UJCPaslTbOHyd8XdebT2TkhrPEmN0wyX5UlIQx2g2rYYER9Eq/t0
         55ZIxWUdqJxQRyoMYELL7M9oy6HU9JoQYJJlx9xGPnpkmZVZdNaxopzGRMTuYAel9RQn
         oHF+taTdHfkEJg15LqObVTe3Xecog1m2jsqAcF3tGTC83PoR/KiDF01HBE9EVJQg0rcZ
         cb0w==
X-Gm-Message-State: ACrzQf3a1gBuscRZQ9FMFtdprHTPVKUbIXepZsEBYSG4j0QHd2dmaWJA
        5Wi+4pVSh0nJbjy2Ooi1M8E=
X-Google-Smtp-Source: AMsMyM6JPLADSazrdgIgAPcIABfjySF4B8wwvnumUewjzSeeebtNeJMWAyzOBBwjWlxaSzWNl3T63g==
X-Received: by 2002:a2e:bd0b:0:b0:26d:ffdc:120f with SMTP id n11-20020a2ebd0b000000b0026dffdc120fmr20457897ljq.526.1666958042752;
        Fri, 28 Oct 2022 04:54:02 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id v11-20020ac258eb000000b0049f5c71f1c4sm536552lfo.198.2022.10.28.04.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 04:54:02 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Lee Jones <lee@kernel.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] dt-bindings: timer: add Broadcom's BCMBCA timers
Date:   Fri, 28 Oct 2022 13:53:53 +0200
Message-Id: <20221028115353.13881-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCA is a big set / family of Broadcom devices sharing multiple hardware
blocks. One of them is timer that actually exists in two versions. It's
a part of TWD MFD block.

Add binding for it so SoCs can be properly described. Linux (and
probably any other OS) doesn't really seem to need a driver for it. it
may be needed for bootloaders (e.g. U-Boot) though. Especially for SoCs
with CPUs other than Cortex-A9 (which contains arch timers).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Limit to 1 example (they were almost the same)
    Drop "," in "e.g.,"
---
 .../devicetree/bindings/mfd/brcm,twd.yaml     |  8 ++++
 .../bindings/timer/brcm,bcmbca-timer.yaml     | 40 +++++++++++++++++++
 2 files changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/brcm,bcmbca-timer.yaml

diff --git a/Documentation/devicetree/bindings/mfd/brcm,twd.yaml b/Documentation/devicetree/bindings/mfd/brcm,twd.yaml
index 634526f790b8..e5136a37b0a3 100644
--- a/Documentation/devicetree/bindings/mfd/brcm,twd.yaml
+++ b/Documentation/devicetree/bindings/mfd/brcm,twd.yaml
@@ -36,6 +36,9 @@ properties:
     const: 1
 
 patternProperties:
+  '^timer@[a-f0-9]+$':
+    $ref: /schemas/timer/brcm,bcmbca-timer.yaml
+
   '^watchdog@[a-f0-9]+$':
     $ref: /schemas/watchdog/brcm,bcm7038-wdt.yaml
 
@@ -54,6 +57,11 @@ examples:
         #address-cells = <1>;
         #size-cells = <1>;
 
+        timer@0 {
+            compatible = "brcm,bcm63138-timer";
+            reg = <0x0 0x28>;
+        };
+
         watchdog@28 {
             compatible = "brcm,bcm7038-wdt";
             reg = <0x28 0x8>;
diff --git a/Documentation/devicetree/bindings/timer/brcm,bcmbca-timer.yaml b/Documentation/devicetree/bindings/timer/brcm,bcmbca-timer.yaml
new file mode 100644
index 000000000000..6707d9760857
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/brcm,bcmbca-timer.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/brcm,bcmbca-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Broadband SoC timer
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    oneOf:
+      - const: brcm,bcm6345-timer
+        description: >
+          An old block with 3 timers.
+
+          It can be found in BCM6345, BCM6838 and BCM63268.
+      - const: brcm,bcm63138-timer
+        description: >
+          Updated block with 4 timers and control regs at the beginning.
+
+          It can be found in newer SoCs, e.g. BCM63138, BCM63148, BCM63381,
+          BCM68360, BCM6848, BCM6858, BCM4908.
+
+  reg:
+    maxItems: 1
+
+additionalProperties: false
+
+required:
+  - reg
+
+examples:
+  - |
+    timer@fffe0200 {
+      compatible = "brcm,bcm6345-timer";
+      reg = <0xfffe0200 0x1c>;
+    };
-- 
2.34.1

