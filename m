Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25E6443B0ED
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 13:17:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235463AbhJZLTm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 07:19:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235460AbhJZLTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 07:19:41 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3368BC061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:18 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v17so17232136wrv.9
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TQi26kZD3NU6o9BQW3gnN4Gz9rwWQ34SGLUx3B9aDNU=;
        b=PnBD5rSKy478W+5PchMVMOdBq5jedGzyXusGyhLr+koNpDE+L64dSTroBLAWTXGBnk
         Efw2nq5gAi6q3Rxrmgxl5LlvYfWtaPwYMcfGo3oPT65S/EJD/WsfmhA6L2+RKwizfB3T
         /4tVPbUt74dxRPT0nk6+0ix2bLs1J25tS9vKBCHGQabUKVOY1hvu8BBA/h3Ao4HuSY8T
         GqvWSfYI0AQ29OIEP8YCTSkaMvKk17xqso9gOWS+RFqGxLQroNYbx6RyUBU5KqakbP09
         3fRZJjtMKashb5n2hqdStPr7Ll9C4ja9E4RI5D8eBFQjI3rDe7rnMELl3KTG6PkcDmWX
         yoKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TQi26kZD3NU6o9BQW3gnN4Gz9rwWQ34SGLUx3B9aDNU=;
        b=QzXrIEdLKA/f8A0yuyPoEdTp9EedT2fMLsKyGmA0sJo4J3OrpxxXkChy1FOhh8qcpw
         xqOmNzVtS2DDUp0m0yASvzc+/Kdc8VkOHLNSocugfRt1LjbCb09ZgWkVyUcI8OUqIECF
         NUalIMFMSxhTJmayTY/4XFbZ+tX3ONQE6laT3Pwso3A+EDNVW6YBoNc5AFoiab3yz7cU
         +8TzVT1D4ck7eOcKPFmiOoDjF5dQqXU/lfJZIO8g9WYqYvq/SFifhR58Bxnz4JXS1ISb
         2IHgSwjb9yxxNBWlW0SHxD76Tnu+K8ohDhgW3EBAEQUYH5cDXzsgFkVSbd8NZJUB77u1
         6cyg==
X-Gm-Message-State: AOAM5314tUAT2+N+dAa61IvYZohd8KbQaJJ8WbyF9xYDHg5B/6IsjGVw
        ETZJSzP8joMZcmX81n7m7mR3Qg==
X-Google-Smtp-Source: ABdhPJy3Gur/u6u5VPorO0QEJyEBZ0oFfFUSWcwl1hnK6xz8Z+BZ5B6VgPKVsKxy0VNvYsoCY61GQg==
X-Received: by 2002:a5d:59a7:: with SMTP id p7mr31375421wrr.141.1635247036775;
        Tue, 26 Oct 2021 04:17:16 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l124sm355483wml.8.2021.10.26.04.17.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 04:17:16 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v11 05/17] ASoC: qdsp6: q6afe-clocks: move audio-clocks to common file
Date:   Tue, 26 Oct 2021 12:16:43 +0100
Message-Id: <20211026111655.1702-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
References: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move common parts of  q6afe-clocks to q6dsp-lpass-clocks so that we could
reuse most of the driver for new Q6DSP audio frameworks.

This is to make the code reuseable for new Q6DSP AudioReach framework.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 sound/soc/qcom/qdsp6/Makefile             |   2 +-
 sound/soc/qcom/qdsp6/q6afe-clocks.c       | 187 ++--------------------
 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c | 186 +++++++++++++++++++++
 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h |  30 ++++
 4 files changed, 232 insertions(+), 173 deletions(-)
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h

diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index 11e8705bbc5c..a4191d395557 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
-snd-q6dsp-common-objs := q6dsp-common.o q6dsp-lpass-ports.o
+snd-q6dsp-common-objs := q6dsp-common.o q6dsp-lpass-ports.o q6dsp-lpass-clocks.o
 
 obj-$(CONFIG_SND_SOC_QDSP6_COMMON) += snd-q6dsp-common.o
 obj-$(CONFIG_SND_SOC_QDSP6_CORE) += q6core.o
