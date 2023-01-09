Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40462661BA9
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 01:52:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231926AbjAIAwn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 19:52:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233381AbjAIAwO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 19:52:14 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97226E020
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 16:52:13 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id b3so10692419lfv.2
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 16:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ptQ91yL62HWGxquAE1OXVSgTH3ntEWsZE5zzj5PDCAw=;
        b=VxdHeinkBTFIZv5lPyjNISqiGXRGbOAcc0tNq0nMZFH1f3+kv8dgo/QaPwNzywo6ke
         X4apoidfp63uuumWWKXL1n8n9PXMMi2zwXWQtPnQzfzDy+SJGGh42YEwNZF5tGGMFfLr
         wldFFcRPzjpD05OwIn8+ZWNORdQySakmxQqeilIxvHfKrODQOvSkShrde9rjmSWMewwH
         96mBe2tG1rHD6364Z4IfxKL3lqFuQ7euzY6ABrYGLM1l+JhEag1ZzKBEGfsD5zuuVZ+z
         v0kZBKSTLe6pajpgeI7Z7aukNijLWMPBHHNqbaZYioa5/lTM8gVpUA22cuN318NQcoE1
         976Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ptQ91yL62HWGxquAE1OXVSgTH3ntEWsZE5zzj5PDCAw=;
        b=qgDiDOah/H4SWeJi8wh2Fhn02KFva8cBaadZ9lYK4wP7yRgZQZV/aYw0VEOSPkmxg0
         8oZtCq3BjK3poojZcSqI77eclFCgAgHeNX3pmJraTEHn80a4lbNrzuum1XYO9zMtMJiV
         ur9/4pke5HWvxRHoniGwqkD/+8Qvv//9rf0Q0WxFu5yvs3xr5PeUOThnlmDgVzdfAi+e
         TqvQjUvmakoOEjEbJX4jOANYgGCgKU73wntj7C/TQU+ZSGXL9sfi7Z6IRssvRbOFhc+W
         DgDTRyjo+OfK4E+dpQwOrcctNwmW+5JBEQnWlONIuuegsNn95QkC+mEC73vplSTPOzTd
         FGbw==
X-Gm-Message-State: AFqh2krJE0U9CNmm66RSrUJ0dPocIMA4o5Xd+UgxV5PXVBqjyPgSFUAi
        pu8G3ia5kH1L3m5DE4aeA8T+ZQ==
X-Google-Smtp-Source: AMrXdXvHwjLaQ3yngPqbXRZffsod2E2tMYXsgHgnq9Fz46D4Cztujd3kVH31NYgbHCq/9mvySUUqOw==
X-Received: by 2002:a05:6512:baa:b0:4cc:5b27:42ba with SMTP id b42-20020a0565120baa00b004cc5b2742bamr5182755lfv.23.1673225531937;
        Sun, 08 Jan 2023 16:52:11 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id c25-20020ac25f79000000b00494643db68fsm1317493lfc.81.2023.01.08.16.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 16:52:11 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] drm/msm/mdss: enable optional core clock for MDP5 MDSS
Date:   Mon,  9 Jan 2023 02:52:07 +0200
Message-Id: <20230109005209.247356-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109005209.247356-1-dmitry.baryshkov@linaro.org>
References: <20230109005209.247356-1-dmitry.baryshkov@linaro.org>
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

Enable (optional) core (MDP_CLK) clock that allows accessing HW_REV
registers during the platform init.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/msm_mdss.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index f9ef5085041d..c3364f85c148 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -355,7 +355,7 @@ static int msm_mdss_reset(struct device *dev)
 /*
  * MDP5 MDSS uses at most three specified clocks.
  */
-#define MDP5_MDSS_NUM_CLOCKS 3
+#define MDP5_MDSS_NUM_CLOCKS 4
 static int mdp5_mdss_parse_clock(struct platform_device *pdev, struct clk_bulk_data **clocks)
 {
 	struct clk_bulk_data *bulk;
@@ -372,6 +372,7 @@ static int mdp5_mdss_parse_clock(struct platform_device *pdev, struct clk_bulk_d
 	bulk[num_clocks++].id = "iface";
 	bulk[num_clocks++].id = "bus";
 	bulk[num_clocks++].id = "vsync";
+	bulk[num_clocks++].id = "core"; /* for hw_rev access */
 
 	ret = devm_clk_bulk_get_optional(&pdev->dev, num_clocks, bulk);
 	if (ret)
-- 
2.39.0

