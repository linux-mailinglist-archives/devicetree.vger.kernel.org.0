Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88D266F8B71
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 23:42:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233663AbjEEVmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 17:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbjEEVlq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 17:41:46 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A08B15BBC
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 14:41:03 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2ac8cc8829fso9040351fa.3
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 14:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683322862; x=1685914862;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Cgx0VgjSWF36kTiyIdxe2LPUi4kT2lQKkyyJC5x69s=;
        b=Gccfie7GMOugjyiUVru/AmbzWeTgn3lIDnsiRORE1BLhhAhDo2q5OeGjUTPqdrkPBV
         42ByFze8DoBI5q1FCMCT3Iqs+bmFU9i+JGnGLiFcDLLR+U6BR/AlJJoHqfO5asrH7mPH
         tUCk2VtfCESPRGvyE+inqnMfl0UcEkoyWEGYVTdWp4vxAJonCDVB+us6Iw92/tmXMKch
         lHBlg/1zA/bh25rGZ61FMJcGz6CSwAPlGrSppo1mdMsb5EsYAZ3p1Ep7bEJedfnQfzJW
         ihCWZ0yivoUcwJphIuwej6UOCSM9grvNt6HRpYB4LNcg3PISN324cVw3HYfU0OzB2t6h
         AIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683322862; x=1685914862;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Cgx0VgjSWF36kTiyIdxe2LPUi4kT2lQKkyyJC5x69s=;
        b=FG6bt4q99aK4cfR/+gwT+EgwFOU2r1UxlMabS/kMS9BzM6WyrtVRYJbQP6hDxQ06/T
         41nlcB+R8LjO+5WoHQV/6H2G2v4XKvE2SZWJ3J/XBEhepic/8CNIhwO0OpPbKsPj6Dep
         CPgmnA1jHiAx/H4UY4lv72Pk0GVWu19irlJgfvqxPQveIb0JIMaXIMoE6S6cML/XFngc
         QLu6qc7dg4f5xNpQEW4KYVW3fVBP5Wsm1VUsryJYsT5ZMmnosiwrxK2bFPbcJdmWUMi1
         u3f0YWqNdur9qM84z9aVYPkq7OrKZbEb7ITzyD/NG71Ov60fXFsggvMhZcNjxvgSsAEn
         Yctw==
X-Gm-Message-State: AC+VfDzcfxvQywKc19iRRVpUTXp088y448/11s5NdDXsY9h02jSePyPq
        PMa8+70tVDOYM/XECMNEZbMVyA==
X-Google-Smtp-Source: ACHHUZ4+K+GhXhvLSXj3jdIBiVBVY1fOjuTIzZpxArJ+LOicJ5uIxrApQrg8YtPi+bMU1mnhxFICzg==
X-Received: by 2002:a2e:9056:0:b0:2a7:9a7a:f864 with SMTP id n22-20020a2e9056000000b002a79a7af864mr953234ljg.5.1683322861925;
        Fri, 05 May 2023 14:41:01 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id n12-20020a2e720c000000b002a776dbc277sm126453ljc.124.2023.05.05.14.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 14:41:01 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 05 May 2023 23:40:37 +0200
Subject: [PATCH v3 11/12] iommu/arm-smmu-qcom: Add SM6375 DPU compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230411-topic-straitlagoon_mdss-v3-11-9837d6b3516d@linaro.org>
References: <20230411-topic-straitlagoon_mdss-v3-0-9837d6b3516d@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v3-0-9837d6b3516d@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1683322839; l=919;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=hMmDD+SgonZLP46KBM866xQojXqpPqEZ25ow2fxLp/E=;
 b=zckkfPprq0LAaufGJdyd08HwqQ+DvDuj3pjCVufSbw/R95EDd1/WxZUQAiuD3r3x7v5RBq0Ea
 rvoL+U9hlerCFPzxbe1MTtGhJLaUTYkcG44IEB3EaL4dsVNizhDuuO+
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the SM6375 DPU compatible to clients compatible list, as it also
needs the workarounds.

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index f945ae3d9d06..d7d5d1dbee17 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -253,6 +253,7 @@ static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
 	{ .compatible = "qcom,sc8280xp-mdss" },
 	{ .compatible = "qcom,sdm845-mdss" },
 	{ .compatible = "qcom,sdm845-mss-pil" },
+	{ .compatible = "qcom,sm6375-mdss" },
 	{ .compatible = "qcom,sm8150-mdss" },
 	{ .compatible = "qcom,sm8250-mdss" },
 	{ }

-- 
2.40.1

