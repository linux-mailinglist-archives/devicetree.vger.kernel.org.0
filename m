Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 936E46450F3
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 02:22:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbiLGBWq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 20:22:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229815AbiLGBWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 20:22:42 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D726731ED4
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 17:22:39 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id y25so4193768lfa.9
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 17:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i5Gb3UnijTffvUZ5061n1gC+IjflOu8fq8L5Sow654E=;
        b=PIC9qUOax1lNgU52qpQYQPGzpNY6onUZwdx1GC5dBi8GZ5KIIX1IH1816QuhdOXiwx
         ha+jpxvYJTivgjLrmBQGwtztQ0B4nzzQwvBzW2zHBaqiWETCr4QO05o/5KhNpGISkdCj
         MM9AbRVI2YhmnmBSCE/m6OPmmrcn4d9O4kLiX0ZwJxKQ3tXdiVBQDkF+8MLOlNnru18O
         JxBo3V/JaW+SgMUZwxM/U5cgc5IqzGO4JkzTW6VDXGSrprceqoeqsBA/BwutQrweXM6p
         ukTzwOevaxwp8C2Utv5P1fDfM/WHRw1xPUgwMhY0FvACJTzjR7NA8S77F4zb2onc1cjp
         irog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i5Gb3UnijTffvUZ5061n1gC+IjflOu8fq8L5Sow654E=;
        b=fX0Uke73mcf73NuNMionKJhs+0QqJGukVYY3alnIwoSwTGGAVlZLpRvRfgC1dccjHA
         nl6kcT5sV3IVKtwMDv4jLGzRCGjrRa8RT4GfrEAlArhbEqnezoC7wlA4XV5wFarD6pbZ
         mbCgyTBE90oSpMv3IZVmbBarEsjum0O1RH62nzNNcyudB7AUOY+xHPE+TNImFMbYqhMu
         sjFAnQIYR4zYgEXqa3B9e5HaHMlm8ciN0m8TKePoFY/TIopeK9PUVYMtMAy2wZC9sXli
         rIB1cMiivBHYq0QVMPHUwNCztpv564Z/em99HWOhV5FrAHdKR8V6nMuSCU2+qCHOLeyx
         TJkQ==
X-Gm-Message-State: ANoB5pnBSrgBhL3tIittuohwCz6sjh2ZKp6SRvFk65L6RqXe03sWcaLQ
        BNXYP5+xy9CUjPZlsZXj8NDwZEbWPOxyE+1GQnNxeg==
X-Google-Smtp-Source: AA0mqf6Y5qfBgtZkDtnlFNGlVjbAh8hjm8ugydhK0fpipiipoIX5woUHt+dDaRsGdsJ8ncbiA2718g==
X-Received: by 2002:a05:6512:3b0d:b0:4b4:7cb4:f932 with SMTP id f13-20020a0565123b0d00b004b47cb4f932mr24777704lfv.243.1670376158245;
        Tue, 06 Dec 2022 17:22:38 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a11-20020ac25e6b000000b0048a9e899693sm2678916lfr.16.2022.12.06.17.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Dec 2022 17:22:37 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v6 07/11] drm/msm/dsi: add support for DSI 2.6.0
Date:   Wed,  7 Dec 2022 03:22:27 +0200
Message-Id: <20221207012231.112059-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221207012231.112059-1-dmitry.baryshkov@linaro.org>
References: <20221207012231.112059-1-dmitry.baryshkov@linaro.org>
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

