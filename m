Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09647426AEE
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 14:36:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241521AbhJHMi0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 08:38:26 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49942
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241510AbhJHMiZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 08:38:25 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0D6C43FFEF
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 12:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633696590;
        bh=eSoJ3kAkfN9iwV+DdMfMcLgfueJX5pTLP7nY41zjT7s=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=H1wyFa3tKR3aJ9xbI41cxwBg0TIT20RZQZ/a98d6h7xghHR87h/MItUr+49W0iHMW
         KR/jOtkpK6ZZ2lE2Dz69vAgcq+RX25SLitQRvBT/+rPBPeCComtdBeoTycD+yL2xqu
         yV97iT5scc0DKXoifBMhxhy7PmYln+j8heA4oMtZUr0RknDuTNm3ON6w6SlgpaBm39
         OJW+RLFKXiLZoTKNVmywdctq6c9e1TOCr08pdEtDA2Kl2d9Be6YUHeKKHdxf3JHu/P
         EZCc0CLHmZeSDW6CFahhbQMNKn2ce6u4v3naBkgRSmabGwuycR2Em9OnqO3VJVSW12
         Y6H05yWE2u+4Q==
Received: by mail-ed1-f70.google.com with SMTP id r11-20020aa7cfcb000000b003d4fbd652b9so7021384edy.14
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 05:36:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eSoJ3kAkfN9iwV+DdMfMcLgfueJX5pTLP7nY41zjT7s=;
        b=uIh/yL+n7ATVjijv/gksj07ux5s9tfO1p0sU7HL2dRuWop4WYTts/wVIqMMK4Mp2EB
         nt5dRHVb230mBqFU0HG3ke4/FrYBwXigSDYEAWXiY3c98FY7eGDhpVOnGpEbJgaaJrRw
         WoD3wXDkKB7dgA5il7PPKUig/NajZeyJbv+t+ulRPF7sO5ysX4OwunFgSvfxHhkrGq/d
         POkFvzb3CBUyDRmXmDowa7q9VoBjLDPmqCuJsNel0Mhd7swkMXT9NVTIdug9jGU7eVH0
         p0YPYdecRvhmpf8LnxMbTBuuQotK+kQYahNeYp4ZxuQV9X1sXk0NRYFlOygjKIhpWzEE
         IUqg==
X-Gm-Message-State: AOAM530W9oxQrPVa+OM78ah8duRdbm5JToWt0gR75IdhW6aV4/1cJCgw
        iP73ZnPMA7OlL5quYIA3iZr1SIWSt6QOzHFI2QSdzKd/nqL6vqeGf4aymZ2YbM7xRDfwYCn/SzV
        z7s+jg7BSB26Tv6UGkSDYAhCRWZB7F5tSC71jkTU=
X-Received: by 2002:a50:d4cd:: with SMTP id e13mr14339983edj.29.1633696588849;
        Fri, 08 Oct 2021 05:36:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxfUag/psaCoJDstFoeutUlzvMpDO5Nw0209k7pi1TQGUdnAkoDXtCiUlcGV/huIX9NXzuLEQ==
X-Received: by 2002:a50:d4cd:: with SMTP id e13mr14339895edj.29.1633696588158;
        Fri, 08 Oct 2021 05:36:28 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-186-13.adslplus.ch. [188.155.186.13])
        by smtp.gmail.com with ESMTPSA id f25sm860239ejb.34.2021.10.08.05.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 05:36:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/2] dt-bindings: mfd: maxim,max77686: convert to dtschema
Date:   Fri,  8 Oct 2021 14:35:52 +0200
Message-Id: <20211008123552.191384-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211008123552.191384-1-krzysztof.kozlowski@canonical.com>
References: <20211008123552.191384-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the MFD part of Maxim MAX77686 PMIC to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v1:
1. Add tag.
2. Correct title prefix.
3. Extend example with LDO22.
---
 .../devicetree/bindings/mfd/max77686.txt      |  26 ----
 .../bindings/mfd/maxim,max77686.yaml          | 132 ++++++++++++++++++
 MAINTAINERS                                   |   1 -
 3 files changed, 132 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/max77686.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77686.yaml

