Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD3082CA0DA
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 12:06:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730328AbgLALEd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 06:04:33 -0500
Received: from esa5.microchip.iphmx.com ([216.71.150.166]:63609 "EHLO
        esa5.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730317AbgLALEd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 06:04:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1606820673; x=1638356673;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=jauox//ePXwP8SQPPfgfnZWRrEQXHbn0G2vtEiP850Q=;
  b=U27JUWr5bEHRwxVzybzMckuZZ34eYSyVPCyEtH9IrUjPxKBFFtVqYD52
   hAZw+qM48ZMDI0jRadWCuBWglxvozibDKnPaqaOMZmVUxyHwvrheMEMvX
   OuObXotZfTLLI/8iMnxphLVtMrRiL50OxQ3pEkYN39Dzi4QfQm22fYLeN
   yAjb3O+jQSYIN3CZLnCfFsqnMsYh3qzKU332ONaLYDJZo0lKBZU5tbJ9Y
   ImujKuOF6kbGeKkZKZ/C4/vzcH34GDa4k9XlMc6YzqHBUXe8T6xiwOe6H
   Vy6rpvcE2Cb/oKYkOveTS9g0xtFaBMToYmqGFvwlwdhIkqyqGenPy8EQp
   A==;
IronPort-SDR: g7ol6B/HiOtIXty1iGzh01UtKvV2emKXDEs83RkaHo7bz43lfncXmP9GQlXcqriQuNgGrx+7cD
 EvvuJVWwr6QBw2Bi548AvMvl3erZgBvMcCdGMSDkxRpNUY57txYURhgG6hriS/3DBiLFhx7wUx
 b8+TvhT/SbnkGmczohjoRl9osVOckAEOP2ecCt5xz8XxvfBDr+oAtUmGGQoCe79/za/zNHmt6Y
 htnsLyCjcqp2VsNBiPKi1E18QxoHvQhEkrNoW9B8MLxoJq0PKZacUmN7BteaST2DPoN2O9sSUd
 J28=
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; 
   d="scan'208";a="100384391"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Dec 2020 04:02:54 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 1 Dec 2020 04:02:53 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 1 Dec 2020 04:02:51 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 2/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Tue, 1 Dec 2020 11:02:50 +0000
Message-ID: <20201201110250.28437-1-conor.dooley@microchip.com>
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
 .../mailbox/microchip,mpfs-mailbox.yaml       | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
new file mode 100644
index 000000000000..9c522a088d55
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/microchip,mpfs-mailbox.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microchip MPFS mss mailbox controller
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

