Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2DCE574A05
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 12:04:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237636AbiGNKEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 06:04:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237824AbiGNKD7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 06:03:59 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03BFADFBC
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 03:03:58 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z25so1992424lfr.2
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 03:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YqQw+hyZrOSvmDZjue9kde/HY6butVNaHprEEy1Lvvs=;
        b=yEXH5JSEEmuCje6GpBhQX95NQ+K/ECEoI/mIj7PJDK0z6LI/cNmhK2cv8IbwV/B1Hb
         0kY7bQXObD1eo3eFGp8IlQP0PLkM+RBCy/CZF9Y/ZH/rUMzDJiWo+ydlel4xP4DeP8bE
         E31+weZEyXSuvDwYJuceOH9SdZ2CexRnL2yHf75zvq7o+tw5vtRkLTTcIu+/IV6tfpcp
         D+lhxMJJHuHT7qX5xMf+Z28+rinkd9iutST+nMoFP3+L9NTIMTpBsk6FesojRzHL6oEK
         UZ1wT226gGVO0E5dq6F4w15HTzCd5IxlRNGDA1q+VhXa6+TmUy4IaEj4+ldkTZp7sx9q
         NdnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YqQw+hyZrOSvmDZjue9kde/HY6butVNaHprEEy1Lvvs=;
        b=sJF9E6+Vw1q4Q9C8UF8K8FD6GCHmCKgkOOcoG7TEWLRPlGFQbtLT+oYprWQM5wGCjS
         wElsP2wGK0PH5lwqUcpg2WR5WxpkNV1CiX8UJaKzjK/yLnSTOtTnJTX02FQWoJWi9npm
         FchSbp+p9I/3aCQBAjl1ocJJMLIIWslHX9j4uJN9Jvlo6NpWeqnBsGlemaTpfDCz1hiQ
         7imo5ttcKdl4cS/QPrErq36bLY8H92Pe8Nqsuc3u8g1cP87ZrE+XbjxShid7HXQmF+t6
         sG42r7/ZFmbTqNPkb0w4c/LcThX2rDWojV4FJIw/UwouiPlGkh7M5dyhyunDK8bUvtMc
         1VZg==
X-Gm-Message-State: AJIora/2wPHaZ8uU71eWaQuyKBNmKGQhvFUBxbR6AxGPmkQJtcAXSA/x
        RkeuvS//RqQSdu7TCN5h/nXK8g==
X-Google-Smtp-Source: AGRyM1u3UowzkELPYriWql+Kw5rsqUcTow48EopecVCSSsFRtxVaO8JJtQpLsVro0WsrsPKJ1os02w==
X-Received: by 2002:ac2:5389:0:b0:48a:1070:775d with SMTP id g9-20020ac25389000000b0048a1070775dmr3179089lfh.266.1657793036327;
        Thu, 14 Jul 2022 03:03:56 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c9-20020a056512074900b00489c92779f8sm273355lfs.184.2022.07.14.03.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 03:03:55 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Yassine Oudjana <yassine.oudjana@gmail.com>
Subject: [PATCH 4/6] clk: qcom: cpu-8996: move ACD logic to clk_cpu_8996_pmux_determine_rate
Date:   Thu, 14 Jul 2022 13:03:49 +0300
Message-Id: <20220714100351.1834711-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714100351.1834711-1-dmitry.baryshkov@linaro.org>
References: <20220714100351.1834711-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rather than telling everybody that we are using PLL as a parent (and
using ACD clock instead) properly select ACD as a pmux parent clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-cpu-8996.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
index 3dd6efdef82d..5c5adcb533ce 100644
--- a/drivers/clk/qcom/clk-cpu-8996.c
+++ b/drivers/clk/qcom/clk-cpu-8996.c
@@ -284,9 +284,6 @@ static int clk_cpu_8996_pmux_set_parent(struct clk_hw *hw, u8 index)
 	u32 val;
 
 	val = index;
-	/* We always want ACD when using the primary PLL */
-	if (val == PLL_INDEX)
-		val = ACD_INDEX;
 	val <<= cpuclk->shift;
 
 	return regmap_update_bits(clkr->regmap, cpuclk->reg, mask, val);
@@ -371,7 +368,7 @@ static struct clk_cpu_8996_pmux pwrcl_pmux = {
 	.reg = PWRCL_REG_OFFSET + MUX_OFFSET,
 	.shift = 0,
 	.width = 2,
-	.pll = &pwrcl_pll.clkr.hw,
+	.pll = &pwrcl_pll_acd.clkr.hw,
 	.pll_div_2 = &pwrcl_smux.clkr.hw,
 	.nb.notifier_call = cpu_clk_notifier_cb,
 	.clkr.hw.init = &(struct clk_init_data) {
@@ -388,7 +385,7 @@ static struct clk_cpu_8996_pmux perfcl_pmux = {
 	.reg = PERFCL_REG_OFFSET + MUX_OFFSET,
 	.shift = 0,
 	.width = 2,
-	.pll = &perfcl_pll.clkr.hw,
+	.pll = &perfcl_pll_acd.clkr.hw,
 	.pll_div_2 = &perfcl_smux.clkr.hw,
 	.nb.notifier_call = cpu_clk_notifier_cb,
 	.clkr.hw.init = &(struct clk_init_data) {
-- 
2.35.1

