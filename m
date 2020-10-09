Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8768A287FBA
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 03:04:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726099AbgJIBEU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 21:04:20 -0400
Received: from mga02.intel.com ([134.134.136.20]:33823 "EHLO mga02.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725887AbgJIBET (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 8 Oct 2020 21:04:19 -0400
IronPort-SDR: qBDavIUlt2MBBuNbGObp55GbfnDm2iEbO2jlidijKkxnkljKJmbwdTwq2tgXVjbO6M2J+se9Jz
 ivmI3Zw6nxCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="152346932"
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; 
   d="scan'208";a="152346932"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2020 18:04:19 -0700
IronPort-SDR: Z8sF9m+muNQsOdXBn/HnDsFk5WO/MNYVr9U9IOieY2+5gzoA4WGGIvxYZUjjd/sFrpYCaFFrMY
 ojkmVn2EtGlw==
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; 
   d="scan'208";a="343626279"
Received: from mgleaso-mobl.amr.corp.intel.com (HELO achrisan-DESK2.amr.corp.intel.com) ([10.251.146.83])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA; 08 Oct 2020 18:04:19 -0700
From:   Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To:     dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
        devicetree@vger.kernel.org
Cc:     daniel.vetter@intel.com, bob.j.paauwe@intel.com,
        edmund.j.dea@intel.com, sam@ravnborg.org
Subject: [PATCH v9 1/5] dt-bindings: display: Add support for Intel KeemBay Display
Date:   Thu,  8 Oct 2020 18:03:59 -0700
Message-Id: <1602205443-9036-2-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1602205443-9036-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1602205443-9036-1-git-send-email-anitha.chrisanthus@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for Intel KeemBay Display

v2: review changes from Rob Herring

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
---
 .../bindings/display/intel,keembay-display.yaml    | 99 ++++++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/intel,keembay-display.yaml

diff --git a/Documentation/devicetree/bindings/display/intel,keembay-display.yaml b/Documentation/devicetree/bindings/display/intel,keembay-display.yaml
new file mode 100644
index 0000000..a38493d
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/intel,keembay-display.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/intel,keembay-display.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Devicetree bindings for Intel Keem Bay display controller
+
+maintainers:
+  - Anitha Chrisanthus <anitha.chrisanthus@intel.com>
+  - Edmond J Dea <edmund.j.dea@intel.com>
+
+properties:
+  compatible:
+    const: intel,kmb_display
+
+  reg:
+    items:
+      - description: Lcd registers range
+      - description: Mipi registers range
+      - description: Msscam registers range
+
+  reg-names:
+    items:
+      - const: lcd
+      - const: mipi
+      - const: msscam
+
+  clocks:
+    items:
+      - description: LCD controller clock
+      - description: Mipi DSI clock
+      - description: Mipi DSI econfig clock
+      - description: Mipi DSI config clock
+      - description: System clock or pll0 clock
+
+  clock-names:
+    items:
+      - const: clk_lcd
+      - const: clk_mipi
+      - const: clk_mipi_ecfg
+      - const: clk_mipi_cfg
+      - const: clk_pll0
+
+  interrupts:
+    maxItems: 1
+
+  encoder-slave:
+    description: bridge node entry for mipi to hdmi converter
+
+  port:
+    type: object
+    description: >
+          Port node with one endpoint connected to mipi to hdmi converter node.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - encoder-slave
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #define MOVISOC_KMB_MSS_AUX_LCD
+    #define MOVISOC_KMB_MSS_AUX_MIPI_TX0
+    #define MOVISOC_KMB_MSS_AUX_MIPI_ECFG
+    #define MOVISOC_KMB_MSS_AUX_MIPI_CFG
+    #define MOVISOC_KMB_A53_PLL_0_OUT_0
+    display@20900000 {
+      compatible = "intel,keembay-display";
+      reg = <0x20930000 0x3000>,
+            <0x20900000 0x4000>,
+            <0x20910000 0x30>;
+      reg-names = "lcd", "mipi", "msscam";
+      interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&scmi_clk MOVISOC_KMB_MSS_AUX_LCD>,
+               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_TX0>,
+               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_ECFG>,
+               <&scmi_clk MOVISOC_KMB_MSS_AUX_MIPI_CFG>,
+               <&scmi_clk MOVISOC_KMB_A53_PLL_0_OUT_0>;
+      clock-names = "clk_lcd", "clk_mipi", "clk_mipi_ecfg",
+                    "clk_mipi_cfg", "clk_pll0";
+
+      encoder-slave = <&adv7535>;
+
+      port {
+            dsi_output: endpoint {
+                remote-endpoint = <&adv7535_input>;
+            };
+      };
+    };
-- 
2.7.4

