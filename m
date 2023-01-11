Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A49A2666464
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 21:05:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238681AbjAKUFZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 15:05:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236070AbjAKUFA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 15:05:00 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A48A43A2C
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:01:32 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id m6so25185216lfj.11
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 12:01:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1uDJixWMEWwAoquEM2fmrMSD+ELeFhPO7LIvd7FIubM=;
        b=eWXRvxqJZ7aYhKu/v06MeiKPmhqHPk8fNedeNDEUEAF9SQEYPa2uQkO7InJPvnjuJb
         feXuhU7kW7wAg/6ds/ZVQedX5bI2LIPM6/J03VcgRHoVw8Cw4aQ6PYyTy+OQ/mspeOxv
         e4z0HmCllau/emIPBCL8LaQ1z1aPmoTle4LABqtu4ERL5DJ9e2IEjzBb05OOsYEOHuWZ
         UIgY+0P4FtCDLYuCb9YNSNAOfxm/u4KCuyeHRojl7K7b6D/Dj/FVQnj5CPM028WNoPVJ
         RZqqQoaZvwnDd1GxkI/YitD1ePAikdGWwtgwfC2q7WDIouKgchkBGDmJPfT62kcI9Exq
         ALdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1uDJixWMEWwAoquEM2fmrMSD+ELeFhPO7LIvd7FIubM=;
        b=KMf+fGje1tDVzHU3FztIMJp0YG6EsUnj5DUAdGmZQZbC4lzKVCL0WEs7Lp61OCQKwM
         z5NH9vCG8PBpMG5amGjD8Q45hJbCAasbLOwlpajodBu7m+j3eP7rJ6X6n+6J53Auwbfn
         vgJldPE4gA9ltuCXWIAETI956cOk1HBA/XFHnKRBmb3nR9z2D6E5ID1eJgiQ4BYt0AQf
         4kDj08luQ+uuK2PPimZIV8dzHk+LxZC+CUJky9ep/pYr2vQ+nPnOrfl3pM6y5uf6nhsZ
         dj84eETYEykJZYFdNHvibAfaUiMqRhAZl8AcB/96N7snW6EBnOAQLKZ9Lvaj90beb2yB
         QJ2A==
X-Gm-Message-State: AFqh2krA+CgI3K6DUIz4ujtXIUO4B0j4rGaxupqAWqGsK4WFTEJDFECs
        3SyvpGxcNCYjG3LsdF4GjyIvwA==
X-Google-Smtp-Source: AMrXdXuKdjJCzpN3YBm3cLpLrOJ9v5mNchPoBZ58C+Y3o8M3JoxJYvtkEA7OoFuvQcdsiA4sJwXsiA==
X-Received: by 2002:a05:6512:1307:b0:4cb:3d40:93ff with SMTP id x7-20020a056512130700b004cb3d4093ffmr11560911lfu.58.1673467290559;
        Wed, 11 Jan 2023 12:01:30 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v20-20020a05651203b400b004b4e6dab30esm2881437lfp.222.2023.01.11.12.01.29
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
Subject: [PATCH v2 02/14] clk: qcom: clk-alpha-pll: program PLL_TEST/PLL_TEST_U if required
Date:   Wed, 11 Jan 2023 23:01:16 +0300
Message-Id: <20230111200128.2593359-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
References: <20230111200128.2593359-1-dmitry.baryshkov@linaro.org>
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

Program PLL_TEST and PLL_TEST_U registers if required by the pll
configuration.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-alpha-pll.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
index f9e4cfd7261c..e266379427f2 100644
--- a/drivers/clk/qcom/clk-alpha-pll.c
+++ b/drivers/clk/qcom/clk-alpha-pll.c
@@ -358,6 +358,11 @@ void clk_alpha_pll_configure(struct clk_alpha_pll *pll, struct regmap *regmap,
 
 	regmap_update_bits(regmap, PLL_USER_CTL(pll), mask, val);
 
+	clk_alpha_pll_write_config(regmap, PLL_TEST_CTL(pll),
+						config->test_ctl_val);
+	clk_alpha_pll_write_config(regmap, PLL_TEST_CTL_U(pll),
+						config->test_ctl_hi_val);
+
 	if (pll->flags & SUPPORTS_FSM_MODE)
 		qcom_pll_set_fsm_mode(regmap, PLL_MODE(pll), 6, 0);
 }
-- 
2.30.2

