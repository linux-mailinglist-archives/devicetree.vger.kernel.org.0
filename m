Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66DDA6F8B6B
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 23:42:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233651AbjEEVmL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 17:42:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233654AbjEEVlk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 17:41:40 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB9DE5BAD
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 14:40:59 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ac785015d7so25915751fa.1
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 14:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683322858; x=1685914858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uz91t5CPsz6QMWtRIYuzaeaGaQUSJIZo7OKNOwA96Nw=;
        b=weVZ9XSheAWAx86sFBUBaYDmWZDr7XwLsgPb3yY85630NbN7B8LXtIAJRu3F5iM6GL
         0AEoE3Qs3D6S5p8YKFJU6lkE9fIXEdatXjvE5rH8O3PUELYG8aFIsnHfBK/M7FX8GfgG
         7qPZ1ilOLxKeVBim/hcYhMZl+nwYrEzX2bvwBCrBBtt7hcLouotE+AbEbQD2spbGxQNX
         yF9eMD/2i5UTR7QmyYoF2ZOfLq2WicVVIQCK+WJScvGcBX0Kcpu4THOk9NRqy2ledc2N
         9wfU0CaGNNkg1TTB7E58pUl+12MMbjIRzYXlvH9HG+1Gyl+DAqsG/9vjxeCvUnaMxB+M
         2hlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683322858; x=1685914858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uz91t5CPsz6QMWtRIYuzaeaGaQUSJIZo7OKNOwA96Nw=;
        b=cNfiz04aQp1rCzar3SzK5MdnbKR4lde3tfPxIImsi7jPWturNVnx5J8r01IEiQTzFq
         ZXHVDK4AjKkZIdwK7IrUQAX1K8TCe9jAf7Abjp5GrCgXyfcmknxS3Ovceqv2T27KSEQo
         P2/BirMklrwq/NkqT60/WTicrZLre8DUcJBHWjBVCE5ASeF3v3nuOkaVw5Rd++g0bnm6
         ZETg8sADut24UWU+8iAdUXoXgGDWwCbutQVD/dgiqkyI2IDPmCPxHzdC2DCoKqFmQd60
         fqCMYtqE7IBg4DokMMM7FsZbUPaTXchR3lMCKUtO1SG0tXtNdI09R3WKbTbPfodfwPYF
         FTtQ==
X-Gm-Message-State: AC+VfDzsq/9dAaV5WypsPK3CNzk/yyOhXKhcWeG1t5axmYyQD64fBCVM
        0ndsMN08+j/TQX1/RclmeIJWqA==
X-Google-Smtp-Source: ACHHUZ685M+oS4sLNbr0o8CrcgD7T/uhRvfZPsp8jTmgRv/JWy/90Mt1IQ5Ya8hAWscihJimv/qvUw==
X-Received: by 2002:a2e:9290:0:b0:2a9:f94f:d304 with SMTP id d16-20020a2e9290000000b002a9f94fd304mr850372ljh.19.1683322858251;
        Fri, 05 May 2023 14:40:58 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id n12-20020a2e720c000000b002a776dbc277sm126453ljc.124.2023.05.05.14.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 14:40:57 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 05 May 2023 23:40:35 +0200
Subject: [PATCH v3 09/12] drm/msm: mdss: Add SM6375 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230411-topic-straitlagoon_mdss-v3-9-9837d6b3516d@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1683322839; l=1022;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Nh6zuYJI8gb14gxje6MmS/hbQSaIA3Eeoi75EfztoC0=;
 b=O0R9IBwQx83wZaZ+iCkksyDGMEr66jfhQEuaLMyd93w2BZzeP2bgaTdASpHY1oirCrmn/JcOn
 3G+pjZFuHTiCBujAXjqW5hc8QDl1jLHFkxGYeQ8CzvHk3Ju4aJllTVX
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

Add support for MDSS on SM6375.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 4e3a5f0c303c..05648c910c68 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -580,6 +580,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sc8280xp-mdss", .data = &sc8280xp_data },
 	{ .compatible = "qcom,sm6115-mdss", .data = &sm6115_data },
 	{ .compatible = "qcom,sm6350-mdss", .data = &sm6350_data },
+	{ .compatible = "qcom,sm6375-mdss", .data = &sm6350_data },
 	{ .compatible = "qcom,sm8150-mdss", .data = &sm8150_data },
 	{ .compatible = "qcom,sm8250-mdss", .data = &sm8250_data },
 	{ .compatible = "qcom,sm8350-mdss", .data = &sm8250_data },

-- 
2.40.1

