Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 728C45B91AE
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 02:33:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229818AbiIOAch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 20:32:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbiIOAcg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 20:32:36 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27D3D89806
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 17:32:32 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id c24so15815737pgg.11
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 17:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=++UiSGqIH4IC0nsofuOOHjKfbTWnq3EwUA/auAISft0=;
        b=l0eOWm0HW0P9tmohrgUbbkAbBE7RuBb1Z0UXWM6wCRubqY9gWQvdENXDha62bt9j7B
         wR/3VN7N2Tz5o0Xw95ILYuDmibyLJ8ULhVMqiWQLuEuAUT05rv4fanMnzFUBhp1Pn86N
         Jb5quaIYmZ5Ei+s9d01fXq/YZYYnsCnFnvMHw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=++UiSGqIH4IC0nsofuOOHjKfbTWnq3EwUA/auAISft0=;
        b=wNw3Ue6PFx81HB67SqZtq9qukYf287FUGCA2jFVsB7QZoU9T1U1uLHQZtgrH52/vyl
         iDIJENL6JfBpmdljjZ4gCon9sqN1jCPBb5uS4jMRpduhkrk8c5FfPWf/Va5/9CscRLI4
         YQERu67oravf4FD7uM5+0BmbdAoLtl1lIm+9rPz1iR69K7fLdnRyKAncphtZxbE4BJ6k
         7+xYW3Uwc8Q7o4vqy49y+eaOVvfTNsdD1zuB83ssGbr1wOtcR+iQdjfmVfEu/c4Oy2v7
         diI9TjjG2wgAsXP56XmCSfglS/e7onGpyTeZlNs3BmgHsDHL9XQRSTPgQ+aU7bbIwkNI
         ydQA==
X-Gm-Message-State: ACgBeo0cWqvzh+pFzCVEeiEtix0iZLo/PYAS30lAnwMrcMxxrdME/fph
        Vj5EzToXShkxsi7/K3s1px9XCA==
X-Google-Smtp-Source: AA6agR4Vg90tsnaUlONSDkhxqaVdsZLoEL11Cz6BDKmf+HGqtal3TQNj9wd0SgsZOSun1T7oJSp3tg==
X-Received: by 2002:a63:2bcc:0:b0:439:36bb:c036 with SMTP id r195-20020a632bcc000000b0043936bbc036mr10687283pgr.447.1663201952089;
        Wed, 14 Sep 2022 17:32:32 -0700 (PDT)
Received: from jwerner-p920.mtv.corp.google.com ([2620:15c:202:201:347e:2a81:558b:d912])
        by smtp.gmail.com with ESMTPSA id 199-20020a6214d0000000b0053e22c7f135sm10991202pfu.141.2022.09.14.17.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 17:32:31 -0700 (PDT)
From:   Julius Werner <jwerner@chromium.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Julius Werner <jwerner@chromium.org>
Subject: [PATCH 1/4 v4] dt-bindings: memory: Factor out common properties of LPDDR bindings
Date:   Wed, 14 Sep 2022 17:32:19 -0700
Message-Id: <20220915003222.1296421-1-jwerner@chromium.org>
X-Mailer: git-send-email 2.37.2.789.g6183377224-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The bindings for different LPDDR versions mostly use the same kinds of
properties, so in order to reduce duplication when we're adding support
for more versions, this patch creates a new lpddr-props subschema that
can be referenced by the others to define these common parts. (This will
consider a few smaller I/O width and density numbers "legal" for LPDDR3
that are usually not used there, but this should be harmless.)

Signed-off-by: Julius Werner <jwerner@chromium.org>
---
 .../ddr/jedec,lpddr-props.yaml                | 52 +++++++++++++++++++
 .../memory-controllers/ddr/jedec,lpddr2.yaml  | 40 ++------------
 .../memory-controllers/ddr/jedec,lpddr3.yaml  | 32 ++----------
 3 files changed, 60 insertions(+), 64 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml

