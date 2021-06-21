Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C5023AECFB
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 18:03:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbhFUQFO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 12:05:14 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:49021 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbhFUQFN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 12:05:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624291379; x=1655827379;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=SqNyNIfuwHW0yJuBwaT05X9QMLsai7UvDsw9rjA5dnQ=;
  b=SC9PYiUxapTgDHbTyqg93vAKiRraUGu1sN5GDiyQ7iwljmvtaCJSbWig
   s7c/N2aGYwQIDN7EKJ7SYMaRlmIik+P8kTNlKNUcNLHfDomwL1twtJ10j
   P6JGzELcdFPQ82Y1JShqiV8bHgV3qyEuNBj6pQa7JNb5FsYuFHW+Q8BBk
   ZR86tRFO/iOKKgsWseXy38HMVnVte6Zq2IszsB76+ewXPLfru1OHbmLlm
   fUOuFLfZPiI/5QmDyBw3LtKvO86DOEulVck3c624/Wd4CkBhqGTIIZk44
   i0l9bAu+rm5iotMRKE1jskFUW4zWyuFeIQU9kyCqSWYzQfSQ92fB46/4f
   A==;
IronPort-SDR: gC0ntP8XUtePcYYfuvoyuNua9rK0E3OfBZp1xsCg4TeDGkw8sh7WZoOaczshRuSrM+xXoZ+4UE
 TtynW9qxEx5H56t7gU7vBWL3CFozUtwdRcx3391isW+v3b9M1yYlQzvKDqkgp+RyIM6CJDBzM0
 2XYx/AAiUaje5QGu8Ma6BwY+YS1cVuEJ951l3DvaaF7Ny2V/PXHVQto0HRJUPxE8YipjdNz+cQ
 jbhDRens815DdxbHH/9ycPuRM4R7D0Aj+iFm6FCAH3foyIvTj1iyoEhtyX37NgFvcOuCcozzv2
 jUY=
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="119478277"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Jun 2021 09:02:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 21 Jun 2021 09:02:58 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 21 Jun 2021 09:02:55 -0700
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
Subject: [PATCH v8 1/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Mon, 21 Jun 2021 17:02:55 +0100
Message-ID: <20210621160255.1304-1-conor.dooley@microchip.com>
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

