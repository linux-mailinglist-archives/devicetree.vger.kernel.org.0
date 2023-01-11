Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DFFF666473
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 21:05:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239645AbjAKUFg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 15:05:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239295AbjAKUFJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 15:05:09 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC8DF43E77
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:01:32 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id cf42so25229732lfb.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nqckWVN1EW8nGGVGrmVxxAgycA7grXm6YjyhUvZ/LK8=;
        b=xNeCu+Rd5QdYA1QA4uQJj3yUife2h+H/5njbViWSLG8bRuzhVLviqXXG1z68mQn5FF
         FkLWHYJ4xaQx8zC6hgZgva0rD4kZM5rH/3ymMNCXxOFkmjv5cDudmwIbcJhu97ZgqdHk
         ydg9KWAPob4n8DxiGzobiKXxlg/qsaBEv3iqbg2cBFu256OE2AuHUPZlzY/aVl3jrYyv
         gtB+rZJlUYfmISasC2RUVxXLQRP3lux/TgYPMSBcvMdqBClcNjCb7z8+4Eh++1Ls22N2
         dFpMpzQcIYXxlt4bkU+qiH4dPuadHdy2lPwVvR1lHBpPCVcy5W3Qi8elR6y1iDw7LX8S
         DOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nqckWVN1EW8nGGVGrmVxxAgycA7grXm6YjyhUvZ/LK8=;
        b=XkRU7GzIh+dnY9520aApX3HrLpTJBVvmtt4XN2Y7e9RwxVq0P8E6f424TXsvykg0Qs
         RvMwx6+vb2j1PjUMZnr2ycTdzE1Lnur7mxlGoYfGanOVueEBH5oQSnSJ33gzNpkQuU86
         WboP/ri/533EatOvi7fJjaBUpTRal2BUx95sgDLsdrYGssijYCuGesF0bB4Q/7W97Ada
         MniOhbXfzOXIRLcOAHkSoH2V79bAmpaifDIAKGKxDBlVMGUTpv/4/QM0Cp6OxUnqGITw
         ouQpB2yBOXCuc3BlPmD5C3136CJTxQhGHyi0MDQqPrAvPHkbVQt8D8v3P9NyZeuGWk9D
         pFbg==
X-Gm-Message-State: AFqh2krf5AFkol37SSjSH6Y1+FJDJU1cH+I3oAvAfdEqDZPIy1UssYte
        12UMKOg3RJIpgg3R9V1Az76CHA==
X-Google-Smtp-Source: AMrXdXtC1qHCdqhA1iA1ASNLgcAUL6h47wf6APDkjpPlzBB0dwMR54IXsBxt/TSb574g4Zi8vXOkwA==
X-Received: by 2002:a19:5517:0:b0:4b5:6042:d136 with SMTP id n23-20020a195517000000b004b56042d136mr19079107lfe.22.1673467291291;
        Wed, 11 Jan 2023 12:01:31 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v20-20020a05651203b400b004b4e6dab30esm2881437lfp.222.2023.01.11.12.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 12:01:30 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 03/14] clk: qcom: cpu-8996: correct PLL programming
Date:   Wed, 11 Jan 2023 23:01:17 +0300
Message-Id: <20230111200128.2593359-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
References: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
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

Change PLL programming to follow the downstream setup.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-cpu-8996.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
index ee76ef958d31..ed8cb558e1aa 100644
--- a/drivers/clk/qcom/clk-cpu-8996.c
+++ b/drivers/clk/qcom/clk-cpu-8996.c
@@ -93,12 +93,9 @@ static const u8 prim_pll_regs[PLL_OFF_MAX_REGS] = {
 static const u8 alt_pll_regs[PLL_OFF_MAX_REGS] = {
 	[PLL_OFF_L_VAL] = 0x04,
 	[PLL_OFF_ALPHA_VAL] = 0x08,
-	[PLL_OFF_ALPHA_VAL_U] = 0x0c,
 	[PLL_OFF_USER_CTL] = 0x10,
-	[PLL_OFF_USER_CTL_U] = 0x14,
 	[PLL_OFF_CONFIG_CTL] = 0x18,
 	[PLL_OFF_TEST_CTL] = 0x20,
-	[PLL_OFF_TEST_CTL_U] = 0x24,
 	[PLL_OFF_STATUS] = 0x28,
 };
 
@@ -106,8 +103,10 @@ static const u8 alt_pll_regs[PLL_OFF_MAX_REGS] = {
 
 static const struct alpha_pll_config hfpll_config = {
 	.l = 60,
-	.config_ctl_val = 0x200d4aa8,
+	.config_ctl_val = 0x200d4828,
 	.config_ctl_hi_val = 0x006,
+	.test_ctl_val = 0x1c000000,
+	.test_ctl_hi_val = 0x00004000,
 	.pre_div_mask = BIT(12),
 	.post_div_mask = 0x3 << 8,
 	.post_div_val = 0x1 << 8,
-- 
2.30.2

