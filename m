Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C3F73E88F5
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 05:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232795AbhHKDoS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 23:44:18 -0400
Received: from pi.codeconstruct.com.au ([203.29.241.158]:40248 "EHLO
        codeconstruct.com.au" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232905AbhHKDoR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 23:44:17 -0400
Received: by codeconstruct.com.au (Postfix, from userid 10001)
        id A070B213C9; Wed, 11 Aug 2021 11:43:53 +0800 (AWST)
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     devicetree@vger.kernel.org
Cc:     Wolfram Sang <wsa@kernel.org>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Matt Johnston <matt@codeconstruct.com.au>
Subject: [RFC PATCH v2 2/2] dt-bindings: net: mctp-i2c-generic: support muxes
Date:   Wed, 11 Aug 2021 11:43:45 +0800
Message-Id: <20210811034345.2424442-3-matt@codeconstruct.com.au>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210811034345.2424442-1-matt@codeconstruct.com.au>
References: <20210811034345.2424442-1-matt@codeconstruct.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow a single mctp-i2c-generic controller node to specify multiple
subordinate I2C mux busses that are attached.
The 'bus-attach' property defines which I2C busses should provide an
MCTP endpoint.

This allows a hardware I2C controller at the top of a mux topology to
handle incoming messages (as an I2C slave) for subordinate I2C mux busses.
Otherwise I2C mux busses are not be able to act as an I2C slave which is
required by the MCTP I2C transport.

Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
---
 .../bindings/net/mctp-i2c-generic.yaml        | 53 +++++++++++++++++--
 1 file changed, 48 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml b/Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml
index 6092f7e8dc07..e4d742452078 100644
--- a/Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml
+++ b/Documentation/devicetree/bindings/net/mctp-i2c-generic.yaml
@@ -10,11 +10,14 @@ maintainers:
   - Matt Johnston <matt@codeconstruct.com.au>
 
 description:
-  The generic MCTP I2C binding defines an MCTP endpoint on an existing I2C
-  adapter. MCTP I2C is specified by DMTF DSP0237.
+  An mctp-i2c-generic controller defines an MCTP endpoint on an existing I2C
+  controller. MCTP I2C is specified by DMTF DSP0237.
 
-  An mctp-i2c-generic device must be attached to a hardware bus adapter
-  which supports slave functionality.
+  An mctp-i2c-generic controller must be attached to an I2C controller
+  which supports slave functionality. Subordinate busses in a mux topology
+  can be attached to the same mctp-i2c-generic controller with the bus-attach
+  property. These will be presented to the host system as separate MCTP I2C
+  instances.
 
 properties:
   compatible:
@@ -26,6 +29,16 @@ properties:
       7 bit I2C address of the endpoint.
       I2C_OWN_SLAVE_ADDRESS flag must be set (described in i2c.txt)
 
+  bus-attach:
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    description: |
+      List of phandles of I2C busses to attach to. All busses must
+      be in the same mux topology as the node's parent I2C controller.
+
+      If no bus-attach property is specified then only the direct parent
+      I2C bus is attached. Otherwise to include a direct parent bus it
+      must be included in the bus-attach list if needed.
+
 additionalProperties: false
 
 required:
@@ -35,12 +48,42 @@ required:
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
+      compatible = "i2c-mux";
+      #address-cells = <1>;
+      #size-cells = <0>;
+      i2c-parent = <&i2c5>;
+      mux-controls = <&mux>;
+
+      i2c14: i2c@0 {
+        reg = <0>;
+      };
+
+      i2c15: i2c@1 {
+        reg = <1>;
+      };
+    };
-- 
2.30.2

