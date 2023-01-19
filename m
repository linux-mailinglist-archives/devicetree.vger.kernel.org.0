Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7228F6739E9
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 14:22:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbjASNW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 08:22:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbjASNW1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 08:22:27 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1560F65AB
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:22:26 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id s3so2835985edd.4
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 05:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OGxFAGv/07YIfPGHHdquQmb9WeqGOqNYWCXT4na3f/M=;
        b=xCl8vy+D2bQ7n/pQhR0uYMQBILxBJqowxKZPgDmsqtmlitPp3r0hSlGpq1w9A4Eplr
         vpDiQkNL8vkwVgmIc1Zx8+xUDsoU2YzODoWti/y4w/aMkT54KezRF2w4+8OsIJ9TtcEK
         KuSj3dtE2p9lCSDi1PRdWv/lbE1K54SnIq9xwbTe19ffvSySI52z9ikXz2UWPF7uqlJj
         ggVELVDHbjLCPy3hKTZOjdjdaptk9xHNkB0s5ggfYkAVkt6EEqLDfkX3QnogOF8Km5XY
         7daHZWmbPxelPc55txvgENaaaroxIGQINIF2djVvvf4r0+idEa/BH2yLmYRs8UrlrF54
         TjqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OGxFAGv/07YIfPGHHdquQmb9WeqGOqNYWCXT4na3f/M=;
        b=zMTLW6AcwWQDMi2d8OkEl468q0po7WMmbbaARVz//tj8NZA0xiMwjuKD6VAhgslRNZ
         1RrJqbhIwhG7nD4C6vgf/l6SSdhY19Qo7kZ+ShtRl+ucA4q0t2P6lwMNAnoLmR+eBGpE
         nHev5GXag0eDiZ+AqsEBgpOPD9J8KiIFWEHxTx06D0oNW7HZUlWFPTh2jvDYsyy/CmP4
         xxnR4USBkQf4BL7xOBAEZUvPGhTErz/oo+zq3n7AKK3NMmOCJSQU6quxsCnGMCSDiht2
         lXT9oE2m+L5d5baSizlh2KxX9/5t/xw9+/2zSTjM3kPBG10tckrTS9rZ/6PUxjA0fFed
         ueVA==
X-Gm-Message-State: AFqh2kp8ES0Zu4mFRSQlxotGF6qy2jx9IHAOcp0BBIinvIlyx3fcSCp6
        IQnPij8J2IcOkMpLc7xYCczWaw==
X-Google-Smtp-Source: AMrXdXtL3wJz4wPrnyZk6uF5UZB8Y8QbSjZzVNuPBDVxYs92vHfDl0bSwv+Tf3lCHKol/KPFBewAeg==
X-Received: by 2002:a05:6402:1f14:b0:49e:36d6:dead with SMTP id b20-20020a0564021f1400b0049e36d6deadmr8840448edb.6.1674134544613;
        Thu, 19 Jan 2023 05:22:24 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id bt16-20020a0564020a5000b00482e0c55e2bsm15532646edb.93.2023.01.19.05.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 05:22:24 -0800 (PST)
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
Subject: [PATCH 3/6] drm/msm/hdmi: switch hdmi_pll_8960 to use parent_data
Date:   Thu, 19 Jan 2023 15:22:16 +0200
Message-Id: <20230119132219.2479775-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119132219.2479775-1-dmitry.baryshkov@linaro.org>
References: <20230119132219.2479775-1-dmitry.baryshkov@linaro.org>
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

Replace parent_names usage with parent_data. Note, that this makes the
PLL default to board's `pxo_board' clock rather than just `pxo' clock,
as we are on a way to deprecate the global cxo/pxo clocks.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
index be4b0b67e797..c3e7ff45e52a 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
@@ -406,14 +406,14 @@ static const struct clk_ops hdmi_pll_ops = {
 	.set_rate = hdmi_pll_set_rate,
 };
 
-static const char * const hdmi_pll_parents[] = {
-	"pxo",
+static const struct clk_parent_data hdmi_pll_parents[] = {
+	{ .fw_name = "pxo", .name = "pxo_board" },
 };
 
 static struct clk_init_data pll_init = {
 	.name = "hdmi_pll",
 	.ops = &hdmi_pll_ops,
-	.parent_names = hdmi_pll_parents,
+	.parent_data = hdmi_pll_parents,
 	.num_parents = ARRAY_SIZE(hdmi_pll_parents),
 	.flags = CLK_IGNORE_UNUSED,
 };
-- 
2.39.0

