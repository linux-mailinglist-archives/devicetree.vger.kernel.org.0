Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 746C4571FD6
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 17:46:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233122AbiGLPqZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 11:46:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231423AbiGLPqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 11:46:23 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F919C548B
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:46:22 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id e28so11043936lfj.4
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d5pYk2bgENoJKmAgJjP5u55IOFZv0T0dQhNKXZeD8lc=;
        b=M0hAkO/ALSrNhqkwUr/tsVDZsxYCiyAIDDaijWDF/AlvXiL+HHnJ5t0UlDpdX+DVui
         fpE/bgj461v35xJXE/X/OGyNTzRHO0A5Xzp4NxbpNF7ToaLTQm5rzo17JjVyc1cC5RQc
         1LqplN58movOWgeQdwxI5PqkvhLU3nr5qKvb5IKR8xjaUWl5nWVWiPis6Zjrjx/LiiQY
         pQa5/An7MivsJ2Fzw5QhqcEZQrylU3HRJRoFk/plVSQX+Gj3z4mM+CwO9yruN/l8Qdm9
         NAhyI1rJCJf+8dxsnOOEnFrBZE2lwR81m+hfLiDeF/9tFwHZ9L7xmWE65jtXW5YtEML8
         ADLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=d5pYk2bgENoJKmAgJjP5u55IOFZv0T0dQhNKXZeD8lc=;
        b=BDKH8hm4nuL6zXuNc9z6WzejCK55vESPjXPjj1eHq4SLT3UfXetWds2gl/9xnJUmlQ
         PCSADT0/avLryXYPHU143jcKnh+3V7ZY7LNan1IYGfTHoVav/4RR0p32tjAEk3foFwCC
         X0pvVuaKZGL39YOYfn65vNzhwXYfGaEDJMTtlbPK2jb6qeJJ6CitqqdTaMYFMSQFFsB0
         lY/iQwP4NteUAT9Ykl1ewWH1qBDty9VUlEh0mif1Kin/ynwv+4d8vWnJEEo9DAM2LDBm
         65p2xAVbTOO8osT9/6kpju9+ZgAz7gHuLuLtjVABDm+sqUMmohrMfKk19h1FhprfA68h
         kHTA==
X-Gm-Message-State: AJIora+/lQGLH9XZvBGRonGE1V7AFN3fPwhJkA03vfUWz/ppn15JNOjZ
        qA4sgcq+4C6f3LuY1GDo24caJQ==
X-Google-Smtp-Source: AGRyM1vv1jizlfHJgxqT0dOxee25WGxKd5vBg/s8PWXRo0/Bt2J1h5OGxf2AyNpVQfJjMnogy+hAdw==
X-Received: by 2002:a05:6512:2290:b0:489:d433:605d with SMTP id f16-20020a056512229000b00489d433605dmr8806532lfu.629.1657640780501;
        Tue, 12 Jul 2022 08:46:20 -0700 (PDT)
Received: from krzk-bin.. (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id q5-20020a056512210500b00489ed49d243sm582396lfr.260.2022.07.12.08.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 08:46:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Srba <Michael.Srba@seznam.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: bus: qcom,ssc-block-bus: rework arrays and drop redundant minItems
Date:   Tue, 12 Jul 2022 17:46:02 +0200
Message-Id: <20220712154602.26994-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no need to specify "minItems" if it equals to "maxItems".  On the
other hand number of items in an array can be specified via describing
items, which might bring some additional information.  This simplifies a
bit the binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/bus/qcom,ssc-block-bus.yaml      | 25 ++++++++-----------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/bus/qcom,ssc-block-bus.yaml b/Documentation/devicetree/bindings/bus/qcom,ssc-block-bus.yaml
index 5b9705079015..8e9e6ff35d7d 100644
--- a/Documentation/devicetree/bindings/bus/qcom,ssc-block-bus.yaml
+++ b/Documentation/devicetree/bindings/bus/qcom,ssc-block-bus.yaml
@@ -28,11 +28,9 @@ properties:
       - const: qcom,ssc-block-bus
 
   reg:
-    description: |
-      Shall contain the addresses of the SSCAON_CONFIG0 and SSCAON_CONFIG1
-      registers
-    minItems: 2
-    maxItems: 2
+    items:
+      - description: SSCAON_CONFIG0 registers
+      - description: SSCAON_CONFIG1 registers
 
   reg-names:
     items:
@@ -48,7 +46,6 @@ properties:
   ranges: true
 
   clocks:
-    minItems: 6
     maxItems: 6
 
   clock-names:
@@ -61,9 +58,9 @@ properties:
       - const: ssc_ahbs
 
   power-domains:
-    description: Power domain phandles for the ssc_cx and ssc_mx power domains
-    minItems: 2
-    maxItems: 2
+    items:
+      - description: CX power domain
+      - description: MX power domain
 
   power-domain-names:
     items:
@@ -71,11 +68,11 @@ properties:
       - const: ssc_mx
 
   resets:
-    description: |
-      Reset phandles for the ssc_reset and ssc_bcr resets (note: ssc_bcr is the
-      branch control register associated with the ssc_xo and ssc_ahbs clocks)
-    minItems: 2
-    maxItems: 2
+    items:
+      - description: Main reset
+      - description:
+          SSC Branch Control Register reset (associated with the ssc_xo and
+          ssc_ahbs clocks)
 
   reset-names:
     items:
-- 
2.34.1

