Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E475372A2E
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 14:35:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230187AbhEDMgW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 08:36:22 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:57139 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhEDMgT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 08:36:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1620131724; x=1651667724;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yoXlOvMkTqO1ej/J2NnA8vgLJivzExQBcB80StTEEuo=;
  b=EotvHPFkeeQfB7GaxtYEz7eywTI1ZqQlrP3WDgYIySwtrf8A0HvXQ7Dl
   TCAaWtTP/CanL45a0Nv/7cQmbVteBWJAGI4LfGrgfjasx1/MhBsUdIXp4
   crg/HxGxE1MsYBSVfNCaq9psKQf3niKOdDL+MvYYsMtBbW+chTd6qWhz/
   6Bu55lOXOXfKy2tI/rxlqTfFT0Il6UjM+ZRMwF3EJXBB1QqclPTOcba9f
   NrG1y3GG5A+8Mzp8b/eGo5QY0cDfrnMuuBmrAdmBdkEelqtyuixKqHiY9
   PPjd5rggXNuc6+C12Jf5PesiiAbYA2iiqK768bcdABC4G1+Jkk0b4PZo7
   A==;
IronPort-SDR: NLeOfUvej2xDJVS6H4635CNQvrlVgY7XY5+josmC3wBl4gWPNuXWII01RQvpyF6MMpvAD2pNaT
 d+8vpRKd6Tvd48t9byw/NfmVep+BDmogYFUEqKlPwaX0PzxJETDVfPxfbZBe8P0YSmYQ3wWz6G
 2CnqbdmYFz2BGiDMJ72z+/tNdj2NJjqUvoahaVM/iT3QnSpPdHYAzgjz3b8LZ161hTCr5MZSBd
 VQwEvwGMeQvftgwF0y8LB2MUqREbZZL4NeQryeBTsgh9e1tZPXnG2zJRueCyPD7vSi4iLwk0ZE
 tH0=
X-IronPort-AV: E=Sophos;i="5.82,272,1613458800"; 
   d="scan'208";a="53528319"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 04 May 2021 05:35:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 4 May 2021 05:35:22 -0700
Received: from daire-ubuntu.school.villiers.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2176.2 via Frontend Transport; Tue, 4 May 2021 05:35:19 -0700
From:   <daire.mcnamara@microchip.com>
To:     <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <linux-clk@vger.linux.org>, <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>
CC:     <palmer@dabbelt.com>, <cyril.jean@microchip.com>,
        <padmarao.begari@microchip.com>, <lewis.hanly@microchip.com>,
        <conor.dooley@microchip.com>, <david.abdurachmanov@gmail.com>,
        Daire McNamara <daire.mcnamara@microchip.com>
Subject: [PATCH v5 1/2] dt-bindings: clk: microchip: Add Microchip PolarFire host binding
Date:   Tue, 4 May 2021 13:35:14 +0100
Message-ID: <20210504123515.916707-2-daire.mcnamara@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210504123515.916707-1-daire.mcnamara@microchip.com>
References: <20210504123515.916707-1-daire.mcnamara@microchip.com>
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
 .../bindings/clock/microchip,mpfs.yaml        | 67 +++++++++++++++++++
 .../dt-bindings/clock/microchip,mpfs-clock.h  | 45 +++++++++++++
 2 files changed, 112 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
 create mode 100644 include/dt-bindings/clock/microchip,mpfs-clock.h

diff --git a/Documentation/devicetree/bindings/clock/microchip,mpfs.yaml b/Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
new file mode 100644
index 000000000000..1a38c9c66281
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/microchip,mpfs.yaml
@@ -0,0 +1,67 @@
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
+  This device tree binding describes 33 gate clocks.  Clocks are referenced by
+  user nodes by the CLKCFG node phandle and the clock index in the group, from
+  0 to 32.
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
+    maxItems: 33
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
+            clkcfg: clock-controller@20002000 {
+                compatible = "microchip,mpfs-clkcfg";
+                reg = <0x0 0x20002000 0x0 0x1000>;
+                clocks = <&ref>;
+                #clock-cells = <1>;
+                clock-output-names = "cpu", "axi", "ahb", "envm", "mac0", "mac1", "mmc", "timer",
+                                     "mmuart0", "mmuart1", "mmuart2", "mmuart3", "mmuart4",
+                                     "spi0", "spi1", "i2c0", "i2c1", "can0", "can1", "usb", "rsvd",
+                                     "rtc", "qspi", "gpio0", "gpio1", "gpio2", "ddrc",
+                                     "fic0", "fic1", "fic2", "fic3", "athena", "cfm";
+        };
+    };
diff --git a/include/dt-bindings/clock/microchip,mpfs-clock.h b/include/dt-bindings/clock/microchip,mpfs-clock.h
new file mode 100644
index 000000000000..73f2a9324857
--- /dev/null
+++ b/include/dt-bindings/clock/microchip,mpfs-clock.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Daire McNamara,<daire.mcnamara@microchip.com>
+ * Copyright (C) 2020 Microchip Technology Inc.  All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_MICROCHIP_MPFS_H_
+#define _DT_BINDINGS_CLK_MICROCHIP_MPFS_H_
+
+#define CLK_CPU		0
+#define CLK_AXI		1
+#define CLK_AHB		2
+
+#define CLK_ENVM	3
+#define CLK_MAC0	4
+#define CLK_MAC1	5
+#define CLK_MMC		6
+#define CLK_TIMER	7
+#define CLK_MMUART0	8
+#define CLK_MMUART1	9
+#define CLK_MMUART2	10
+#define CLK_MMUART3	11
+#define CLK_MMUART4	12
+#define CLK_SPI0	13
+#define CLK_SPI1	14
+#define CLK_I2C0	15
+#define CLK_I2C1	16
+#define CLK_CAN0	17
+#define CLK_CAN1	18
+#define CLK_USB		19
+#define CLK_RESERVED	20
+#define CLK_RTC		21
+#define CLK_QSPI	22
+#define CLK_GPIO0	23
+#define CLK_GPIO1	24
+#define CLK_GPIO2	25
+#define CLK_DDRC	26
+#define CLK_FIC0	27
+#define CLK_FIC1	28
+#define CLK_FIC2	29
+#define CLK_FIC3	30
+#define CLK_ATHENA	31
+#define CLK_CFM		32
+
+#endif	/* _DT_BINDINGS_CLK_MICROCHIP_MPFS_H_ */
-- 
2.25.1

