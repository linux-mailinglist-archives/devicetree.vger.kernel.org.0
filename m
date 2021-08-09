Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2AA73E44B7
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 13:25:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235160AbhHILZU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 07:25:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235165AbhHILZQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 07:25:16 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBB1CC0617A4
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 04:24:54 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id u15so10339501wmj.1
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 04:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ghQXYCQfqyt/dVUAb3gIF4EwlLmOXpP1q20//Znkk/E=;
        b=pe7TZjNRlEbSKKuto9YpxdR8FFGZypJh8Q+FJhr1Hwo+IgsPdp3WB68VxMs/N9S6wQ
         tAhR6zjHqoQTiq9q4OctBinh11hiqbMRuWTsYpvPLi6PO6KS86LqTyy0Im/W91o41SSR
         Mh2ny5pfZHRJCx4cxSyjHqSS5WYh/ZA9LjBVzKVdm6DCUV0madV6VTyCL5AaWwyCgPL5
         m0Du83D3VZX1tBxpjYQc3R/RnWg+nFoYVO6S39wzwRTzJa+9zY/vPkulstDONzb4kdGN
         uNbWMDzlvzSkACDfkxqIHE7oi6URfKiWkh689MSGfH3WrT5iYLTwEvgywTUMta5ZykVV
         gE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ghQXYCQfqyt/dVUAb3gIF4EwlLmOXpP1q20//Znkk/E=;
        b=XZS9pEOKGrSPHgLGcCrfTEB2fcdrJwg83tiQ7z0CLHoRiSFthynD/GPjZVY7NiMHTG
         LFOVAIM4xF1yZv33mi2J4jhcAkeCJdO5m5j786aIU5ifivrSAGUkA4eAsw89QILkFPLI
         tzi2DaDFmLLOWMDhElgIuTfFueZm1d+PT7INgZ6EihLhXkAaKwzKDMcUisIXUNATO1L4
         RhpEBAl4eo/fviZqs5Ix8HjJTetelNbPwrvRXgzBovVCLNQadDkI/j4sCCTfoksW5t8J
         fMfR3a6/WrG7fbdILm5+XSDZAITp40Qdf9CGrbW9VtwyK77CvzC0eGZgYz6XKESvx/38
         crBA==
X-Gm-Message-State: AOAM532anqopCE+EIDCo97qvwuLC1FuUYYPDs9ZD8r2AbtrqsT3MWufZ
        nRanc9R+EWCPa7TUWevnQuWLxw==
X-Google-Smtp-Source: ABdhPJzoENf3bJK1dGq16GRUKQa+AnPqPRu2wrnFpbzcXMjScVLEymgc+ugkzEn5IBFjlQQNE5GjoA==
X-Received: by 2002:a05:600c:4144:: with SMTP id h4mr16181284wmm.138.1628508293422;
        Mon, 09 Aug 2021 04:24:53 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id b80sm7774900wmb.2.2021.08.09.04.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 04:24:53 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 20/20] ASoC: qdsp6: audioreach: add support for q6prm-clocks
Date:   Mon,  9 Aug 2021 12:23:39 +0100
Message-Id: <20210809112339.8368-21-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
References: <20210809112339.8368-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add q6prm clocks using existing qdsp6-audio-clock driver

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/Kconfig              |  4 ++
 sound/soc/qcom/qdsp6/Makefile       |  1 +
 sound/soc/qcom/qdsp6/q6prm-clocks.c | 85 +++++++++++++++++++++++++++++
 3 files changed, 90 insertions(+)
 create mode 100644 sound/soc/qcom/qdsp6/q6prm-clocks.c

diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index f4ccfe48f8f7..25beb0d40eb5 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -96,7 +96,11 @@ config SND_SOC_QDSP6_APM
 	select SND_SOC_QDSP6_APM_LPASS_DAI
 	tristate
 
+config SND_SOC_QDSP6_PRM_LPASS_CLOCKS
+	tristate
+
 config SND_SOC_QDSP6_PRM
+	select SND_SOC_QDSP6_PRM_LPASS_CLOCKS
 	tristate
 
 config SND_SOC_QDSP6
diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index c932f8e24b32..3963bf234664 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -16,3 +16,4 @@ obj-$(CONFIG_SND_SOC_QDSP6_APM) += snd-q6apm.o
 obj-$(CONFIG_SND_SOC_QDSP6_APM_DAI) += q6apm-dai.o
 obj-$(CONFIG_SND_SOC_QDSP6_APM_LPASS_DAI) += q6apm-lpass-dais.o
 obj-$(CONFIG_SND_SOC_QDSP6_PRM) += q6prm.o
+obj-$(CONFIG_SND_SOC_QDSP6_PRM_LPASS_CLOCKS) += q6prm-clocks.o
diff --git a/sound/soc/qcom/qdsp6/q6prm-clocks.c b/sound/soc/qcom/qdsp6/q6prm-clocks.c
new file mode 100644
index 000000000000..a1d9522b2bd2
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6prm-clocks.c
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2021, Linaro Limited
+
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/platform_device.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
+#include "q6dsp-lpass-clocks.h"
+#include "q6prm.h"
+
+#define Q6PRM_CLK(id) {					\
+		.clk_id	= id,				\
+		.q6dsp_clk_id	= Q6PRM_##id,		\
+		.name = #id,				\
+		.rate = 19200000,			\
+	}
+
+static const struct q6dsp_clk_init q6prm_clks[] = {
+	Q6PRM_CLK(LPASS_CLK_ID_PRI_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_PRI_MI2S_EBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_SEC_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_SEC_MI2S_EBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_TER_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_TER_MI2S_EBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_QUAD_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_QUAD_MI2S_EBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_SPEAKER_I2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_SPEAKER_I2S_EBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_SPEAKER_I2S_OSR),
+	Q6PRM_CLK(LPASS_CLK_ID_QUI_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_QUI_MI2S_EBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_SEN_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_SEN_MI2S_EBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_INT0_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_INT1_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_INT2_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_INT3_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_INT4_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_INT5_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_INT6_MI2S_IBIT),
+	Q6PRM_CLK(LPASS_CLK_ID_QUI_MI2S_OSR),
+	Q6PRM_CLK(LPASS_CLK_ID_WSA_CORE_MCLK),
+	Q6PRM_CLK(LPASS_CLK_ID_WSA_CORE_NPL_MCLK),
+	Q6PRM_CLK(LPASS_CLK_ID_VA_CORE_MCLK),
+	Q6PRM_CLK(LPASS_CLK_ID_TX_CORE_MCLK),
+	Q6PRM_CLK(LPASS_CLK_ID_TX_CORE_NPL_MCLK),
+	Q6PRM_CLK(LPASS_CLK_ID_RX_CORE_MCLK),
+	Q6PRM_CLK(LPASS_CLK_ID_RX_CORE_NPL_MCLK),
+	Q6PRM_CLK(LPASS_CLK_ID_VA_CORE_2X_MCLK),
+	Q6DSP_VOTE_CLK(LPASS_HW_MACRO_VOTE, Q6PRM_HW_CORE_ID_LPASS,
+		       "LPASS_HW_MACRO"),
+	Q6DSP_VOTE_CLK(LPASS_HW_DCODEC_VOTE, Q6PRM_HW_CORE_ID_DCODEC,
+		       "LPASS_HW_DCODEC"),
+};
+
+static const struct q6dsp_clk_desc q6dsp_clk_q6prm = {
+	.clks = q6prm_clks,
+	.num_clks = ARRAY_SIZE(q6prm_clks),
+	.lpass_set_clk = q6prm_set_lpass_clock,
+	.lpass_vote_clk = q6prm_vote_lpass_core_hw,
+	.lpass_unvote_clk = q6prm_unvote_lpass_core_hw,
+};
+
+#ifdef CONFIG_OF
+static const struct of_device_id q6prm_clock_device_id[] = {
+	{ .compatible = "qcom,q6prm-lpass-clocks", .data = &q6dsp_clk_q6prm },
+	{},
+};
+MODULE_DEVICE_TABLE(of, q6prm_clock_device_id);
+#endif
+
+static struct platform_driver q6prm_clock_platform_driver = {
+	.driver = {
+		.name = "q6prm-lpass-clock",
+		.of_match_table = of_match_ptr(q6prm_clock_device_id),
+	},
+	.probe = q6dsp_clock_dev_probe,
+};
+module_platform_driver(q6prm_clock_platform_driver);
+
+MODULE_DESCRIPTION("Q6 Proxy Resource Manager LPASS clock driver");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0

