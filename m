Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE89F35F884
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 18:08:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240801AbhDNPzA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 11:55:00 -0400
Received: from esa.microchip.iphmx.com ([68.232.153.233]:12539 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352543AbhDNPyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 11:54:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1618415626; x=1649951626;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=4p3t+4D2U+AKPg4n/O+ArrbzKLVo+0girpiXU0sKiVo=;
  b=nbLAlYTyajyqyoVeLg1HzdLLS5OsDv8qQS16e8a09yb97khJAiTASUxB
   7IcZpviKSNj0WHkhVtdhK9H3kN+zHx/lSznr3cMEOHtZPp6/cPWp70vxB
   X51mrslJX5D60TeVGanvCK0qM4g+geDLqCuoQ7LVnlAJJCy526xoOrTtg
   xR8u48dfm+xy+ExgmCSachrz4yObUuVsO1KjO39plflhyr5/6Q85Iti0b
   5knCNSzLiN2vb4HDlbR9PU79FBpZGhVaFipWCkRLGM+dKgmUhC9hNh7iH
   YuA6tvvGqDRdBxMSU6wSG81+//LIWYXwzAnekTcgY1s2VCNGF5p4fk0jg
   A==;
IronPort-SDR: YKUy1MEWeTqRxmL1OmTk9A6PQbIwRPi9KFDS+XkWPrkklQ/Whakv1D6D3ubx0pO2kiznJTZBB1
 cc45WMK4HdFeQcTKHH+Vy8p7GjAnqYDkBy7nmOk0iSS/4yKrEaJK30LdIMcRFLv4M6q2tEdk7l
 UMFhOefyIel+K7hf8HalK+luvQt6Jem2xnG/hdjedZaGMKsaOS68jVgGoSEVsrYZ6LHK+BE333
 JH3ds3owBJ95HEOyDcvs6pZWuCVcqzdLBele132DCBTTDME/rvcjz9d/VnTMixNGeJ0J3jW8TM
 DAw=
X-IronPort-AV: E=Sophos;i="5.82,222,1613458800"; 
   d="scan'208";a="116439138"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 14 Apr 2021 08:53:45 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 14 Apr 2021 08:53:42 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Wed, 14 Apr 2021 08:53:40 -0700
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
Subject: [PATCH v6 3/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Wed, 14 Apr 2021 16:53:39 +0100
Message-ID: <20210414155339.29615-1-conor.dooley@microchip.com>
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

