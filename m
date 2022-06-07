Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F17015404D6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 19:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345770AbiFGRTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 13:19:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243766AbiFGRTJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 13:19:09 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E18C104CA7
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 10:19:03 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id n10so36593174ejk.5
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 10:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2ErbpkFNc4nrXWT0vk7hcXkEhs18HUa+oJdV7+x5uxM=;
        b=tRWODkZr6JdzBrSHY5RPTp7BfvJwnY5jCJgkEgrHJipbZUt3lV3Qx/gfoxWPwwq5pR
         5E3Cly7AFVruBNYVYZ2DEBIsjbBDoK0Xsa4wLDDJeiYnpUxDYfp3X9ou89mZAugNaC07
         z7VQOu2tKwzn5iM5RG9r+xOvr5plK9R61PQGoRgyIogdRIs66ectwCU3Ei2wrdD2Tnq/
         mvjD60w2XFs8RzuOy2ISpEu7JEoXtpbWds7cX6YyoeUdwQCE8M+owJbH3yJp4AgIu/NN
         kRXz0CWGf89nkeeNS8rSt4oTA0j6BH3s8FYM5ViOcTTFDHn0YNFndgYpVlRM32xQtGms
         /jkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2ErbpkFNc4nrXWT0vk7hcXkEhs18HUa+oJdV7+x5uxM=;
        b=IrWLETvhKlCjHt5H8nHXPHVK8YkG1KPFk/5By/PDgyUOHjUYkqT/UPMOFZsk3xDjXV
         B6EBGh8fZWkERYwMdLShjUOwGVXyv5S8oBYbKy39yCbg0gQyfWwS2wRGlgtlj2HBG3re
         QnbIvd5nZcR4YWgycz7tyb0aB8giIidf7C7imrQT2VODkl/JIrOCfb5E8ilzaMlkbyFA
         HR5S+H9ZYhZgwGs7rWiv89RCthXzZc7v7VgABffGQv6riYgG9Ra+suo/tDnwquPqtH0N
         Z0vU5vUPWKAFu0U8BingfaSFfKv2/gI0/9/EDNghs9/jzctS0tqXtNXpSX9pGMsoJTq8
         sV0A==
X-Gm-Message-State: AOAM533RjbA3aCpGYwvwQ2cLxscMnLmr2UsFHHUCu/Ux7abIEqJR1Cdo
        RhZFmbpjunB1eeuFZwupctSYBg==
X-Google-Smtp-Source: ABdhPJybxx4ln/XldFEHDvHalV8aP//0GldIPG7QkCNIeoBW8EbLUxA/kxBGE8NOs1tsvO/H8tKGSg==
X-Received: by 2002:a17:907:3e1d:b0:711:dc92:e308 with SMTP id hp29-20020a1709073e1d00b00711dc92e308mr5899185ejc.235.1654622342671;
        Tue, 07 Jun 2022 10:19:02 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i7-20020a170906444700b0070e238ff66fsm5876540ejp.96.2022.06.07.10.19.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 10:19:02 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Brian Masney <masneyb@onstation.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 11/14] arm64: dts: qcom: sc7280: add simple-mfd to IMEM
Date:   Tue,  7 Jun 2022 19:18:45 +0200
Message-Id: <20220607171848.535128-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
References: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
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

The IMEM node has children (PIL) which should be instantiated with
simple-mfd.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on HW. Testing might be useful.
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 11fe2ed464d0..ef45cd3811ea 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -4640,7 +4640,7 @@ sdc2_data_sleep: sdc2-data-sleep {
 		};
 
 		sram@146a5000 {
-			compatible = "qcom,sc7280-imem", "syscon";
+			compatible = "qcom,sc7280-imem", "syscon", "simple-mfd";
 			reg = <0 0x146a5000 0 0x6000>;
 
 			#address-cells = <1>;
-- 
2.34.1

