Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0233F4CCFA2
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 09:08:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbiCDIJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 03:09:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbiCDIJ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 03:09:29 -0500
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1671FB3E70
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 00:08:41 -0800 (PST)
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 22488UUI096164;
        Fri, 4 Mar 2022 02:08:30 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1646381310;
        bh=/O+lrf4AlV1UtwTzJ0BR0w/gXnMIvc7mBtFuPf54foE=;
        h=From:To:CC:Subject:Date:In-Reply-To:References;
        b=deUCVDQRiFg9Oy/9qUJCaICqOSGZYmSQZmfXZCPSktprjvDsw4OZh8e1TTD7ZOTn3
         iTEoeWpW4SyAQ4YJ4zH1l1eoMNr4D5MUUxqmwGTBzmNZKOG6vusuH4MSyOjLHD4q1F
         qGPBNMbBvEWaAkK5ckR4rLynJgYzhSKoon2QZXno=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 22488Uaa005002
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Fri, 4 Mar 2022 02:08:30 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Fri, 4
 Mar 2022 02:08:30 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Fri, 4 Mar 2022 02:08:30 -0600
Received: from localhost.localdomain (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 22488OYs096710;
        Fri, 4 Mar 2022 02:08:25 -0600
From:   Georgi Vlaev <g-vlaev@ti.com>
To:     <krzysztof.kozlowski@canonical.com>, <devicetree@vger.kernel.org>
CC:     <robh+dt@kernel.org>, <lgirdwood@gmail.com>, <broonie@kernel.org>,
        <ldewangan@nvidia.com>, <nm@ti.com>, <vigneshr@ti.com>,
        Georgi Vlaev <g-vlaev@ti.com>
Subject: [PATCH v2] dt-bindings: regulator: Convert TPS62360 binding to json-schema
Date:   Fri, 4 Mar 2022 10:08:11 +0200
Message-ID: <20220304080811.45132-1-g-vlaev@ti.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <54caddff-a944-93c2-aaed-ffe80e83018e@canonical.com>
References: <54caddff-a944-93c2-aaed-ffe80e83018e@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the TPS62360 regulator binding to DT schema format
using json-schema.

Signed-off-by: Georgi Vlaev <g-vlaev@ti.com>
---
V1 -> V2: Make the example indentation consistent.

 .../bindings/regulator/ti,tps62360.yaml       | 99 +++++++++++++++++++
 .../bindings/regulator/tps62360-regulator.txt | 44 ---------
 2 files changed, 99 insertions(+), 44 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/tps62360-regulator.txt

diff --git a/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml b/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
new file mode 100644
index 000000000000..525e9a46ce1b
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/ti,tps62360.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/ti,tps62360.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments TPS6236x Voltage Regulators
+
+maintainers:
+  - Laxman Dewangan <ldewangan@nvidia.com>
+
+description: |
+  The TPS6236x are a family of step down dc-dc converter with
+  an input voltage range of 2.5V to 5.5V. The devices provide
+  up to 3A peak load current, and an output voltage range of
+  0.77V to 1.4V (TPS62360/62) and 0.5V to 1.77V (TPS62361B/63).
+
+  Datasheet is available at:
+  https://www.ti.com/lit/gpn/tps62360
+
+allOf:
+  - $ref: "regulator.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - ti,tps62360
+      - ti,tps62361
+      - ti,tps62362
+      - ti,tps62363
+
+  reg:
+    maxItems: 1
+
+  ti,vsel0-gpio:
+    description: |
+      GPIO for controlling VSEL0 line. If this property
+      is missing, then assume that there is no GPIO for
+      VSEL0 control.
+    maxItems: 1
+
+  ti,vsel1-gpio:
+    description: |
+      GPIO for controlling VSEL1 line. If this property
+      is missing, then assume that there is no GPIO for
+      VSEL1 control.
+    maxItems: 1
+
+  ti,enable-vout-discharge:
+    description: Enable output discharge.
+    type: boolean
+
+  ti,enable-pull-down:
+    description: Enable pull down.
+    type: boolean
+
+  ti,vsel0-state-high:
+    description: |
+      Initial state of VSEL0 input is high. If this property
+      is missing, then assume the state as low.
+    type: boolean
+
+  ti,vsel1-state-high:
+    description: |
+      Initial state of VSEL1 input is high. If this property
+      is missing, then assume the state as low.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        regulator@60 {
+            compatible = "ti,tps62361";
+            reg = <0x60>;
+            regulator-name = "tps62361-vout";
+            regulator-min-microvolt = <500000>;
+            regulator-max-microvolt = <1500000>;
+            regulator-boot-on;
+            ti,vsel0-gpio = <&gpio1 16 GPIO_ACTIVE_HIGH>;
+            ti,vsel1-gpio = <&gpio1 17 GPIO_ACTIVE_HIGH>;
+            ti,vsel0-state-high;
+            ti,vsel1-state-high;
+            ti,enable-pull-down;
+            ti,enable-force-pwm;
+            ti,enable-vout-discharge;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/regulator/tps62360-regulator.txt b/Documentation/devicetree/bindings/regulator/tps62360-regulator.txt
deleted file mode 100644
index 1b20c3dbcdb8..000000000000
--- a/Documentation/devicetree/bindings/regulator/tps62360-regulator.txt
+++ /dev/null
@@ -1,44 +0,0 @@
-TPS62360 Voltage regulators
-
-Required properties:
-- compatible: Must be one of the following.
-	"ti,tps62360"
-	"ti,tps62361",
-	"ti,tps62362",
-	"ti,tps62363",
-- reg: I2C slave address
-
-Optional properties:
-- ti,enable-vout-discharge: Enable output discharge. This is boolean value.
-- ti,enable-pull-down: Enable pull down. This is boolean value.
-- ti,vsel0-gpio: GPIO for controlling VSEL0 line.
-  If this property is missing, then assume that there is no GPIO
-  for vsel0 control.
-- ti,vsel1-gpio: Gpio for controlling VSEL1 line.
-  If this property is missing, then assume that there is no GPIO
-  for vsel1 control.
-- ti,vsel0-state-high: Initial state of vsel0 input is high.
-  If this property is missing, then assume the state as low (0).
-- ti,vsel1-state-high: Initial state of vsel1 input is high.
-  If this property is missing, then assume the state as low (0).
-
-Any property defined as part of the core regulator binding, defined in
-regulator.txt, can also be used.
-
-Example:
-
-	abc: tps62360 {
-		compatible = "ti,tps62361";
-		reg =  <0x60>;
-		regulator-name = "tps62361-vout";
-		regulator-min-microvolt = <500000>;
-		regulator-max-microvolt = <1500000>;
-		regulator-boot-on
-		ti,vsel0-gpio = <&gpio1 16 0>;
-		ti,vsel1-gpio = <&gpio1 17 0>;
-		ti,vsel0-state-high;
-		ti,vsel1-state-high;
-		ti,enable-pull-down;
-		ti,enable-force-pwm;
-		ti,enable-vout-discharge;
-	};
-- 
2.30.2

