Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 794C865FC81
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 09:12:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231766AbjAFIMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 03:12:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231982AbjAFIMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 03:12:18 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 464A780AC6
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 00:12:09 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id d17so603951wrs.2
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 00:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5ZChit4SZ+t74Z1lauaylK93+vgHZQXN9aZ0NlWhuSs=;
        b=HpBtQu2GClSSM2B7TEgboivQH02ii0IoAFcgvZNsqHtkZSBJ7FSQYKgzEZ7lxmZ7Jx
         ewJoVsNhj3rBJOqtzs1Kan/1Yjyu/n826wfVWG21GS9SH/yfAppou18TH1nxySieuu2p
         Ca99wH9PXRPIc2Y5kh/8ysVX793jwqKkNVrCx2lFE87hKaNmL/33ddR2HyS0MI8qvs/M
         zsasO4MqvBgY0Gg8QeW8j58AKUpRgRmsc5NXxP2P399+ov7HGTWpXN9YDKteswx6WtQE
         FEPN0Rbwe8pG97B/9xmpL3x6GvsfZ4obzK05nG1VsaAuH8c8mjetJDqY4J3X04Pq+zLn
         z8lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5ZChit4SZ+t74Z1lauaylK93+vgHZQXN9aZ0NlWhuSs=;
        b=fT8grZ0PVwx3+xc/YvkxIDlGiRF/ZI4A4D+hHODzh+qYb7oLQEeAuoFl6HzIk66JOF
         j+XqXb0QXOIOMsDh+w161liOlq97cPHMW43ASJbyFNJ1xUcGodKocl82WdQQv0YoHb2w
         E6HFCvpgSJUqNkPaY7X35/LIZaZgPGlu22VFSwBfWHt3TbQnh9cQhy0d8nyT07iI8gGI
         oIn0JG+jbBpA64YiI2SQN4E6SFQb9pf9Y1bpRkNfL1lwZSiOMzEhM6c8RZN1JqMv9vwY
         t54+y00Gbh2yMr6cONwXfNlSowOQNFf57zjxXuaT77e7RAutpLOMLq67sz8/3nhn9U3H
         LT0g==
X-Gm-Message-State: AFqh2kr7GJfn/Y4mPyCrwzlPN5zgHPE92e21xxlk1jl+w5uO4sY1b9Qz
        k6NV3goQPLAD6lxSmayrQNAOVg==
X-Google-Smtp-Source: AMrXdXsG2zv9lit5Hl81g3vtSOCu3Zp+W7x3IscChnM+Q5qA7PUkTJz6g+QkCH6Yn5zPD2nBgGOB9w==
X-Received: by 2002:adf:f0cf:0:b0:291:ab:1a43 with SMTP id x15-20020adff0cf000000b0029100ab1a43mr13729612wro.40.1672992727847;
        Fri, 06 Jan 2023 00:12:07 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t19-20020a0560001a5300b002362f6fcaf5sm451545wry.48.2023.01.06.00.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jan 2023 00:12:06 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: PCI: qcom: add oneOf to compatible match
Date:   Fri,  6 Jan 2023 09:12:01 +0100
Message-Id: <20230106081203.14118-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Prepare for extending compatible list by adding oneOf keyword.
No functional changes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Split from previous patch as Bjorn requested.
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 39 ++++++++++---------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index a5859bb3dc28..09a4e3c330f1 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -16,25 +16,26 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,pcie-ipq8064
-      - qcom,pcie-ipq8064-v2
-      - qcom,pcie-apq8064
-      - qcom,pcie-apq8084
-      - qcom,pcie-msm8996
-      - qcom,pcie-ipq4019
-      - qcom,pcie-ipq8074
-      - qcom,pcie-qcs404
-      - qcom,pcie-sa8540p
-      - qcom,pcie-sc7280
-      - qcom,pcie-sc8180x
-      - qcom,pcie-sc8280xp
-      - qcom,pcie-sdm845
-      - qcom,pcie-sm8150
-      - qcom,pcie-sm8250
-      - qcom,pcie-sm8450-pcie0
-      - qcom,pcie-sm8450-pcie1
-      - qcom,pcie-ipq6018
+    oneOf:
+      - enum:
+          - qcom,pcie-ipq8064
+          - qcom,pcie-ipq8064-v2
+          - qcom,pcie-apq8064
+          - qcom,pcie-apq8084
+          - qcom,pcie-msm8996
+          - qcom,pcie-ipq4019
+          - qcom,pcie-ipq8074
+          - qcom,pcie-qcs404
+          - qcom,pcie-sa8540p
+          - qcom,pcie-sc7280
+          - qcom,pcie-sc8180x
+          - qcom,pcie-sc8280xp
+          - qcom,pcie-sdm845
+          - qcom,pcie-sm8150
+          - qcom,pcie-sm8250
+          - qcom,pcie-sm8450-pcie0
+          - qcom,pcie-sm8450-pcie1
+          - qcom,pcie-ipq6018
 
   reg:
     minItems: 4
-- 
2.34.1

