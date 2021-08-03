Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C41183DEE5B
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236085AbhHCMy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236070AbhHCMy6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:58 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CE98C061764
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:47 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id x17so6174687wmc.5
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UUGGZJCMAKfFitB6K+uct3FEjlEUtbLRoZJoo7gb/BY=;
        b=wTC4URs0FmmLs9IyzErhFUZ9z75PPHirY5yiwXbjAzNQP5DDlp4qvDN6NVIu67jlA9
         9t1MTdcqO8coODAIoOaQwsZF3EngdmLrvxlGjVorZGWfWW+/hjQUQIXq/ISiHhTg0Rlx
         n7XW7oaVJCSpGfSAlpH4wwoidkhx9lJMSgkeT/8OVohC3CJD5M1prXpSk02C2PZ9oIGK
         OQHa0q6+xiFL/4DYcg16WT8r2l6rX5OaiaPM3Eff+WCSqmAEAhKBizZrUI0LdXIPvH4T
         JKiwC82/FelYNzYkxwwok6Mxd6d1mmXpnCcj9FGm+KayETLTLNIe9V0NwC0SYmcX39qF
         dIlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UUGGZJCMAKfFitB6K+uct3FEjlEUtbLRoZJoo7gb/BY=;
        b=TWCAJz1+KnFNN8mK3f5rVEXvqEvEfwLfQc82M/+DSUVarayn41J66h5u2KWRFCaLTH
         MK/WGuTTblTMwZJZByIBV5nyXzoUq81kTyIZGAyU6aZSFyO5OJm4PlY1hItux6HWHl22
         T6Y5jvY4vUIE1b+anuFSffnEbeyV2LzzITF0itr53Sd+4LA/K/r5dCumNEHHSN67r0XI
         cMwXVOtLi9YZCvYpqB0nbk2mnwa7NzdCl0gz1lYTiT/I8Pe4SeDcQk2+5vYFPDjQ3ypm
         3RHIQ3RBM3aKtSegGQBoJK4ZrtXma3trreynl7BcrJSJLw7Y0YvF09enHycCuMEZJKFf
         JLVQ==
X-Gm-Message-State: AOAM5303Lkdajv1B1Mh+KX91NGHxS2ySCpzDOAsGeREhLyDNcgSc8tp2
        xfvxRALDeCcQD1GocHbLWNppTA==
X-Google-Smtp-Source: ABdhPJzx8nr8EIdisiVkyBQvLL3jq5eiyg1Q4260BWcobHb7QuB1Yx03QGajmoRz/fA/3Au6hjwwiQ==
X-Received: by 2002:a7b:cf2e:: with SMTP id m14mr4185307wmg.95.1627995285697;
        Tue, 03 Aug 2021 05:54:45 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:45 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 20/20] ASoC: qdsp6: audioreach: add support for q6prm-clocks
Date:   Tue,  3 Aug 2021 13:54:11 +0100
Message-Id: <20210803125411.28066-21-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add q6prm clocks using existing qdsp6-audio-clock driver

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/Kconfig              |  4 ++
 sound/soc/qcom/qdsp6/Makefile       |  2 +
 sound/soc/qcom/qdsp6/q6prm-clocks.c | 85 +++++++++++++++++++++++++++++
 sound/soc/qcom/qdsp6/q6prm.h        | 78 ++++++++++++++++++++++++++
 4 files changed, 169 insertions(+)
 create mode 100644 sound/soc/qcom/qdsp6/q6prm-clocks.c
 create mode 100644 sound/soc/qcom/qdsp6/q6prm.h

diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index e9155c4022b4..817da5628fc0 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -112,6 +112,9 @@ config SND_SOC_QDSP6_APM_BEDAI
 config SND_SOC_QDSP6_PRM
 	tristate
 
+config SND_SOC_QDSP6_PRM_CLOCKS
+	tristate
+
 config SND_SOC_QDSP6_AUDIOREACH
 	tristate "SoC ALSA audio drives for Qualcomm QDSP AUDIOREACH Framework"
 	depends on QCOM_GPR
