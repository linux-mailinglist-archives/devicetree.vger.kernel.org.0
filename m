Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCE2F347668
	for <lists+devicetree@lfdr.de>; Wed, 24 Mar 2021 11:44:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233230AbhCXKoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Mar 2021 06:44:19 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:37753 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233465AbhCXKoN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Mar 2021 06:44:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1616582652; x=1648118652;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=JWeO86KOE7jMgZEGKA5JBjsUu3gtOMWih93HdRaA6Hc=;
  b=xqztw59KGKxa0PUkMdFoRXz9UPeyxa0aXauErSLL+AlIrYqa7xIMhjqc
   FWMN130duPLLb4+NfbqS3t6Su8xs55VmGY7uwmM5YvFTFCkCQR0ucpD7G
   bhk9nE6psYtEEjpAiygbFCU+luYi3uzbAUK/SvC8WVMvxGO8+Y/3g8uqX
   h+MKH8Z1q3aCy0kWWAIkXsFe/lnj4ttlkUGwt4ur5jy7WW9Oehw5YYp/g
   JrKATR/dHynKIg+Wz8MwOIAS0Pcmy2OyyOk2EMzlg9XhPWMMcskvWpyks
   IcQWh6xiGWl/cykwR6AwQ7ci4pd0dK/b6h75Q6fbTvfReYg44XhgxcyCr
   w==;
IronPort-SDR: F3VfY/4iKlExQ9yFHiy2ezIUaDpvnkOOsc/D6LmwQdyA2XHamYRrI0zKyLjdOtGG0ofmFYaFzS
 0y54+YKwzadU2cyxmrS4WnFN/8C6xPOZmiWkGx6pCo8n3CTwwzCNZicpUvNKBlGz9yIC9DCYn/
 EwnwZYH284uzd8quriuRwfu/roSzufD3JnoXVUWAlFqL23NcM27Q4PEAYkJQfA4wsx1ApwPmoF
 UTOgc6fPaVzKyCgwvnUWVLqJfjqpYgn2wgjDAOrnbEL+8ZoS69zMi7DqGQyx2lcVaeR4QrVUzC
 SMI=
X-IronPort-AV: E=Sophos;i="5.81,274,1610434800"; 
   d="scan'208";a="108360158"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 24 Mar 2021 03:44:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 24 Mar 2021 03:44:12 -0700
Received: from dev-powerhorse.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Wed, 24 Mar 2021 03:44:10 -0700
From:   <daire.mcnamara@microchip.com>
To:     <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <linux-clk@vger.linux.org>, <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
CC:     <cyril.jean@microchip.com>, <lewis.hanly@microchip.com>,
        <padmarao.begari@microchip.com>, <conor.dooley@microchip.com>,
        <david.abdurachmanov@gmail.com>,
        Daire McNamara <daire.mcnamara@microchip.com>
Subject: [PATCH v3 1/2] dt-bindings: clk: microchip: Add Microchip PolarFire host binding
Date:   Wed, 24 Mar 2021 10:43:50 +0000
Message-ID: <20210324104351.2200605-2-daire.mcnamara@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210324104351.2200605-1-daire.mcnamara@microchip.com>
References: <20210324104351.2200605-1-daire.mcnamara@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Daire McNamara <daire.mcnamara@microchip.com>

Add device tree bindings for the Microchip PolarFire system
clock controller

Signed-off-by: Daire McNamara <daire.mcnamara@microchip.com>
---
 .../bindings/clock/microchip,mpfs.yaml        | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/microchip,mpfs.yaml

diff --git a/Documentation/devicetree/bindings/clock/microchip,mpfs.yaml b/Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
new file mode 100644
index 000000000000..a4756480a8ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/microchip,mpfs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip PolarFire Clock Control Module Binding
+
+maintainers:
+  - Daire McNamara <daire.mcnamara@microchip.com>
+
+description: |
+  Microchip PolarFire clock control (CLKCFG) is an integrated clock controller,
+  which gates and enables all peripheral clocks.
+
+  This device tree binding describes 32 gate clocks.  Clocks are referenced by
+  user nodes by the CLKCFG node phandle and the clock index in the group, from
+  0 to 31.
+
+properties:
+  compatible:
+    const: microchip,mpfs-clkcfg
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+    description: |
+      The clock consumer should specify the desired clock by having the clock
+      ID in its "clocks" phandle cell. See include/dt-bindings/clock/microchip,mpfs-clock.h
+      for the full list of PolarFire clock IDs.
+
+  clock-output-names:
+    maxItems: 32
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#clock-cells'
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  # Clock Config node:
+  - |
+    #include <dt-bindings/clock/microchip,mpfs-clock.h>
+    soc {
+            #address-cells = <2>;
+            #size-cells = <2>;
+            ref: refclk {
+                compatible = "fixed-clock";
+                #clock-cells = <0>;
+                clock-frequency = <600000000>;
+                clock-output-names = "msspllclk";
+            };
+            clkcfg: clock-controller@20002000 {
+                compatible = "microchip,mpfs-clkcfg";
+                reg = <0x0 0x20002000 0x0 0x1000>;
+                clocks = <&ref>;
+                #clock-cells = <1>;
+                clock-output-names = "cpu", "axi", "ahb", "envm", "mac0", "mac1", "mmc", "timer",
+                                     "mmuart0", "mmuart1", "mmuart2", "mmuart3", "mmuart4",
+                                     "spi0", "spi1", "i2c0", "i2c1", "can0", "can1", "usb", "rtc",
+                                     "qspi", "gpio0", "gpio1", "gpio2", "ddrc",
+                                     "fic0", "fic1", "fic2", "fic3", "athena", "cfm";
+        };
+    };
-- 
2.25.1

