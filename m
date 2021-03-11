Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49A39337174
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 12:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232670AbhCKLfb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 06:35:31 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:6721 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232502AbhCKLfB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 06:35:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1615462500; x=1646998500;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=/Q3CbZMigNRMc8Ni/1jEWfGJuPFmb81SMKV+Zu5whXw=;
  b=HOMdnsSswJNY9dSpb/inMWWCRO6rXc9hteCCSwdEpe3fmQIZZjipurax
   juMPhCr5yk/j4Lo5plgESkpxCaLe1pZkYI6Z/VprzLpoggHxFEpmARkE1
   dGDoOMto/c7+IHfZZbLK2J42T6LoPF+Le7UmcFE2yJP1SGOh6cVAxS065
   01vT1RiKO9VoFHx4e/qJMiTuCngrEhlUQa/js2UucA4yMCLmhUjYm9ef6
   EtwN9dexnBsiGdTFe5OwfT81H53rfKVBwDrdSnprTqE2zzGXaPerLuWMr
   pxDUQuofnNQoQOEhMrLXkSmxZT19KdHfEzzYnK77FUa/GnxPWwLQrp5W9
   w==;
IronPort-SDR: adx3ckL3oGtWsAKJEBInA2tt5qwlr1dTcMs/Oi+Yqu9HG7tcTk+/DP2Cf1IMhlhbkdhPHt1d1q
 xPNL1eP6k1kLyem7l05ZNmiF2Dd9VPVyjS66O5hzhxOWj93tNJlUZUCimqxBu08yTv5TUCI8Iw
 ieSyU+KYXDzHDPrqgTZfSLC9hk4/yg1IxJMT/vNnUKU3rlWO4ZqoBH71LfcBbkQyiM1xazmcWR
 ic98Kwt5k5wgnSAMlQwEnd6Gb3zfZMWERyBzpfeMCAZt4PTiyBkYtO7i3piRTRY/deZiL48kWr
 izc=
X-IronPort-AV: E=Sophos;i="5.81,240,1610434800"; 
   d="scan'208";a="47116550"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 Mar 2021 04:35:00 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Thu, 11 Mar 2021 04:34:59 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.2 via Frontend
 Transport; Thu, 11 Mar 2021 04:34:57 -0700
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
Subject: [PATCH v4 4/5] dt-bindings: add bindings for polarfire soc system controller
Date:   Thu, 11 Mar 2021 11:34:56 +0000
Message-ID: <20210311113456.15686-1-conor.dooley@microchip.com>
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
 ...icrochip,polarfire-soc-sys-controller.yaml | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml

diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
new file mode 100644
index 000000000000..222557f96a13
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,polarfire-soc-sys-controller.yaml
@@ -0,0 +1,36 @@
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
+  The PolarFire SoC system controller can be accessed as a mailbox device.
+  This document describes the bindings for that device.
+
+
+properties:
+
+  allOf:
+    - $ref: /schemas/mbox/mbox-consumer.yaml#properties
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
2.17.1

