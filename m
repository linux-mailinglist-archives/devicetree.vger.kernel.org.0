Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CBB135CAB3
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 18:04:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243242AbhDLQEc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 12:04:32 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:57773 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243239AbhDLQE3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 12:04:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1618243451; x=1649779451;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=W8vfcucLx9e2rFsTr+G35b4yT9J7bODEo1nq+kavg5Y=;
  b=OFvJGr0BT5soE44erf0nF9YqGklKAKpuEeSPrC1CQXuEPpCEXCfGkn7/
   RVuiOIWR7GDf+BHNdA4y4lXfEuSxjwtpz3bVs/jK58uPMqXWvxfox0p5B
   ZOshIzpdQ/nLAm10rb+ecoC6PMk5Xt4htMYm2w8BATwMIXuudu7TMR5ht
   ig2hXWB2GQGEhINUI1JeeBCkr4BpPVNpxZgVriHN/tYGJp6RVgh2ZWQsW
   I285Wq+LCemXcxAwsiO366lQbaZKSt+/pCTqj3s/6/oWu6Eu/ebc3knoM
   KX17NKNYZ8dLUg+vqTzdRSwfCBzgMTBfC8B19rUJ60Ga6MCC2SmQrPMfT
   A==;
IronPort-SDR: eYsqM6ETiRJuLIGKtb08FH7VdfWHIid5fn5A0VnQtDItra/clslD6qBvYj3YiIbjX/iCxTQAP7
 v9ILnJfpqRA2wnM7E5qJBqfVy8Fooxe6NsbKtvc+OPJIAwz9ZX4eUif+mLjHe4ZfznaGS2XtiX
 KWdtzbV9WeIjNTdq1o0XdP7HQfKqiS2rA79rslIaasbPYforAXCyle646ZUEjmACcnES44tV+o
 Wx/6TiqxsS/CpE+LOTKIVrDua2qRCS8Ebw6utrizNQe7OVrf9f3DKJJCLMSKk4svyQWBbFNTRx
 ztE=
X-IronPort-AV: E=Sophos;i="5.82,216,1613458800"; 
   d="scan'208";a="116142085"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 12 Apr 2021 09:04:11 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 12 Apr 2021 09:04:10 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 12 Apr 2021 09:04:08 -0700
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
Subject: [PATCH v5 3/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Mon, 12 Apr 2021 17:04:07 +0100
Message-ID: <20210412160407.19462-1-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Add device tree bindings for the MSS system controller on
the Microchip PolarFire SoC.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 ...icrochip,polarfire-soc-sys-controller.yaml | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml

diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
new file mode 100644
index 000000000000..2cd3bc6bd8d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/soc/microchip/microchip,polarfire-soc-sys-controller.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microchip PolarFire SoC (MPFS) MSS (microprocessor subsystem) system controller
+
+maintainers:
+  - Conor Dooley <conor.dooley@microchip.com>
+
+description: |
+  The PolarFire SoC system controller is communicated with via a mailbox.
+  This document describes the bindings for the client portion of that mailbox.
+
+
+properties:
+  mboxes:
+    maxItems: 1
+
+  compatible:
+    const: microchip,polarfire-soc-sys-controller
+
+required:
+  - compatible
+  - mboxes
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
2.31.1

