Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E51B25F15BC
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 00:06:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232540AbiI3WGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 18:06:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232525AbiI3WGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 18:06:34 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04976DDD95
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 15:06:21 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id 8-20020a17090a0b8800b00205d8564b11so5377763pjr.5
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 15:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=yYShJcdgyNXV7ZdCaqSPGIpCWtNNHbjqMrDSIEy3uh8=;
        b=LZGmwLerV8+osrz9eS82r32YCnbFlbRz3a+nZirmW+tscO7v4btLkcYhUJ5bHTP74x
         NoKpa2yLL2Nzng2i/gRpQbEiHX1Wgg4Ra1qMNVM+2fTJuYWwbwenelEnEkOFbd5ZxDwQ
         bn4JMg5ZlK9PIedl9STPxzvhDAlw+trEFWuE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=yYShJcdgyNXV7ZdCaqSPGIpCWtNNHbjqMrDSIEy3uh8=;
        b=Cmrlf9a0fYLTS5onW4+BRQmDmM2oRu9Gb0GnjcvBOLGK7Bc+Ul+B68G0aa0Igq9GUH
         yDURN27LzomngV/Cw78whFloTVW/2L4jw1U3wICevMw6+az6MMusZbdw42g5RGBStpP/
         /QOKhVyvkCVhhdB9GlVUIt8RS7lAc3PwdmbrmWUjNGccyPk3J5tcxTq7zfSV5p2lv75x
         Bk1PfLcaAKuzVkXS0FWfBsDlYMS5hhJO75yPQT3Pq0K/88sOqkDJju5cluweCEz1fkTe
         8Mb1JpUVNEEJ1SUeNm8t7cmT7wMWnMYMHLNQlSFoSfr4970XOTZHLs0Hs2hdbtaAxirZ
         1M1g==
X-Gm-Message-State: ACrzQf3RLKs97Rxh5Z0DTGKtsR4pSb4/Lv48qPmoKI05l+/1POoLtsPi
        4B/6Ey9FsEKWuGOydRw+DTCppw==
X-Google-Smtp-Source: AMsMyM4qQgbLHoEvETGCbd1jYCPQ+qyOtv1qJbQIraRKiXzUPVuLccG8dnXS9zkOaWybz8pJL+KeXw==
X-Received: by 2002:a17:902:ab89:b0:17a:67c:b9e9 with SMTP id f9-20020a170902ab8900b0017a067cb9e9mr10896874plr.55.1664575575756;
        Fri, 30 Sep 2022 15:06:15 -0700 (PDT)
Received: from jwerner-p920.mtv.corp.google.com ([2620:15c:9d:2:ab9d:610e:ee54:d4ca])
        by smtp.gmail.com with ESMTPSA id f91-20020a17090a706400b001facf455c91sm5769364pjk.21.2022.09.30.15.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 15:06:15 -0700 (PDT)
From:   Julius Werner <jwerner@chromium.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Julius Werner <jwerner@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 3/4 v5] dt-bindings: memory: Add jedec,lpddr4 and jedec,lpddr5 bindings
Date:   Fri, 30 Sep 2022 15:06:05 -0700
Message-Id: <20220930220606.303395-3-jwerner@chromium.org>
X-Mailer: git-send-email 2.38.0.rc1.362.ged0d419d3c-goog
In-Reply-To: <20220930220606.303395-1-jwerner@chromium.org>
References: <20220930220606.303395-1-jwerner@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for LPDDR4 and LPDDR5 memory analogous to the
existing bindings for LPDDR2 and LPDDR3. For now, the new types are only
needed for topology description, so other properties like timing
parameters are omitted. They can be added later if needed.

Signed-off-by: Julius Werner <jwerner@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../ddr/jedec,lpddr-props.yaml                |  4 ++
 .../memory-controllers/ddr/jedec,lpddr4.yaml  | 35 ++++++++++++++
 .../memory-controllers/ddr/jedec,lpddr5.yaml  | 46 +++++++++++++++++++
 3 files changed, 85 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr4.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr5.yaml

Changelog:

- v2
  - removed minItems
  - moved `$ref` below `maintainers`
  - renamed example node from `lpddr4` to `lpddr`
- v3
  - removed manufacturer-id property from examples
- v4
  - removed quotes from schema $ref strings
- v5
  - updated reviewed-by list

diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
index 4114cfa8de67f1..92ef660888f318 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr-props.yaml
@@ -45,9 +45,13 @@ properties:
       - 512
       - 1024
       - 2048
+      - 3072
       - 4096
+      - 6144
       - 8192
+      - 12288
       - 16384
+      - 24576
       - 32768
 
   io-width:
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr4.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr4.yaml
new file mode 100644
index 00000000000000..a078892fecee36
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr4.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,lpddr4.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LPDDR4 SDRAM compliant to JEDEC JESD209-4
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+allOf:
+  - $ref: jedec,lpddr-props.yaml#
+
+properties:
+  compatible:
+    items:
+      - pattern: "^lpddr4-[0-9a-f]{2},[0-9a-f]{4}$"
+      - const: jedec,lpddr4
+
+required:
+  - compatible
+  - density
+  - io-width
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    lpddr {
+        compatible = "lpddr4-ff,0100", "jedec,lpddr4";
+        density = <8192>;
+        io-width = <16>;
+        revision-id = <1 0>;
+    };
diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr5.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr5.yaml
new file mode 100644
index 00000000000000..e441dac5f15445
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr5.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,lpddr5.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: LPDDR5 SDRAM compliant to JEDEC JESD209-5
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+allOf:
+  - $ref: jedec,lpddr-props.yaml#
+
+properties:
+  compatible:
+    items:
+      - pattern: "^lpddr5-[0-9a-f]{2},[0-9a-f]{4}$"
+      - const: jedec,lpddr5
+
+  serial-id:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      Serial IDs read from Mode Registers 47 through 54. One byte per uint32
+      cell (i.e. <MR47 MR48 MR49 MR50 MR51 MR52 MR53 MR54>).
+    maxItems: 8
+    items:
+      minimum: 0
+      maximum: 255
+
+required:
+  - compatible
+  - density
+  - io-width
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    lpddr {
+        compatible = "lpddr5-01,0200", "jedec,lpddr5";
+        density = <8192>;
+        io-width = <8>;
+        revision-id = <2 0>;
+        serial-id = <3 1 0 0 0 0 0 0>;
+    };
-- 
2.31.0

