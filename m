Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A50866450F5
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 02:22:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbiLGBWr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 20:22:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229819AbiLGBWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 20:22:42 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4EBF3C6DD
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 17:22:40 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id cf42so20617507lfb.1
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 17:22:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xDsYBVCwBeS0Phubq4Y5R1Q3bo1kNIeEHtnGSCsuvdc=;
        b=WIeRLvryx3Aig7sR+0eNRODQewWhB11fKBZEyycLmhb2SPYjCKnIKl02tC8ABUfos1
         qjk7fmZldSf8gmuwaLzRmyYivjrfXEvylLhukbhF9dUrorJBj9PiInkmFBwaizq0W3bq
         C+3LYqTpyii6bEI8z9wBwPrdT2nzLbP9vKTomKHqwIgQ2eGGGrjZVkIlZPL4Ydjk7WWa
         0AA4T1BMjwMaSKOsPhD0Xv2G61t94X2qZHnIfi5nKWxLyb4pEDIoyExTqRCPcJMR1YS0
         xs7eKGrNezMjBo8cTg2BM9EcZ0fBVYjwDL0P0uc+H5/7dz9JyMw0eGjHHO6yYJhSBlyg
         fMmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xDsYBVCwBeS0Phubq4Y5R1Q3bo1kNIeEHtnGSCsuvdc=;
        b=ZpXYGR83Dp5R1K4jrfc5ilkna0V+HJ0A9MOdKVU1WWGH+lDNVO+agobrmlFmzRsu5e
         B8QyqcAJNf5m6805/5VM3w++qxBUDrVDTbV3+sn0poIlGuYD7iS2kE7CqYMbo7oaYH+R
         gL2nLdLWP2UxQ8576VJtG91UhgqBbSOOTe1rAip09N79SJLG46lyoBlXHjUCV2VdlxUU
         dPjC/1RyjykKYoVmumoHDLTtGQ5bmBWFT2dsId6ie6kmz72m5+mXW0/36FvAKCnTB4FR
         W94rrMz1vSxEB8xlVOJtyCaJQrAdm40AIhEFJN2KXMMuvbzfqBz7gwEFAFhCeVF7oRvI
         sX0w==
X-Gm-Message-State: ANoB5pkb+SRrWzojJSEOSsvr2e1gmcmZr0d4Rrl+yh4gWZTRDXi4G4Zc
        JSZgyRKUzDyWOPoRZVa97xjDDg==
X-Google-Smtp-Source: AA0mqf72ZeS3Bvn49p/dDmTgu2JYJRpMCCYkvQjZJPMT+0IsM2oqrwbbL2aUpYZPBAHHEOp7Ow9aPA==
X-Received: by 2002:a19:2d52:0:b0:4b1:dc42:6f85 with SMTP id t18-20020a192d52000000b004b1dc426f85mr28435282lft.568.1670376159274;
        Tue, 06 Dec 2022 17:22:39 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a11-20020ac25e6b000000b0048a9e899693sm2678916lfr.16.2022.12.06.17.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Dec 2022 17:22:38 -0800 (PST)
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
        freedreno@lists.freedesktop.org
Subject: [PATCH v6 08/11] drm/msm/dpu: merge all MDP TOP registers to dpu_hwio.h
Date:   Wed,  7 Dec 2022 03:22:28 +0200
Message-Id: <20221207012231.112059-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221207012231.112059-1-dmitry.baryshkov@linaro.org>
References: <20221207012231.112059-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is a separate header containing some of MDP TOP register
definitions, dpu_hwio.h. Move missing register definitions from
dpu_hw_top.c to the mentioned header.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c | 25 ----------------------
 drivers/gpu/drm/msm/disp/dpu1/dpu_hwio.h   | 18 ++++++++++++++++
 2 files changed, 18 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c
index c3110a25a30d..2bb02e17ee52 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c
@@ -7,40 +7,17 @@
 #include "dpu_hw_top.h"
 #include "dpu_kms.h"
 
-#define SSPP_SPARE                        0x28
-
 #define FLD_SPLIT_DISPLAY_CMD             BIT(1)
 #define FLD_SMART_PANEL_FREE_RUN          BIT(2)
 #define FLD_INTF_1_SW_TRG_MUX             BIT(4)
 #define FLD_INTF_2_SW_TRG_MUX             BIT(8)
 #define FLD_TE_LINE_INTER_WATERLEVEL_MASK 0xFFFF
 
