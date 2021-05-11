Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5811437AAD5
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 17:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231754AbhEKPjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 11:39:39 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:23503 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231609AbhEKPji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 11:39:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1620747512; x=1652283512;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=4p3t+4D2U+AKPg4n/O+ArrbzKLVo+0girpiXU0sKiVo=;
  b=JwBIguSfwz8fQL+6CemHHiJkPGCpilC3Vcd2TCld+Mf7szRA/YLPX9cO
   4LOEysaSiOjwjIb0jOLzfjul5rnnBfeIonlN4cf3XeU/jHLC8M66DMAJU
   38pia+2FaCGdWLGg0PQbYzC1N8lO6CzwXRFbLyXo1pw/gJEYzBr51bqrE
   LfAEQ6zoH5e0Wlo+D1HSa5C7uqaqNGaOf1I/BUhsVGR73JW5Y4TV2MN0W
   XBlUT4vT1JCrrtpGeNbRdJCITkgr64eZwWpE1Bri7yMpDK6E0GGTVcNYa
   w8iXETd2F4uEeVMhUqz9EQKX4CbTXXWNk1JEIFFl6pqegWvBmpqamGHED
   w==;
IronPort-SDR: 4xe8/nHLh0ufC9t1GOMwyzfFKW1sZqa+2ZwWJoJOAXMkjDy98dC4WmShbyT+bJ4niN7LQRZSh4
 S38I2Q8ielnimohsimFXDuGWFLlnD9FEHwuOnRFRTF43Bx2uzD+jhhmL5USOZpGOuqeT+9hQsr
 7ChDuiO1bC9OCCU7BI8oZObjybkb7JHUX/DSv4DexepxONMTuH3GOl3Y7OvU4le36c/Me/T91c
 vhVX8Ygm6H6xrjDH8HYG7WxohzDp8m7aMp77n3SQJq65mIuIkdc3BCTdIR8EdytzBh+eHpP0Cd
 zjs=
X-IronPort-AV: E=Sophos;i="5.82,291,1613458800"; 
   d="scan'208";a="121227821"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 May 2021 08:38:31 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 11 May 2021 08:38:31 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Tue, 11 May 2021 08:38:28 -0700
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
Subject: [PATCH v7 3/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Tue, 11 May 2021 16:38:28 +0100
Message-ID: <20210511153828.6579-1-conor.dooley@microchip.com>
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
Reviewed-by: Rob Herring <robh@kernel.org>
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

