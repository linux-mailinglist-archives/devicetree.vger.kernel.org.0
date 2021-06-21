Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45A223AECFC
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 18:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhFUQFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 12:05:23 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:47176 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbhFUQFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 12:05:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624291389; x=1655827389;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=4p3t+4D2U+AKPg4n/O+ArrbzKLVo+0girpiXU0sKiVo=;
  b=eP4wLvEnqk8pFtdXIV8v9bVQyaEUJH+rI07WB+KRKxavNS08YD/t81O7
   JIqoCrLm+d3CwI8vByWb3tunnH+nCo05fLKoxOiC/865MWf3+uj92qvce
   +wQ0bQP3QwxK5k/GN/kVaAkCOVOCqj2Bp1jOCJXjESBe06C8Mo1o+4q7n
   JWFToEvs/y2dE87p10G0SNRJymbmAjzAEZRFY+F8LXVQ8NjabVxNDfM02
   IDZWmENl6i6SOn9DoRqsSsAWbht/JRBAsouFenYUGg4R5N8NI2vEC484W
   fyUg7GCP3d5BH6ThfsDIcBxp/CeK2zGVcRu0sY4l1XkP8giaGptcLQzz+
   Q==;
IronPort-SDR: /7CIr5Iqs2LoU339txFAPd+hqtXG6Ux3zsP+8ocJirUwSSzlH0H9NU+SvPzEg1wCYF6hYvLTI4
 fwFNhM3mRtp/IqV+bCsYAeObxvmTjxxQfCM3M43Fp2/dw+2bDsqGF9Rcm/hF1DYWV8cAS7DOdV
 8g/VOilUK+WZ70aBLjucajcXn1QqeQBcsl1ktZK0hAIfszMrYAH/ahJ1TVlgAKLHWzPU+Cvh6z
 h7iBQAX82OKZdM9dvUviZ2EYKKu80yH2QtfgdmvBimkXNMu342r1SOhhsBpI6pJs0zto37AgcC
 j+E=
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="132860986"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 21 Jun 2021 09:03:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Mon, 21 Jun 2021 09:03:08 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Mon, 21 Jun 2021 09:03:05 -0700
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
Subject: [PATCH v8 3/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Mon, 21 Jun 2021 17:03:05 +0100
Message-ID: <20210621160305.9432-1-conor.dooley@microchip.com>
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

