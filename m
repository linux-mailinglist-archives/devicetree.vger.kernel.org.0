Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F61B2CA0D9
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 12:06:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726148AbgLALEV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 06:04:21 -0500
Received: from esa3.microchip.iphmx.com ([68.232.153.233]:1564 "EHLO
        esa3.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730408AbgLALEV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 06:04:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1606820660; x=1638356660;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=zk6cCCU/8Jv26b10IZeTDqLo8b7LPtw6jb4oI3S6LZI=;
  b=rpIPhGGWtWEuJwgNMDjufdmieB58IH/tKlqBIg0YC86880uzdjnkasLB
   lTehe0tAovkczDzPN22zQW64JYAtJkvvO9xQT3RDlzCWjsJpwa/0cODSk
   TXpWOTTlpFx/IuBqyIrVvYN1uf8CF7GpscIkoCi70+PWm0gwSi+0vGx+P
   lEAIWYrtFGN4zqbDVtKGwS1OzGK7mql5OLB6zwhFl/dQy7DV0NFpql+Hd
   vQpdKVTGDY19YhCsfZ7xz+ljQ1HoolA5AzIAPgtIiRB99Qto4G5UzBvnR
   0U3rFp60Y6lWtwFY1MI7lwurYYjjeNniKpqFcnyvasZPUCKtTaZFZHYwZ
   A==;
IronPort-SDR: JwDo0qO8c99jbTxsf4lX33LeU4TSjCrnKpqFI99uYXOfoFeY+Tx0u5Zl6RZke/aGm5rAuNnQkh
 lQ9sWbQ15Uq1llGtmp9qV/6xumrC8pWrA4TfPzz4zDmFC2PPQofTu+XAftDlAoI93//Sakdxda
 Ce9//DI9jVxesrlkqUSwWs8WMkz9m7S/zFl6vC2kiqCtXwmheC2TO236fUKU/9I+mNYzf+bqJi
 OImrMyjCEjqOnW1kYRzUhVltssDTFTBIUyKwpW5c/V1wY67EKsTzYC2w4mkrkxfFi8W0ORSciL
 v7k=
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; 
   d="scan'208";a="100945431"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 01 Dec 2020 04:03:14 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 1 Dec 2020 04:03:14 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Tue, 1 Dec 2020 04:03:12 -0700
From:   <conor.dooley@microchip.com>
To:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <lewis.hanly@microchip.com>, <cyril.jean@microchip.com>,
        <daire.mcnamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 4/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Tue, 1 Dec 2020 11:03:11 +0000
Message-ID: <20201201110311.28593-1-conor.dooley@microchip.com>
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
 .../microchip,mpfs_sys_controller.yaml        | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml

diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
new file mode 100644
index 000000000000..c22fc203b95c
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,mpfs_sys_controller.yaml
@@ -0,0 +1,49 @@
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
+    const: microchip,polarfire-soc-sys-controller
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
+additionalProperties: false
+
+examples:
+  - |
+    syscontroller: syscontroller {
+      compatible = "microchip,polarfire-soc-sys-controller";
+      #address-cells = <1>;
+      #size-cells = <1>;
+      mbox-names = "mbox-mpfs";
+      mboxes = <&mbox 0>;
+    };
-- 
2.17.1

