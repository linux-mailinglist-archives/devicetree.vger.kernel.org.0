Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2EDE2B9910
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:13:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729259AbgKSRKD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:10:03 -0500
Received: from esa4.microchip.iphmx.com ([68.232.154.123]:63248 "EHLO
        esa4.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728461AbgKSRKC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:10:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1605805802; x=1637341802;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=Kl04zi16mIa54+tgPli2SWxBJHPluDkqBpHCMDOYEhU=;
  b=raNG2JuL8fMqb2Lny7KYYOxWEXMxP6SG5xFeb739QSjpKCndH5rmmU8A
   QqAJLoYoLv9AA7gLQv8w4SGe8kTYctHdsTI8/HA+dHDOXA6y1iBkeXUjy
   xbYhQd1i9lte4ktrNFLOviPfLAy3uw+CcAoQl5YO3DzNyjsuKtS4NH1K9
   kXuu/07wPxaxcg0ZXfYPlXF/ljY5KbS+4oVT8TNarVLxqp7+SxqBM5mQF
   KQa+HDBvbi6xJq9+pW4+HGK+wMAHfYvbwt+fuplotjTBl3x/374kyErAB
   +hbf0xh/ntL9GwIQOO+Vt3WpRq+y2gXBTzGp15NRG9k4yZsDRVNtT4z1W
   w==;
IronPort-SDR: 7VOD4RlZuvtzFBSaB+MIHNgxvWnU+bueIQt+ojEJqlhPqBPE1UnJSiczq3UCPchl9clHZQxHO1
 5BP3SWnLcGBENZOtjYcYjZEiHm/YwTFonrdFpPq/ETK0GJbdTgPmdqN62d2+X2D9YEyZtJgNd6
 MnXKq3qYiU+sO82/Gp9HuUlfB/WqYlqGFOac8FJ3Qi0pcz8z6dQjbKeQtOTEZ2Lp7Lgfrzn3Ap
 lV+QzC3khe6hkNYXFxb+swo10n7u2LVM2GyJdoWQjn0FcRDQ4JIXuMeizZxb5DskF3OGCxZmsC
 DMo=
X-IronPort-AV: E=Sophos;i="5.78,353,1599548400"; 
   d="scan'208";a="94258888"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 19 Nov 2020 10:10:01 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 19 Nov 2020 10:10:00 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Thu, 19 Nov 2020 10:09:58 -0700
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
Date:   Thu, 19 Nov 2020 17:09:58 +0000
Message-ID: <20201119170958.20984-1-conor.dooley@microchip.com>
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

