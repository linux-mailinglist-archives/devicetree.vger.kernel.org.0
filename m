Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 350C12C522E
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 11:39:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730169AbgKZKhm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 05:37:42 -0500
Received: from mga11.intel.com ([192.55.52.93]:62699 "EHLO mga11.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727251AbgKZKhm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Nov 2020 05:37:42 -0500
IronPort-SDR: 4K0qHbcAFIkPlGoaxMCihO9OOohTk4MLQCkPiQYG3LxInuKduMehr9/isxZYbY21uHA5Pt+xoI
 xmKTuuD1VHjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168765106"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; 
   d="scan'208";a="168765106"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Nov 2020 02:37:41 -0800
IronPort-SDR: QYgyHIx+30on2yRSWVuafuKeEq8NqBFZ3DWrmCQaZlUI9szsG3XUpPecAekK5cIpMsIJgMtfA1
 p3phj6WTTwTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; 
   d="scan'208";a="313341744"
Received: from ubuntu18.png.intel.com ([10.88.229.38])
  by fmsmga008.fm.intel.com with ESMTP; 26 Nov 2020 02:37:39 -0800
From:   vijayakannan.ayyathurai@intel.com
To:     daniel.lezcano@linaro.org, tglx@linutronix.de, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, andriy.shevchenko@linux.intel.com,
        mgross@linux.intel.com, wan.ahmad.zainie.wan.mohamad@intel.com,
        lakshmi.bai.raja.subramanian@intel.com,
        vijayakannan.ayyathurai@intel.com
Subject: [PATCH v1 1/2] dt-bindings: timer: Add bindings for Intel Keem Bay SoC timer
Date:   Thu, 26 Nov 2020 18:34:08 +0800
Message-Id: <2938028520edbd0140805a22bdacd0b30c45b2df.1606377035.git.vijayakannan.ayyathurai@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
In-Reply-To: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>

Add Device Tree bindings for the Timer IP, which used as clocksource and
clockevent in the Intel Keem Bay SoC.

Signed-off-by: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
Acked-by: Mark Gross <mgross@linux.intel.com>
Acked-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 .../bindings/timer/intel,keembay-timer.yaml   | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml

diff --git a/Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml b/Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml
new file mode 100644
index 000000000000..396a698967ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/intel,keembay-timer.yaml
@@ -0,0 +1,72 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/intel,keembay-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Intel Keem Bay SoC Timers
+
+maintainers:
+  - Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>
+
+description:
+  Intel Keem Bay SoC Timers block contains 8 32-bit general purpose timers,
+  a free running 64-bit counter, a random number generator and a watchdog
+  timer. Each gpt can generate an individual interrupt.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          enum:
+            - intel,keembay-timer
+            - intel,keembay-counter
+
+  reg:
+    maxItems: 2
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - intel,keembay-timer
+    then:
+      properties:
+        interrupts:
+          maxItems: 1
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #define KEEM_BAY_A53_TIM
+
+    timer@20330010 {
+        compatible = "intel,keembay-timer";
+        reg = <0x20330010 0xc>,
+              <0x20331000 0xc>;
+        interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&scmi_clk KEEM_BAY_A53_TIM>;
+    };
+
+    counter@203300e8 {
+        compatible = "intel,keembay-counter";
+        reg = <0x203300e8 0xc>,
+              <0x20331000 0xc>;
+        clocks = <&scmi_clk KEEM_BAY_A53_TIM>;
+    };
-- 
2.17.1

