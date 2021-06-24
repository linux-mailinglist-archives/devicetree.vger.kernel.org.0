Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DD663B322A
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 17:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232300AbhFXPEK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 11:04:10 -0400
Received: from esa.microchip.iphmx.com ([68.232.154.123]:61392 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232172AbhFXPEK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 11:04:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1624546911; x=1656082911;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=4p3t+4D2U+AKPg4n/O+ArrbzKLVo+0girpiXU0sKiVo=;
  b=HVlf9SpE+dgtLFDexsX/kciNELV7+hDsALruUot1pLQlPUB2CzjTGQTb
   EVP8XbZZ0sKJG3IWKpykpT9gs7DnxvcocSManVaB8q8pd/60pw0CLLznr
   DO97akETRPN/xTaRdG1fGFzQT10mDlAs6ZYp9lzAD9smYSkP83h/Y2bTN
   DL0ZFpr4n9dtYWs8GR93jM769RSdnSaS/3BYuL1bYGyC4Ld38qRlIduV3
   IUxYQqoNdKtwg1rm1nqC4JJZ5+7BLmQX/gsnren1dz90AoMQwdwUTKgi1
   DpLpNLPjsAdkPZOzz1+NzH4U9QxlaOTxCVQnoEQS0kIR7SuAQu6dm0vmu
   A==;
IronPort-SDR: gYH0gztmGKoIz5RyPxBGq7++ny3ObjqqrWRBdtnr0REUqKI+DuD5zxjPeoEWMB3uCvDxMwwB+/
 alFEdHq15YGFY/HSnfsNcfJVfuORXO+gQJVi5bs/ANqu87uDS3pJXk5ZLCjti59e2k7Tm2SaXH
 uyRrZrYYgt5Sjxhtt63sdobmAoPqKDJEhfIRGimOzwODSA3lJcftBtuzbdQMOBBBGJbR++uoDZ
 my0MCxxxdmS8aywN6zK9mbmIenMpcgGKmw4GlI683p0XdLDjL21p8WPf7YYhB5TF5oAd8+PGsi
 3XA=
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; 
   d="scan'208";a="60084220"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 24 Jun 2021 08:01:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 24 Jun 2021 08:01:42 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 24 Jun 2021 08:01:39 -0700
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
Subject: [PATCH v9 3/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Thu, 24 Jun 2021 16:01:39 +0100
Message-ID: <20210624150139.11528-1-conor.dooley@microchip.com>
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

