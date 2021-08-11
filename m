Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 694263E88F4
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 05:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232772AbhHKDoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 23:44:17 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:40240 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232795AbhHKDoR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 23:44:17 -0400
Received: by codeconstruct.com.au (Postfix, from userid 10001)
        id 37D7F2014C; Wed, 11 Aug 2021 11:43:53 +0800 (AWST)
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     devicetree@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: [RFC PATCH v2 1/2] dt-bindings: net: New binding for mctp-i2c-generic
Date:   Wed, 11 Aug 2021 11:43:44 +0800
Message-Id: <20210811034345.2424442-2-matt@codeconstruct.com.au>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210811034345.2424442-1-matt@codeconstruct.com.au>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

An I2C bus with attached MCTP peripherals can be configured to be
accessible to the host system, using a specified I2C address.

This mctp-i2c-generic binding can attach to existing I2C bus
that supports slave functionality.

For a fictional hardware I2C controller:

    /* for I2C_OWN_SLAVE_ADDRESS */
    #include <dt-bindings/i2c/i2c.h>

    /* root-level i2c controller */
    i2c {
        compatible = "vendor,example-i2c-controller";
        reg = <...>
        #address-cells = <1>;
        #size-cells = <0>;

        mctp@50 {
            compatible = "mctp-i2c";
            reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
        };
    };

Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
---
 .../bindings/net/mctp-i2c-generic.yaml        | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml

diff --git a/Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml b/Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml
new file mode 100644
index 000000000000..6092f7e8dc07
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/mctp-i2c-generic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic MCTP I2C transport binding
+
+maintainers:
+  - Matt Johnston <matt@codeconstruct.com.au>
+
+description:
+  The generic MCTP I2C binding defines an MCTP endpoint on an existing I2C
+  adapter. MCTP I2C is specified by DMTF DSP0237.
+
+  An mctp-i2c-generic device must be attached to a hardware bus adapter
+  which supports slave functionality.
+
+properties:
+  compatible:
+    const: mctp-i2c-generic
+
+  reg:
+    maxItems: 1
+    description:
+      7 bit I2C address of the endpoint.
+      I2C_OWN_SLAVE_ADDRESS flag must be set (described in i2c.txt)
+
+additionalProperties: false
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