diff --git a/sound/soc/qcom/qdsp6/q6afe-clocks.c b/sound/soc/qcom/qdsp6/q6afe-clocks.c
index 9431656283cd..1ccab64ff00b 100644
--- a/sound/soc/qcom/qdsp6/q6afe-clocks.c
+++ b/sound/soc/qcom/qdsp6/q6afe-clocks.c
@@ -7,115 +7,18 @@
 #include <linux/module.h>
 #include <linux/device.h>
 #include <linux/platform_device.h>
-#include <linux/of.h>
-#include <linux/slab.h>
+#include "q6dsp-lpass-clocks.h"
 #include "q6afe.h"
 
 #define Q6AFE_CLK(id) {					\
 		.clk_id	= id,				\
-		.afe_clk_id	= Q6AFE_##id,		\
+		.q6dsp_clk_id	= Q6AFE_##id,		\
 		.name = #id,				\
 		.rate = 19200000,			\
 	}
 
-#define Q6AFE_VOTE_CLK(id, blkid, n) {			\
-		.clk_id	= id,				\
-		.afe_clk_id = blkid,			\
-		.name = n,				\
-	}
-
-struct q6afe_clk_init {
-	int clk_id;
-	int afe_clk_id;
-	char *name;
-	int rate;
-};
-
-struct q6afe_clk {
-	struct device *dev;
-	int afe_clk_id;
-	int attributes;
-	int rate;
-	uint32_t handle;
-	struct clk_hw hw;
-};
-
-#define to_q6afe_clk(_hw) container_of(_hw, struct q6afe_clk, hw)
-
-struct q6afe_cc {
-	struct device *dev;
-	struct q6afe_clk *clks[Q6AFE_MAX_CLK_ID];
-};
-
-static int clk_q6afe_prepare(struct clk_hw *hw)
-{
-	struct q6afe_clk *clk = to_q6afe_clk(hw);
-
-	return q6afe_set_lpass_clock(clk->dev, clk->afe_clk_id, clk->attributes,
-				     Q6AFE_LPASS_CLK_ROOT_DEFAULT, clk->rate);
-}
-
-static void clk_q6afe_unprepare(struct clk_hw *hw)
-{
-	struct q6afe_clk *clk = to_q6afe_clk(hw);
-
-	q6afe_set_lpass_clock(clk->dev, clk->afe_clk_id, clk->attributes,
-			      Q6AFE_LPASS_CLK_ROOT_DEFAULT, 0);
-}
-
-static int clk_q6afe_set_rate(struct clk_hw *hw, unsigned long rate,
-			      unsigned long parent_rate)
-{
-	struct q6afe_clk *clk = to_q6afe_clk(hw);
-
-	clk->rate = rate;
-
-	return 0;
-}
-
-static unsigned long clk_q6afe_recalc_rate(struct clk_hw *hw,
-					   unsigned long parent_rate)
-{
-	struct q6afe_clk *clk = to_q6afe_clk(hw);
-
-	return clk->rate;
-}
-
-static long clk_q6afe_round_rate(struct clk_hw *hw, unsigned long rate,
-				 unsigned long *parent_rate)
-{
-	return rate;
-}
-
-static const struct clk_ops clk_q6afe_ops = {
-	.prepare	= clk_q6afe_prepare,
-	.unprepare	= clk_q6afe_unprepare,
-	.set_rate	= clk_q6afe_set_rate,
-	.round_rate	= clk_q6afe_round_rate,
-	.recalc_rate	= clk_q6afe_recalc_rate,
-};
-
-static int clk_vote_q6afe_block(struct clk_hw *hw)
-{
-	struct q6afe_clk *clk = to_q6afe_clk(hw);
-
-	return q6afe_vote_lpass_core_hw(clk->dev, clk->afe_clk_id,
-					clk_hw_get_name(&clk->hw), &clk->handle);
-}
 
