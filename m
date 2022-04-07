Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8F364F7B97
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 11:27:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235762AbiDGJ3d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 05:29:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243764AbiDGJ3b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 05:29:31 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3201E26A
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 02:27:32 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id d10so5738131edj.0
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 02:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=j31mE7QsLjfJV84r2B169BqJYqRMBSDJ1cFRKWHP/6k=;
        b=WePfAiCFcr45urrnMjw6CBo3C3FGjLMd7wUWuDOtFy+JmApVkUxLcJopH3jVq1tvPU
         L+QA9RawpAAHKg179DzDjtRi1hw16O4mmSPU/YWIhEJEJlLuUCVcdk2ijsECcTRT5Mjy
         JdWyxo7ufbDQmWHZIF1SXaX6EBnpg9DpcBBu3sLDxjPlmzbjAtSlWsfj1uK0ezAhGTxr
         PEcjLrZNGzCMNdgoD4EiI888RuHKOxhj657eozFO75JHek93zwKeff2xP6COOxDOvwlt
         RZyOHwyxJjr/DF/RELot5vBBWxZfIKz1KaNeOAsi0zDP/qH9OrvWj32s0/B+qbzpZtdD
         Sfgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j31mE7QsLjfJV84r2B169BqJYqRMBSDJ1cFRKWHP/6k=;
        b=WeHjCsMghCrTAor2RWegpkwE+7DsSOQbKzl/klRR4MyjRFHo+5gln+D6KXuvd+GC28
         Ni+ADMS6IOdrioojnCIpES5HgP2wbMIvC7+5c13E5RaoYqFe/ImvkLHqsejLqM6u0fjJ
         QQq9DB3ZacH8AbQH909Lz/I39hKjeb5hY6Z5qnrjkEOxsJQQHTWVzjr/skK/sz2DfMFl
         PIXNlPOHmw142GY2KI8Iu6tmUHWkWRKj8VjqaozIIKfMD7y9Y/+yzajJMLorYfZr9ipa
         oSK515qu7PVgkw7Gf3Ggiy0bIK02Fu7AneldtQ2QxP6f89YcIoyl3i46qq8N41PVVUOY
         JYRQ==
X-Gm-Message-State: AOAM5305znA6GFuVS38lcdUPZG2+1cS9ELCn/GtYx6XEOU3Epf9uVOhK
        CK5HLs7DgAVfURHNw0bkZQXKZA==
X-Google-Smtp-Source: ABdhPJy0nv2OT3O9Um0ycKjLoBKL176k7jpKbyWweSqC9inEPdwEWEoevR7Hk6LATIkokMcmXlRrnA==
X-Received: by 2002:a05:6402:b23:b0:41d:7a:2392 with SMTP id bo3-20020a0564020b2300b0041d007a2392mr3704154edb.188.1649323650853;
        Thu, 07 Apr 2022 02:27:30 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id s14-20020aa7cb0e000000b00410bf015567sm8649435edt.92.2022.04.07.02.27.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 02:27:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH v3 2/3] arm64: dts: qcom: msm8996: correct UFS compatible
Date:   Thu,  7 Apr 2022 11:27:24 +0200
Message-Id: <20220407092725.232463-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220407092725.232463-1-krzysztof.kozlowski@linaro.org>
References: <20220407092725.232463-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm UFS bindings require to use specific (qcom,msm8996-ufshc)
and generic (jedec,ufs-2.0) compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index f0f81c23c16f..fa491f2271ff 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -1730,7 +1730,8 @@ pcie2: pcie@610000 {
 		};
 
 		ufshc: ufshc@624000 {
-			compatible = "qcom,ufshc";
+			compatible = "qcom,msm8996-ufshc", "qcom,ufshc",
+				     "jedec,ufs-2.0";
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-- 
2.32.0