@@ -119,6 +122,7 @@ config SND_SOC_QDSP6_AUDIOREACH
 	select SND_SOC_QDSP6_APM_DAI
 	select SND_SOC_QDSP6_APM_BEDAI
 	select SND_SOC_QDSP6_PRM
+	select SND_SOC_QDSP6_PRM_CLOCKS
 	help
 	 To add support for Qualcomm QDSP6 AudioReach Audio Framework.
 	 This will enable sound soc platform specific audio drivers.
diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index 0388b1c10eb1..65ac31770051 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -3,6 +3,7 @@ snd-ar-objs := audioreach.o q6apm.o topology.o
 snd-apm-dai-objs := q6apm-dai.o
 snd-apm-bedai-objs := q6dsp-audio-ports.o q6apm-bedai.o
 snd-prm-objs := q6prm.o
+snd-prm-clks-objs := q6dsp-audio-clocks.o q6prm-clocks.o
 
 snd-afe-dai-objs += q6dsp-audio-ports.o q6afe-dai.o
 snd-afe-clks-objs := q6dsp-audio-clocks.o q6afe-clocks.o
@@ -21,3 +22,4 @@ obj-$(CONFIG_SND_SOC_QDSP6_AUDIOREACH) += snd-ar.o
 obj-$(CONFIG_SND_SOC_QDSP6_APM_DAI) += snd-apm-dai.o
 obj-$(CONFIG_SND_SOC_QDSP6_APM_BEDAI) += snd-apm-bedai.o
 obj-$(CONFIG_SND_SOC_QDSP6_PRM) += snd-prm.o
