Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02EFD35F882
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 18:08:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233712AbhDNPyw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 11:54:52 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:4363 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352432AbhDNPx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 11:53:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1618415615; x=1649951615;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=SqNyNIfuwHW0yJuBwaT05X9QMLsai7UvDsw9rjA5dnQ=;
  b=FgY6sXR4dZPaDyX89KbLwFxW20JqeQzk6yfsrZK2/LGp8lwX3LhvU3cr
   EvV76TkE0RSo1i90jiMPj5MRAQWXGw3jOoHPfbWSWNqX1XQ1AoE6ksaNU
   FeMXVeVA7HcVQ6UXpG1EmxiYlqBIRrDrjQPC4U4uGqhHD08WvSaOZ7uGw
   1u9lZTx7IPCFh4RZarFYI9k7bObtifuptD7FNrpHKz7zuVR+9YCul2+KB
   LY/T7rNvZwYZf4hAFSnbv+0J/OvejzRrEihrMZcZCK/w0BjHzb4o7/CQk
   bhXJM4R0/m0nSFS5RaUiFpIVQGBSaDZo/KX8Fc3TiwfC2NXiIPxy+tGvI
   g==;
IronPort-SDR: hIsk5bvlx9KLbCid94PZuaaJVxfpMmD0fj510WCPXQbUzOO7WJPksYkkJrGHCCR3LdyOisA6fD
 WT7zN/hAQIgwKQWLxTpuMqqbDvAFWCpxQbeLtEQ0q1qH0zOvODj4UEbyTWKizYV2RGYJ6xa0Eg
 XncezbrH5MgQzQI1WYd95VXP8mV5RF1qz/uimEJ4ZY0L7pycX2aUkZW/D8odNfMIvAQG8/c0Eb
 CVoNG/EsdXHnpaE73VUjl9SQhXAzCTgPo4lGh3qD7lafUuwZLzK0mRnSduiOTxSVgonKxD7Tru
 xLA=
X-IronPort-AV: E=Sophos;i="5.82,222,1613458800"; 
   d="scan'208";a="51115352"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 14 Apr 2021 08:53:29 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 14 Apr 2021 08:53:29 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Wed, 14 Apr 2021 08:53:26 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <j.neuschaefer@gmx.net>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v6 1/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Wed, 14 Apr 2021 16:53:26 +0100
Message-ID: <20210414155326.29469-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add device tree bindings for the MSS system controller mailbox on
the Microchip PolarFire SoC.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../microchip,polarfire-soc-mailbox.yaml      | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
new file mode 100644
index 000000000000..bbb173ea483c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/microchip,polarfire-soc-mailbox.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microchip PolarFire SoC (MPFS) MSS (microprocessor subsystem) mailbox controller
+
+maintainers:
+  - Conor Dooley <conor.dooley@microchip.com>
+
+properties:
+  compatible:
+    const: microchip,polarfire-soc-mailbox
+
+  reg:
+    items:
+      - description: mailbox data registers
+      - description: mailbox interrupt registers
+
+  interrupts:
+    maxItems: 1
+
+  "#mbox-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+      mbox: mailbox@37020000 {
+        compatible = "microchip,polarfire-soc-mailbox";
+        reg = <0x0 0x37020000 0x0 0x1000>, <0x0 0x2000318c 0x0 0x40>;
+        interrupt-parent = <&L1>;
+        interrupts = <96>;
+        #mbox-cells = <1>;
+      };
+    };
-- 
2.31.1

