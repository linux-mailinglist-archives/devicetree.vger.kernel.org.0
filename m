Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EF1A4A5B81
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 12:48:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237507AbiBALsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 06:48:39 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56578
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237487AbiBALsi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 06:48:38 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EF07B3F1FD
        for <devicetree@vger.kernel.org>; Tue,  1 Feb 2022 11:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643716115;
        bh=T/Y7vvIm1vNgiOBuzuvlSLr7bPQM9EpmEANjJNIACK4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=fWaCjtCFAId5QA4V1GCSRDXFqhjgZdckceaY7/K7nWrs91XpBTgGnt8z5ZfcpwTHM
         MaX7nbdOUCfRb2r6RuILJM53indPFVkhoShvL+mprqGPFloP7i6vK1LbLA3pIKJhu1
         I7Oy0FUxuSx+gnFlj4YzhY1l3PpPVx+e0Ek2opKnbu6xZrsuEwBBya70d7r3unTPpN
         dc5ob/WtlDGqtC6IZ4FdbqdiASRmmwedERcD0aox4co/7gawzQgwO44i0oQSChOg90
         LXyNMPQddwjhVN1w7rlavEyCbTyHkkXlbnfkpY3P1+F/ElX55dTXxA77IRXJwBpDUJ
         cmOYfvSkOC5Vw==
Received: by mail-ed1-f71.google.com with SMTP id f21-20020a50d555000000b00407a8d03b5fso8487177edj.9
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 03:48:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T/Y7vvIm1vNgiOBuzuvlSLr7bPQM9EpmEANjJNIACK4=;
        b=lBtBIUWKfepgx4jNPEdPlMUbc7m+GwsxFSwbEY2mMDSwii5lNMZ8Omaie5E6cBkaaF
         zo/iDRmLOsPbSfTbWRkO3RdhH+Dp8huNJHP6zaA50R5n/zRcCbSl0yxv2ZXlVL90RMPH
         8Tvm8s6wmbTvAhi1jRjepoGdSoUKZjhx6KVhDAwuIimGWhPASaQ8movW+fWDUbvko2XS
         XS7aPIJap5JwYFzrSHBftraBS4Sd4y5r4WQmz57cpNaMvGolIJiYnjGLpJ+1I/mzM8dF
         aC0ZYv0uJMeWQ+xrvaHPrcN6Np9gV8aeihiokIXJrsj418f1gHDApNyNcE4d/0HFHYBQ
         QmyA==
X-Gm-Message-State: AOAM530o3gyAdnE2djPnHKPFzl3d9X/l6PwMFi7vrnFyNAfPDyFH+GZk
        PgFLnyOzdBsqQ0P5xQM3Oll++iBK9UU7vkjFiwQtZHGl3U+/2N1EdpWkucyPnz/fWzedFlUTU85
        8lyw0IKZtqmkxxvw/t773wFVtZjAaBXezQUpfZ8M=
X-Received: by 2002:a17:907:7ea3:: with SMTP id qb35mr20935345ejc.553.1643716114004;
        Tue, 01 Feb 2022 03:48:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxBVg7XQAKdtCkCWKY7svrC9N0kglErPiZRvcZ3T1qESNacpBeH/7PKHB+m0oeeHfjiu1i0cQ==
X-Received: by 2002:a17:907:7ea3:: with SMTP id qb35mr20935333ejc.553.1643716113773;
        Tue, 01 Feb 2022 03:48:33 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id bo19sm17954484edb.56.2022.02.01.03.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 03:48:33 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH 6/6] dt-bindings: memory: lpddr2-timings: convert to dtschema
