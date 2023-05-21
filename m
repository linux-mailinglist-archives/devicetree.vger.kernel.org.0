Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8265970B004
	for <lists+devicetree@lfdr.de>; Sun, 21 May 2023 21:52:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbjEUTwF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 May 2023 15:52:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbjEUTwE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 May 2023 15:52:04 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D4E9DE
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 12:52:03 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f380cd1019so6005032e87.1
        for <devicetree@vger.kernel.org>; Sun, 21 May 2023 12:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698722; x=1687290722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gf5i76Fimoq5YKoDfPb3rMrH6QNnLwlkbdruP9SSt5Y=;
        b=ThdvYDCDAdjHiLl/yLo9UQkdplinxigU1NA0qxquQBYNnqCR2QyBfL1yCiP8v1RSIN
         MXIcqBjJJmKZBV23XOvKxhRTr12+NSYb9peggD6BXY/Fea/2wT0XMYZtbxwspdW6B6Cg
         yRLNQdMupSam7cF/YlRz50pkLovZQlAfqh9b5K8nqxMpFjK8Hx+n3v5OPxz7tAZBEIvX
         mB3Ji6kdOsHhvYo3iobYMunDWLB4+BBYqpmJJKojdvuYXTz4l9Yu1IRzce9EHMbdQnd2
         8LSxBM+aAh4bKlMQ3YGY9toiL6DMB/fGMhQFVbe5U5WdlwPEmKT86DsKrP6uUQvvMDFx
         i/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698722; x=1687290722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gf5i76Fimoq5YKoDfPb3rMrH6QNnLwlkbdruP9SSt5Y=;
        b=bSmXJ0k2VVnog7oVVgHQVoog+oj6lZ6OTpcE152564br2kYjVbOPd+/2AskhBfyh/7
         Y8OJtk2lSncF93h1/aqHdw1VFJRHRV/ghJjyQVRiWU0+k2P3m6R+nR2+csdj2w7oBaGp
         CLsZqOSdJrPrhzwvtslOBtEyA2a0xIXzYR7IcSO9KNtzlYWiTLbZhgEJ5U+6CgecEW6z
         8vc2lIJCvOl0R7G5gn3o8rkVYpHRUPEnkcpV9cUE5poO85ov0Uy58AzSgrezPuvv/ZMF
         u5RLlE35S2cEEoJRSefbox5WnXD8EIhelucBnLbZNgV61N2J02aFW8C7ew1HjN5MD9sY
         fzoA==
X-Gm-Message-State: AC+VfDyFHnbMT0Fl0s3YScHPj2lG8EQE7AJP4xLtZLvMF0mJmAvES0r2
        2V2F26yLJcqkNIQRxcaKk849ow==
X-Google-Smtp-Source: ACHHUZ5M/2izSORC8u2EJNQD6GwQmFNrSUGCtL3QvvEKFvA7na48OSROhx12vi7o71pIBgkmrhE3HA==
X-Received: by 2002:ac2:5225:0:b0:4f2:455d:18bd with SMTP id i5-20020ac25225000000b004f2455d18bdmr2470689lfl.16.1684698721815;
        Sun, 21 May 2023 12:52:01 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m11-20020a19520b000000b004f13f4ec267sm699430lfb.186.2023.05.21.12.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:52:01 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Subject: [PATCH] dt-bindings: phy: qcom,qmp-usb: fix bindings error
Date:   Sun, 21 May 2023 22:52:00 +0300
Message-Id: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
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

Merge two allOf clauses, which sneaked in in two different patches.

/home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with value "[]" (original value: "[]")
/home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: [error] duplication of key "allOf" in mapping (key-duplicates)
/home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with value "[]" (original value: "[]")
/home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml: ignoring, error parsing file

Fixes: 2daece5eb51e ("dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer one (SM6115 & QCM2290)")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 28 ++++---------------
 1 file changed, 5 insertions(+), 23 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 2c3e2ede6671..f99fbbcd68fb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -84,29 +84,6 @@ allOf:
             - const: cfg_ahb
             - const: pipe
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sa8775p-qmp-usb3-uni-phy
-              - qcom,sc8280xp-qmp-usb3-uni-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 4
-        clock-names:
-          items:
-            - const: aux
-            - const: ref
-            - const: com_aux
-            - const: pipe
-      required:
-        - power-domains
-
-additionalProperties: false
-
-allOf:
   - if:
       properties:
         compatible:
@@ -130,6 +107,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
     then:
       properties:
@@ -141,6 +119,10 @@ allOf:
             - const: ref
             - const: com_aux
             - const: pipe
+      required:
+        - power-domains
+
+additionalProperties: false
 
 examples:
   - |
-- 
2.39.2