+obj-$(CONFIG_SND_SOC_QDSP6_PRM_CLOCKS) += snd-prm-clks.o
diff --git a/sound/soc/qcom/qdsp6/q6prm-clocks.c b/sound/soc/qcom/qdsp6/q6prm-clocks.c
new file mode 100644
index 000000000000..1735d5c0c0af
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
+#include <dt-bindings/sound/qcom,q6dsp-audio-ports.h>
+#include "q6dsp-audio-clocks.h"
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
+	{ .compatible = "qcom,q6prm-clocks", .data = &q6dsp_clk_q6prm },
+	{},
+};
+MODULE_DEVICE_TABLE(of, q6prm_clock_device_id);
+#endif
+
+static struct platform_driver q6prm_clock_platform_driver = {
+	.driver = {
+		.name = "q6prm-clock",
+		.of_match_table = of_match_ptr(q6prm_clock_device_id),
+	},
+	.probe = q6dsp_clock_dev_probe,
+};
+module_platform_driver(q6prm_clock_platform_driver);
+
+MODULE_DESCRIPTION("Q6 Proxy Resource Manager clock driver");
+MODULE_LICENSE("GPL v2");
diff --git a/sound/soc/qcom/qdsp6/q6prm.h b/sound/soc/qcom/qdsp6/q6prm.h
new file mode 100644
index 000000000000..91ec535e8564
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6prm.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __Q6PRM_H__
+#define __Q6PRM_H__
+
+/* Clock ID for Primary I2S IBIT */
+#define Q6PRM_LPASS_CLK_ID_PRI_MI2S_IBIT                          0x100
+/* Clock ID for Primary I2S EBIT */
+#define Q6PRM_LPASS_CLK_ID_PRI_MI2S_EBIT                          0x101
+/* Clock ID for Secondary I2S IBIT */
+#define Q6PRM_LPASS_CLK_ID_SEC_MI2S_IBIT                          0x102
+/* Clock ID for Secondary I2S EBIT */
+#define Q6PRM_LPASS_CLK_ID_SEC_MI2S_EBIT                          0x103
+/* Clock ID for Tertiary I2S IBIT */
+#define Q6PRM_LPASS_CLK_ID_TER_MI2S_IBIT                          0x104
+/* Clock ID for Tertiary I2S EBIT */
+#define Q6PRM_LPASS_CLK_ID_TER_MI2S_EBIT                          0x105
+/* Clock ID for Quartnery I2S IBIT */
+#define Q6PRM_LPASS_CLK_ID_QUAD_MI2S_IBIT                         0x106
+/* Clock ID for Quartnery I2S EBIT */
+#define Q6PRM_LPASS_CLK_ID_QUAD_MI2S_EBIT                         0x107
+/* Clock ID for Speaker I2S IBIT */
+#define Q6PRM_LPASS_CLK_ID_SPEAKER_I2S_IBIT                       0x108
+/* Clock ID for Speaker I2S EBIT */
+#define Q6PRM_LPASS_CLK_ID_SPEAKER_I2S_EBIT                       0x109
+/* Clock ID for Speaker I2S OSR */
+#define Q6PRM_LPASS_CLK_ID_SPEAKER_I2S_OSR                        0x10A
+
+/* Clock ID for QUINARY  I2S IBIT */
+#define Q6PRM_LPASS_CLK_ID_QUI_MI2S_IBIT			0x10B
+/* Clock ID for QUINARY  I2S EBIT */
+#define Q6PRM_LPASS_CLK_ID_QUI_MI2S_EBIT			0x10C
+/* Clock ID for SENARY  I2S IBIT */
+#define Q6PRM_LPASS_CLK_ID_SEN_MI2S_IBIT			0x10D
+/* Clock ID for SENARY  I2S EBIT */
+#define Q6PRM_LPASS_CLK_ID_SEN_MI2S_EBIT			0x10E
+/* Clock ID for INT0 I2S IBIT  */
+#define Q6PRM_LPASS_CLK_ID_INT0_MI2S_IBIT                       0x10F
+/* Clock ID for INT1 I2S IBIT  */
+#define Q6PRM_LPASS_CLK_ID_INT1_MI2S_IBIT                       0x110
+/* Clock ID for INT2 I2S IBIT  */
+#define Q6PRM_LPASS_CLK_ID_INT2_MI2S_IBIT                       0x111
+/* Clock ID for INT3 I2S IBIT  */
+#define Q6PRM_LPASS_CLK_ID_INT3_MI2S_IBIT                       0x112
+/* Clock ID for INT4 I2S IBIT  */
+#define Q6PRM_LPASS_CLK_ID_INT4_MI2S_IBIT                       0x113
+/* Clock ID for INT5 I2S IBIT  */
+#define Q6PRM_LPASS_CLK_ID_INT5_MI2S_IBIT                       0x114
+/* Clock ID for INT6 I2S IBIT  */
+#define Q6PRM_LPASS_CLK_ID_INT6_MI2S_IBIT                       0x115
+
+/* Clock ID for QUINARY MI2S OSR CLK  */
+#define Q6PRM_LPASS_CLK_ID_QUI_MI2S_OSR                         0x116
+
+#define Q6PRM_LPASS_CLK_ID_WSA_CORE_MCLK			0x305
+#define Q6PRM_LPASS_CLK_ID_WSA_CORE_NPL_MCLK			0x306
+
+#define Q6PRM_LPASS_CLK_ID_VA_CORE_MCLK				0x307
+#define Q6PRM_LPASS_CLK_ID_VA_CORE_2X_MCLK			0x308
+
+#define Q6PRM_LPASS_CLK_ID_TX_CORE_MCLK				0x30c
+#define Q6PRM_LPASS_CLK_ID_TX_CORE_NPL_MCLK			0x30d
+
+#define Q6PRM_LPASS_CLK_ID_RX_CORE_MCLK				0x30e
+#define Q6PRM_LPASS_CLK_ID_RX_CORE_NPL_MCLK			0x30f
+
+#define Q6PRM_LPASS_CLK_SRC_INTERNAL	1
+#define Q6PRM_LPASS_CLK_ROOT_DEFAULT	0
+#define Q6PRM_HW_CORE_ID_LPASS		1
+#define Q6PRM_HW_CORE_ID_DCODEC		2
+
+int q6prm_set_lpass_clock(struct device *dev, int clk_id, int attri,
+			  int clk_root, unsigned int freq);
+int q6prm_vote_lpass_core_hw(struct device *dev, uint32_t hw_block_id,
+			     const char *client_name, uint32_t *client_handle);
+int q6prm_unvote_lpass_core_hw(struct device *dev, uint32_t hw_block_id,
+			       uint32_t client_handle);
+#endif /* __Q6PRM_H__ */
-- 
2.21.0

