Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 644D73DEE50
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235926AbhHCMyu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236081AbhHCMys (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:48 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B60ECC06175F
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:34 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id l11-20020a7bcf0b0000b0290253545c2997so2065251wmg.4
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UylhRv8a3g+/viiqNuHDvYEn6A6WdNOdrTNj8PEKZAg=;
        b=p14ci8d5vAa0paWg9lLX7xgTb9i+fg+Fzqi3fp5C0XALP9yMwBJAt1F+0BgdAHBW25
         s3jGKew9FFTXvixuk+m3AFDVKGkUPOAPMfVh4D/Xbcq8BnUKEm71gxLmvLcQDXUJ8PgU
         tgql4GIAHTKJUAqi7zdpU3V2fBpvg3MhzQQyGJm4sKlv0FTm4DnbBF3wMcHPVu3CG3GN
         RMANx5sa5K9X58zOgFxU5Jc4GmQtGI4eWEd3yy0YG+gsml0qeJTs/yiIcDEusLJ3HkmM
         eMPVo9WqpX3Hae1qN7qN+sC35VHxr9YohLNdO3j2Lu/I+r+uHf+fPyeAq6sDP6OOmZX2
         ZaAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UylhRv8a3g+/viiqNuHDvYEn6A6WdNOdrTNj8PEKZAg=;
        b=bAn8H1Tjr+7+KUC4GsI+hGU/UdPWh9U7E1YF3UOrH3WsnXzgFxw9exY1lYnGYUFzs5
         KMqVvOPgRX/acbugXvFgKPmjvnmytmkiujXOI4UsyM26g5qkyTAQSWY+/tExS0wZtEAz
         UAoJzcDLNG+Ij5ZSzJKQrlWrB9+0CFYtJG4yt4GhQgiMFeAeRJRwmf560OEUyxUVr3ub
         c/g7bDXqPc7SRBC30oBk49vmwPMr5WFt05J5mcKwAX/JnNMQB8lBN+2z8wuP1uRq18IJ
         jij+W2lFfdZmbfrEvCstrXzL9+LQses8f7TW4BcJkjve8TvQrTw53kX45YSsE99MDDdS
         W1/A==
X-Gm-Message-State: AOAM532bqlNNVMnETNEo0Jkm+VufPwBtZuFx42Fk12du1BNcX6Q/JMdI
        /vG9nZIloCSYXTHzsxWlCZtH5A==
X-Google-Smtp-Source: ABdhPJzmSo8QmIAA4EFTn69jSttFzssnZahxCvEyVYhhGvutsEB/O5sZwi9ekFRZfx5Jta/KQkkbnw==
X-Received: by 2002:a1c:2390:: with SMTP id j138mr21131727wmj.66.1627995273246;
        Tue, 03 Aug 2021 05:54:33 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:32 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 09/20] ASoC: qdsp6: q6afe-clocks: move audio-clocks to common file
Date:   Tue,  3 Aug 2021 13:54:00 +0100
Message-Id: <20210803125411.28066-10-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move common parts of  q6afe-clocks to q6dsp-audio-clocks so that we could
reuse most of the driver for new Q6DSP audio frameworks.

This is to make the code reuseable for new Q6DSP AudioReach framework.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/qdsp6/Makefile             |   3 +-
 sound/soc/qcom/qdsp6/q6afe-clocks.c       | 187 ++--------------------
 sound/soc/qcom/qdsp6/q6dsp-audio-clocks.c | 185 +++++++++++++++++++++
 sound/soc/qcom/qdsp6/q6dsp-audio-clocks.h |  30 ++++
 4 files changed, 232 insertions(+), 173 deletions(-)
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-audio-clocks.c
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-audio-clocks.h

diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index 63151b7da140..2a19fd3ae352 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -1,11 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0-only
 snd-afe-dai-objs += q6dsp-audio-ports.o q6afe-dai.o
+snd-afe-clks-objs := q6dsp-audio-clocks.o q6afe-clocks.o
 
 obj-$(CONFIG_SND_SOC_QDSP6_COMMON) += q6dsp-common.o
 obj-$(CONFIG_SND_SOC_QDSP6_CORE) += q6core.o
 obj-$(CONFIG_SND_SOC_QDSP6_AFE) += q6afe.o
 obj-$(CONFIG_SND_SOC_QDSP6_AFE_DAI) += snd-afe-dai.o
-obj-$(CONFIG_SND_SOC_QDSP6_AFE_CLOCKS) += q6afe-clocks.o
+obj-$(CONFIG_SND_SOC_QDSP6_AFE_CLOCKS) += snd-afe-clks.o
 obj-$(CONFIG_SND_SOC_QDSP6_ADM) += q6adm.o
 obj-$(CONFIG_SND_SOC_QDSP6_ROUTING) += q6routing.o
 obj-$(CONFIG_SND_SOC_QDSP6_ASM) += q6asm.o
diff --git a/sound/soc/qcom/qdsp6/q6afe-clocks.c b/sound/soc/qcom/qdsp6/q6afe-clocks.c
index 9431656283cd..05e00ceb5a75 100644
--- a/sound/soc/qcom/qdsp6/q6afe-clocks.c
+++ b/sound/soc/qcom/qdsp6/q6afe-clocks.c
@@ -7,115 +7,18 @@
 #include <linux/module.h>
 #include <linux/device.h>
 #include <linux/platform_device.h>
-#include <linux/of.h>
-#include <linux/slab.h>
+#include "q6dsp-audio-clocks.h"
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
+static const struct q6dsp_clk_desc q6dsp_clk_q6afe = {
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
 
diff --git a/sound/soc/qcom/qdsp6/q6dsp-audio-clocks.c b/sound/soc/qcom/qdsp6/q6dsp-audio-clocks.c
new file mode 100644
index 000000000000..d3b6c9a4bf2b
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6dsp-audio-clocks.c
@@ -0,0 +1,185 @@
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
+#include <dt-bindings/sound/qcom,q6dsp-audio-ports.h>
+#include "q6dsp-audio-clocks.h"
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
diff --git a/sound/soc/qcom/qdsp6/q6dsp-audio-clocks.h b/sound/soc/qcom/qdsp6/q6dsp-audio-clocks.h
new file mode 100644
index 000000000000..3770d81f2bd6
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6dsp-audio-clocks.h
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

