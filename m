Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3051550A47
	for <lists+devicetree@lfdr.de>; Sun, 19 Jun 2022 13:33:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235421AbiFSLdo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 07:33:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235595AbiFSLdn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 07:33:43 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1351E11A22
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 04:33:42 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id v1so16187238ejg.13
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 04:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gzwSi26kgANkAlEKRYap+NCAHJ4FDv7RKV3gyml+oZ4=;
        b=N9NJrcZmpbNRtbzmrOSzC1g43nYZgHUHXO56Y++wJZFbMETQIcwn5PETLkGyKacdd/
         lP1ZhkybqL9/QbWtrPGH2yfuAych0rl/ZawKiN5b4NFcynGLUfXRFYTk/uyJKGcaHNiS
         rZ3ROqtYVCDXd4Lrfy0QvHYKibbJR/alnubrTin0m0wLPZPF583hjS5pvzUKe+wF55Nv
         XjTt5HR1IBEhs5gSs2EsGSvJDddP5mGrV5jlunrE9O1VD5xQKCE43Yoe264bSt1qz6zB
         nfohJrrxpgc0i/NdaJRVNCQfCQjaknKDNRMtFWRA9gHZpxZWbqN1o1dUVV9VXgUyd6Ll
         Msow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gzwSi26kgANkAlEKRYap+NCAHJ4FDv7RKV3gyml+oZ4=;
        b=Aglh18Ud5W+q3JOvFmAddvYBqqnksTev2HNrwDqj8LLrQUTtDfRmLZS37wqRp/0uuK
         swPCroHhIjimpiZUgyKCVXzA7vr1ALsdPbmnqbd/MrE2OZYuNZ7DdH7FY5YTp8SQX1oV
         yIP7Bpj6a3CEILhsOCR/gTBnsxyxUMFv9Z6mgJS0pr+k+uD21Rsj9zGdVC1E7y5Mi6vV
         hUxJCavFuD648muygHwNYzpyxz1sjdMVfwsDIWPGMOWRPIQNSxKxt+jHd5V+rIF3iXly
         kg+pJigJgDkvxulWiTtWvw5fXyuJR0F8eWbXWzWUqFmQ8c/ZmpIwg5jivX21wu6mn1py
         C/Ow==
X-Gm-Message-State: AJIora+9zQqqpylnHWyTa3X6TKNYi18YW3H8xKyWITRtxvwH0C16cq5H
        g2YMu5scz7Ly+TxEdlwvt8/8aA==
X-Google-Smtp-Source: AGRyM1tWBL6BXlRJ8aXxuhVL2aUBW7hRs6lbszHJQK6AclrQOieohBjws/JXHuhaxFHX/fk3lbHu2g==
X-Received: by 2002:a17:907:1b20:b0:6da:649b:d99e with SMTP id mp32-20020a1709071b2000b006da649bd99emr16482762ejc.712.1655638420564;
        Sun, 19 Jun 2022 04:33:40 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id m10-20020a056402430a00b0042cf43e1937sm7949927edc.75.2022.06.19.04.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 04:33:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Sean Anderson <sean.anderson@seco.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: phy: make phy-cells description a text
Date:   Sun, 19 Jun 2022 13:33:25 +0200
Message-Id: <20220619113325.21396-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The description field is a string, so using YAML inside phy-cells
description is not actually helpful.  Make it a proper text.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/mediatek,tphy.yaml           | 14 ++++----
 .../bindings/phy/mediatek,xsphy.yaml          | 10 +++---
 .../bindings/phy/xlnx,zynqmp-psgtr.yaml       | 32 ++++++++-----------
 3 files changed, 23 insertions(+), 33 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
index 4b638c1d4221..bd0e4c4915ed 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
@@ -154,14 +154,12 @@ patternProperties:
       "#phy-cells":
         const: 1
         description: |
-          The cells contain the following arguments.
-
-          - description: The PHY type
-              enum:
-                - PHY_TYPE_USB2
-                - PHY_TYPE_USB3
-                - PHY_TYPE_PCIE
-                - PHY_TYPE_SATA
+          The cells contain the following arguments::
+            - The PHY type::
+              - PHY_TYPE_USB2
+              - PHY_TYPE_USB3
+              - PHY_TYPE_PCIE
+              - PHY_TYPE_SATA
 
       nvmem-cells:
         items:
diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
index 598fd2b95c29..7262b8e184e2 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
@@ -100,12 +100,10 @@ patternProperties:
       "#phy-cells":
         const: 1
         description: |
-          The cells contain the following arguments.
-
-          - description: The PHY type
-              enum:
-                - PHY_TYPE_USB2
-                - PHY_TYPE_USB3
+          The cells contain the following arguments::
+            - The PHY type::
+              - PHY_TYPE_USB2
+              - PHY_TYPE_USB3
 
       # The following optional vendor properties are only for debug or HQA test
       mediatek,eye-src:
diff --git a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
index 79906519c652..7083eddb467c 100644
--- a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
+++ b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
@@ -18,25 +18,19 @@ properties:
   "#phy-cells":
     const: 4
     description: |
-      The cells contain the following arguments.
-
-      - description: The GTR lane
-        minimum: 0
-        maximum: 3
-      - description: The PHY type
-        enum:
-          - PHY_TYPE_DP
-          - PHY_TYPE_PCIE
-          - PHY_TYPE_SATA
-          - PHY_TYPE_SGMII
-          - PHY_TYPE_USB3
-      - description: The PHY instance
-        minimum: 0
-        maximum: 1 # for DP, SATA or USB
-        maximum: 3 # for PCIE or SGMII
-      - description: The reference clock number
-        minimum: 0
-        maximum: 3
+      The cells contain the following arguments::
+        - The GTR lane (minimum:: 0, maximum:: 3)
+        - The PHY type::
+            - PHY_TYPE_DP
+            - PHY_TYPE_PCIE
+            - PHY_TYPE_SATA
+            - PHY_TYPE_SGMII
+            - PHY_TYPE_USB3
+      - The PHY instance::
+          minimum:: 0
+          maximum:: 1 # for DP, SATA or USB
+          maximum:: 3 # for PCIE or SGMII
+      - The reference clock number (minimum:: 0, maximum:: 3)
 
   compatible:
     enum:
-- 
2.34.1

