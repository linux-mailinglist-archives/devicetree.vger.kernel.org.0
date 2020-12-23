Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D9B842E1F7B
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 17:34:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726072AbgLWQen (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 11:34:43 -0500
Received: from esa.microchip.iphmx.com ([68.232.153.233]:10493 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725785AbgLWQen (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 11:34:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1608741282; x=1640277282;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=tjw0tl7bjtaxEZV9EBKLzBZuGR484w4552aqADq9SFc=;
  b=H+RDkM8owj8SQUUT00iN6VeTMqdY4zRJJjRfR76zX7EndWBdagNbeiM1
   Kny+yIOx7S4E1NexiOXq1q9PlDgmYvINyx7NnbFNr7WypGpLFbwQ4d2dr
   OhdVs+ZgcqzxuMypCCwrbNFMBRLkw3pHDRnxXYUqUrdymfbOCybNoR574
   j3oYDrctnNYcL5+MniEriE83bPgFluVkSWYATvBj19m7ioNuK1vd3ZAw2
   2+e+fwt0Plo1PdekdB1TMx4m9lrlgRaLEEHTB9/n4ape7BcgeEtGOMzzh
   SddOpLCKmu6a7B0hdMLiWIQR3SgMAaWviQKy/JmviEmnye+0oRt+mEGqF
   w==;
IronPort-SDR: wytZxmg8k8NTQAaVcd0srjIc7fVwHONouyyTd42iwJ2nq88dbriRXgRY5XZ6aH8UrdNsiPtJDx
 wD4SUYQvLiKqa2uBYc63ZpteEWgYweFQw3eTtGAuTNDBauVJzE1cP8IePbOM2fse2LZGCogNRw
 GF/6f85GFC8k4cZr309Pr3oOFjQ9JDV5kb2FUew6bTos2SEFEnuL6mcUgG15JpyQ4Zpu7HrRku
 FFtWMdQDEnTWNdm+5hIxF3AdXzuqOJEoS+ZVnrA9wVfd7lA7mL+VeYIyzPynh1TMCabWnOykoz
 VME=
X-IronPort-AV: E=Sophos;i="5.78,441,1599548400"; 
   d="scan'208";a="108748466"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2020 09:33:19 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 23 Dec 2020 09:33:19 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 23 Dec 2020 09:33:17 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        <j.neuschaefer@gmx.net>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 4/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Wed, 23 Dec 2020 16:33:16 +0000
Message-ID: <20201223163316.29186-1-conor.dooley@microchip.com>
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
 .../microchip,mpfs_sys_controller.yaml        | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml

diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
new file mode 100644
index 000000000000..60fde1925910
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/microchip/microchip,mpfs_sys_controller.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microchip PolarFire SoC (MPFS) system controller
+
+maintainers:
+  - Conor Dooley <conor.dooley@microchip.com>
+
+properties:
+  compatible:
+    const: microchip,polarfire-soc-sys-controller
+
+  mboxes:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    description: |
+      phandle and index of the mailbox controller device node.
+      See: ../mailbox/mailbox.txt for more information.
+    maxItems: 1
+
+required:
+  - compatible
+  - "mboxes"
+
+additionalProperties: false
+
+examples:
+  - |
+    syscontroller: syscontroller {
+      compatible = "microchip,polarfire-soc-sys-controller";
+      mboxes = <&mbox 0>;
+    };
-- 
2.17.1

