Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE21728207E
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 04:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725681AbgJCCVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 22:21:17 -0400
Received: from mga01.intel.com ([192.55.52.88]:52959 "EHLO mga01.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725536AbgJCCVR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 2 Oct 2020 22:21:17 -0400
IronPort-SDR: 7/uviVYuU5IF9lXlA5YGLgn3ZcAQ5GHqHn+0D5PPcwNylDknxrnMNHtH4udZJ0IThvii+pPrBF
 frNwE/6HuO2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="181245704"
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; 
   d="scan'208";a="181245704"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2020 19:21:13 -0700
IronPort-SDR: WUrX3AbuVmvUlg49ZyUGV8sOSUPuvGESlve32TSYY/ckqFWszhidx0lIM3wuMGgiY539iu/vTR
 FyeQYKCMq9hw==
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; 
   d="scan'208";a="511720798"
Received: from cshinn-mobl1.amr.corp.intel.com (HELO achrisan-DESK2.amr.corp.intel.com) ([10.255.91.49])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA; 02 Oct 2020 19:21:12 -0700
From:   Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To:     devicetree@vger.kernel.org, anitha.chrisanthus@intel.com,
        bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Cc:     sam@ravnborg.org, narmstrong@baylibre.com
Subject: [PATCH v1] dt-bindings: display: Add support for Intel KeemBay Display
Date:   Fri,  2 Oct 2020 19:21:02 -0700
Message-Id: <1601691662-12954-1-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for Intel KeemBay Display

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
---
 .../bindings/display/intel,kmb_display.yaml        | 106 +++++++++++++++++++++
 1 file changed, 106 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/intel,kmb_display.yaml

diff --git a/Documentation/devicetree/bindings/display/intel,kmb_display.yaml b/Documentation/devicetree/bindings/display/intel,kmb_display.yaml
new file mode 100644
index 0000000..65835cb
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/intel,kmb_display.yaml
@@ -0,0 +1,106 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/intel,kmb_display.yaml#
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
+    maxItems: 3
+    items:
+      - description: Lcd registers range
+      - description: Mipi registers range
+      - description: Msscam registers range
+
+  reg-names:
+    items:
+      - const: lcd_regs
+      - const: mipi_regs
+      - const: msscam_regs
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
+  interrupt-names:
+    items:
+      - const: irq_lcd
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
+  - interrupt-names
+  - encoder-slave
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #define GIC_SPI
+    #define MOVISOC_KMB_MSS_AUX_LCD
+    #define MOVISOC_KMB_MSS_AUX_MIPI_TX0
+    #define MOVISOC_KMB_MSS_AUX_MIPI_ECFG
+    #define MOVISOC_KMB_MSS_AUX_MIPI_CFG
+    #define MOVISOC_KMB_A53_PLL_0_OUT_0
+    display: display@20900000 {
+      compatible = "intel,kmb_display";
+      reg = <0x20930000 0x3000>,
+            <0x20900000 0x4000>,
+            <0x20910000 0x30>;
+      reg-names = "lcd_regs", "mipi_regs", "msscam_regs";
+      interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "irq_lcd";
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

