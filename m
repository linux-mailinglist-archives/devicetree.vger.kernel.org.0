Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EDED5095B6
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 06:13:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384066AbiDUEQj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 00:16:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242619AbiDUEQh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 00:16:37 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6275AE0C9
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 21:13:47 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id e4so4394208oif.2
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 21:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VvonfvZ7LB6aLy4wjty29l8R5C37JLm7o1EML3W0CCw=;
        b=g45lqDkJ/wvyiDbt549UbOl4EexQg+Opiy33qRcMdmUnwYletPFwpZCsTiGUr5H5jE
         NFI8vIDyfZCqrUGKl3w6uzjhnSitd6TMyxCfutUrVDV4AE8zWQ6sMRbQJ5BtSdpo94GM
         ZAgc44FcZm315lDNAEcGmx2Hjr5AcHB/KOxyDJChXjRhScCRifUZiqYsU22hKLN4MqgX
         Guj20eDcjNRZSDR/cJQ+jNz87K7acXrKliJPl0pXfM2HONp5SsH5Qx1JbW14MpdCor0T
         iIbGUTUFcKn1LBJ5TgOCYyxj60HX76l1PFbruft5ftllMsn7gq1IY5VxGNzUeL9lwqHu
         ziXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VvonfvZ7LB6aLy4wjty29l8R5C37JLm7o1EML3W0CCw=;
        b=RdZxmJzYFdv0/5lhsEOINHbyEosBIcGSsSJDiEVC3ub4f0L0rj4kg4dckS98CI9fLE
         nIEaWz15/rbsfbLfZXzxLw0vznC9b1UVNjbTKnudYoM2eJHDIT1WcrpjN/VgYhELTKtJ
         zB5+7NsKnv5wTNJGsFyJU6TP+LmiNC43SAiqmW4jNLcrEOh06rMIvUxTfqbT9MG1M76b
         Ix6CwtnQd5nS3pc1OS/Im+vj2BDO77g4SLIPxH4KUiZcyGn7GRszfRt3Pebom6jnecKy
         HKffqkrpO4ByhYNLB2lB93jZdZcsBMxJ7e4sOfRD5pff0iveaxJch15aUo0+aV/tkCEj
         Nf/g==
X-Gm-Message-State: AOAM5339Y7tXZtFcWlaha+GlmNo3cOKq0X3oh4r56lli3uONiKzHWfTa
        VlLaE7cTiXmJQwQLHd8tOf/Z2Q==
X-Google-Smtp-Source: ABdhPJyfAjep5BALu93JuedvIOa2GKA4DK1inJPuUOVfulw9xgmddkM8zQM4uyWjFYtYVy5qA9L1Ow==
X-Received: by 2002:a05:6808:1312:b0:322:7d72:9006 with SMTP id y18-20020a056808131200b003227d729006mr3455595oiv.244.1650514426736;
        Wed, 20 Apr 2022 21:13:46 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id h186-20020acab7c3000000b002ef5106248asm7115512oif.45.2022.04.20.21.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 21:13:46 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: display: msm: Add optional resets
Date:   Wed, 20 Apr 2022 21:15:49 -0700
Message-Id: <20220421041550.643964-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an optional reference to the MDSS_CORE reset, which when specified
can be used by the implementation to reset the hardware blocks.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v3:
- None

 .../devicetree/bindings/display/msm/dpu-qcm2290.yaml          | 4 ++++
 Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml | 4 ++++
 Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml | 4 ++++
 Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml | 4 ++++
 4 files changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
index 6fb7e321f011..734d14de966d 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
@@ -66,6 +66,10 @@ properties:
   interconnect-names:
     const: mdp0-mem
 
+  resets:
+    items:
+      - description: MDSS_CORE reset
+
 patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
index 12a86b1ec1bc..b41991eaa454 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7180.yaml
@@ -65,6 +65,10 @@ properties:
   interconnect-names:
     const: mdp0-mem
 
+  resets:
+    items:
+      - description: MDSS_CORE reset
+
 patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
index fbeb931a026e..6e417d06fc79 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sc7280.yaml
@@ -64,6 +64,10 @@ properties:
   interconnect-names:
     const: mdp0-mem
 
+  resets:
+    items:
+      - description: MDSS_CORE reset
+
 patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
diff --git a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
index 0dca4b3d66e4..1a42491efdbc 100644
--- a/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dpu-sdm845.yaml
@@ -57,6 +57,10 @@ properties:
 
   ranges: true
 
+  resets:
+    items:
+      - description: MDSS_CORE reset
+
 patternProperties:
   "^display-controller@[0-9a-f]+$":
     type: object
-- 
2.35.1

