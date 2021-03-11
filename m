Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC4533716F
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 12:35:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232537AbhCKLe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 06:34:59 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:58747 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232520AbhCKLex (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 06:34:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1615462493; x=1646998493;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=3k11c8YeXus+tK7ok2phregAe7K4Jc0rVhyjpz+zfN4=;
  b=Bnayc2p7wPae0k2DyvyFl5teVsyT0qUdRXVGansmeesGPwSenyyQgwDI
   tnVIWMc5TSpjD/0KGhDM1gAFOAtEzUdTHm1OTWFKuRvDnsq+XlctL828d
   JStLGLkCVt6gD09F+52I8HS4YCwjxmQlZ4z16ZnUPtywRcVFd2muJYcMs
   EXaP+FO5UBa04qCnGKgjpNJgVyF0RbZl8wPpZ4pcnfqVPcqmEnXaQYQm9
   hUTvDSvuVtuQ6AYQLrVFo/9vbZfrER2jLAr/Qt/Gp1czTHOeiP5/7VjWN
   H7+KK5nfdQHJS86QmaCi0A8K+rOjf1XeNsY8cHtuGavz7GJgKb4KrHVKW
   Q==;
IronPort-SDR: sor/3bO5PtGp5aHNyPP4xNQvxXLOqdcxkMbHKsuSwVKnUqmTdjf/a5hmxOlIroqddhQJmP2Pkw
 dIpsJH63Dite+xAcAWtHRX/TCtstfj2suLnaPixZTEjf2MPurSIE5Ff7XQJ2STJVcM1Hm03zuP
 2+hY0MpFXnf1brymnGYXoQyyAf5ja236DVsN6SoDDVysXqKv3lO5lUKzsXnTiXaya7u8FdCKC6
 UJRJ/4Cpquqs2rIuY9PxC0+CLUBjSe7gyI6dbhCWQBCJvurkx4wLALa+UfRDxkDQ/+U1p3wAmz
 m/0=
X-IronPort-AV: E=Sophos;i="5.81,240,1610434800"; 
   d="scan'208";a="109596674"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 Mar 2021 04:34:53 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 11 Mar 2021 04:34:47 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 11 Mar 2021 04:34:44 -0700
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
Subject: [PATCH v4 2/5] dt-bindings: add bindings for polarfire soc mailbox
Date:   Thu, 11 Mar 2021 11:34:44 +0000
Message-ID: <20210311113444.15520-1-conor.dooley@microchip.com>
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
 .../microchip,polarfire-soc-mailbox.yaml      | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml b/Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
new file mode 100644
index 000000000000..3df4595ad58a
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/microchip,polarfire-soc-mailbox.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/microchip,mailbox-mpfs.yaml#"
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
2.17.1

