Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A07C43B3221
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 17:01:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232323AbhFXPDU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 11:03:20 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:45849 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232316AbhFXPDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 11:03:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624546859; x=1656082859;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=SqNyNIfuwHW0yJuBwaT05X9QMLsai7UvDsw9rjA5dnQ=;
  b=zh1hjtUYoGk3tkUzVOrea8lmfVd+Ibc1Pnd2L4zy8L28b6rqCOmwfON8
   1VXy1H/79vOPujbOHwtffYE4efPfOx1+qKeJWvonNHAiNb8u47aYe8Zt1
   icOvwE8OSzDlVJfRbD1/DUJYViHAWlYDvO+FdmWts/LEhv+YhWT641niu
   s7TFHHgr+MrIrhH+zU297MC4gEESfciLJ46yygFEWlB4K7FlKcfPEQaMx
   MeU7a8SfqvV92VuxiIbAoW47tZeDKTYLxRbo5VC/osjYk+imepKHYJSqC
   M2MKcxW5nimwDDusfg+OQnFIShPtWlAEqXEGT95Frd1Fe9M8SLRHcVN61
   g==;
IronPort-SDR: ZN3jZTgMfMO50Eieqwy25SOWv37fS0ZdgVXPKEJgSvMSCVDvQG2l8dQMRr/vzqCCIoHPFazE88
 M/DbBIv2p9VKaJXUr73Yus74owbcQf74r9KGP7AMTh/xd55JLgUA054MLZkqH6e2Wuxl1NArX+
 zRtW12FOsSPrl7vH9t7xZdGf2ONpfAHeqPilVTV0CMtBReIiC/IwOeI4d8V9MiyZCmT+y4+0XZ
 7li8yhxtXU8fQK26D5JErQYXqwXX/5liHrPOaWCK8RXYhWO0tTG6syzT4QbMMIHWGR0LXPnTJc
 p+w=
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; 
   d="scan'208";a="133328697"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 24 Jun 2021 08:00:58 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 24 Jun 2021 08:00:52 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 24 Jun 2021 08:00:49 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <j.neuschaefer@gmx.net>, <sfr@canb.auug.org.au>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v9 1/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Thu, 24 Jun 2021 16:00:48 +0100
Message-ID: <20210624150048.11222-1-conor.dooley@microchip.com>
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