-#define DANGER_STATUS                     0x360
-#define SAFE_STATUS                       0x364
-
-#define TE_LINE_INTERVAL                  0x3F4
-
 #define TRAFFIC_SHAPER_EN                 BIT(31)
 #define TRAFFIC_SHAPER_RD_CLIENT(num)     (0x030 + (num * 4))
 #define TRAFFIC_SHAPER_WR_CLIENT(num)     (0x060 + (num * 4))
 #define TRAFFIC_SHAPER_FIXPOINT_FACTOR    4
 
-#define MDP_WD_TIMER_0_CTL                0x380
-#define MDP_WD_TIMER_0_CTL2               0x384
-#define MDP_WD_TIMER_0_LOAD_VALUE         0x388
-#define MDP_WD_TIMER_1_CTL                0x390
-#define MDP_WD_TIMER_1_CTL2               0x394
-#define MDP_WD_TIMER_1_LOAD_VALUE         0x398
-#define MDP_WD_TIMER_2_CTL                0x420
-#define MDP_WD_TIMER_2_CTL2               0x424
-#define MDP_WD_TIMER_2_LOAD_VALUE         0x428
-#define MDP_WD_TIMER_3_CTL                0x430
-#define MDP_WD_TIMER_3_CTL2               0x434
-#define MDP_WD_TIMER_3_LOAD_VALUE         0x438
-#define MDP_WD_TIMER_4_CTL                0x440
-#define MDP_WD_TIMER_4_CTL2               0x444
-#define MDP_WD_TIMER_4_LOAD_VALUE         0x448
-
 #define MDP_TICK_COUNT                    16
 #define XO_CLK_RATE                       19200
 #define MS_TICKS_IN_SEC                   1000
@@ -48,8 +25,6 @@
 #define CALCULATE_WD_LOAD_VALUE(fps) \
 	((uint32_t)((MS_TICKS_IN_SEC * XO_CLK_RATE)/(MDP_TICK_COUNT * fps)))
 
-#define DCE_SEL                           0x450
-
 static void dpu_hw_setup_split_pipe(struct dpu_hw_mdp *mdp,
 		struct split_pipe_cfg *cfg)
 {
diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hwio.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hwio.h
index c8156ed4b7fb..86c423e63b61 100644
--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hwio.h
+++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hwio.h
@@ -16,6 +16,7 @@
 #define INTR_CLEAR                      0x018
 #define INTR2_EN                        0x008
 #define INTR2_STATUS                    0x00c
+#define SSPP_SPARE                      0x028
 #define INTR2_CLEAR                     0x02c
 #define HIST_INTR_EN                    0x01c
 #define HIST_INTR_STATUS                0x020
@@ -28,7 +29,15 @@
 #define DSPP_IGC_COLOR0_RAM_LUTN        0x300
 #define DSPP_IGC_COLOR1_RAM_LUTN        0x304
 #define DSPP_IGC_COLOR2_RAM_LUTN        0x308
+#define DANGER_STATUS                   0x360
+#define SAFE_STATUS                     0x364
 #define HW_EVENTS_CTL                   0x37C
+#define MDP_WD_TIMER_0_CTL              0x380
+#define MDP_WD_TIMER_0_CTL2             0x384
+#define MDP_WD_TIMER_0_LOAD_VALUE       0x388
+#define MDP_WD_TIMER_1_CTL              0x390
+#define MDP_WD_TIMER_1_CTL2             0x394
+#define MDP_WD_TIMER_1_LOAD_VALUE       0x398
 #define CLK_CTRL3                       0x3A8
 #define CLK_STATUS3                     0x3AC
 #define CLK_CTRL4                       0x3B0
@@ -43,6 +52,15 @@
 #define HDMI_DP_CORE_SELECT             0x408
 #define MDP_OUT_CTL_0                   0x410
 #define MDP_VSYNC_SEL                   0x414
+#define MDP_WD_TIMER_2_CTL              0x420
+#define MDP_WD_TIMER_2_CTL2             0x424
+#define MDP_WD_TIMER_2_LOAD_VALUE       0x428
+#define MDP_WD_TIMER_3_CTL              0x430
+#define MDP_WD_TIMER_3_CTL2             0x434
+#define MDP_WD_TIMER_3_LOAD_VALUE       0x438
+#define MDP_WD_TIMER_4_CTL              0x440
+#define MDP_WD_TIMER_4_CTL2             0x444
+#define MDP_WD_TIMER_4_LOAD_VALUE       0x448
 #define DCE_SEL                         0x450
 
 #endif /*_DPU_HWIO_H */
-- 
2.35.1

