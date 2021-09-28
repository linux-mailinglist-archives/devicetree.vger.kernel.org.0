Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C652241B1D1
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 16:14:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241251AbhI1OQS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 10:16:18 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39438
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241119AbhI1OQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Sep 2021 10:16:15 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 93F39402F6
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 14:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632838475;
        bh=+u9e9bwlpa3QEn7ZpV3nxWHDHqijGY7KQgiYf/eMfqQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=opvg4dejQao0ht7a2/d6cvt3dw4WUqVkskAD8AE5nahrdNdOVngBVqNGdyPBMzqBp
         lqeeTBWV1xzdatX75ol5LdwvbnPH1Jv+vWxIpKdPg108g9tc/T58gTFfmuxUiT9QOJ
         S1IWIq1WZ+QoWeuBEnA9w6g3trjgv/9wjWFi9Gwt+1pjSUR1WXUuB39G6pQ4s+dHrH
         DZMpjIeNwz5YIof3MpSLOyS+grZccSDUvMB1tSa1uhOfyU6zCYP8vz628xr0YYCzK/
         MZvnRoIK3nroCe/YueBLUUqWIg1K9yN7SBzCrog5DdPf/ViW0XIPyy6e59UrGjJzo1
         WkbEEwA6UzBwA==
Received: by mail-lf1-f72.google.com with SMTP id s28-20020a056512203c00b003f42015e912so19465082lfs.4
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 07:14:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+u9e9bwlpa3QEn7ZpV3nxWHDHqijGY7KQgiYf/eMfqQ=;
        b=ha7lKez5u/m3F1UqqABDsbCD1Q0uaOOgIW1gTSZ9ImbPMSTv+EDrdhqtrW5VjKNVxY
         idNGF285Gij3hs797WIcUkd4SNMJXZe7WksCn0HrElTfim0ONnjancMa++f1pWjRUs9w
         g3PvMYq+U6Z4GMOAVRvhwqfGEaYKo3HE0giAmfKRE1rOylj8wKl7ltvN+f1gIJING6mz
         9Bj1ofuskzfc8EpJjRPpxhovwnCEMGDTNVGR/qug1WCJuPKc6qMgDtwhW654JIlEj6DX
         JEgB1Hw026jCt8LeQA5wamLq+rG9CX2TCZvcyUBzA+lRaEr6AIcowb02kEqlBEay6t3X
         EmJw==
X-Gm-Message-State: AOAM530lCf1Mq/aQuRxlDv2JjP4H0N7PDeuIhCUY1XBXmZwEr8n0aguE
        mRFD7jPtG1GjksoLne1lbiOs0hHc7k/eEgv4FazOmIxaHbZ6+0/7AigbCO7ZdnLyWfwdAvpIMnV
        FDZlEDmDa+EnPEwVZHxrAIS4olLpSX5SpvBmhWn0=
X-Received: by 2002:a2e:9b98:: with SMTP id z24mr169482lji.339.1632838474628;
        Tue, 28 Sep 2021 07:14:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy8qCBxFQ0ZmWvVx3GC1DXy3kNBYRZrME05hprWXzIZFzCVtG4bMX+nu3zFeqtYgSiSRE0EbQ==
X-Received: by 2002:a2e:9b98:: with SMTP id z24mr169454lji.339.1632838474384;
        Tue, 28 Sep 2021 07:14:34 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w19sm2353241ljd.110.2021.09.28.07.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 07:14:33 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] mfd: dt-bindings: maxim,max77686: convert to dtschema
Date:   Tue, 28 Sep 2021 16:13:53 +0200
Message-Id: <20210928141353.112619-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210928141353.112619-1-krzysztof.kozlowski@canonical.com>
References: <20210928141353.112619-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the MFD part of Maxim MAX77686 PMIC to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/mfd/max77686.txt      |  26 ----
 .../bindings/mfd/maxim,max77686.yaml          | 124 ++++++++++++++++++
 MAINTAINERS                                   |   1 -
 3 files changed, 124 insertions(+), 27 deletions(-)
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
index 000000000000..2296a16038b7
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
@@ -0,0 +1,124 @@
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
+                    maxim,ena-gpios = <&gpm0 3 GPIO_ACTIVE_HIGH>;
+                    regulator-state-mem {
+                        regulator-on-in-suspend;
+                    };
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
index 32b55f9ab76a..04e8554f4f5b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11468,7 +11468,6 @@ M:	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
 M:	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
 L:	linux-kernel@vger.kernel.org
 S:	Supported
-F:	Documentation/devicetree/bindings/*/max77686.txt
 F:	Documentation/devicetree/bindings/*/maxim,max77686.yaml
 F:	Documentation/devicetree/bindings/clock/maxim,max77686.txt
 F:	Documentation/devicetree/bindings/mfd/max14577.txt
-- 
2.30.2

