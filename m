Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 647C23DCF28
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 06:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbhHBENA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 00:13:00 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:37316 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229792AbhHBEM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 00:12:59 -0400
Received: by codeconstruct.com.au (Postfix, from userid 10001)
        id BE98E20274; Mon,  2 Aug 2021 12:05:03 +0800 (AWST)
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     devicetree@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: [RFC PATCH 1/2] dt-bindings: net: New binding for mctp-i2c
Date:   Mon,  2 Aug 2021 12:04:57 +0800
Message-Id: <20210802040458.334732-2-matt@codeconstruct.com.au>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210802040458.334732-1-matt@codeconstruct.com.au>
References: <20210802040458.334732-1-matt@codeconstruct.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Used to define an endpoint to communicate with MCTP peripherals attached
to an I2C bus.

Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
---
 .../devicetree/bindings/net/mctp-i2c.yaml     | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/mctp-i2c.yaml

diff --git a/Documentation/devicetree/bindings/net/mctp-i2c.yaml b/Documentation/devicetree/bindings/net/mctp-i2c.yaml
new file mode 100644
index 000000000000..f9378cd845d4
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/mctp-i2c.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/mctp-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MCTP I2C transport binding
+
+maintainers:
+  - Matt Johnston <matt@codeconstruct.com.au>
+
+description:
+  The MCTP I2C binding defines an MCTP endpoint on the I2C bus to
+  communicate with I2C peripherals using MCTP (DMTF specification DSP0237).
+
+  An mctp-i2c device must be attached to a hardware bus adapter which supports
+  slave functionality. The reg address must include I2C_OWN_SLAVE_ADDRESS.
+
+
+properties:
+  compatible:
+    const: mctp-i2c
+
+  reg:
+    maxItems: 1
+
+additionalProperties: true
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    #include <dt-bindings/i2c/i2c.h>
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mctp@50 {
+            compatible = "mctp-i2c";
+            reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
+        };
+    };
-- 
2.30.2

