Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5CF66F8B78
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 23:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233678AbjEEVmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 17:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233662AbjEEVll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 17:41:41 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 956345BB2
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 14:41:01 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2a8ad872ea5so26792571fa.2
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 14:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683322860; x=1685914860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ppRfvpEzKntx7DzSp5zW1I4Fc3JFfOMmEmtjxYhv2RE=;
        b=R3nz/yc4RKI+HKc8qf/CgP4sa5/occ8xEvTKS/qhoYNoPxZW7k/tEOgBf9Il8un/yP
         iRxO9fomYjGWCfknkCXi8KznES714HRBdJPqrBElSXfSlCCTrtdrYqPFsE2vKFYoTOJg
         t5DiIqJZgA3nCCL7Biv3PIRZKWmM+EwCx/lAMbZyxw9oS8Yu2MpC79CIHgKx4j+68qGX
         uI96O9JZKvl8uYUOczRzmWy/yBvpBi1s1RAvpBMvypuESFlE5w/AWQVZe4lqgT1i//5V
         3YSJhnPyZGfKrBBfc+0ErO1wkWkCWCDr6i/lEnz4XK5KXRZ7PGZMkNW6SDIivzqPzroq
         o0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683322860; x=1685914860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ppRfvpEzKntx7DzSp5zW1I4Fc3JFfOMmEmtjxYhv2RE=;
        b=GIqE5YPPZEvhYxQNy5n4BD/yLK26Pvt4GhiNMKrCbSb8K7jxDcIYqteDfhxJVaytUf
         web6wrwIJ9uH5sVLqCVdP50gpmaPI+3hDaeToqA/oqqUassbmnMbTu0gFtkY1ko7Zx5H
         eCmFscUyBCTJab9x+OYLnQxDT2EHqF1pkHzHQIdq9yyyXFyjVrH+7WrQYX5H+of8Ktjl
         r7PzQxq00wnufYp9GtDz2QsFbG5XNcqesbCp5xmRLDkUX4kM2R2esv2aG2DZchTnkl0G
         c2DjBWR76fHyGDn27/2HVzkBHpjXh0WX1c9pM/KaRqmisZ+eWBDUQlP6WL9WFT3vsFxM
         a3pg==
X-Gm-Message-State: AC+VfDx8bQg9qGTmHirdt2lZUNz1EiTD34U6kzAO/6c1TJoqEgs4AKwL
        HAqR8NMAgeIioupn5YIjuwS9qw==
X-Google-Smtp-Source: ACHHUZ5TWav1X9X/ALxvs/0XM5r7mThgrubkXZrzJkCS8NbL4zVainf3e/1qHa6k3/M1q30PkS1m2A==
X-Received: by 2002:a2e:9211:0:b0:299:bb73:fcd4 with SMTP id k17-20020a2e9211000000b00299bb73fcd4mr806540ljg.7.1683322859940;
        Fri, 05 May 2023 14:40:59 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id n12-20020a2e720c000000b002a776dbc277sm126453ljc.124.2023.05.05.14.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 14:40:59 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 05 May 2023 23:40:36 +0200
Subject: [PATCH v3 10/12] iommu/arm-smmu-qcom: Sort the compatible list
 alphabetically
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230411-topic-straitlagoon_mdss-v3-10-9837d6b3516d@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1683322839; l=965;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=9/++xt/utIOxLufVN9PZF2yMVmu78Xo8NRamuKy95SI=;
 b=W4vng8UwOpFtLvkhYgHEBma6qHU974GMhSHhkYHxlHjBzkNdxo9TfDuc1S6Rp7aMdSC9LKIwn
 HplM/nY9V4gDWs9MiUk4EMJk6SU/76Otxvj2rOjLu76AsmwlZtfkUpn
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

It got broken at some point, fix it up.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index ae09c627bc84..f945ae3d9d06 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -251,10 +251,10 @@ static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
 	{ .compatible = "qcom,sc7280-mss-pil" },
 	{ .compatible = "qcom,sc8180x-mdss" },
 	{ .compatible = "qcom,sc8280xp-mdss" },
-	{ .compatible = "qcom,sm8150-mdss" },
-	{ .compatible = "qcom,sm8250-mdss" },
 	{ .compatible = "qcom,sdm845-mdss" },
 	{ .compatible = "qcom,sdm845-mss-pil" },
+	{ .compatible = "qcom,sm8150-mdss" },
+	{ .compatible = "qcom,sm8250-mdss" },
 	{ }
 };
 

-- 
2.40.1

