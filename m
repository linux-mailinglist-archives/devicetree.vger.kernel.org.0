Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B38ED43B0F9
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 13:17:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235474AbhJZLUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 07:20:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235476AbhJZLT7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 07:19:59 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1184DC061228
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:32 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id z11-20020a1c7e0b000000b0030db7b70b6bso2752729wmc.1
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 04:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Kwh/zfyHKoZT2T+jmgQ6n/y3v9zeytVaHdrWCJhtta4=;
        b=JISpblo1QpqxeOS8EDoJTvI5Bw/BdFJL/hBK/RQ+vbPU/0iuXOmORLUvjIDiZO/xBE
         T0ZdH1mvf/AFdzAC7/bkrwXCz4mEwIS+1Z794ISGMEGmn6BylFz+V7ilV4yBoX107Wi8
         eqZVaYUERSUdWN+DIvSOPqE3aik8e2+swGdYtpcAy1KZQPyP6TecZpecNCIeTfPXqMfx
         W/8VB12wvJo4ND2yizs334iBY2HVgIDLl2uo03C2VO6mJzU7Mba0sA8WWHyp5jzzJZkj
         zluGQWcnqsPMMzFCW0qDken3VWR8Aw2OVHdlHlyQ4mHlH46pIyfqUS7X3T1/dLbq/o7r
         uWaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Kwh/zfyHKoZT2T+jmgQ6n/y3v9zeytVaHdrWCJhtta4=;
        b=79eUYQ+2STlfoL1R8t5Jpedoa8NOs6VNoLoEvA1gyjEiYMcnPJFB50REBFvhZ0KFj0
         fuUScCRHyLLfi+pA5daSOabgfcxuvsZcIWjxfOX75Ah8y+jf11rP24tWzyrDzMDVSrHO
         y4rXokEpSgtwAc4Fxqe32NHFHh+xuhGYhScccce5U28pdYd61sngm7ntQSXzTOEzAVFd
         J9HiVqiZNxeF6LNTUV9stAqdrhbJOd2kmprW7LFVgM2SInpWmDCoUgOkoxZhq4rf4KLg
         xndB9xkcEIGryfC2LrwDrnd1kdjB4zPDPeMjDfqe3IZXQMaU2WDRDSvYS4TYBNWQhw5x
         MbFQ==
X-Gm-Message-State: AOAM530Uo/+e0Na83en101f+FcvEj7dBxprdSj7mcEyxbOVWp1uJFlTn
        i0rIcjEl1G2uD2bT/LQy2M442Q==
X-Google-Smtp-Source: ABdhPJwJCGRQeFbbJgoNJgdR9iWahce6A+R4RsJFM13g4nnB8u29UOrsOcgj7b6uEQSSpCgrPDdZGA==
X-Received: by 2002:a1c:f615:: with SMTP id w21mr26551888wmc.16.1635247050708;
        Tue, 26 Oct 2021 04:17:30 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l124sm355483wml.8.2021.10.26.04.17.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 04:17:30 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, bjorn.andersson@linaro.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v11 17/17] ASoC: qdsp6: audioreach: add support for q6prm-clocks
Date:   Tue, 26 Oct 2021 12:16:55 +0100
Message-Id: <20211026111655.1702-18-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
References: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
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

