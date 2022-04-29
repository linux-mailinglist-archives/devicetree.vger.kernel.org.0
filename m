Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 09A945156D2
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 23:31:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238006AbiD2VeH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 17:34:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238034AbiD2Vd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 17:33:58 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2BCE606F9
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 14:30:37 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id bq30so16209028lfb.3
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 14:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DldukvjOY2Z/KNrBxZEZWOyWwCLmTZVbU9USIroNwIc=;
        b=du187+5h6Vapo5I/b20YlrhWDPr5S8dHAKCGu5HqawLiUK5A2+cYWCnThjLMxMLY6o
         eIC/OwJfEdLZCs3ow5aEoT0cxV9F71WCStOPHUkE6JkHfA4F5aPEKzdnWvqg6vAp4tnU
         ZoVY0cfiiHOVPEaWDeBGotioNrpXHc6QK0H0CyGTYa4t58GPB0uOyQef12rE2XygQjM/
         E5FEWoR60gNJSZ7DuXObdY5miz9hmPYAFSJRa+FiWyL9iIZBsx+R7Jal0d7CpjpQYqac
         K8bay3audjWpwL5tKIBSVyLlAk7zXYLJcX3IAnV+exWPpVd1g2ngzVf1ln+cT956cDg/
         dutw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DldukvjOY2Z/KNrBxZEZWOyWwCLmTZVbU9USIroNwIc=;
        b=sHJ15WZ7foGv1uX817PfBenWQ5j1LL6tgWE4a9yoEXcwwem/EgXFsg+rA/LJ2jGjzM
         28xulv1CYY+aJ5RS13rL2qaxWDCkXOUAryf2KHYa1uCgF3a0Bvcx5peqqC4MUCElL47q
         92EEZXT7Ek+jnHH1JDDYsjgV3p7/qLi6dku1VDmAqKzA8f8ImktwR8cldlH+tKxmaQrL
         KBpkxXRZ4zREYmrG9rXqimTHUUczaxO3DCshXWNj6VbNWN90Z7xb5MkoXHHQPRDsENCR
         rHoWiDd8fklmggX5GC6e23guNqNH080ttEhHakgeX/PzWfAo4iXUQ4cb0y/FZKuu0Voy
         olOQ==
X-Gm-Message-State: AOAM531NiTbh51zjE7rp5iJVZZ3I4m0/W0rGAcTNEEBtTGSkkM/YkJ3Q
        GBj+Ec//D7A6YJnePUmcSoMFBg==
X-Google-Smtp-Source: ABdhPJzk96/IzcZCj2TKx7e0p6K4egQ8PD7W8AyUtj4U14KIK8h1Uj3Zc4cfppcjWR9y8o/p3xVB3Q==
X-Received: by 2002:a05:6512:260a:b0:43d:909a:50cf with SMTP id bt10-20020a056512260a00b0043d909a50cfmr828853lfb.195.1651267836168;
        Fri, 29 Apr 2022 14:30:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 11-20020ac2568b000000b0047255d21182sm28589lfr.177.2022.04.29.14.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 14:30:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 4/8] dt-bindings: PCI: qcom: Add schema for sc7280 chipset
Date:   Sat, 30 Apr 2022 00:30:28 +0300
Message-Id: <20220429213032.3724066-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220429213032.3724066-1-dmitry.baryshkov@linaro.org>
References: <20220429213032.3724066-1-dmitry.baryshkov@linaro.org>
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

Add support for sc7280-specific clock and reset definitions.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index e91ae436cafe..0b69b12b849e 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -25,6 +25,7 @@ properties:
       - qcom,pcie-ipq4019
       - qcom,pcie-ipq8074
       - qcom,pcie-qcs404
+      - qcom,pcie-sc7280
       - qcom,pcie-sc8180x
       - qcom,pcie-sdm845
       - qcom,pcie-sm8150
@@ -177,6 +178,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,pcie-sc7280
               - qcom,pcie-sc8180x
               - qcom,pcie-sm8250
               - qcom,pcie-sm8450-pcie0
@@ -412,6 +414,36 @@ allOf:
             - const: pwr # PWR reset
             - const: ahb # AHB reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-sc7280
+    then:
+      properties:
+        clocks:
+          minItems: 11
+          maxItems: 11
+        clock-names:
+          items:
+            - const: pipe # PIPE clock
+            - const: pipe_mux # PIPE MUX
+            - const: phy_pipe # PIPE output clock
+            - const: ref # REFERENCE clock
+            - const: aux # Auxiliary clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
+            - const: slave_q2a # Slave Q2A clock
+            - const: tbu # PCIe TBU clock
+            - const: ddrss_sf_tbu # PCIe SF TBU clock
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
   - if:
       properties:
         compatible:
-- 
2.35.1