Date:   Tue,  1 Feb 2022 12:47:49 +0100
Message-Id: <20220201114749.88500-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
References: <20220201114749.88500-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the LPDDR2 memory timings bindings to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../ddr/jedec,lpddr2-timings.yaml             | 135 ++++++++++++++++++
 .../memory-controllers/ddr/jedec,lpddr2.yaml  |   6 +-
 .../memory-controllers/ddr/lpddr2-timings.txt |  52 -------
 3 files changed, 137 insertions(+), 56 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2-timings.yaml
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/lpddr2-timings.txt

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2-timings.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2-timings.yaml
new file mode 100644
index 000000000000..7cc3021decfe
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2-timings.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,lpddr2-timings.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LPDDR2 SDRAM AC timing parameters for a given speed-bin
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+properties:
+  compatible:
+    const: jedec,lpddr2-timings
+
+  max-freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Maximum DDR clock frequency for the speed-bin, in Hz.
+
+  min-freq:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Minimum DDR clock frequency for the speed-bin, in Hz.
+
+  tCKESR:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      CKE minimum pulse width during SELF REFRESH (low pulse width during
+      SELF REFRESH) in pico seconds.
+
+  tDQSCK-max:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      DQS output data access time from CK_t/CK_c in pico seconds.
+
+  tDQSCK-max-derated:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      DQS output data access time from CK_t/CK_c, temperature de-rated, in pico
+      seconds.
+
+  tFAW:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Four-bank activate window in pico seconds.
+
+  tRAS-max-ns:
+    description: |
+      Row active time in nano seconds.
+
+  tRAS-min:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Row active time in pico seconds.
+
+  tRCD:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      RAS-to-CAS delay in pico seconds.
+
+  tRPab:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Row precharge time (all banks) in pico seconds.
+
+  tRRD:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Active bank A to active bank B in pico seconds.
+
+  tRTP:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Internal READ to PRECHARGE command delay in pico seconds.
+
+  tWR:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      WRITE recovery time in pico seconds.
+
+  tWTR:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Internal WRITE-to-READ command delay in pico seconds.
+
+  tXP:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Exit power-down to next valid command delay in pico seconds.
+
+  tZQCL:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      SELF REFRESH exit to next valid command delay in pico seconds.
+
+  tZQCS:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      SELF REFRESH exit to next valid command delay in pico seconds.
+
+  tZQinit:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      SELF REFRESH exit to next valid command delay in pico seconds.
+
+required:
+  - compatible
+  - min-freq
+  - max-freq
+
+additionalProperties: false
+
+examples:
+  - |
+    timings {
+        compatible = "jedec,lpddr2-timings";
+        min-freq = <10000000>;
+        max-freq = <400000000>;
+        tCKESR = <15000>;
+        tDQSCK-max = <5500>;
+        tFAW = <50000>;
+        tRAS-max-ns = <70000>;
+        tRAS-min = <42000>;
+        tRPab = <21000>;
+        tRCD = <18000>;
+        tRRD = <10000>;
+        tRTP = <7500>;
+        tWR = <15000>;
+        tWTR = <7500>;
+        tXP = <7500>;
+        tZQCL = <360000>;
+        tZQCS = <90000>;
+        tZQinit = <1000000>;
+    };
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
index 25ed0266f6dd..2d8a701e2a05 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
@@ -142,14 +142,12 @@ properties:
 
 patternProperties:
   "^lpddr2-timings":
-    type: object
+    $ref: jedec,lpddr2-timings.yaml
     description: |
       The lpddr2 node may have one or more child nodes of type "lpddr2-timings".
       "lpddr2-timings" provides AC timing parameters of the device for
       a given speed-bin. The user may provide the timings for as many
-      speed-bins as is required. Please see Documentation/devicetree/
-      bindings/memory-controllers/ddr/lpddr2-timings.txt for more information
-      on "lpddr2-timings".
+      speed-bins as is required.
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/lpddr2-timings.txt b/Documentation/devicetree/bindings/memory-controllers/ddr/lpddr2-timings.txt
deleted file mode 100644
index 9ceb19e0c7fd..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/lpddr2-timings.txt
+++ /dev/null
@@ -1,52 +0,0 @@
-* AC timing parameters of LPDDR2(JESD209-2) memories for a given speed-bin
-
-Required properties:
-- compatible : Should be "jedec,lpddr2-timings"
-- min-freq : minimum DDR clock frequency for the speed-bin. Type is <u32>
-- max-freq : maximum DDR clock frequency for the speed-bin. Type is <u32>
-
-Optional properties:
-
-The following properties represent AC timing parameters from the memory
-data-sheet of the device for a given speed-bin. All these properties are
-of type <u32> and the default unit is ps (pico seconds). Parameters with
-a different unit have a suffix indicating the unit such as 'tRAS-max-ns'
-- tRCD
-- tWR
-- tRAS-min
-- tRRD
-- tWTR
-- tXP
-- tRTP
-- tDQSCK-max
-- tFAW
-- tZQCS
-- tZQinit
-- tRPab
-- tZQCL
-- tCKESR
-- tRAS-max-ns
-- tDQSCK-max-derated
-
-Example:
-
-timings_elpida_ECB240ABACN_400mhz: lpddr2-timings@0 {
-	compatible	= "jedec,lpddr2-timings";
-	min-freq	= <10000000>;
-	max-freq	= <400000000>;
-	tRPab		= <21000>;
-	tRCD		= <18000>;
-	tWR		= <15000>;
-	tRAS-min	= <42000>;
-	tRRD		= <10000>;
-	tWTR		= <7500>;
-	tXP		= <7500>;
-	tRTP		= <7500>;
-	tCKESR		= <15000>;
-	tDQSCK-max	= <5500>;
-	tFAW		= <50000>;
-	tZQCS		= <90000>;
-	tZQCL		= <360000>;
-	tZQinit		= <1000000>;
-	tRAS-max-ns	= <70000>;
-};
-- 
2.32.0

