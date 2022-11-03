Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87FF2618CC4
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 00:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229882AbiKCX04 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 19:26:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230373AbiKCX0x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 19:26:53 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 632EF1E2
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 16:26:53 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id p184so2635166iof.11
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 16:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ohmDTFUOiW1LyAxV3uDApErdTrUXX1i+ntWTEQeQjr8=;
        b=aNYK5b/3kxf+aOrZG2yNA0vsgLLaIGHSvzsd1HsFnACLhJKwVa8sKXF+hWUmAOXe+x
         Qh9jdyH5yFXMFgWfzSm6mLsyOb2afOy8/lc5hKPqoE9qgkd7fsyONF7zlNWWppc0z5yf
         JffjfCo3gzvChfdX1HpRVOscDik2AjqYoNaeleXNEqONDzYy9ld2mCKH6b0MtGSsOj99
         4aB2LMSzeXFuCPvKp915nylnXADhEHGHN64MWB1X8SWnD7aBF5RICIIfQf/hMejG/4nG
         J3s3zSWv8oEqbVlR3P5uEf2zkd/YvNli1W4MCakEVjsU0Jd1/JM4UijfX+bXJu8zjxmJ
         qCOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ohmDTFUOiW1LyAxV3uDApErdTrUXX1i+ntWTEQeQjr8=;
        b=vMitQMMCOZOekk4W/HPp+xUy+brWvzph38XuurBgzBoAsVT7miUSvyAx+6frfw7EPV
         A7n12Wq2yS8XStIgOLIH/j0uyNDrK46c0JkyEK45VwRIpc1gRMVy5rLmiAciGghnH1yp
         mYv7i5e7vj/Mz1vAYM2Dfb2URWK1yxod2kGyyr81ConbOTP6vg7WX6xuc8teI8BfSCxW
         AVpXwwMlzaM3R7vdaXErNZJaZryNMnv7s+KxVTQwLKGDkqeIBVObBQARlpw03Icpkfnu
         7izVfQrlVH8o/Hn8zFmdRkKh1s55hmr6nr2eZndJNslALZl1sJ5RXQY3EinknltL10Mn
         z1Jw==
X-Gm-Message-State: ACrzQf0qLbb03K3wfMtJyri+Rl1NcBDCCEGC9rNTLQS2fzHxINEKnCgO
        SDU0p8L6+tDZFZQfNWobR+U=
X-Google-Smtp-Source: AMsMyM4Oo3hgepPcOeOftvCOU8Kuz/3EEh9yi+s+zFHU/43gUyWRZt2q2o0MWTMqVR2lSRhR8y6RlQ==
X-Received: by 2002:a05:6638:478b:b0:375:bbb:f642 with SMTP id cq11-20020a056638478b00b003750bbbf642mr20042428jab.129.1667518012782;
        Thu, 03 Nov 2022 16:26:52 -0700 (PDT)
Received: from localhost ([2607:fea8:a2e2:2d00:f1f0:c4d7:e39e:e2f])
        by smtp.gmail.com with ESMTPSA id f4-20020a02a104000000b00374ff5df5ccsm642866jag.167.2022.11.03.16.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 16:26:52 -0700 (PDT)
From:   Richard Acayan <mailingradian@gmail.com>
To:     Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Vinod Koul <vkoul@kernel.org>, Emma Anholt <emma@anholt.net>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org
Cc:     Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: iommu: arm-smmu: add sdm670 compatible
Date:   Thu,  3 Nov 2022 19:26:31 -0400
Message-Id: <20221103232632.217324-2-mailingradian@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103232632.217324-1-mailingradian@gmail.com>
References: <20221103232632.217324-1-mailingradian@gmail.com>
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
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 796dc7d4dbdd..f77597e8ed39 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -39,6 +39,7 @@ properties:
               - qcom,sc7280-smmu-500
               - qcom,sc8180x-smmu-500
               - qcom,sc8280xp-smmu-500
+              - qcom,sdm670-smmu-500
               - qcom,sdm845-smmu-500
               - qcom,sm6350-smmu-500
               - qcom,sm6375-smmu-500
-- 
2.38.1

