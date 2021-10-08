Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6042426A1E
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 13:48:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242311AbhJHLuh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 07:50:37 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:34194
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S241563AbhJHLub (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 07:50:31 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C663B3F325
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 11:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633693715;
        bh=aMpIbneKp1ll8xSOoJ7jULjqBupmytQpdhdfxAY1CPM=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=tR/CxXJr/Y/morNr4JOxMwBiUNx9Sv63RJHQSRbaZU+5Ke0EkjWru0Shg0OtwYZsC
         io1DO2uOBjVtEmGuxT5LGazpzXwd5A3SBSshvJ1puM/VjYwr01y54OUda+2z9WpZ6g
         A5jWHRae+IJtJcvPwDXVqMl2h7oObmYSgIm9Wt3/+4ip0Hpr6w8LX5EsoWtiqKrM9f
         A7yjx/0Ozoh9y1vNfY4UO77LJMJvpv2xxfvuD4kJXW+sv78ukcC5Y8On5ER3jB7P2S
         HbXV3FsXwHZ8HoI+E0ikHVg3hEygSby7Gy2rfCV4NV/YHAFsGYEPkPQavv21auLsdc
         Fh449/jhvoHZA==
Received: by mail-ed1-f69.google.com with SMTP id i7-20020a50d747000000b003db0225d219so9010959edj.0
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 04:48:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=aMpIbneKp1ll8xSOoJ7jULjqBupmytQpdhdfxAY1CPM=;
        b=zXnF0fskeuhUKLlFsez67Gr8fmRZSDf6vQOsbjg4MivJbM28VRWRiXi3JE6yRpmRoB
         reYz4ASTyE5VJUti6IuYIS/kWV4icyguZ6W4wpgBrX0i6Jkux8MuwdhHCH50GoGSqtTs
         tCLZQSn94A9iHCJkyBlemH1Tld3RHZ08QInI2iYqfTrNtg6oK3dnGYGI6W8PImfc4geI
         Oww7C7Zctenwqrmx2XZml8bGrHwQDLu2fhaWHzjmfCji6HD9OlJpo78FAGXFEShT+PXy
         U8v5a2LB142a3kFEDhmSOgz05AwYHWCf/GECKarq6IfGjgVCuicxvQjq+W26e3Xm7FIn
         ozkQ==
X-Gm-Message-State: AOAM530210pAAyim5HpHnF2nE5Uf+qjos7z/F9o8CKM1ubfVNWQWFpsq
        6kru0zmZCzVY9D+sNwyKF60OfJ5C0hWPya8rlz/lPczP37S6SKqiLAK28OomqwXFfBYe+otEG1E
        p6Eo8pRrXYobUff7itk5y7J0oU6dBrzDp8auQ5GE=
X-Received: by 2002:a17:907:9602:: with SMTP id gb2mr3444675ejc.354.1633693715181;
        Fri, 08 Oct 2021 04:48:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyCOGvqt9Nu8rCES2Gv3QEPZZ3fBfohSJr1fyJPI431kJ8HJF4tA9XhmpW/nJSETBujAAvYGw==
X-Received: by 2002:a17:907:9602:: with SMTP id gb2mr3444646ejc.354.1633693714949;
        Fri, 08 Oct 2021 04:48:34 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-186-13.adslplus.ch. [188.155.186.13])
        by smtp.gmail.com with ESMTPSA id se12sm814250ejb.88.2021.10.08.04.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 04:48:34 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH v2] regulator: dt-bindings: maxim,max8973: convert to dtschema
Date:   Fri,  8 Oct 2021 13:47:55 +0200
Message-Id: <20211008114755.148279-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Maxim MAX8973 regulator to DT schema format.  Extend the
examples with more advanced one for MAX77621 copied from kernel's
nvidia/tegra210-smaug.dts, licensed under GPL-2.0.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v1:
1. Drop unneeded ref from milicelsius field.
2. Add Rob's tag.
---
 .../bindings/regulator/max8973-regulator.txt  |  52 -------
 .../bindings/regulator/maxim,max8973.yaml     | 139 ++++++++++++++++++
 2 files changed, 139 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/max8973-regulator.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max8973.yaml

