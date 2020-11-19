Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17C122B98DE
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:08:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727241AbgKSREp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:04:45 -0500
Received: from esa6.microchip.iphmx.com ([216.71.154.253]:38016 "EHLO
        esa6.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726619AbgKSREp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:04:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1605805485; x=1637341485;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=Kl04zi16mIa54+tgPli2SWxBJHPluDkqBpHCMDOYEhU=;
  b=g/QLqM3WIyJPWilNFO00vbUQ858pWXdQmI6+CuNGYej/x1tWn1cMu6ik
   1XXTJ3WtIzeYvGOs1jYuRiGyFoTm9cL0IB4pjKlvFYY7vzzhlLKRqpA3T
   QlPN7E4NYJ2ah77yWBy8X4h8/U0FTfe9RGxFR6d2QX0MaiDdDk8aKdIBO
   4BpQuuhwUNMJeERHyPAAnMIDphGHKkNqNRjSqd33RtjuqtGm+5JZlhfLb
   yPebA2EniH/DGQm4RureL2GPBI3cNUOVGqLLogwDhDWvtUuR2x8J3B9Op
   +mF8uL2TCegRHANUY4Nk2S5m3KklIaNkRFjXolatlIRgtmuVf0XYkQP8w
   w==;
IronPort-SDR: zW6vGRro3BKxrLfjZmmqwkk30u4dmttQ+farGYTajMQ7MroQZDjY5DGCZ061D4doJVtT6jKuAX
 7VDOEh7ut7L4SO2+ofZjeVqwLYHvgqRnDw9JDgxiZ/DnwoddYX93zn+E4wJEcm5CRaN82wsxI6
 b4WQ75g2uUnMsNbRIRZZHOscbVNjNsVLr7HQwcQePM/ukqL5JhqJNAu78d75zy3j9woWF6XLe+
 BUeoQF9IpHVKohMZx7LL4olyzf10dgyfFIhgc4QTLHc/JI+z2YaiCMYvhbc/ie/d2e/juJLdtn
 ly0=
X-IronPort-AV: E=Sophos;i="5.78,353,1599548400"; 
   d="scan'208";a="34319756"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 19 Nov 2020 10:04:44 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 19 Nov 2020 10:04:44 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 19 Nov 2020 10:04:42 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <jassisinghbrar@gmail.com>,
        <aou@eecs.berkeley.edu>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH 5/6] dt-bindings: add bindings for polarfire soc system controller
Date:   Thu, 19 Nov 2020 17:04:41 +0000
Message-ID: <20201119170441.18706-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add device tree bindings for the MSS system controller on
the Microchip PolarFire SoC.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../microchip,mpfs_sys_controller.yaml        | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml

diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
new file mode 100644
index 000000000000..a1c5bba5068c
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/microchip/microchip,mpfs_sys_controller.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microchip MPFS system controller
+
+maintainers:
+  - Conor Dooley <conor.dooley@microchip.com>
+
+properties:
+  compatible:
+    const: microchip,polarfire-soc-sys-controller # PolarFire
+
+  mbox-names:
+    maxItems: 1
+    description: name of the mailbox controller device node
+
+  mboxes:
+    maxItems: 1
+    description: |
+      phandle and index of the mailbox controller device node. It must be 0 (hardware supports only one channel).
+
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+required:
+  - compatible
+  - mbox-names
+  - "#address-cells"
+  - "#size-cells"
+  - "mboxes"
+
+unevaluatedProperties: false
+additionalProperties: false
+
+examples:
+  - |
+    syscontroller@37020000 {
+      compatible = "microchip,polarfire-soc-sys-controller";
+      #address-cells = <1>;
+      #size-cells = <1>;
+      mbox-names = "mbox-mpfs";
+      mboxes = <&mbox 0>;
+    };
-- 
2.17.1

