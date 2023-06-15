Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DD9173238A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 01:23:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239985AbjFOXW7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 19:22:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238338AbjFOXWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 19:22:10 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 297142D53
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 16:21:46 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f62cf9755eso11285344e87.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 16:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686871304; x=1689463304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dc6/XqCeUuMLD90IMPpV+vPMqBRNYNN2pYcIpUptGVM=;
        b=OkRl7pZbjuDj11gUKKRzut/ej6pLmDzTndWR19Y8LlvqWvXNPNFUgPi2L9eJMwydvv
         crmo4HamIW9Snrxf7J5XTNyWLZ+B13ZrpBdkEeA39msQ6jrYQ1HkRjVEt6uv0tw3BvvO
         kRWrjrn1QTnq8YHc8USEljhbHotDd0p4G/Xa9KA1YkHLpJcQtN+vbUGSMkW+QyD5xDBO
         44Kg54SjEx7Wj9jLJ7j/8MxkJg8tcIB+tihit2bNXzwuCcCVumFrb/3sCBQ6rei3GyrT
         LEv0xtYeb2/zdesgyQAKlmlA1oywkPNe+7AO7kPNu0pERDsvTRJ57qa7ZtbDgLp/us9B
         6fjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686871304; x=1689463304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dc6/XqCeUuMLD90IMPpV+vPMqBRNYNN2pYcIpUptGVM=;
        b=A5zigzRTdbBvrDRWyaS7pKrZYNKrnGDX5YG5L1z/m+XXv5QTj5GeaTD1iVIJsZ9h62
         LZ28PjRl2iabSGF5BVfkyZev653aO7x5OwSFO1vhLjT12kVwHrqVwVLspBKbG6AhUKKw
         TLIHerjq6nOe/UDo+cCqLVo1Uf7H9Tkh63ikyrm6OGktw1gM0pRzvJu7a/WoUbki/2Ef
         1AH8l8yYSadTMmAXwBEdQSrdkDUss1buAyuX3oLP5+o+51/BeTkurEY6AZe/UneTFjGe
         F5badlLMAHD1FjfOcJJe0x4xTigoybEfCqMeU87+lXo8k4m5GxeUKVJIrGwWoLuv37fD
         +GJQ==
X-Gm-Message-State: AC+VfDxvE2VDeaMq0KFiIwK1xwLHi75YHj0pM1OKJaKZgEndrB/nsSMJ
        9wI2rw6B7D9pFKrkBSHgSqTuJg==
X-Google-Smtp-Source: ACHHUZ5wa3FIk3WqUXtN8QjH/SMq7+LoUWWAIre/XBEl18/iuPObvkhqcAhzM7o1iLwG6Ih1odoo3A==
X-Received: by 2002:a19:6743:0:b0:4f6:2dbd:1e23 with SMTP id e3-20020a196743000000b004f62dbd1e23mr109620lfj.29.1686871304242;
        Thu, 15 Jun 2023 16:21:44 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id u25-20020a056512041900b004f24ee39661sm2744852lfk.137.2023.06.15.16.21.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 16:21:43 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 16 Jun 2023 01:20:58 +0200
Subject: [PATCH v9 17/20] drm/msm/a6xx: Use "else if" in GPU speedbin rev
 matching
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230223-topic-gmuwrapper-v9-17-890d8f470c8b@linaro.org>
References: <20230223-topic-gmuwrapper-v9-0-890d8f470c8b@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v9-0-890d8f470c8b@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686871277; l=1490;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=b8LS5q9YvSCzB73Uar1eH42Lv4QsJyCePzskZmQchAE=;
 b=CNAsUfQ7uGCvtpgiJ1tOWQ0c0LOfaa0E+6D+fWNOJT3Q1OF7ippRfWtWP8itV+fZ9fKYtIjWq
 B+aOjwCBfiXC3YpgUlHnvl4ioZdNTy2W+DJ7Ck1mxzov3pMMJivUk66
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GPU can only be one at a time. Turn a series of ifs into if +
elseifs to save some CPU cycles.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 97e261d33312..d0ba0844079c 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -2276,16 +2276,16 @@ static u32 fuse_to_supp_hw(struct device *dev, struct adreno_rev rev, u32 fuse)
 	if (adreno_cmp_rev(ADRENO_REV(6, 1, 8, ANY_ID), rev))
 		val = a618_get_speed_bin(fuse);
 
-	if (adreno_cmp_rev(ADRENO_REV(6, 1, 9, ANY_ID), rev))
+	else if (adreno_cmp_rev(ADRENO_REV(6, 1, 9, ANY_ID), rev))
 		val = a619_get_speed_bin(fuse);
 
-	if (adreno_cmp_rev(ADRENO_REV(6, 3, 5, ANY_ID), rev))
+	else if (adreno_cmp_rev(ADRENO_REV(6, 3, 5, ANY_ID), rev))
 		val = adreno_7c3_get_speed_bin(fuse);
 
-	if (adreno_cmp_rev(ADRENO_REV(6, 4, 0, ANY_ID), rev))
+	else if (adreno_cmp_rev(ADRENO_REV(6, 4, 0, ANY_ID), rev))
 		val = a640_get_speed_bin(fuse);
 
-	if (adreno_cmp_rev(ADRENO_REV(6, 5, 0, ANY_ID), rev))
+	else if (adreno_cmp_rev(ADRENO_REV(6, 5, 0, ANY_ID), rev))
 		val = a650_get_speed_bin(fuse);
 
 	if (val == UINT_MAX) {

-- 
2.41.0

