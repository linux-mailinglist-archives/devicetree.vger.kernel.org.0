Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59A5A65CF20
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 10:09:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238672AbjADJI5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 04:08:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238927AbjADJIy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 04:08:54 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DFC8DFD8
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 01:08:52 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id g25-20020a7bc4d9000000b003d97c8d4941so20302412wmk.4
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 01:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WprIPOLxeNcgWUttCw+DqHxkS2tICIGh8IzytcEHCm8=;
        b=aOBxY7T1bzKenUwbAgBCiC9qyOhIhX5SgHS+q5PYj5kOxxynDGiq+l0l9OkMygd0tZ
         gVIUj6PI0VOYVunHIROncM2hceMnJRmwA4eZwpKnz+88nNbtzQesLbD5JhK89tzmEMzn
         gflz4qai5/nDVsQK3pKSGv15ATF/6RhdCh2Zt4aNnBRFOdFqViTIYsPo7aeHdekdkgRq
         QzFr2H02mgop+dfr0b5m2TnkHi8hJFjDIuHTBwg7UCdRTzx9Tf79SWj6nz0S/1H4caVR
         qO+qXN0yMNATfLeQCaubbvrUTVystcHg2phdTo+JQ7wur0MjvrwjAU+cq9qDl84iBRnO
         5Fwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WprIPOLxeNcgWUttCw+DqHxkS2tICIGh8IzytcEHCm8=;
        b=gKbkW7rXTaJ8gGCpcb6BeYslLt2IvGx3V5NjOmytQBot360gnjdZbeKuDh0kE6ePol
         NWR9Y1/VXSl8S5UBdEbITVoHFgrqhaLjiwvJ1FrUst10pTa5sSRZXfe+JAUBZnGQieut
         U+ND9ydV51uhmpQm4m1cwjNe43ashRFTBKcP2NeIxfowuV86UZgJ+Cxi0nqAVG7x8U0x
         SIprh6kYVjD0+U/y00ixQniX1ZfASyoKU4KVfjJwl+Kyz2HSkSUr3imVhKl3M1q8Zbjo
         GcP+xvnm4Y1Tjd+E3YKEzVruo1BmvlURMnSGfcm3d+hgYkmQ6b2war9hsHhqoBGDajL1
         P4Jw==
X-Gm-Message-State: AFqh2kopwvXKS5TCjm2/ie5M9cJa2/eOD2t5R+BXeqadBQBnu5KsjGl+
        2mtbxsdf50BAB5xUI/eqCNgOxg==
X-Google-Smtp-Source: AMrXdXslBasQ4LdObbKLPkGGFzFif/3uHl/3JGpxTA8fN4C2Sl34fkMwGmjVnZ6wwIzofFscQhqTjw==
X-Received: by 2002:a05:600c:3d0e:b0:3d2:3ca2:2d4f with SMTP id bh14-20020a05600c3d0e00b003d23ca22d4fmr35783226wmb.36.1672823331097;
        Wed, 04 Jan 2023 01:08:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j34-20020a05600c1c2200b003d98438a43asm36124622wms.34.2023.01.04.01.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 01:08:50 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 04 Jan 2023 10:08:46 +0100
Subject: [PATCH 4/6] drm/msm: mdss: add support for SM8550
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230103-topic-sm8550-upstream-mdss-dsi-v1-4-9ccd7e652fcd@linaro.org>
References: <20230103-topic-sm8550-upstream-mdss-dsi-v1-0-9ccd7e652fcd@linaro.org>
In-Reply-To: <20230103-topic-sm8550-upstream-mdss-dsi-v1-0-9ccd7e652fcd@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Marek <jonathan@marek.ca>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the MDSS block on SM8550 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 144c8dd82be1..54483fe30ffd 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -288,6 +288,7 @@ static int msm_mdss_enable(struct msm_mdss *msm_mdss)
 		msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_3_0, 6, 1, 1, 1);
 		break;
 	case DPU_HW_VER_810:
+	case DPU_HW_VER_900:
 		/* TODO: highest_bank_bit = 2 for LP_DDR4 */
 		msm_mdss_setup_ubwc_dec_40(msm_mdss, UBWC_4_0, 6, 1, 3, 1);
 		break;
@@ -521,6 +522,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,sm8150-mdss" },
 	{ .compatible = "qcom,sm8250-mdss" },
 	{ .compatible = "qcom,sm8450-mdss" },
+	{ .compatible = "qcom,sm8550-mdss" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, mdss_dt_match);

-- 
2.34.1