-static void clk_unvote_q6afe_block(struct clk_hw *hw)
-{
-	struct q6afe_clk *clk = to_q6afe_clk(hw);
-
-	q6afe_unvote_lpass_core_hw(clk->dev, clk->afe_clk_id, clk->handle);
-}
-
-static const struct clk_ops clk_vote_q6afe_ops = {
-	.prepare	= clk_vote_q6afe_block,
-	.unprepare	= clk_unvote_q6afe_block,
-};
-
-static const struct q6afe_clk_init q6afe_clks[] = {
+static const struct q6dsp_clk_init q6afe_clks[] = {
 	Q6AFE_CLK(LPASS_CLK_ID_PRI_MI2S_IBIT),
 	Q6AFE_CLK(LPASS_CLK_ID_PRI_MI2S_EBIT),
 	Q6AFE_CLK(LPASS_CLK_ID_SEC_MI2S_IBIT),
@@ -176,88 +79,28 @@ static const struct q6afe_clk_init q6afe_clks[] = {
 	Q6AFE_CLK(LPASS_CLK_ID_RX_CORE_MCLK),
 	Q6AFE_CLK(LPASS_CLK_ID_RX_CORE_NPL_MCLK),
 	Q6AFE_CLK(LPASS_CLK_ID_VA_CORE_2X_MCLK),
-	Q6AFE_VOTE_CLK(LPASS_HW_AVTIMER_VOTE,
+	Q6DSP_VOTE_CLK(LPASS_HW_AVTIMER_VOTE,
 		       Q6AFE_LPASS_CORE_AVTIMER_BLOCK,
 		       "LPASS_AVTIMER_MACRO"),
-	Q6AFE_VOTE_CLK(LPASS_HW_MACRO_VOTE,
+	Q6DSP_VOTE_CLK(LPASS_HW_MACRO_VOTE,
 		       Q6AFE_LPASS_CORE_HW_MACRO_BLOCK,
 		       "LPASS_HW_MACRO"),
-	Q6AFE_VOTE_CLK(LPASS_HW_DCODEC_VOTE,
+	Q6DSP_VOTE_CLK(LPASS_HW_DCODEC_VOTE,
 		       Q6AFE_LPASS_CORE_HW_DCODEC_BLOCK,
 		       "LPASS_HW_DCODEC"),
 };
 
-static struct clk_hw *q6afe_of_clk_hw_get(struct of_phandle_args *clkspec,
-					  void *data)
-{
-	struct q6afe_cc *cc = data;
-	unsigned int idx = clkspec->args[0];
-	unsigned int attr = clkspec->args[1];
-
-	if (idx >= Q6AFE_MAX_CLK_ID || attr > LPASS_CLK_ATTRIBUTE_COUPLE_DIVISOR) {
-		dev_err(cc->dev, "Invalid clk specifier (%d, %d)\n", idx, attr);
-		return ERR_PTR(-EINVAL);
-	}
-
-	if (cc->clks[idx]) {
-		cc->clks[idx]->attributes = attr;
-		return &cc->clks[idx]->hw;
-	}
-
-	return ERR_PTR(-ENOENT);
-}
-
-static int q6afe_clock_dev_probe(struct platform_device *pdev)
-{
-	struct q6afe_cc *cc;
-	struct device *dev = &pdev->dev;
-	int i, ret;
-
-	cc = devm_kzalloc(dev, sizeof(*cc), GFP_KERNEL);
-	if (!cc)
-		return -ENOMEM;
-
-	cc->dev = dev;
-	for (i = 0; i < ARRAY_SIZE(q6afe_clks); i++) {
-		unsigned int id = q6afe_clks[i].clk_id;
-		struct clk_init_data init = {
-			.name =  q6afe_clks[i].name,
-		};
-		struct q6afe_clk *clk;
-
-		clk = devm_kzalloc(dev, sizeof(*clk), GFP_KERNEL);
-		if (!clk)
-			return -ENOMEM;
-
-		clk->dev = dev;
-		clk->afe_clk_id = q6afe_clks[i].afe_clk_id;
-		clk->rate = q6afe_clks[i].rate;
-		clk->hw.init = &init;
-
-		if (clk->rate)
-			init.ops = &clk_q6afe_ops;
-		else
-			init.ops = &clk_vote_q6afe_ops;
-
-		cc->clks[id] = clk;
-
-		ret = devm_clk_hw_register(dev, &clk->hw);
-		if (ret)
-			return ret;
-	}
-
-	ret = devm_of_clk_add_hw_provider(dev, q6afe_of_clk_hw_get, cc);
-	if (ret)
-		return ret;
-
-	dev_set_drvdata(dev, cc);
-
-	return 0;
-}
+static const struct q6dsp_clk_desc q6dsp_clk_q6afe __maybe_unused = {
+	.clks = q6afe_clks,
+	.num_clks = ARRAY_SIZE(q6afe_clks),
+	.lpass_set_clk = q6afe_set_lpass_clock,
+	.lpass_vote_clk = q6afe_vote_lpass_core_hw,
+	.lpass_unvote_clk = q6afe_unvote_lpass_core_hw,
+};
 
 #ifdef CONFIG_OF
 static const struct of_device_id q6afe_clock_device_id[] = {
-	{ .compatible = "qcom,q6afe-clocks" },
+	{ .compatible = "qcom,q6afe-clocks", .data = &q6dsp_clk_q6afe },
 	{},
 };
 MODULE_DEVICE_TABLE(of, q6afe_clock_device_id);
@@ -268,7 +111,7 @@ static struct platform_driver q6afe_clock_platform_driver = {
 		.name = "q6afe-clock",
 		.of_match_table = of_match_ptr(q6afe_clock_device_id),
 	},
-	.probe = q6afe_clock_dev_probe,
+	.probe = q6dsp_clock_dev_probe,
 };
 module_platform_driver(q6afe_clock_platform_driver);
 
diff --git a/sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c b/sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c
new file mode 100644
index 000000000000..4613867d1133
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c
@@ -0,0 +1,186 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2020, Linaro Limited
+
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/platform_device.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/slab.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
+#include "q6dsp-lpass-clocks.h"
+
+#define Q6DSP_MAX_CLK_ID			104
+#define Q6DSP_LPASS_CLK_ROOT_DEFAULT		0
+
+
+struct q6dsp_clk {
+	struct device *dev;
+	int q6dsp_clk_id;
+	int attributes;
+	int rate;
+	uint32_t handle;
+	struct clk_hw hw;
+};
+
+#define to_q6dsp_clk(_hw) container_of(_hw, struct q6dsp_clk, hw)
+
+struct q6dsp_cc {
+	struct device *dev;
+	struct q6dsp_clk *clks[Q6DSP_MAX_CLK_ID];
+	const struct q6dsp_clk_desc *desc;
+};
+
+static int clk_q6dsp_prepare(struct clk_hw *hw)
+{
+	struct q6dsp_clk *clk = to_q6dsp_clk(hw);
+	struct q6dsp_cc *cc = dev_get_drvdata(clk->dev);
+
+	return cc->desc->lpass_set_clk(clk->dev, clk->q6dsp_clk_id, clk->attributes,
+				     Q6DSP_LPASS_CLK_ROOT_DEFAULT, clk->rate);
+}
+
+static void clk_q6dsp_unprepare(struct clk_hw *hw)
+{
+	struct q6dsp_clk *clk = to_q6dsp_clk(hw);
+	struct q6dsp_cc *cc = dev_get_drvdata(clk->dev);
+
+	cc->desc->lpass_set_clk(clk->dev, clk->q6dsp_clk_id, clk->attributes,
+			      Q6DSP_LPASS_CLK_ROOT_DEFAULT, 0);
+}
+
+static int clk_q6dsp_set_rate(struct clk_hw *hw, unsigned long rate,
+			      unsigned long parent_rate)
+{
+	struct q6dsp_clk *clk = to_q6dsp_clk(hw);
+
+	clk->rate = rate;
+
+	return 0;
+}
+
+static unsigned long clk_q6dsp_recalc_rate(struct clk_hw *hw,
+					   unsigned long parent_rate)
+{
+	struct q6dsp_clk *clk = to_q6dsp_clk(hw);
+
+	return clk->rate;
+}
+
+static long clk_q6dsp_round_rate(struct clk_hw *hw, unsigned long rate,
+				 unsigned long *parent_rate)
+{
+	return rate;
+}
+
+static const struct clk_ops clk_q6dsp_ops = {
+	.prepare	= clk_q6dsp_prepare,
+	.unprepare	= clk_q6dsp_unprepare,
+	.set_rate	= clk_q6dsp_set_rate,
+	.round_rate	= clk_q6dsp_round_rate,
+	.recalc_rate	= clk_q6dsp_recalc_rate,
+};
+
+static int clk_vote_q6dsp_block(struct clk_hw *hw)
+{
+	struct q6dsp_clk *clk = to_q6dsp_clk(hw);
+	struct q6dsp_cc *cc = dev_get_drvdata(clk->dev);
+
+	return cc->desc->lpass_vote_clk(clk->dev, clk->q6dsp_clk_id,
+				  clk_hw_get_name(&clk->hw), &clk->handle);
+}
+
+static void clk_unvote_q6dsp_block(struct clk_hw *hw)
+{
+	struct q6dsp_clk *clk = to_q6dsp_clk(hw);
+	struct q6dsp_cc *cc = dev_get_drvdata(clk->dev);
+
+	cc->desc->lpass_unvote_clk(clk->dev, clk->q6dsp_clk_id, clk->handle);
+}
+
+static const struct clk_ops clk_vote_q6dsp_ops = {
+	.prepare	= clk_vote_q6dsp_block,
+	.unprepare	= clk_unvote_q6dsp_block,
+};
+
+
+static struct clk_hw *q6dsp_of_clk_hw_get(struct of_phandle_args *clkspec,
+					  void *data)
+{
+	struct q6dsp_cc *cc = data;
+	unsigned int idx = clkspec->args[0];
+	unsigned int attr = clkspec->args[1];
+
+	if (idx >= Q6DSP_MAX_CLK_ID || attr > LPASS_CLK_ATTRIBUTE_COUPLE_DIVISOR) {
+		dev_err(cc->dev, "Invalid clk specifier (%d, %d)\n", idx, attr);
+		return ERR_PTR(-EINVAL);
+	}
+
+	if (cc->clks[idx]) {
+		cc->clks[idx]->attributes = attr;
+		return &cc->clks[idx]->hw;
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
+int q6dsp_clock_dev_probe(struct platform_device *pdev)
+{
+	struct q6dsp_cc *cc;
+	struct device *dev = &pdev->dev;
+	const struct q6dsp_clk_init *q6dsp_clks;
+	const struct q6dsp_clk_desc *desc;
+	int i, ret;
+
+	cc = devm_kzalloc(dev, sizeof(*cc), GFP_KERNEL);
+	if (!cc)
+		return -ENOMEM;
+
+	desc = of_device_get_match_data(&pdev->dev);
+	if (!desc)
+		return -EINVAL;
+
+	cc->desc = desc;
+	cc->dev = dev;
+	q6dsp_clks = desc->clks;
+
+	for (i = 0; i < desc->num_clks; i++) {
+		unsigned int id = q6dsp_clks[i].clk_id;
+		struct clk_init_data init = {
+			.name =  q6dsp_clks[i].name,
+		};
+		struct q6dsp_clk *clk;
+
+		clk = devm_kzalloc(dev, sizeof(*clk), GFP_KERNEL);
+		if (!clk)
+			return -ENOMEM;
+
+		clk->dev = dev;
+		clk->q6dsp_clk_id = q6dsp_clks[i].q6dsp_clk_id;
+		clk->rate = q6dsp_clks[i].rate;
+		clk->hw.init = &init;
+
+		if (clk->rate)
+			init.ops = &clk_q6dsp_ops;
+		else
+			init.ops = &clk_vote_q6dsp_ops;
+
+		cc->clks[id] = clk;
+
+		ret = devm_clk_hw_register(dev, &clk->hw);
+		if (ret)
+			return ret;
+	}
+
+	ret = devm_of_clk_add_hw_provider(dev, q6dsp_of_clk_hw_get, cc);
+	if (ret)
+		return ret;
+
+	dev_set_drvdata(dev, cc);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(q6dsp_clock_dev_probe);
diff --git a/sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h b/sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h
new file mode 100644
index 000000000000..3770d81f2bd6
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __Q6DSP_AUDIO_CLOCKS_H__
+#define __Q6DSP_AUDIO_CLOCKS_H__
+
+struct q6dsp_clk_init {
+	int clk_id;
+	int q6dsp_clk_id;
+	char *name;
+	int rate;
+};
+
+#define Q6DSP_VOTE_CLK(id, blkid, n) {			\
+		.clk_id	= id,				\
+		.q6dsp_clk_id = blkid,			\
+		.name = n,				\
+	}
+
+struct q6dsp_clk_desc {
+	const struct q6dsp_clk_init *clks;
+	size_t num_clks;
+	int (*lpass_set_clk)(struct device *dev, int clk_id, int attr,
+			      int root_clk, unsigned int freq);
+	int (*lpass_vote_clk)(struct device *dev, uint32_t hid, const char *n, uint32_t *h);
+	int (*lpass_unvote_clk)(struct device *dev, uint32_t hid, uint32_t h);
+};
+
+int q6dsp_clock_dev_probe(struct platform_device *pdev);
+
+#endif  /* __Q6DSP_AUDIO_CLOCKS_H__ */
-- 
2.21.0

