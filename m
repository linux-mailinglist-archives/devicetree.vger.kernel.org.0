Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FBA0332288
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 11:05:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbhCIKFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 05:05:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbhCIKEk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 05:04:40 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66683C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 02:04:40 -0800 (PST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:cc57:dd66:c63b:c8e4])
        by xavier.telenet-ops.be with bizsmtp
        id eA4X2400H1C546401A4XQ8; Tue, 09 Mar 2021 11:04:32 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1lJZE6-006FbY-US; Tue, 09 Mar 2021 11:04:30 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1lJZE6-009R5H-4R; Tue, 09 Mar 2021 11:04:30 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] schemas: property-units: Sanitize unit naming
Date:   Tue,  9 Mar 2021 11:04:29 +0100
Message-Id: <20210309100429.2249020-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make the naming of units consistent with common practices:
  - Do not capitalize the first character of units ("Celsius" is
    special, as it is not the unit name, but a reference to its
    proposer),
  - Do not use plural for units,
  - Do not abbreviate "ampere",
  - Concatenate prefixes and units (no spaces or hyphens),
  - Separate units by spaces not hyphens,
  - "milli" applies to "degree", not to "Celsius".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Cfr. Linux commit 573748081a66b2ba ("dt-bindings: property-units:
Sanitize unit naming").
---
 schemas/property-units.yaml | 40 ++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/schemas/property-units.yaml b/schemas/property-units.yaml
index 34e573d5ca18cbff..fe90b56efb20c596 100644
--- a/schemas/property-units.yaml
+++ b/schemas/property-units.yaml
@@ -25,11 +25,11 @@ select: true
 patternProperties:
   "-bits$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: Number of bits
+    description: number of bits
 
   "-kBps$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: Kilobytes per second
+    description: kilobytes per second
 
   "-percent$":
     $ref: "types.yaml#/definitions/uint32-array"
@@ -41,65 +41,65 @@ patternProperties:
     description: megahertz
   "-hz$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: Hertz (preferred)
+    description: hertz (preferred)
   "-sec$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: seconds
+    description: second
   "-ms$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: milliseconds
+    description: millisecond
   "-us$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: microseconds
+    description: microsecond
   "-ns$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: nanoseconds
+    description: nanosecond
   "-ps$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: picoseconds
+    description: picosecond
 
   # Distance
   "-mm$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: millimeters
+    description: millimeter
 
   # Electricity
   "-microamp$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: micro amps
+    description: microampere
   "-microamp-hours$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: micro amp-hours
+    description: microampere hour
   "-ohms$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: Ohms
+    description: ohm
   "-micro-ohms$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: micro Ohms
+    description: microohm
   "-microwatt-hours$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: micro Watt-hours
+    description: microwatt hour
   "-microvolt$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: micro volts
+    description: microvolt
   "-picofarads$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: picofarads
+    description: picofarad
   "-femtofarads$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: femtofarads
+    description: femtofarad
 
   # Temperature
   "-celsius$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: Degrees Celsius
+    description: degree Celsius
   "-millicelsius$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: Degreee milli-Celsius
+    description: millidegree Celsius
 
   # Pressure
   "-kpascal$":
     $ref: "types.yaml#/definitions/uint32-array"
-    description: kiloPascal
+    description: kilopascal
 
 additionalProperties: true
-- 
2.25.1

