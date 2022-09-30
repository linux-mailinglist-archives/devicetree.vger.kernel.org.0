Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51B585F15BB
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 00:06:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232606AbiI3WGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 18:06:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230291AbiI3WGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 18:06:34 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC3033120D
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 15:06:21 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id y136so5366441pfb.3
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 15:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=iCjsg2P6rP+EOnKp8OLBU0BfWRzD3b14JMZ4HtOWs24=;
        b=cbu4jNnEDv+apb4pzraryzWuGPoblZA4nu2doYnYqBmJF2boRTZ3jrDqL+d+9gIt+4
         wyUKfWG2bCf0HiC15XlguZFHOVznni6Nlr2AC64gRfR6dYPNa06ez1ePfpWsWJT7osUW
         jtKO5EROjwFHJ3mDwgrrepc3o+ZZaBcCleirE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=iCjsg2P6rP+EOnKp8OLBU0BfWRzD3b14JMZ4HtOWs24=;
        b=KYyc6nqMB1v1i905ulpWf3DKPePknz9/zoA0h1ZNjJMIrXWCX/c86nXU4GqZ8eF+yV
         6gVKjoayqCJN1aB4DLoPvK+2ULYAs4rOWjXK8d8HuwP3gH6SY9AcTd2ipOKmFkvux+Wi
         MU1Uo44awpK0sSu5vRozEZKFVsD2+5GgKAeeHHUaaC6GN0aarmBWaX1GVn4qRSb/yD7g
         0ADPfBgrEkpZ9MSDJdSMbptjM3vutrU6WSRL1+uQ65aT8uaYHGP+PHiTGa0+zCTehYUa
         LTZeoRhwbS/0wdeFH4d8kQJpP4bRY93aK4TGtqX1iFfvm+3xUldLx+eTnoq58ZMmDUtf
         1Bgg==
X-Gm-Message-State: ACrzQf18AI/Nq6oZWqo1BJd6d8/BQyHDnB2ET9PPTOFcdahdyix9j+dv
        seJBC+UDAuVI0P26QM0gx5pioQ==
X-Google-Smtp-Source: AMsMyM5Q18jDBYh5fuJNE0t4W0Z/I5EiMvVgT02Yd9F+BoG2hc0teb8si7tQgz5S5gHcQkBUC72u9A==
X-Received: by 2002:a62:1e83:0:b0:545:6896:188 with SMTP id e125-20020a621e83000000b0054568960188mr11120425pfe.51.1664575574662;
        Fri, 30 Sep 2022 15:06:14 -0700 (PDT)
Received: from jwerner-p920.mtv.corp.google.com ([2620:15c:9d:2:ab9d:610e:ee54:d4ca])
        by smtp.gmail.com with ESMTPSA id f91-20020a17090a706400b001facf455c91sm5769364pjk.21.2022.09.30.15.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 15:06:14 -0700 (PDT)
From:   Julius Werner <jwerner@chromium.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Julius Werner <jwerner@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 2/4 v5] dt-bindings: memory: Add numeric LPDDR compatible string variant
Date:   Fri, 30 Sep 2022 15:06:04 -0700
Message-Id: <20220930220606.303395-2-jwerner@chromium.org>
X-Mailer: git-send-email 2.38.0.rc1.362.ged0d419d3c-goog
In-Reply-To: <20220930220606.303395-1-jwerner@chromium.org>
References: <20220930220606.303395-1-jwerner@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch allows a new kind of compatible string for LPDDR parts in the
device tree bindings, in addition to the existing hardcoded
<vendor>,<part-number> strings. The new format contains manufacturer and
part (revision) information in numerical form, such as lpddr3-ff,0201
for an LPDDR3 part with manufacturer ID ff and revision ID 0201. This
helps cases where LPDDR parts are probed at runtime by boot firmware and
cannot be matched to hardcoded part numbers, such as the firmware on the
qcom/sc7280-herobrine boards does (which supports 4 different memory
configurations at the moment, and more are expected to be added later at
a point where the boot firmware can no longer be updated to specifically
accomodate them).

Signed-off-by: Julius Werner <jwerner@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../memory-controllers/ddr/jedec,lpddr-props.yaml    | 10 ++++++++++
 .../memory-controllers/ddr/jedec,lpddr2.yaml         |  8 +++++---
 .../memory-controllers/ddr/jedec,lpddr3.yaml         | 12 ++++++++----
 3 files changed, 23 insertions(+), 7 deletions(-)

Changelog:

- v2
  - Updated commit message to describe intended use case as an example
- v3
  - no changes
- v4
  - no changes
- v5
  - updated acked-by list

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
index 02700ac3c387ec..4114cfa8de67f1 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
@@ -15,6 +15,16 @@ maintainers:
   - Krzysztof Kozlowski <krzk@kernel.org>
 
 properties:
+  compatible:
+    description:
+      Compatible strings can be either explicit vendor names and part numbers
+      (e.g. elpida,ECB240ABACN), or generated strings of the form
+      lpddrX-YY,ZZZZ where X is the LPDDR version, YY is the manufacturer ID
+      (from MR5) and ZZZZ is the revision ID (from MR6 and MR7). Both IDs are
+      formatted in lower case hexadecimal representation with leading zeroes.
+      The latter form can be useful when LPDDR nodes are created at runtime by
+      boot firmware that doesn't have access to static part number information.
+
   revision-id:
     $ref: /schemas/types.yaml#/definitions/uint32-array
     description:
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
index e5e15d288d89b2..a237bc259273bf 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2.yaml
@@ -20,13 +20,15 @@ properties:
               - elpida,ECB240ABACN
               - elpida,B8132B2PB-6D-F
           - enum:
-              - jedec,lpddr2-s4
-      - items:
-          - enum:
+              - jedec,lpddr2-nvm
               - jedec,lpddr2-s2
+              - jedec,lpddr2-s4
       - items:
+          - pattern: "^lpddr2-[0-9a-f]{2},[0-9a-f]{4}$"
           - enum:
               - jedec,lpddr2-nvm
+              - jedec,lpddr2-s2
+              - jedec,lpddr2-s4
 
   revision-id1:
     $ref: /schemas/types.yaml#/definitions/uint32
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
index 0f7ab51842ae09..e328a1195ba646 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
@@ -14,10 +14,14 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - samsung,K3QF2F20DB
-      - const: jedec,lpddr3
+    oneOf:
+      - items:
+          - enum:
+              - samsung,K3QF2F20DB
+          - const: jedec,lpddr3
+      - items:
+          - pattern: "^lpddr3-[0-9a-f]{2},[0-9a-f]{4}$"
+          - const: jedec,lpddr3
 
   '#address-cells':
     const: 1
-- 
2.31.0

