Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D804E547BBD
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 21:30:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234278AbiFLTaX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 15:30:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234234AbiFLTaN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 15:30:13 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B0D941FB6
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:12 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id x4so4009780pfj.10
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 12:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zH7tRgS1kPhp4yimKnmW6BSRKLogEiz0V2ye7JMw0J4=;
        b=Tt9ZMWoGP/SE3JgfszEeP/C9v21GL9hkArBg8JYTU9zbzYsU9roh2KHavOcY0fDYhg
         S1Rj4Hvr1V/A8nGgnBGwgxzifzmWQ8Bxd+EmffCx3WRDL8ioJr9B3oyjnahihzmgJN80
         a2jBx7pmL5O3vPSY1gLaAdyb+cq73bRVtkbRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zH7tRgS1kPhp4yimKnmW6BSRKLogEiz0V2ye7JMw0J4=;
        b=XYqAAEMsMUoQGY9bLWT3KNVXhJeFMq6Fhtuj69w8aIssBxbXLxT+ZNFVdEfpVdslPg
         /Y7IxEBoK8PfVUNRoBq56OcMxkIWE59UtNmgM5Rpqqq9+lgYc7KrY4Ag4uLf1PfSqnhy
         TvHekAudHwUHCYQO+ZW6Y9QZiOyd0CJD+BhBwfyAQIodDdYSdTi4B4PZlnoSrwhZJbga
         cd75PYTPRhONtduoUGfJltNRBDEeftj0J5IO6nyjbX11hfxV97cIycxQ5En61Qc1xt1M
         tMvKXKsmYgdcnnK3+nCsS9McBgvX+XSZ0yinSLYuDfdi56QOBXVeAVnpd1aBlDd9mYmf
         /eZg==
X-Gm-Message-State: AOAM5326XVDzJfNUfkm5p25hN9TNwfRqY8T0wzBb1H1fd7hjwtaV1xGa
        Mzkco10tJjNVk9LmmXc6RynY/Q==
X-Google-Smtp-Source: ABdhPJyC2dSfEqr78OqhXUN5sNUdf+zX6fhM99vw6G1E98GZfGT9DAdYLLGCHL36SW5k0FHFQgFZpQ==
X-Received: by 2002:a62:7b94:0:b0:51b:c723:5724 with SMTP id w142-20020a627b94000000b0051bc7235724mr54680295pfc.8.1655062211601;
        Sun, 12 Jun 2022 12:30:11 -0700 (PDT)
Received: from localhost.localdomain ([50.45.132.243])
        by smtp.gmail.com with ESMTPSA id i62-20020a628741000000b0050dc76281bdsm3603607pfe.151.2022.06.12.12.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 12:30:11 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Doug Brown <doug@schmorgal.com>
Subject: [PATCH 04/12] clk: mmp: pxa168: add new clocks for peripherals
Date:   Sun, 12 Jun 2022 12:29:29 -0700
Message-Id: <20220612192937.162952-5-doug@schmorgal.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220612192937.162952-1-doug@schmorgal.com>
References: <20220612192937.162952-1-doug@schmorgal.com>
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

This commit adds three new clocks that previously didn't exist, but are
needed in order to match the clock parenting as described in the PXA168
datasheet.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 drivers/clk/mmp/clk-of-pxa168.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/mmp/clk-of-pxa168.c b/drivers/clk/mmp/clk-of-pxa168.c
index 42569cf3f42f..aba58ce6e60c 100644
--- a/drivers/clk/mmp/clk-of-pxa168.c
+++ b/drivers/clk/mmp/clk-of-pxa168.c
@@ -94,6 +94,9 @@ static struct mmp_param_fixed_factor_clk fixed_factor_clks[] = {
 	{PXA168_CLK_PLL1_13_1_5, "pll1_13_1_5", "pll1_13", 1, 5, 0},
 	{PXA168_CLK_PLL1_2_1_5, "pll1_2_1_5", "pll1_2", 1, 5, 0},
 	{PXA168_CLK_PLL1_3_16, "pll1_3_16", "pll1", 3, 16, 0},
+	{PXA168_CLK_PLL1_2_1_10, "pll1_2_1_10", "pll1_2", 1, 10, 0},
+	{PXA168_CLK_PLL1_2_3_16, "pll1_2_3_16", "pll1_2", 3, 16, 0},
+	{PXA168_CLK_CLK32_2, "clk32_2", "clk32", 1, 2, 0},
 };
 
 static struct mmp_clk_factor_masks uart_factor_masks = {
-- 
2.25.1

