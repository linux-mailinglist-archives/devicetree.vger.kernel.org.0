Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E817C634AE0
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 00:13:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235172AbiKVXMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 18:12:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235302AbiKVXMr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 18:12:47 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59B9A1AF04
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:12:44 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id r8so8989055ljn.8
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 15:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i5Gb3UnijTffvUZ5061n1gC+IjflOu8fq8L5Sow654E=;
        b=jvD4z8ILaPy0aiGdKMyoEDLjDAxXWw4uFkzNuXgPyQi9Anix9LXrc9uedgTq0+4dU2
         wRxX2TZbfJ/P7DZSLvZc9+1nrvlz9HzwAyvUm935n7RAZY8Jh7OTPlsqteBpf/o1v2B6
         ZQUA5JNJe8xMBgnuBrWsSqQ/19qorcjdmFCFHWGFsCOwvk1L3yZT1/wywPJ9xvNQErl8
         k96KfaYlVT2xd1A+D6J2zAyOm1D/CQpU/z9s1P56uVapIG+iBt06008j5n+Il8KMY42x
         GAW3P/TM5EVRQCptVXn2Iht04yjDyQIB/SZTALWwOcFXy2UBDqyeW8JrSj03CMMGhf/F
         gU1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i5Gb3UnijTffvUZ5061n1gC+IjflOu8fq8L5Sow654E=;
        b=ke98VS3OI/Z4u353WDKLMCNYYEqP7IX6q/Ji1b5BBerY8SnCKl6zlS6mqKZEO4vnoR
         fO8V38IFKrzo08nOhcrWN8bpScuXNL/tLAli82+6UrbnX5ExaoG9pBNOFQ0JxaNhYb5X
         jY6sPPQeBNf8tWredaY9s8pH+6QqGNtbcB4u2wl+pkuy2cqTfMHOvxTQf6+PIwKtR+b6
         kZJxquuf4OuIcP+mHtlC6cSw3NKKkVo1P+V4MhhO7L3GJMK+kqgu9hJAV12Vqlv6HKOH
         vWMIbshRAoiMJceGk2XsvMiKbv+Axl3mJadZzcnvSgvij71seEM1TPFNiM7a9G3T2WlY
         WQhQ==
X-Gm-Message-State: ANoB5plfmPcOdT+hzGxS2jp6s/sKAYDagSohSU2uMImvD2iueSI+DVd/
        sjE2pW2WDxKxhRtlnr4fHBPZaw==
X-Google-Smtp-Source: AA0mqf51/Z2whokzsqkJu03zvx9yJ6wglnBbfp5WyOcGJhJg/KGKg2Xn7HtLsXqeXJ4rSSrOGsJeYw==
X-Received: by 2002:a2e:a988:0:b0:276:de0b:ce2d with SMTP id x8-20020a2ea988000000b00276de0bce2dmr1964445ljq.212.1669158762730;
        Tue, 22 Nov 2022 15:12:42 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbkzhtyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:8a1a::1])
        by smtp.gmail.com with ESMTPSA id q18-20020ac246f2000000b00497feee98basm2617541lfo.274.2022.11.22.15.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Nov 2022 15:12:42 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v4 08/11] drm/msm/dsi: add support for DSI 2.6.0
Date:   Wed, 23 Nov 2022 01:12:31 +0200
Message-Id: <20221122231235.3299737-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
References: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for DSI 2.6.0 (block used on sm8450).

Tested-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/dsi/dsi_cfg.c | 2 ++
 drivers/gpu/drm/msm/dsi/dsi_cfg.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
index 7e97c239ed48..59a4cc95a251 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
@@ -300,6 +300,8 @@ static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
 		&sc7180_dsi_cfg, &msm_dsi_6g_v2_host_ops},
 	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_5_0,
 		&sc7280_dsi_cfg, &msm_dsi_6g_v2_host_ops},
+	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_6_0,
+		&sdm845_dsi_cfg, &msm_dsi_6g_v2_host_ops},
 };
 
 const struct msm_dsi_cfg_handler *msm_dsi_cfg_get(u32 major, u32 minor)
diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.h b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
index 8f04e685a74e..95957fab499d 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_cfg.h
+++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
@@ -25,6 +25,7 @@
 #define MSM_DSI_6G_VER_MINOR_V2_4_0	0x20040000
 #define MSM_DSI_6G_VER_MINOR_V2_4_1	0x20040001
 #define MSM_DSI_6G_VER_MINOR_V2_5_0	0x20050000
+#define MSM_DSI_6G_VER_MINOR_V2_6_0	0x20060000
 
 #define MSM_DSI_V2_VER_MINOR_8064	0x0
 
-- 
2.35.1

