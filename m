Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE0E235CAAE
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 18:04:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242088AbhDLQEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 12:04:21 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:28826 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239928AbhDLQEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 12:04:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1618243443; x=1649779443;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=OV+0YsG6sI+ZJKXiOdu5QUj/bWtZRv1ZITFCJDfpJnE=;
  b=n2uf36afobQ5Zk5bMCby4QVENVbHeOM37PNAljepcdgAyehNkgJGa8if
   qtOe6oqr6VFre6dX/9spuoI2IrsE86QRt9DXuEQzfiJNznlkipyfYJs3z
   X1oKzbceJJ2IIMxtIkddSWhQts1Gv9WEtvVOTPUyjVWTt68qYoAuseKfO
   BaG1HIBZqigN88G3qcdAL9zZDAF9+1+USXuOHmWvGefAPuNjbKffOGCGx
   4k8gcQ7t7L1FGk/SYmkl3e+cIbqKq7g94TxpOy2T/wH00Fli7ym4NPz3l
   vFBDJz/8+s8R0yqsx5RrnUxMInriarb+zx9O4IMswSmfhrFrZsYWlrRVh
   w==;
IronPort-SDR: rpQ/WGyJFW1Z+5TG5wKI69Z0fLRLTYWYgMmYyYoy0twVUn63U++lDAPgxHDR7qluxB+y/r/UzD
 qKaQ/IgszyiZFpm8GMqdhy7BuVu9dJNGwjwS+EMHPxSYTlBAfZfqhVz8rc707ot3IOLb4S8hDo
 INWER12GnuOCp/yJZDJHpQRWeTKSg0FXVlPjG975hBhLn85z5MMFZBhHCziJjMwLNh924O3uuo
 UbDGZYjxJ56dd8Sd+4BsqRtLNTeGTe4WABzQ1zimj3r5Isq891pcMbo9k5Yx2I7Mkju7lfC724
 iQc=
X-IronPort-AV: E=Sophos;i="5.82,216,1613458800"; 
   d="scan'208";a="122704167"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 12 Apr 2021 09:04:01 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 12 Apr 2021 09:04:01 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 12 Apr 2021 09:03:58 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <j.neuschaefer@gmx.net>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Mon, 12 Apr 2021 17:03:58 +0100
Message-ID: <20210412160358.19309-1-conor.dooley@microchip.com>
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

