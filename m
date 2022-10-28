Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA57E610DE1
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 11:55:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229933AbiJ1JzF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 05:55:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230314AbiJ1Jys (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 05:54:48 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A09112081
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 02:54:35 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id z18so2104577edb.9
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 02:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nmdVHdb0604svJdIsRaVukZi9ahZ7H2UV4HkwxeskFk=;
        b=JHy028xSipvYsrvmbs4y9KHaTCwLsFw/PY3zKDKbC2VeIhqNGRnj2XIn5JgpcWpAko
         /37Wr3ZMBagFhYyBvLl5ISIlh/cnYRB2fz8SxOvc9sNvuyodfZKjVUlJScWUKAr81Ywt
         up2s54mqKYI7aunqAsP4l7jgeEKzuOEUQqYAE+UrdaPD7ABB234gYNRp1ef1668OQZS0
         Gr62KSEKhm9c5b7UPeVRHzZ/FNAgUAF4j5UszMOMVDAqnrz2IDY8/ZEoFNPYNtaCzHER
         IZbYtIQP8qDWjU77ys8lhLvIMjb1T4oKE7YAdQzoq3Il8pe2VoYBhJjTClNs+tiPzr6H
         Ig3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nmdVHdb0604svJdIsRaVukZi9ahZ7H2UV4HkwxeskFk=;
        b=COWW9uC+1aim2jzQmot1YExnG3CxpCbIHzMLnC588rEh/l9HBs29JNIB1Hd6ayzH7V
         L5emSrxTaN+AGqO0hMwVeSV5Hg3uZKuuHZVpYM8aXlO3t8pZPURySstRc9Y9yPRaH5+a
         WHoMa7Dm6hPqEBBG2M3sk0MEi49lGZ2p6WuhX0LgEJeQOMjQwO+hcgXlnXHLdSF2guSe
         OJFDIOGKYe9chQnahX7DLVUlpBIAwg9luriAQstZvMz1aAfm4w6Nlm4ucQUzdz6i4nqi
         JdEVnkpZEXDs6EK28pSgFK7Z2kXBe3tMXVQskNUQq5P99KUKL1RKiFWSWxvG0oyXwsvZ
         fRWA==
X-Gm-Message-State: ACrzQf3jQ7GdtdJvBPMv8Pp4ivYE3jFw65Z4bQrqgKGK5lI+XjiLkNmp
        woAfjCXkZR/NNZh+8NbfMiyNYHP69eU=
X-Google-Smtp-Source: AMsMyM4YPNxgtZVn81kP0Q9BvvV2MSxeepP/juFSeBKEUzdh1n1fSuPrCvzUxbL2oa2fJtdveXdRXg==
X-Received: by 2002:a05:6402:3510:b0:461:f781:6dfe with SMTP id b16-20020a056402351000b00461f7816dfemr19358251edd.272.1666950873636;
        Fri, 28 Oct 2022 02:54:33 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906328a00b00772061034dbsm1968245ejw.182.2022.10.28.02.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 02:54:33 -0700 (PDT)
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
Subject: [PATCH] dt-bindings: timer: add Broadcom's BCMBCA timers
Date:   Fri, 28 Oct 2022 11:54:19 +0200
Message-Id: <20221028095419.6036-1-zajec5@gmail.com>
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
may be needed for bootloaders (e.g., U-Boot) though. Especially for SoCs
with CPUs other than Cortex-A9 (which contains arch timers).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/mfd/brcm,twd.yaml     |  8 ++++
 .../bindings/timer/brcm,bcmbca-timer.yaml     | 45 +++++++++++++++++++
 2 files changed, 53 insertions(+)
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
index 000000000000..7061f52bcb8a
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/brcm,bcmbca-timer.yaml
@@ -0,0 +1,45 @@
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
+          It can be found in newer SoCs, e.g., BCM63138, BCM63148, BCM63381,
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
+  - |
+    timer@fffe8080 {
+      compatible = "brcm,bcm63138-timer";
+      reg = <0xfffe8080 0x28>;
+    };
-- 
2.34.1

