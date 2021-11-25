Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F0EE45D5C1
	for <lists+devicetree@lfdr.de>; Thu, 25 Nov 2021 08:50:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238254AbhKYHx5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 02:53:57 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:59214
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236468AbhKYHvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Nov 2021 02:51:53 -0500
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E498840A35
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 07:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637826521;
        bh=Rn/AHpElK+ppxWDfER9+RCTGPf67/Z1UalQy1yV3MCY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=eA/9pYptzQh6sWn6jHqhHcGab5v8EwL8RrduZ0ZL2qewSxVmR0+8aBz6PUlj1Qy1+
         X79EJ2JV+t+BCmkhPwGAY5As/w7eTkMGsDsJ8yAasLGJaftC3sAFvLQrKCM4E7WQqs
         5nLDm0WtiTGtXTCZ+cccVUy1M1c4/BqGLNi6ZYAeoiBEBe6tXFG97qT2804tWP1PlW
         vXwfERlfPP6WNClpa6Gzm6RL1pXkfAuSc8+6ZEkYspdrPCgczrZmuvqPSRpIdg+nOE
         PIEhKrEd869KTPWVffT+cfgiN0tmR+9n6WVOFcr2lou45EDnH2EMZumi6xUsi/Dxjz
         WjRjG630JTRsQ==
Received: by mail-wr1-f69.google.com with SMTP id v17-20020adfedd1000000b0017c5e737b02so926444wro.18
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 23:48:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rn/AHpElK+ppxWDfER9+RCTGPf67/Z1UalQy1yV3MCY=;
        b=ZQcEg5PSBZJn5Cu10Qablyp163eddQxX/E1MJUt9CdWbXf1/hVvLWuLtsTiRqyk8iU
         0iAyuA4Zv32kB+v2wLodC9toHYVaT7MxA1BNYZTqaxJ/EpFwG4r4D3GCtDN1/TjtS+4T
         qrLr3EUXVfshXEQBVOs0fAAu6v0+tczn+wRNffocHGfb0+DZvU5TUqRrCV+pgSD/5lnH
         s7f45QtiJ1yMmUN+Wyv66pdBJOSVu61QbR22E0Ym+2XRtH5wCIhtEWB0IkIhkAfqTZwV
         4rZUSypFk22gbZmX6nfUSAlixjiXXZBJAsExzlq1CS9aDl2pSqUQD7WKkP/6rgjwNIpi
         XQ2Q==
X-Gm-Message-State: AOAM533ZQVNNAtEQ/9d4+jAiGPjvUc3C2lWDc6ukc5CmSF+BSrbAl1QU
        KktiUNrE6EgVABcrpxYO81bt4NsJA2zagDBpu289Z2Nn60hQzF8YyqQ/UiZSI5cv2vus/iX7BVT
        03ymiroq68lQD7N7PYeMGz8tWjyKXs26pSipelFQ=
X-Received: by 2002:adf:fc90:: with SMTP id g16mr4172931wrr.53.1637826517401;
        Wed, 24 Nov 2021 23:48:37 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwyL4/k3uCR1p+KqZOTdAkxIpmdzFMFsXDOtnAjaMwmhjFArkwd52npDmX9+gR41xsgtzBrbA==
X-Received: by 2002:adf:fc90:: with SMTP id g16mr4172904wrr.53.1637826517171;
        Wed, 24 Nov 2021 23:48:37 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o3sm8087937wms.10.2021.11.24.23.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Nov 2021 23:48:36 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/2] dt-bindings: mfd: maxim,max77686: convert to dtschema
Date:   Thu, 25 Nov 2021 08:48:26 +0100
Message-Id: <20211125074826.7947-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211125074826.7947-1-krzysztof.kozlowski@canonical.com>
References: <20211125074826.7947-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the MFD part of Maxim MAX77686 PMIC to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v2:
1. Rebased.

Changes since v1:
1. Add Rob's tag.
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
index 4447d074894a..000000000000
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
-		interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
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
index aa12b807d3f5..244697b870ac 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11660,7 +11660,6 @@ M:	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
 M:	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
 L:	linux-kernel@vger.kernel.org
 S:	Supported
-F:	Documentation/devicetree/bindings/*/max77686.txt
 F:	Documentation/devicetree/bindings/*/maxim,max77686.yaml
 F:	Documentation/devicetree/bindings/clock/maxim,max77686.txt
 F:	Documentation/devicetree/bindings/mfd/max14577.txt
-- 
2.32.0

