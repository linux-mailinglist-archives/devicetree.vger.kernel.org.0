Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9812A3FDE44
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 17:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245551AbhIAPLy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 11:11:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245176AbhIAPLx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 11:11:53 -0400
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86543C061575
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 08:10:56 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:7822:25bf:8b52:7a36])
        by laurent.telenet-ops.be with bizsmtp
        id ofAu2500J13ssow01fAuFc; Wed, 01 Sep 2021 17:10:54 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mLRt7-0019LL-Pr; Wed, 01 Sep 2021 17:10:53 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mLRt7-00AQAF-76; Wed, 01 Sep 2021 17:10:53 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-schema v2] schemas: property-units: Sanitize unit naming
Date:   Wed,  1 Sep 2021 17:10:45 +0200
Message-Id: <20210901151045.2483811-1-geert+renesas@glider.be>
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

v2:
  - Rebased on top of commit f5a200cb84c70565 ("schemas: Allow a matrix
    for -microvolt suffix").
---
 schemas/property-units.yaml | 40 ++++++++++++++++++-------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/schemas/property-units.yaml b/schemas/property-units.yaml
index 1e710bc02ae92e3d..c1d531824b3acc2d 100644
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
     $ref: "types.yaml#/definitions/uint32-matrix"
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

