Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BC042E1F77
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 17:34:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725988AbgLWQeX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 11:34:23 -0500
Received: from esa.microchip.iphmx.com ([68.232.153.233]:10493 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725785AbgLWQeW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 11:34:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1608741262; x=1640277262;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=h1uU/xZB+u65R9PycjaTtcUTsDJER2E6v6lRjGcr7MY=;
  b=BVwbE267a1p/y1SrZLus0qaBJuY0VulufgTMIni6buwrw6+bxkHrrPQv
   A/CazTIk3KOhXCL1hnNBsQFMSDtOUrP0qW4ylr/e7dznGIuRvtFUbQorA
   qzmDyxE7VEju5JMdryW5bzwJVdOwMZIITc9qjsu09YpxrvNhuU7VF07BM
   7D15558H6EVunocHIZRSAbQC4/APo7hmzqyWpJxIK6UGAU3PFgtEDLibg
   UPWeeS8GzsMZdbbbURSFzpfUT4aSmOD+Y3HvnE18AnEzIcSR5ncDyQSGE
   Er+RDYTDdIT6aOHPJvG8MbDLANWfJs2qIshPdxK42TuhdD3eHzQzrPQ8U
   w==;
IronPort-SDR: oh4ujwtW0+2ocjPCLo+sBsWgV7rQeYWKTsmjw3cPi2gPsVn361FffOmr+D6Whuw8TlodKwcVb0
 hgZk+Dl2pxIYGCET6DDNaIOiaVFMgwSCeVS792woC7SBNAcuco4CfXaE3VfqwmGE/HUQX/svGq
 ov0ns3IFfSTb/WmsS7WQ1OAGn4I21LfIDo0xeybb0ZTeXQzk74Q4AtpRuOch4s6wzdB2ObC6G4
 sTMXVWXumOyi+29LoOnSyVoEgeTQXCu/rHkrWfgDD14Z0fxjFeWZJ5EtkeURZlXYC/wV79WcfE
 Yv0=
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; 
   d="scan'208";a="108748448"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2020 09:33:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 23 Dec 2020 09:33:06 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 23 Dec 2020 09:33:03 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        <j.neuschaefer@gmx.net>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 2/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Wed, 23 Dec 2020 16:33:02 +0000
Message-ID: <20201223163302.29057-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add device tree bindings for the MSS system controller mailbox on
the Microchip PolarFire SoC.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../mailbox/microchip,mailbox-mpfs.yaml       | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mailbox-mpfs.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/microchip,mailbox-mpfs.yaml b/Documentation/devicetree/bindings/mailbox/microchip,mailbox-mpfs.yaml
new file mode 100644
index 000000000000..c5b126c6fb66
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/microchip,mailbox-mpfs.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/microchip,mailbox-mpfs.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microchip PolarFire SoC (MPFS) mss mailbox controller
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
+      - description: mailbox int registers
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
2.17.1

