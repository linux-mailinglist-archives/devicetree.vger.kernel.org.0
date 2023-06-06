Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E93E37242D8
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 14:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237565AbjFFMpc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 08:45:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237782AbjFFMpB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 08:45:01 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A44C10FC
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 05:44:38 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b1acd41ad2so56044521fa.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 05:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686055462; x=1688647462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uz91t5CPsz6QMWtRIYuzaeaGaQUSJIZo7OKNOwA96Nw=;
        b=xTXMPt5qjw5ckeNtSZRbmcSRWPRAvhSPcMgyF58k7vwq00/q2YHpIDU5Y585K9ufUA
         kofsA+W6MX8KmmOS9eAIjAtShpicrKI4zU/inx+Chc8QQ2sW1olrALALUzpWOQ/Fi0wQ
         O8rQF5F0A+jDNRyhpmyBGyGo0seGE7/GXW//Yk8Q5oA2tW/VuzvexQz97Yz35m/+yJFh
         jaHTWWX8QYJYZewDC2mCVy1GC7QSR9U3alvUql+u5jPk3BA8RZnT7P0QDYxw5Xgtw+1V
         Vj5II4bd1Ubjgj1SkipWP6MlatybLMO6ZHDU47bem4qgALW7rTGW6vTo0MLp247U2Lnj
         dhsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686055462; x=1688647462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uz91t5CPsz6QMWtRIYuzaeaGaQUSJIZo7OKNOwA96Nw=;
        b=a58z12S+PcRBGz8QQuhOnNSmyBF3NSRa/fCTNXDYttm0XzWkk8BJODSJUAzh+lxmPW
         PlD7kg8CHQZ2jFOrZb/odIqDzVLZt7ai10ZI3xh7MXLWJ+552X/WXZaOsp5f2nfRroWA
         JmsQ9qwFTOGlhLn160VimUHTQpP0gAEA24tYGx2CFy37tugAEUDgSJA1Cks53T2MS37O
         B7FPoPivOUuEHW5EaIKWvAswpu7u/p3JM1IJfVclERxZ3qrfD7mGAZsgwJsaDxnbJHF6
         6a7oYmCjg4KzDsUvJvbd3CaujtpGG/e3MSFkXLOc0ZQOIZxKE/OryKh5n5OydrxkDbxA
         SIQw==
X-Gm-Message-State: AC+VfDzwwcQWUsfmSCDO+XD582nOOt50yXITVtoHWBiO+dpgHsNXV0t6
        UGcZuGyvdtxIsi90nlJME6qxuQ==
X-Google-Smtp-Source: ACHHUZ7A3GQghxMA8gd7veJ/w95rzySJ/qmOxD+nL9U3cSecVLvIc/gZ2Kjtj0kgX9i88gP8VxDHVQ==
X-Received: by 2002:a2e:8606:0:b0:2ac:75fa:495c with SMTP id a6-20020a2e8606000000b002ac75fa495cmr1093452lji.27.1686055462014;
        Tue, 06 Jun 2023 05:44:22 -0700 (PDT)
Received: from [192.168.1.101] (abyl150.neoplus.adsl.tpnet.pl. [83.9.31.150])
        by smtp.gmail.com with ESMTPSA id u23-20020a2e9f17000000b002a9ebff8431sm1830823ljk.94.2023.06.06.05.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 05:44:21 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 06 Jun 2023 14:44:00 +0200
Subject: [PATCH v6 09/12] drm/msm: mdss: Add SM6375 support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230411-topic-straitlagoon_mdss-v6-9-dee6a882571b@linaro.org>
References: <20230411-topic-straitlagoon_mdss-v6-0-dee6a882571b@linaro.org>
In-Reply-To: <20230411-topic-straitlagoon_mdss-v6-0-dee6a882571b@linaro.org>
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
        Joerg Roedel <joro@8bytes.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686055444; l=1022;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Nh6zuYJI8gb14gxje6MmS/hbQSaIA3Eeoi75EfztoC0=;
 b=OxWGteNTPcUfGPGr2JL2cA95wzVZAKIBzz7/e/VX6ySLc0zf6TYdbDyWq7IlwKcdnUOqH76uv
 5RDrPgRuFIkBcbI8//m86Ae0h5O/Rd1iGp9/vcUd1WXHPFfFGFBgYFg
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
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