diff --git a/Documentation/devicetree/bindings/mfd/max77686.txt b/Documentation/devicetree/bindings/mfd/max77686.txt
deleted file mode 100644
index 42968b7144e0..000000000000
--- a/Documentation/devicetree/bindings/mfd/max77686.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Maxim MAX77686 multi-function device
-
-MAX77686 is a Multifunction device with PMIC, RTC and Charger on chip. It is
-interfaced to host controller using i2c interface. PMIC and Charger submodules
-are addressed using same i2c slave address whereas RTC submodule uses
-different i2c slave address,presently for which we are statically creating i2c
-client while probing.This document describes the binding for mfd device and
-PMIC submodule.
-
-Bindings for the built-in 32k clock generator block and
-regulators are defined in ../clk/maxim,max77686.txt and
-../regulator/max77686.txt respectively.
-
-Required properties:
-- compatible : Must be "maxim,max77686";
-- reg : Specifies the i2c slave address of PMIC block.
-- interrupts : This i2c device has an IRQ line connected to the main SoC.
-
-Example:
-
-	max77686: pmic@9 {
-		compatible = "maxim,max77686";
-		interrupt-parent = <&wakeup_eint>;
-		interrupts = <26 0>;
-		reg = <0x09>;
-	};
diff --git a/Documentation/devicetree/bindings/mfd/maxim,max77686.yaml b/Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
new file mode 100644
index 000000000000..859655a789c3
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
@@ -0,0 +1,132 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/maxim,max77686.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX77686 Power Management IC
+
+maintainers:
+  - Chanwoo Choi <cw00.choi@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  This is a part of device tree bindings for Maxim MAX77686 Power Management
+  Integrated Circuit (PMIC).
+
+  The Maxim MAX77686 is a Power Management IC which includes voltage and
+  current regulators, RTC and clock outputs.
+
+  The MAX77686 provides three 32.768khz clock outputs that can be controlled
+  (gated/ungated) over I2C.  The clock IDs are defined as preprocessor macros
+  in dt-bindings/clock/maxim,max77686.h.
+
+properties:
+  compatible:
+    const: maxim,max77686
+
+  '#clock-cells':
+    const: 1
+
+  interrupts:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  voltage-regulators:
+    $ref: ../regulator/maxim,max77686.yaml
+    description:
+      List of child nodes that specify the regulators.
+
+  wakeup-source: true
+
+required:
+  - compatible
+  - '#clock-cells'
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        max77686: pmic@9 {
+            compatible = "maxim,max77686";
+            reg = <0x09>;
+
+            interrupt-parent = <&gpx0>;
+            interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+            pinctrl-0 = <&max77686_irq>;
+            pinctrl-names = "default";
+            wakeup-source;
+            #clock-cells = <1>;
+
+            voltage-regulators {
+                LDO1 {
+                    regulator-name = "VALIVE_1.0V_AP";
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1000000>;
+                    regulator-always-on;
+                };
+
+                LDO2 {
+                    regulator-name = "VM1M2_1.2V_AP";
+                    regulator-min-microvolt = <1200000>;
+                    regulator-max-microvolt = <1200000>;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                // ...
+
+                LDO22 {
+                    regulator-name = "VMEM_VDD_2.8V";
+                    regulator-min-microvolt = <2800000>;
+                    regulator-max-microvolt = <2800000>;
+                    maxim,ena-gpios = <&gpk0 2 GPIO_ACTIVE_HIGH>;
+                };
+
+                // ...
+
+                BUCK1 {
+                    regulator-name = "VDD_MIF";
+                    regulator-min-microvolt = <850000>;
+                    regulator-max-microvolt = <1100000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                    };
+                };
+
+                BUCK2 {
+                    regulator-name = "VDD_ARM";
+                    regulator-min-microvolt = <850000>;
+                    regulator-max-microvolt = <1500000>;
+                    regulator-always-on;
+                    regulator-boot-on;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                // ...
+
+                BUCK9 {
+                    regulator-name = "CAM_ISP_CORE_1.2V";
+                    regulator-min-microvolt = <1000000>;
+                    regulator-max-microvolt = <1200000>;
+                    maxim,ena-gpios = <&gpm0 3 GPIO_ACTIVE_HIGH>;
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 00e47346a680..e086102e8340 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11498,7 +11498,6 @@ M:	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
 M:	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
 L:	linux-kernel@vger.kernel.org
 S:	Supported
-F:	Documentation/devicetree/bindings/*/max77686.txt
 F:	Documentation/devicetree/bindings/*/maxim,max77686.yaml
 F:	Documentation/devicetree/bindings/clock/maxim,max77686.txt
 F:	Documentation/devicetree/bindings/mfd/max14577.txt
-- 
2.30.2

