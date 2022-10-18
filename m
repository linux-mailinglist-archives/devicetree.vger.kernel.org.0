Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E6FE602039
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 03:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbiJRBL1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 21:11:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231376AbiJRBLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 21:11:07 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B5231172
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:11:07 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id b79so10444967iof.5
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 18:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yWeBaf4vtBh0cPJaX5k0nGek3oH+mu0hsNkHok4Em60=;
        b=mkcuKsYn0rXGemNDvGkuFupOKalmcJ0P60eAkS/9oYH0wzoZs1Xs+679Fpq30y2+Jb
         dM4Pn8HMhjimex8la124juRsLZbDiUS5uD/AJj0fiHrvJ/cWUxAjhFy6BCfq/O0GQ/zJ
         IxlBjWVLhhAJ7miKYxqn0AJaqVkliwkcvWS75pWo4KTfJs6H3DEbPSMOsUCKatoTmDZT
         v04DQEvnafTWuI1icRCkLtdN0p4GzxDMAEGLy+1/TCFNjCSv6VbppeLUvLqybPxcNq7U
         vGECd+puBbGsIfdF9BZgz99PhmN+exrFrkqJ6fbjxWxG0KzlUZkibVadRPJTy7Fu41hN
         920A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWeBaf4vtBh0cPJaX5k0nGek3oH+mu0hsNkHok4Em60=;
        b=FzLSaTGFvP/RudPMFOMo69+oZG2trVxoQLmxKWA+p1/hL9249arTKGubpbZLqZPsqS
         r1w5c+SN4rzGp4BDI7k/2F/sSZKd4F/kmO2aTOdlBZGO1oOMPw/fQl4UnL+l5OINV4OV
         Q+/GXv1ypPqldnGmNWzQFNjg5ago0Twu0sKEYw9HUclkjiZLgBrHPAHL7G2r/X5b22yx
         NjuED61L8dHUq4E7AaoIrBdXI4vnpL1hCrYrcPDtXMT/PPeMn6vYVRMc0gVd0MZiyMtb
         mA+qtxo2LkWttuNK0gmTZI+UaYeNW+Uf/WuUwU8D9AQAnC3CTTqBpurHCfJkYDk8JEXz
         aBQA==
X-Gm-Message-State: ACrzQf3xipnSdQ/c8La8h+srUtBkM4fhBViVeb4Wi6OKOVTxDDyvmcv7
        vP99Sw/iGfDT15cyQlRjLG4=
X-Google-Smtp-Source: AMsMyM5qtwsG4KsLgj7Pwc3v7Oq9oNHVveYH0vvYBdKuRfvk4/E/re3oXPgNRb43FCznKWskQZcBRQ==
X-Received: by 2002:a05:6638:3f0d:b0:363:ba76:7397 with SMTP id ck13-20020a0566383f0d00b00363ba767397mr527983jab.177.1666055466693;
        Mon, 17 Oct 2022 18:11:06 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00::4a89])
        by smtp.gmail.com with UTF8SMTPSA id m47-20020a026d2f000000b003639ef62d08sm530797jac.84.2022.10.17.18.11.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 18:11:06 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     iommu@lists.linux.dev
Cc:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Clark <robdclark@chromium.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH v2 1/2] dt-bindings: iommu: arm-smmu: add sdm670 compatible
Date:   Mon, 17 Oct 2022 21:10:47 -0400
Message-Id: <20221018011048.25371-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221018011048.25371-1-mailingradian@gmail.com>
References: <20221018011048.25371-1-mailingradian@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Snapdragon 670 needs the IOMMU for GENI I2C. Add a compatible string in
the documentation to represent its support.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 9066e6df1ba1..5ad6dc64e1c4 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -38,6 +38,7 @@ properties:
               - qcom,sc7280-smmu-500
               - qcom,sc8180x-smmu-500
               - qcom,sc8280xp-smmu-500
+              - qcom,sdm670-smmu-500
               - qcom,sdm845-smmu-500
               - qcom,sdx55-smmu-500
               - qcom,sdx65-smmu-500
-- 
2.38.0

