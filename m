Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F98432AB0C
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:09:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343585AbhCBUDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:03:54 -0500
Received: from esa.microchip.iphmx.com ([68.232.153.233]:48362 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383023AbhCBKfG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 05:35:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1614681305; x=1646217305;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VuZIIgx/oKPQRhS2ZIU1XW16cnCzcCDlmJPPqb5khL0=;
  b=cPADbVAy3gt3wMvTaRFPJGT6xe0Fi+R7nApzRBA81UsvApJI4GekiX01
   CrEiYXVywLfLwxRVNx/T6dcRgVVU9lSUobPj6ykJab9QSOCxcNK5svweQ
   3XTYiCMGcJOlEbOCLIN6x8tfxAxjsxtvLljgsHiaiPTjxAsq4Y9MjCvKT
   ux/7lZu5grf5/EMvUKlNag8y25p0yzfknWzhT8hekJUqf5dJwEVT6h33p
   3LAJiWuZgtaEWdKl++pgNLEo8w8eIm+B3q+FF9ecWFaOiT7yqqKZj5rn3
   qdhIdNJgMnDR1K441qqsbfcVfX9Olx6ozDbEt9el5S9PSxetwjUNtYAsp
   Q==;
IronPort-SDR: pWTsJI0pPsFsd4vbX3R8CF48H1FXjkW0XOXSa0ggmW73v7iO9e36gXPDFJcAHz5UkjKC1lN2Vv
 Tmg4Z7E1i9UuHjTYeqhRSOxCYizj6oyZPohNFiyCxWpS6fyV5Gf/sP9vpUjgl1WZJLvsiG5gvJ
 /gNTyE+CItnmykQKX1keqUclw3ipBczezKDaqMEiFjr4svzZs8IuXJNitS4ASdcWkzJJjFdzHj
 jZoLm2ANFOEPmJfXC9Es8PLsTFUnjr/i15wXncO2CT6DCBTJ4GWKVYmekb6qFXsLMxawza4Wy5
 3Sc=
X-IronPort-AV: E=Sophos;i="5.81,216,1610434800"; 
   d="scan'208";a="117184993"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 02 Mar 2021 03:29:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 2 Mar 2021 03:29:46 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 2 Mar 2021 03:29:17 -0700
From:   Claudiu Beznea <claudiu.beznea@microchip.com>
To:     <tglx@linutronix.de>, <maz@kernel.org>, <robh+dt@kernel.org>
CC:     <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [PATCH 1/2] dt-bindings: mchp-eic: add bindings
Date:   Tue, 2 Mar 2021 12:28:45 +0200
Message-ID: <20210302102846.619980-2-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210302102846.619980-1-claudiu.beznea@microchip.com>
References: <20210302102846.619980-1-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT bindings for Microchip External Interrupt Controller.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 .../interrupt-controller/mchp,eic.yaml        | 74 +++++++++++++++++++
 1 file changed, 74 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/mchp,eic.yaml

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mchp,eic.yaml b/Documentation/devicetree/bindings/interrupt-controller/mchp,eic.yaml
new file mode 100644
index 000000000000..5a927817aa7d
--- /dev/null
+++ b/Documentation/devicetree/bindings/interrupt-controller/mchp,eic.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/interrupt-controller/mchp,eic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip External Interrupt Controller
+
+maintainers:
+  - Claudiu Beznea <claudiu.beznea@microchip.com>
+
+description:
+  This interrupt controller is found in Microchip SoCs (SAMA7G5) and provides
+  support for handling up to 2 external interrupt lines.
+
+properties:
+  compatible:
+    enum:
+      - microchip,sama7g5-eic
+
+  reg:
+    maxItems: 1
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 3
+    description:
+      The first cell is the input IRQ number (between 0 and 1), the second cell
+      is the trigger type as defined in interrupt.txt present in this directory
+      and the third cell is the glitch filter (1, 2, 4, 8) in clock cycles
+
+  'interrupts':
+    description: |
+      Contains the GIC SPI IRQs mapped to the external interrupt lines. They
+      should be specified sequentially from output 0 to output 1.
+    minItems: 2
+    maxItems: 2
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: pclk
+
+required:
+  - compatible
+  - reg
+  - interrupt-controller
+  - '#interrupt-cells'
+  - 'interrupts'
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/at91.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    eic: eic@e1628000 {
+      compatible = "microchip,sama7g5-eic";
+      reg = <0xe1628000 0x100>;
+      interrupt-parent = <&gic>;
+      interrupt-controller;
+      #interrupt-cells = <3>;
+      interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&pmc PMC_TYPE_PERIPHERAL 37>;
+      clock-names = "pclk";
+    };
+
+...
-- 
2.25.1

