Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58BE5278593
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 13:14:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727388AbgIYLOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 07:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727201AbgIYLOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Sep 2020 07:14:35 -0400
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5993C0613CE
        for <devicetree@vger.kernel.org>; Fri, 25 Sep 2020 04:14:34 -0700 (PDT)
Received: from ramsan ([84.195.186.194])
        by laurent.telenet-ops.be with bizsmtp
        id YBEX230064C55Sk01BEXL8; Fri, 25 Sep 2020 13:14:32 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1kLlgN-0001NM-6o; Fri, 25 Sep 2020 13:14:31 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1kLlgN-0000pT-4R; Fri, 25 Sep 2020 13:14:31 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: example: Grammar improvements
Date:   Fri, 25 Sep 2020 13:14:29 +0200
Message-Id: <20200925111429.3146-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Improve grammar in recently added sentences:
  - Drop superfluous "be" in front of "have",
  - Add missing articles.

Fixes: 73f76a41c4ed7def ("dt-bindings: example: Extend based on practice")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Feel free to fold into the original commit.

 Documentation/devicetree/bindings/example-schema.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/example-schema.yaml b/Documentation/devicetree/bindings/example-schema.yaml
index 4552f2b988d09267..a97f39109f8d0414 100644
--- a/Documentation/devicetree/bindings/example-schema.yaml
+++ b/Documentation/devicetree/bindings/example-schema.yaml
@@ -81,7 +81,7 @@ properties:
     maxItems: 1
     description: bus clock. A description is only needed for a single item if
       there's something unique to add.
-      The items should be have a fixed order, so pattern matching names are
+      The items should have a fixed order, so pattern matching names are
       discouraged.
 
   clock-names:
@@ -99,7 +99,7 @@ properties:
       A variable number of interrupts warrants a description of what conditions
       affect the number of interrupts. Otherwise, descriptions on standard
       properties are not necessary.
-      The items should be have a fixed order, so pattern matching names are
+      The items should have a fixed order, so pattern matching names are
       discouraged.
 
   interrupt-names:
@@ -226,8 +226,8 @@ allOf:
 # This can't be used in cases where another schema is referenced
 # (i.e. allOf: [{$ref: ...}]).
 # If and only if another schema is referenced and arbitrary children nodes can
-# appear, "unevaluatedProperties: false" could be used.  Typical example is I2C
-# controller where no name pattern matching for children can be added.
+# appear, "unevaluatedProperties: false" could be used.  A typical example is
+# an I2C controller where no name pattern matching for children can be added.
 additionalProperties: false
 
 examples:
-- 
2.17.1

