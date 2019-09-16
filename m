Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D85FEB3DED
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2019 17:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389373AbfIPPqX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Sep 2019 11:46:23 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:33103 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389370AbfIPPqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Sep 2019 11:46:23 -0400
Received: by mail-pf1-f196.google.com with SMTP id q10so154472pfl.0
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2019 08:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Hn9ny8/GLVF+YVcbiT4jfW3YxcXYEYikLYvYoEONj7Y=;
        b=M5RVRQtcNRNLU3Ce3wJub13vbJguuHeWcsX6869rW9uUNvO3oDGO+dG4akmpsUmnwS
         25PYYsfU3gW6VKNqgZ1lkVtZ6xaOgA7rp1CpRc9TWjzr/nuXjljUOcreI2mbqzeauhzz
         USnKKVodkIcVBGx4qlAdeCd9A4x8ZMPhwmRo5jrJb0F9b3pDX98q88l31hVbaCa2xMbX
         8BFGpiisTg6Crzk14UeBSg6OwTc4CmsWyFtRQgoMJKg7PSdET2OQMWt2e26dsJ/7Sv2Y
         uoYrIwt1W6o1JBINl4aLs1OcGbc0Q0LrcxvUFE09NT/VFnTL/69tctyPGnxzz6oIJT9y
         XhJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Hn9ny8/GLVF+YVcbiT4jfW3YxcXYEYikLYvYoEONj7Y=;
        b=MkY9ZHpKpTSbJKVH0kHORF9N2dxTZer9W31Gy7srvLEA7DWdEkBeKhwwrxmMy5XpgR
         8FQpvaNhiIgkttFN5UvjqTaVd8hCJTd9FqUNwn9GVGUw5ni0ioyJskdlsFFqzlLAau0M
         EESYkUoUXAMcCaiF4HAh4Nxc7qiuSQrezL/dIW86jr87Q9eNCH3BRFVwsKkzttk+Ye95
         olGnca0l/hUyVhnAC6BFyTRRl+ATIPNGtoJXEybwn51r37aGUHBxoVIFiSfc2DtLmpf0
         DdgST2ZNaMDxoWt4MpF/7GPsCIPEnizo2Lw1OCb1uI9fQS/kkD3IR0CMw1OMwAg+LMbc
         fYOw==
X-Gm-Message-State: APjAAAWmfRomcf8P7SDk4BOZCc8IhASK5SU6Mdcqq6CFelzAjRLHtPHj
        cDuLTCCK7EsCjx+yGnbeGSQC
X-Google-Smtp-Source: APXvYqysfDcCptETjMW/S/qMH4c/coJa64VGrwt2nMp6xw1D34MZvm+EGbIcXKxRSbmamm8V0sqSHw==
X-Received: by 2002:a63:6fc9:: with SMTP id k192mr55987727pgc.20.1568648782559;
        Mon, 16 Sep 2019 08:46:22 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
        by smtp.gmail.com with ESMTPSA id s5sm36227670pfe.52.2019.09.16.08.46.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 08:46:22 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
        sboyd@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        thomas.liau@actions-semi.com, linux-actions@lists.infradead.org,
        linus.walleij@linaro.org, linux-clk@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 1/7] clk: actions: Fix factor clk struct member access
Date:   Mon, 16 Sep 2019 21:15:40 +0530
Message-Id: <20190916154546.24982-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the helper "owl_factor_helper_round_rate" is shared between factor
and composite clocks, using the factor clk specific helper function
like "hw_to_owl_factor" to access its members will create issues when
called from composite clk specific code. Hence, pass the "factor_hw"
struct pointer directly instead of fetching it using factor clk specific
helpers.

This issue has been observed when a composite clock like "sd0_clk" tried
to call "owl_factor_helper_round_rate" resulting in pointer dereferencing
error.

While we are at it, let's rename the "clk_val_best" function to
"owl_clk_val_best" since this is an owl SoCs specific helper.

Fixes: 4bb78fc9744a ("clk: actions: Add factor clock support")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/clk/actions/owl-factor.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/actions/owl-factor.c b/drivers/clk/actions/owl-factor.c
index 317d4a9e112e..f15e2621fa18 100644
--- a/drivers/clk/actions/owl-factor.c
+++ b/drivers/clk/actions/owl-factor.c
@@ -64,11 +64,10 @@ static unsigned int _get_table_val(const struct clk_factor_table *table,
 	return val;
 }
 
-static int clk_val_best(struct clk_hw *hw, unsigned long rate,
+static int owl_clk_val_best(const struct owl_factor_hw *factor_hw,
+			struct clk_hw *hw, unsigned long rate,
 			unsigned long *best_parent_rate)
 {
-	struct owl_factor *factor = hw_to_owl_factor(hw);
-	struct owl_factor_hw *factor_hw = &factor->factor_hw;
 	const struct clk_factor_table *clkt = factor_hw->table;
 	unsigned long parent_rate, try_parent_rate, best = 0, cur_rate;
 	unsigned long parent_rate_saved = *best_parent_rate;
@@ -126,7 +125,7 @@ long owl_factor_helper_round_rate(struct owl_clk_common *common,
 	const struct clk_factor_table *clkt = factor_hw->table;
 	unsigned int val, mul = 0, div = 1;
 
-	val = clk_val_best(&common->hw, rate, parent_rate);
+	val = owl_clk_val_best(factor_hw, &common->hw, rate, parent_rate);
 	_get_table_div_mul(clkt, val, &mul, &div);
 
 	return *parent_rate * mul / div;
-- 
2.17.1

