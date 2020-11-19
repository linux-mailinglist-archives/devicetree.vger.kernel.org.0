Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 314EB2B98DC
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:08:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728117AbgKSREg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:04:36 -0500
Received: from esa3.microchip.iphmx.com ([68.232.153.233]:52309 "EHLO
        esa3.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727241AbgKSREg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:04:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1605805475; x=1637341475;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=sqmHoFgpbFV2NwbXURnI6WukmVH9k+An/EXk3Hal+eY=;
  b=KlVrkKeY44JVLeE/qtffkjAYdGzmGkn3KE866ulR7Ob3BYCzFY/XeU5w
   cQnVXBW9OPfDlxx5LS82sAm5eyknSh/UH8JPfLpD+D852VWlHIa5z12Ug
   1IczgCXCZXO+XOAg7Qt0lcotXj6T2BTwbrceD7bBCekf9Tm6hNXEqX+Oe
   dLfV+6Es0csVxCd/UPeQ5vJAhteD8rH2EEbMjJ7yKNrVg53rz3Nvu7zlL
   1v4GOfcAL0zoudtFuWjGTgccxWMWIxaT/Z31mAyaCY/KGTwrX7mMDNZK0
   48iqkfashbGoIhh3ofOpTjloNuJFlEaC6kjPKsHhky2xCi/jShPTLRpzm
   w==;
IronPort-SDR: twP0lV55qIj4uhBEJJoMmatuSRmMsmxrXTnt3O3D2EAn9mxIj4XcEMl86CYvpXyBD6YZglgWnw
 8PTeaUlztTK0ObqGZkG2SNS6RWL3WQHo/AAaXVWhWYOrObCvChQU0mQmCYoMJSKBV4eJRuN0t3
 5uqK3H246EfDXPVRrAd3aSzAWLPbw13alBfvuX/j23Phsc/DPfUHgheONd3E4OOrGEY6yPU0af
 OvKrAxuRWyArSGEb6+hmBOJ8pRN3sbrY7rKp6xZ0UMQp919/o833FZM9t0ZXfXEgIm+ofBOd9l
 osA=
X-IronPort-AV: E=Sophos;i="5.78,353,1599548400"; 
   d="scan'208";a="99698547"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 19 Nov 2020 10:04:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 19 Nov 2020 10:04:34 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 19 Nov 2020 10:04:32 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <jassisinghbrar@gmail.com>,
        <aou@eecs.berkeley.edu>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH 3/6] dt-bindings: add bindings for polarfire soc mailbox
Date:   Thu, 19 Nov 2020 17:04:32 +0000
Message-ID: <20201119170432.18447-1-conor.dooley@microchip.com>
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
 .../mailbox/microchip,mpfs-mailbox.yaml       | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
new file mode 100644
index 000000000000..5d6ccaa13dc2
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/microchip,mpfs-mailbox.yaml
@@ -0,0 +1,46 @@
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
+    const: microchip,polarfire-soc-mailbox # PolarFire
+
+  reg:
+    items:
+      - description: mailbox data registers
+      - description: mailbox int registers
+    maxItems: 2
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
+  - interrupt-parent
+  - interrupts
+  - "#mbox-cells"
+
+unevaluatedProperties: false
+additionalProperties: false
+
+examples:
+  - |
+    mailbox@37020000 {
+      compatible = "microchip,polarfire-soc-mailbox";
+      reg = <0x0 0x37020000 0x0 0x1000>, <0x0 0x2000318c 0x0 0x40>;
+      interrupt-parent = <&L1>;
+      interrupts = <96>;
+      #mbox-cells = <1>;
+    };
-- 
2.17.1