diff --git a/Documentation/devicetree/bindings/regulator/max8973-regulator.txt b/Documentation/devicetree/bindings/regulator/max8973-regulator.txt
deleted file mode 100644
index c2c68fcc1b41..000000000000
--- a/Documentation/devicetree/bindings/regulator/max8973-regulator.txt
+++ /dev/null
@@ -1,52 +0,0 @@
-* Maxim MAX8973 Voltage Regulator
-
-Required properties:
-
-- compatible:	must be one of following:
-			"maxim,max8973"
-			"maxim,max77621".
-- reg:		the i2c slave address of the regulator. It should be 0x1b.
-
-Any standard regulator properties can be used to configure the single max8973
-DCDC.
-
-Optional properties:
-
--maxim,externally-enable: boolean, externally control the regulator output
-		enable/disable.
--maxim,enable-gpio: GPIO for enable control. If the valid GPIO is provided
-		then externally enable control will be considered.
--maxim,dvs-gpio: GPIO which is connected to DVS pin of device.
--maxim,dvs-default-state: Default state of GPIO during initialisation.
-		1 for HIGH and 0 for LOW.
--maxim,enable-remote-sense: boolean, enable reote sense.
--maxim,enable-falling-slew-rate: boolean, enable falling slew rate.
--maxim,enable-active-discharge: boolean: enable active discharge.
--maxim,enable-frequency-shift: boolean, enable 9% frequency shift.
--maxim,enable-bias-control: boolean, enable bias control. By enabling this
-		startup delay can be reduce to 20us from 220us.
--maxim,enable-etr: boolean, enable Enhanced Transient Response.
--maxim,enable-high-etr-sensitivity: boolean, Enhanced transient response
-		circuit is enabled and set for high sensitivity. If this
-		property is available then etr will be enable default.
-
-Enhanced transient response (ETR) will affect the configuration of CKADV.
-
--junction-warn-millicelsius: u32, junction warning temperature threshold
-		in millicelsius. If die temperature crosses this level then
-		device generates the warning interrupts.
-
-Please note that thermal functionality is only supported on MAX77621. The
-supported threshold warning temperature for MAX77621 are 120 degC and 140 degC.
-
-Example:
-
-	max8973@1b {
-		compatible = "maxim,max8973";
-		reg = <0x1b>;
-
-		regulator-min-microvolt = <935000>;
-		regulator-max-microvolt = <1200000>;
-		regulator-boot-on;
-		regulator-always-on;
-	};
diff --git a/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml b/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml
new file mode 100644
index 000000000000..54522827265b
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml
@@ -0,0 +1,139 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/maxim,max8973.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim MAX8973/MAX77621 voltage regulator
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+allOf:
+  - $ref: regulator.yaml#
+
+properties:
+  compatible:
+    enum:
+      - maxim,max8973
+      - maxim,max77621
+
+  junction-warn-millicelsius:
+    description: |
+      Junction warning temperature threshold in millicelsius. If die
+      temperature crosses this level then device generates the warning
+      interrupts.
+      Please note that thermal functionality is only supported on MAX77621. The
+      supported threshold warning temperature for MAX77621 are 120 degC and 140
+      degC.
+
+  maxim,dvs-gpio:
+    maxItems: 1
+    description: |
+      GPIO which is connected to DVS pin of device.
+
+  maxim,dvs-default-state:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    description: |
+      Default state of GPIO during initialisation.
+      1 for HIGH and 0 for LOW.
+
+  maxim,externally-enable:
+    type: boolean
+    description: |
+      Externally control the regulator output enable/disable.
+
+  maxim,enable-gpio:
+    maxItems: 1
+    description: |
+      GPIO for enable control. If the valid GPIO is provided then externally
+      enable control will be considered.
+
+  maxim,enable-remote-sense:
+    type: boolean
+    description: Enable remote sense.
+
+  maxim,enable-falling-slew-rate:
+    type: boolean
+    description: Enable falling slew rate.
+
+  maxim,enable-active-discharge:
+    type: boolean
+    description: Eable active discharge.
+
+  maxim,enable-frequency-shift:
+    type: boolean
+    description: Enable 9% frequency shift.
+
+  maxim,enable-bias-control:
+    type: boolean
+    description: |
+      Enable bias control which can reduce the startup delay to 20us from 220us.
+
+  maxim,enable-etr:
+    type: boolean
+    description: Enable Enhanced Transient Response.
+
+  maxim,enable-high-etr-sensitivity:
+    type: boolean
+    description: |
+      Enhanced transient response circuit is enabled and set for high
+      sensitivity. If this property is available then etr will be enable
+      default.
+      Enhanced transient response (ETR) will affect the configuration of CKADV.
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@1b {
+            compatible = "maxim,max8973";
+            reg = <0x1b>;
+
+            regulator-min-microvolt = <935000>;
+            regulator-max-microvolt = <1200000>;
+            regulator-boot-on;
+            regulator-always-on;
+        };
+    };
+
+  - |
+    #include <dt-bindings/gpio/tegra-gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@1b {
+            compatible = "maxim,max77621";
+            reg = <0x1b>;
+            interrupt-parent = <&gpio>;
+            interrupts = <TEGRA_GPIO(Y, 1) IRQ_TYPE_LEVEL_LOW>;
+
+            regulator-always-on;
+            regulator-boot-on;
+            regulator-min-microvolt = <800000>;
+            regulator-max-microvolt = <1231250>;
+            regulator-name = "PPVAR_CPU";
+            regulator-ramp-delay = <12500>;
+            maxim,dvs-default-state = <1>;
+            maxim,enable-active-discharge;
+            maxim,enable-bias-control;
+            maxim,enable-etr;
+            maxim,enable-gpio = <&pmic 5 GPIO_ACTIVE_HIGH>;
+            maxim,externally-enable;
+        };
+    };
-- 
2.30.2

