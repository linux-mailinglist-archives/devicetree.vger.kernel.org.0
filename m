Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F06A37AAD2
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 17:38:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231782AbhEKPj1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 11:39:27 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:63972 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231868AbhEKPj0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 11:39:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1620747500; x=1652283500;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=SqNyNIfuwHW0yJuBwaT05X9QMLsai7UvDsw9rjA5dnQ=;
  b=AqF2CvmRMjMLnHKInnT9tDL5JBpxIDyCC4UCcBlPa6HcUKfuMfDYyB+A
   jOMG/8IcRNCt9VCbuQQ7lTjOcB3Pp8hUgQWGixuZbV4CyJStH+B9YTYnG
   Y35CpYoRABBs4tMTb41g+aCfrGo8kh4cFabEM6lw1wf5zd7oWxDcrqS5J
   7lZ6w/gG99A9OAcQXUON6B+A+QB686FIS8bBERSDyzb8wOT1mvylXJs0Y
   2jZdmuqQ+61kSzWR3m4DvkXSBh0nuRcNg2ETU2bmW/X1ebbfQ5KmhJpfO
   4waIuN3qXu4lxXkTrtfzK0k5OxdqGdn0nTJODSnz8+hCe3WBwbI/TqRJH
   A==;
IronPort-SDR: 1Iz84wIrYvtlI1aseHZjzJw0zLjGikuWxtFGv0QZojsnUfRwGihYWGLqJ3gJjUWB2D++ofmbQV
 /XTCV5rzEaD64T9R+peW6DDTqPQr8QSpwgACWsoQ/XTirG4SvshSONnGNJbl2B9SN4Pp++fY/5
 dz8eaaz6Vcm+X7/u+BGPLfGWBoC8Y1RwI/vgHRf1U+jF6WnPX0A/xzswuZ8SrT5ODuueUeoXx/
 gLg1ePngPmqL/tcJ0zDljpY8haBmtUXveeDyLDaL/Bzu7xmLM9YzJBzOxKDsVsVtyzANiDynUk
 gZ0=
X-IronPort-AV: E=Sophos;i="5.82,291,1613458800"; 
   d="scan'208";a="120686650"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 May 2021 08:38:19 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 11 May 2021 08:38:18 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Tue, 11 May 2021 08:38:16 -0700
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
Subject: [PATCH v7 1/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Tue, 11 May 2021 16:38:15 +0100
Message-ID: <20210511153815.28611-1-conor.dooley@microchip.com>
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

