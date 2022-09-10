Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD7E85B4647
	for <lists+devicetree@lfdr.de>; Sat, 10 Sep 2022 14:47:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbiIJMrH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Sep 2022 08:47:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbiIJMrG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Sep 2022 08:47:06 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E3BF57880
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 05:47:05 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id z23so5180540ljk.1
        for <devicetree@vger.kernel.org>; Sat, 10 Sep 2022 05:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=vm+r24ViQXOdz41KkiBdX+nyXKDyoqOo1pLDhCPu3CQ=;
        b=XlgveTwV+CSGcBo40DPAzYib5fqZ0Rlc2uhMxeGlkh0N/QxdzfAeBbbPF0UknLt2Q8
         0g4LXrV2voRi+wEiTu/lSPEQDG6Jwxx7ivkP0AgDlKHLOnealU9Yki6AtX/zzYpc7P6a
         0cUFrUPUZhNwFkv95fkKKT2qU1aOtpDTeG6lF4V+QR9yVXF4s2saBcE3p9dxdz14NNF6
         +x7AfQtOAKBKxSFTjbHXIWFrgPyE66cbLtGSllF/YAFdy4NRT3G6f6omzZLDaqW4XodA
         cUQUijxMGA1NPABDyYXlGk2oH1kR+fjYy7n3XusvUCNh+VhYAOm/ji+yEOh6rbZLSxZq
         HoCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=vm+r24ViQXOdz41KkiBdX+nyXKDyoqOo1pLDhCPu3CQ=;
        b=u6a+ZlUuLAtmd/QPJ7TCF6wxw2BAML5+Y4vEhb0MUfy+xnbSDlS3nyRVTb05bqvOrh
         w6VwNwxesWOQojzOufeVDyCDLBCf+R1qTEIdo0CMZmJm07vOFxpiogMPBN1/fivX2+RG
         1fxQG+NqEPvAk2QjBsOZIh26GBMhYWuYHAyeCzg6SvYiUMARmww3EE/jBJZy7oa0hme9
         rqrvIPXuNlMilWzxObBmmXtQ/8Cl29AbkIxJCRAFJbwqCwhAXC/dTVlRIf14r9fI1b44
         f7bu9dt7MiTzEvUMAXKvotcc43hihBSmuVHwzHS1IH73kyHIw51ljyeIQX6j6h3myMDv
         OOeA==
X-Gm-Message-State: ACgBeo2vqhZXJKolqUeZHt0mQh23rn5F7nmyOUaTHEKqxi3OEpZFNEdk
        P0UKN2WYSsnU+sSxA1PyNw7Fkw==
X-Google-Smtp-Source: AA6agR6I4/LYZ8mWWcxCletV7K1sCraq9hcMdaAwolUuR/vgYHecTNmX2qVP3azJScUF8Ah9pe1Fhg==
X-Received: by 2002:a2e:bd0e:0:b0:268:c03b:cf56 with SMTP id n14-20020a2ebd0e000000b00268c03bcf56mr5517651ljq.393.1662814023544;
        Sat, 10 Sep 2022 05:47:03 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k14-20020a2e920e000000b002677a3ad1d9sm327463ljg.76.2022.09.10.05.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Sep 2022 05:47:03 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [RFC PATCH 01/10] dt-bindings: thermal: tsens: support per-sensor calibration cells
Date:   Sat, 10 Sep 2022 15:46:52 +0300
Message-Id: <20220910124701.4060321-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220910124701.4060321-1-dmitry.baryshkov@linaro.org>
References: <20220910124701.4060321-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow specifing the exact calibration mode and calibration data as nvmem
cells, rather than specifying just a single calibration data blob.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/thermal/qcom-tsens.yaml          | 64 ++++++++++++++++---
 1 file changed, 54 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 038d81338fcf..b813f6f19c1d 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -77,18 +77,62 @@ properties:
       - const: critical
 
   nvmem-cells:
-    minItems: 1
-    maxItems: 2
-    description:
-      Reference to an nvmem node for the calibration data
+    oneOf:
+      - minItems: 1
+        maxItems: 2
+        description:
+          Reference to an nvmem node for the calibration data
+      - minItems: 5
+        maxItems: 35
+        description: |
+          Reference to an nvmem cells for the calibration mode, two calibration
+          bases and two cells per each sensor
 
   nvmem-cell-names:
-    minItems: 1
-    items:
-      - const: calib
-      - enum:
-          - calib_backup
-          - calib_sel
+    oneOf:
+      - minItems: 1
+        items:
+          - const: calib
+          - enum:
+              - calib_backup
+              - calib_sel
+      - minItems: 5
+        items:
+          - const: mode
+          - const: base1
+          - const: base2
+          - const: s0_p1
+          - const: s0_p2
+          - const: s1_p1
+          - const: s1_p2
+          - const: s2_p1
+          - const: s2_p2
+          - const: s3_p1
+          - const: s3_p2
+          - const: s4_p1
+          - const: s4_p2
+          - const: s5_p1
+          - const: s5_p2
+          - const: s6_p1
+          - const: s6_p2
+          - const: s7_p1
+          - const: s7_p2
+          - const: s8_p1
+          - const: s8_p2
+          - const: s9_p1
+          - const: s9_p2
+          - const: s10_p1
+          - const: s10_p2
+          - const: s11_p1
+          - const: s11_p2
+          - const: s12_p1
+          - const: s12_p2
+          - const: s13_p1
+          - const: s13_p2
+          - const: s14_p1
+          - const: s14_p2
+          - const: s15_p1
+          - const: s15_p2
 
   "#qcom,sensors":
     description:
-- 
2.35.1

