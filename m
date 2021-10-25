Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F1B9439D53
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 19:17:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232866AbhJYRTy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 13:19:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230183AbhJYRTy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 13:19:54 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B74AC061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:31 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id j35-20020a05600c1c2300b0032caeca81b7so360870wms.0
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 10:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kwh/zfyHKoZT2T+jmgQ6n/y3v9zeytVaHdrWCJhtta4=;
        b=UzFeGRMuouettuGjNjAUrH0PIQGz9QJ32mys6gaIGAR99Grt9k1SpRtWx1/vc2zkw3
         EWkUWcQ5sfQCvOPeF0dk98XmoX2AaHVybQL49N36rpcIk490aZX3L5qgGp8jxy7j1Y5N
         khlWF+qamZLLpzOrw1uLiz3kKvMFzcRSBvYnVN0wpuITuefmy20MLXxlszQzmktIhg97
         cWBRj9iNJiFjj5/8dcL+lzFaqdHgUp1LC16RKwNJRE0I6Zn//MULPtpWNZ0eB/x+/uNm
         Cer8RjtcwacCGxzBWXXHqZWqjCtFt6IaJbuwr7x19cl1KWK6G+dNjQ3WLWIvcnEdSV+0
         3pGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kwh/zfyHKoZT2T+jmgQ6n/y3v9zeytVaHdrWCJhtta4=;
        b=anZtopILptAYfyjek0CdzpGskKavSxyTXyNSWY75KE08ehN1KFlELcB2Q9Nl8rLQAn
         mA8mF5dWLQM6P9aR83kco3lMiwK8AY8lRCFrWDiZ3jDmY0wjvYOtfil+CVTQl6jap9zE
         dHYlHCU6bY01NlCgfuXrkPBB/dLDIo8URapkRluv/nUSTBRVP48RN3Dpz5D/4kRiUaoF
         qk9M6KFlHnCyPgpUQBWQny1Xs8+LMjI8dTHFofNP086L176gsqRWMQoXogqAUvqghZxt
         C1PK+xzKpercgBawIWpxdeUuaap7QE9qaU6/41YsSlTnzyUyHDAMMA541nDkdiqkoHKg
         K4Lw==
X-Gm-Message-State: AOAM531JMH+jVh0pYn1eFvZYmejJ+5UH1quDplCynpirw9c4v+959as6
        vmsf3K78x40HsbALpyJAouI87Q==
X-Google-Smtp-Source: ABdhPJypVwDosPOXXoI3SPg/TjbJe/VTsPvp1VCfLdbFb05WhZJCZEdxgSNqRCn8mE9iug7OCv3cHg==
X-Received: by 2002:a1c:2507:: with SMTP id l7mr18631875wml.144.1635182250099;
        Mon, 25 Oct 2021 10:17:30 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id r11sm5181012wrt.42.2021.10.25.10.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 10:17:29 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v10 17/17] ASoC: qdsp6: audioreach: add support for q6prm-clocks
Date:   Mon, 25 Oct 2021 18:16:49 +0100
Message-Id: <20211025171649.17730-18-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
References: <20211025171649.17730-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add q6prm clocks using existing qdsp6-audio-clock driver

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 sound/soc/qcom/Kconfig              |  4 ++
 sound/soc/qcom/qdsp6/Makefile       |  1 +
 sound/soc/qcom/qdsp6/q6prm-clocks.c | 85 +++++++++++++++++++++++++++++
 3 files changed, 90 insertions(+)
 create mode 100644 sound/soc/qcom/qdsp6/q6prm-clocks.c

diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index 465a2a603401..5b74c5bcc47f 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -96,8 +96,12 @@ config SND_SOC_QDSP6_APM
 	select SND_SOC_QDSP6_APM_DAI
 	select SND_SOC_QDSP6_APM_LPASS_DAI
 
+config SND_SOC_QDSP6_PRM_LPASS_CLOCKS
+	tristate
+
 config SND_SOC_QDSP6_PRM
 	tristate
+	select SND_SOC_QDSP6_PRM_LPASS_CLOCKS
 
 config SND_SOC_QDSP6
 	tristate "SoC ALSA audio driver for QDSP6"
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
index 000000000000..a26cda5140c1
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
+static const struct q6dsp_clk_desc q6dsp_clk_q6prm __maybe_unused = {
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
+MODULE_LICENSE("GPL");
-- 
2.21.0

