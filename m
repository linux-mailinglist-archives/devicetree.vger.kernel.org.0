Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 304283DCF27
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 06:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbhHBENA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 00:13:00 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:37312 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbhHBEM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 00:12:59 -0400
Received: by codeconstruct.com.au (Postfix, from userid 10001)
        id 5AB022094C; Mon,  2 Aug 2021 12:05:04 +0800 (AWST)
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     devicetree@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: [RFC PATCH 2/2] dt-bindings: net: Add mctp-i2c bus-attach property
Date:   Mon,  2 Aug 2021 12:04:58 +0800
Message-Id: <20210802040458.334732-3-matt@codeconstruct.com.au>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210802040458.334732-1-matt@codeconstruct.com.au>
References: <20210802040458.334732-1-matt@codeconstruct.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allows attaching multiple child busses in a mux topology
to an mctp-i2c instance on the root bus. In general I2C
slave mode does not make sense for mux busses, but the MCTP
request/response protocol means the the root can switch
between child muxes for incoming I2C messages.

Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
---
 .../devicetree/bindings/net/mctp-i2c.yaml     | 42 +++++++++++++++++--
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/mctp-i2c.yaml b/Documentation/devicetree/bindings/net/mctp-i2c.yaml
index f9378cd845d4..45429cbcc6a1 100644
--- a/Documentation/devicetree/bindings/net/mctp-i2c.yaml
+++ b/Documentation/devicetree/bindings/net/mctp-i2c.yaml
@@ -12,11 +12,10 @@ maintainers:
 description:
   The MCTP I2C binding defines an MCTP endpoint on the I2C bus to
   communicate with I2C peripherals using MCTP (DMTF specification DSP0237).
-
-  An mctp-i2c device must be attached to a hardware bus adapter which supports
+  A single binding node can attach to multiple child busses in a mux topology.
+  An mctp-i2c node's parent must be a hardware bus adapter which supports
   slave functionality. The reg address must include I2C_OWN_SLAVE_ADDRESS.
 
-
 properties:
   compatible:
     const: mctp-i2c
@@ -24,6 +23,17 @@ properties:
   reg:
     maxItems: 1
 
+  bus-attach:
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    description: |
+      List of phandles of I2C busses to attach to. I2C mux busses may only
+      be attached to an mctp-i2c binding on their parent root adapter in the
+      mux topology.
+      If no bus-attach property is specified then only the direct parent
+      I2C bus is attached. Otherwise to include a direct parent bus it
+      must be included in the bus-attach list if needed.
+
+
 additionalProperties: true
 
 required:
@@ -33,12 +43,36 @@ required:
 examples:
   - |
     #include <dt-bindings/i2c/i2c.h>
-    i2c {
+
+    // simple attaching to a root adapter i2c0
+    i2c0: i2cbus0 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mctp@50 {
+            compatible = "mctp-i2c";
+            reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
+        };
+    };
+
+    // attaching to a root adapter i2c5 and a child mux bus i2c14
+    i2c5: i2cbus5 {
         #address-cells = <1>;
         #size-cells = <0>;
 
         mctp@50 {
             compatible = "mctp-i2c";
             reg = <(0x50 | I2C_OWN_SLAVE_ADDRESS)>;
+            attach-bus = <&i2c5 &i2c14>;
         };
     };
+
+    i2cmux0 {
+      compatible = "i2c-mux-gpio";
+      #address-cells = <1>;
+      #size-cells = <0>;
+      i2c-parent = <&i2c0>;
+      i2c14: i2c@5 {
+        reg = <0>;
+      };
+    };
-- 
2.30.2

