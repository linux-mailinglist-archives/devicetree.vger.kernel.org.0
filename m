Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 806273BAAE8
	for <lists+devicetree@lfdr.de>; Sun,  4 Jul 2021 04:40:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbhGDCnX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Jul 2021 22:43:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbhGDCnV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Jul 2021 22:43:21 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3262CC061762
        for <devicetree@vger.kernel.org>; Sat,  3 Jul 2021 19:40:47 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id w22so9626130pff.5
        for <devicetree@vger.kernel.org>; Sat, 03 Jul 2021 19:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=LGTpZpcq32N1ry1LRLwc7jq58V/cDLzcGUvKzTqnKL0=;
        b=F83E1Q5H1nwJYdoExXJpnGKLhUHfJgiUg5f3KCJlnwZIHsFS8uG7I/BUOWqxbBHy7J
         nYJiJGRiVkVdtL4AuohjgJd7lg/F3Q8EstetwfzAK38CrFDd283EC15V9QFy+KwdU7tJ
         ThBQJlB1JEXY4gOygZw8BM/CEcbG/XwI3NVjG4rAnhthYRjUivKMWQY4U/WP0ErJ3VKb
         T5JN1AhNaByyK99PN3u0vowEkrEp0wCtCIWvzPVeZNIaeJAQcIGUTH3BVcLodQjTQzoS
         kwsGuO0qx9lEGiIqn2h50mYapkQpBthPZ4JhhLKySWs0R0RZ4oMVIoCbE8NIBb4yVJhY
         EJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=LGTpZpcq32N1ry1LRLwc7jq58V/cDLzcGUvKzTqnKL0=;
        b=mX1YdxhLd3XSKLi/2GylA6zTCl020dRH3DXJmmzb4SiYW7oevbQgmOOil+fE1FMxX8
         BMg2SUk9LieAUtPaU+XG6HywtK05M3vYUAubuhBZV9G33d7vwwil3sp+wTEv5CGP3x5O
         RNBwxmayZH92MgrOwr3mg885vcJkKawCJcY8BkGJg8UFv71EznnbwRfLWENRKUI1aqg2
         PNLS8LcVZSVM0/Q1FBrsTt32HAudiqcQa6p57DZQaNbrDk1M5lrodW3HuaG3EKSeHT5h
         4nQTBK7UFpEiSNeA/sTkOLwu0Mxae4YmA07JPop21eY/nMDstObNiIgRmpJao/U2c7k0
         aRSg==
X-Gm-Message-State: AOAM533dnGqkWnDiNrA+pboAgjnf7dADP1OQqcX3GpjPb/EtsVWMdLQc
        VU+hTAX2x8BSHKki03/6xhYDDw==
X-Google-Smtp-Source: ABdhPJzrv83//wTI/fTzoXpjitQYAV5M1F6hUvVBdBmSdECuMk27Pfe5cxAOWTBn0493YNNbjiRNNw==
X-Received: by 2002:a63:6cc:: with SMTP id 195mr8146533pgg.281.1625366446801;
        Sat, 03 Jul 2021 19:40:46 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id g17sm9394624pgh.61.2021.07.03.19.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jul 2021 19:40:46 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Benjamin Li <benl@squareup.com>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 1/4] clk: qcom: apcs-msm8916: Flag a53mux instead of a53pll as critical
Date:   Sun,  4 Jul 2021 10:40:29 +0800
Message-Id: <20210704024032.11559-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210704024032.11559-1-shawn.guo@linaro.org>
References: <20210704024032.11559-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The clock source for MSM8916 cpu cores is like below.

                        |\
         a53pll --------| \ a53mux     +------+
                        | |------------| cpus |
     gpll0_vote --------| /            +------+
                        |/

So a53mux rather than a53pll is actually the parent clock of cpu cores.
It makes more sense to flag a53mux as critical instead, so that when
either a53pll or gpll0_vote is used by cpu cores, the clock will be kept
enabled while the other can be disabled.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/clk/qcom/a53-pll.c      | 1 -
 drivers/clk/qcom/apcs-msm8916.c | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/a53-pll.c b/drivers/clk/qcom/a53-pll.c
index af6ac17c7dae..d6756bd777ce 100644
--- a/drivers/clk/qcom/a53-pll.c
+++ b/drivers/clk/qcom/a53-pll.c
@@ -70,7 +70,6 @@ static int qcom_a53pll_probe(struct platform_device *pdev)
 	init.parent_names = (const char *[]){ "xo" };
 	init.num_parents = 1;
 	init.ops = &clk_pll_sr2_ops;
-	init.flags = CLK_IS_CRITICAL;
 	pll->clkr.hw.init = &init;
 
 	ret = devm_clk_register_regmap(dev, &pll->clkr);
diff --git a/drivers/clk/qcom/apcs-msm8916.c b/drivers/clk/qcom/apcs-msm8916.c
index cf69a97d0439..d7ac6d6b15b6 100644
--- a/drivers/clk/qcom/apcs-msm8916.c
+++ b/drivers/clk/qcom/apcs-msm8916.c
@@ -65,7 +65,7 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	init.parent_data = pdata;
 	init.num_parents = ARRAY_SIZE(pdata);
 	init.ops = &clk_regmap_mux_div_ops;
-	init.flags = CLK_SET_RATE_PARENT;
+	init.flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT;
 
 	a53cc->clkr.hw.init = &init;
 	a53cc->clkr.regmap = regmap;
-- 
2.17.1