Changelog:

- v2:
  - removed minItems
  - reordered io-width enum from lowest to highest
  - moved `$ref` below `mainainers`
  - removed part about undeprecating manufacturer-id
- v3:
  - no changes
- v4:
  - removed quotes from schema $ref strings

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
new file mode 100644
index 00000000000000..02700ac3c387ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,lpddr-props.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common properties for LPDDR types
+
+description:
+  Different LPDDR types generally use the same properties and only differ in the
+  range of legal values for each. This file defines the common parts that can be
+  reused for each type.
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+properties:
+  revision-id:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      Revision IDs read from Mode Register 6 and 7. One byte per uint32 cell (i.e. <MR6 MR7>).
+    maxItems: 2
+    items:
+      minimum: 0
+      maximum: 255
+
+  density:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Density in megabits of SDRAM chip. Decoded from Mode Register 8.
+    enum:
+      - 64
+      - 128
+      - 256
+      - 512
+      - 1024
+      - 2048
+      - 4096
+      - 8192
+      - 16384
+      - 32768
+
+  io-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      IO bus width in bits of SDRAM chip. Decoded from Mode Register 8.
+    enum:
+      - 8
+      - 16
+      - 32
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
index 9d78f140609b6c..e5e15d288d89b2 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
@@ -9,6 +9,9 @@ title: LPDDR2 SDRAM compliant to JEDEC JESD209-2
 maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
 
+allOf:
+  - $ref: jedec,lpddr-props.yaml#
+
 properties:
   compatible:
     oneOf:
@@ -41,41 +44,6 @@ properties:
       Property is deprecated, use revision-id instead.
     deprecated: true
 
-  revision-id:
-    $ref: /schemas/types.yaml#/definitions/uint32-array
-    description: |
-      Revision IDs read from Mode Register 6 and 7. One byte per uint32 cell (i.e. <MR6 MR7>).
-    minItems: 2
-    maxItems: 2
-    items:
-      minimum: 0
-      maximum: 255
-
-  density:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
-      Density in megabits of SDRAM chip. Obtained from device datasheet.
-    enum:
-      - 64
-      - 128
-      - 256
-      - 512
-      - 1024
-      - 2048
-      - 4096
-      - 8192
-      - 16384
-      - 32768
-
-  io-width:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
-      IO bus width in bits of SDRAM chip. Obtained from device datasheet.
-    enum:
-      - 32
-      - 16
-      - 8
-
   tRRD-min-tck:
     $ref: /schemas/types.yaml#/definitions/uint32
     maximum: 16
@@ -168,7 +136,7 @@ required:
   - density
   - io-width
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
index 48908a19473c3f..0f7ab51842ae09 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
@@ -9,6 +9,9 @@ title: LPDDR3 SDRAM compliant to JEDEC JESD209-3
 maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
 
+allOf:
+  - $ref: jedec,lpddr-props.yaml#
+
 properties:
   compatible:
     items:
@@ -20,24 +23,6 @@ properties:
     const: 1
     deprecated: true
 
-  density:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
-      Density in megabits of SDRAM chip.
-    enum:
-      - 4096
-      - 8192
-      - 16384
-      - 32768
-
-  io-width:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: |
-      IO bus width in bits of SDRAM chip.
-    enum:
-      - 32
-      - 16
-
   manufacturer-id:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: |
@@ -45,15 +30,6 @@ properties:
       deprecated, manufacturer should be derived from the compatible.
     deprecated: true
 
-  revision-id:
-    $ref: /schemas/types.yaml#/definitions/uint32-array
-    minItems: 2
-    maxItems: 2
-    items:
-      maximum: 255
-    description: |
-      Revision value of SDRAM chip read from Mode Registers 6 and 7.
-
   '#size-cells':
     const: 0
     deprecated: true
@@ -206,7 +182,7 @@ required:
   - density
   - io-width
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.31.0

