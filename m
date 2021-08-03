Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7AA23DEE4F
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235946AbhHCMyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236003AbhHCMyr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:47 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF786C0617A1
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:33 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id n12so25218080wrr.2
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EeKkvZHYy8z04dqrZSGiVw/dQpzRVp8oRxu3yaOa0rw=;
        b=gUrwEV2CM+T7SD09qRU1axSR/1L6WMPw2mtdUOZUSMpYBM57NE6LiHM5sxaP6QMM3H
         Rfg26U9yA/rhBiScUe2g1FkW/82PmPdxP6vh+lTxQMNMSyUzG50nJ5xG508M/CAxSLqk
         xrr74pUNw5hUQcHL18wRyveJJGL8zm43QRiRuxaHsRdBj3auhVDBPlJZ7IuUjL7pAT0k
         U0nUaH/nhfJmCLlRJgY64inMd7ZjtiKtcB8Pz8uH+URmxrRHo1Ejv5FyMubbDEf4kUFO
         4fojXTqV39BIv1CFcdTXW9jaBpSqU/fGQWjdIUILmR4jodlgLAZYxKGp3QP0oU2NkGGM
         z5mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EeKkvZHYy8z04dqrZSGiVw/dQpzRVp8oRxu3yaOa0rw=;
        b=kaz+A2EjlpcesELYbrJZABBVcWuXAwwK0wpkTaDu0U3H8nOVQcSLwr1zBpMtblbBlo
         5B0IHgaZNWJIl9o8h0h89orPvRRzxG1fhRkJq8Y/QkAPUMsTXX8S5WV2Cq/iLTJTPsCA
         e4jDLym1QLQikrK9r4yOfqQ0LyDgmJQVeaDxtcldE9SeqapDRXb9CO+Te0mQqsf6hAd8
         0u6OfzQ8vqe78b5IhxhOJ/oBw95XPsrinaiXrZRE+OPpM0nTkNbTsytnQL9LtgUNnmUV
         4xrfcqyfH7Zh2d6KoqE3/CAH+3JWmw/TBWKn3ty1W08eQazERi8rwnu0iCY3O2kuIi7K
         OzmQ==
X-Gm-Message-State: AOAM530ZVJN98gNwqB+hSmV8Nmz7SBBDyRmCvvedsVcmJDm6cWm3LM2/
        0rWJUHDnC/tfjpFG2jUo3gzJVA==
X-Google-Smtp-Source: ABdhPJzb5SQZn9o7aqkUJRIqOnf1aPKiyvFwxEBScCcTP8Syb1d0c6I3PWgumxWazg5T4a1sfl23yg==
X-Received: by 2002:a5d:5550:: with SMTP id g16mr23505361wrw.336.1627995272227;
        Tue, 03 Aug 2021 05:54:32 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:31 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 08/20] ASoC: qdsp6: q6afe-dai: move lpass audio ports to common file
Date:   Tue,  3 Aug 2021 13:53:59 +0100
Message-Id: <20210803125411.28066-9-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Various Q6DSP frameworks will use LPASS Audio IP, so move all the hardware
specific details to a common file so that they could be reused across
multiple Q6DSP frameworks.

In this case all the audio ports definations can be moved to a common file
so that AudioReach and Elite Framework can reuse this.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/qdsp6/Makefile            |   4 +-
 sound/soc/qcom/qdsp6/q6afe-dai.c         | 687 +----------------------
 sound/soc/qcom/qdsp6/q6dsp-audio-ports.c | 625 +++++++++++++++++++++
 sound/soc/qcom/qdsp6/q6dsp-audio-ports.h |  22 +
 4 files changed, 665 insertions(+), 673 deletions(-)
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-audio-ports.c
 create mode 100644 sound/soc/qcom/qdsp6/q6dsp-audio-ports.h

diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index 3c1dd9f32f1d..63151b7da140 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -1,8 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0-only
+snd-afe-dai-objs += q6dsp-audio-ports.o q6afe-dai.o
+
 obj-$(CONFIG_SND_SOC_QDSP6_COMMON) += q6dsp-common.o
 obj-$(CONFIG_SND_SOC_QDSP6_CORE) += q6core.o
 obj-$(CONFIG_SND_SOC_QDSP6_AFE) += q6afe.o
-obj-$(CONFIG_SND_SOC_QDSP6_AFE_DAI) += q6afe-dai.o
+obj-$(CONFIG_SND_SOC_QDSP6_AFE_DAI) += snd-afe-dai.o
 obj-$(CONFIG_SND_SOC_QDSP6_AFE_CLOCKS) += q6afe-clocks.o
 obj-$(CONFIG_SND_SOC_QDSP6_ADM) += q6adm.o
 obj-$(CONFIG_SND_SOC_QDSP6_ROUTING) += q6routing.o
diff --git a/sound/soc/qcom/qdsp6/q6afe-dai.c b/sound/soc/qcom/qdsp6/q6afe-dai.c
index ac8f7324e94b..bdb7ab21ecab 100644
--- a/sound/soc/qcom/qdsp6/q6afe-dai.c
+++ b/sound/soc/qcom/qdsp6/q6afe-dai.c
@@ -11,91 +11,9 @@
 #include <sound/pcm.h>
 #include <sound/soc.h>
 #include <sound/pcm_params.h>
+#include "q6dsp-audio-ports.h"
 #include "q6afe.h"
 
-#define Q6AFE_TDM_PB_DAI(pre, num, did) {				\
-		.playback = {						\
-			.stream_name = pre" TDM"#num" Playback",	\
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
-				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
-				SNDRV_PCM_RATE_176400,			\
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
-				   SNDRV_PCM_FMTBIT_S24_LE |		\
-				   SNDRV_PCM_FMTBIT_S32_LE,		\
-			.channels_min = 1,				\
-			.channels_max = 8,				\
-			.rate_min = 8000,				\
-			.rate_max = 176400,				\
-		},							\
-		.name = #did,						\
-		.ops = &q6tdm_ops,					\
-		.id = did,						\
-		.probe = msm_dai_q6_dai_probe,				\
-		.remove = msm_dai_q6_dai_remove,			\
-	}
-
-#define Q6AFE_TDM_CAP_DAI(pre, num, did) {				\
-		.capture = {						\
-			.stream_name = pre" TDM"#num" Capture",		\
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
-				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
-				SNDRV_PCM_RATE_176400,			\
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
-				   SNDRV_PCM_FMTBIT_S24_LE |		\
-				   SNDRV_PCM_FMTBIT_S32_LE,		\
-			.channels_min = 1,				\
-			.channels_max = 8,				\
-			.rate_min = 8000,				\
-			.rate_max = 176400,				\
-		},							\
-		.name = #did,						\
-		.ops = &q6tdm_ops,					\
-		.id = did,						\
-		.probe = msm_dai_q6_dai_probe,				\
-		.remove = msm_dai_q6_dai_remove,			\
-	}
-
-#define Q6AFE_CDC_DMA_RX_DAI(did) {				\
-		.playback = {						\
-			.stream_name = #did" Playback",	\
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
-				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
-				SNDRV_PCM_RATE_176400,			\
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
-				   SNDRV_PCM_FMTBIT_S24_LE |		\
-				   SNDRV_PCM_FMTBIT_S32_LE,		\
-			.channels_min = 1,				\
-			.channels_max = 8,				\
-			.rate_min = 8000,				\
-			.rate_max = 176400,				\
-		},							\
-		.name = #did,						\
-		.ops = &q6dma_ops,					\
-		.id = did,						\
-		.probe = msm_dai_q6_dai_probe,				\
-		.remove = msm_dai_q6_dai_remove,			\
-	}
-
-#define Q6AFE_CDC_DMA_TX_DAI(did) {				\
-		.capture = {						\
-			.stream_name = #did" Capture",		\
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
-				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
-				SNDRV_PCM_RATE_176400,			\
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
-				   SNDRV_PCM_FMTBIT_S24_LE |		\
-				   SNDRV_PCM_FMTBIT_S32_LE,		\
-			.channels_min = 1,				\
-			.channels_max = 8,				\
-			.rate_min = 8000,				\
-			.rate_max = 176400,				\
-		},							\
-		.name = #did,						\
-		.ops = &q6dma_ops,					\
-		.id = did,						\
-		.probe = msm_dai_q6_dai_probe,				\
-		.remove = msm_dai_q6_dai_remove,			\
-	}
 
 struct q6afe_dai_priv_data {
 	uint32_t sd_line_mask;
@@ -784,591 +702,6 @@ static int msm_dai_q6_dai_remove(struct snd_soc_dai *dai)
 	return 0;
 }
 
-static struct snd_soc_dai_driver q6afe_dais[] = {
-	{
-		.playback = {
-			.stream_name = "HDMI Playback",
-			.rates = SNDRV_PCM_RATE_48000 |
-				 SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 2,
-			.channels_max = 8,
-			.rate_max =     192000,
-			.rate_min =	48000,
-		},
-		.ops = &q6hdmi_ops,
-		.id = HDMI_RX,
-		.name = "HDMI",
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.name = "SLIMBUS_0_RX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_0_RX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-		.playback = {
-			.stream_name = "Slimbus Playback",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-	}, {
-		.name = "SLIMBUS_0_TX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_0_TX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-		.capture = {
-			.stream_name = "Slimbus Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-	}, {
-		.playback = {
-			.stream_name = "Slimbus1 Playback",
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
-				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 2,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-		.name = "SLIMBUS_1_RX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_1_RX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.name = "SLIMBUS_1_TX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_1_TX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-		.capture = {
-			.stream_name = "Slimbus1 Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-	}, {
-		.playback = {
-			.stream_name = "Slimbus2 Playback",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-		.name = "SLIMBUS_2_RX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_2_RX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-
-	}, {
-		.name = "SLIMBUS_2_TX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_2_TX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-		.capture = {
-			.stream_name = "Slimbus2 Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-	}, {
-		.playback = {
-			.stream_name = "Slimbus3 Playback",
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
-				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 2,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-		.name = "SLIMBUS_3_RX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_3_RX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-
-	}, {
-		.name = "SLIMBUS_3_TX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_3_TX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-		.capture = {
-			.stream_name = "Slimbus3 Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-	}, {
-		.playback = {
-			.stream_name = "Slimbus4 Playback",
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
-				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 2,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-		.name = "SLIMBUS_4_RX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_4_RX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-
-	}, {
-		.name = "SLIMBUS_4_TX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_4_TX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-		.capture = {
-			.stream_name = "Slimbus4 Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-	}, {
-		.playback = {
-			.stream_name = "Slimbus5 Playback",
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
-				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 2,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-		.name = "SLIMBUS_5_RX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_5_RX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-
-	}, {
-		.name = "SLIMBUS_5_TX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_5_TX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-		.capture = {
-			.stream_name = "Slimbus5 Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-	}, {
-		.playback = {
-			.stream_name = "Slimbus6 Playback",
-			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
-				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 2,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-		.ops = &q6slim_ops,
-		.name = "SLIMBUS_6_RX",
-		.id = SLIMBUS_6_RX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-
-	}, {
-		.name = "SLIMBUS_6_TX",
-		.ops = &q6slim_ops,
-		.id = SLIMBUS_6_TX,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-		.capture = {
-			.stream_name = "Slimbus6 Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min = 8000,
-			.rate_max = 192000,
-		},
-	}, {
-		.playback = {
-			.stream_name = "Primary MI2S Playback",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.id = PRIMARY_MI2S_RX,
-		.name = "PRI_MI2S_RX",
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.capture = {
-			.stream_name = "Primary MI2S Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.id = PRIMARY_MI2S_TX,
-		.name = "PRI_MI2S_TX",
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.playback = {
-			.stream_name = "Secondary MI2S Playback",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.name = "SEC_MI2S_RX",
-		.id = SECONDARY_MI2S_RX,
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.capture = {
-			.stream_name = "Secondary MI2S Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.id = SECONDARY_MI2S_TX,
-		.name = "SEC_MI2S_TX",
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.playback = {
-			.stream_name = "Tertiary MI2S Playback",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.name = "TERT_MI2S_RX",
-		.id = TERTIARY_MI2S_RX,
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.capture = {
-			.stream_name = "Tertiary MI2S Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.id = TERTIARY_MI2S_TX,
-		.name = "TERT_MI2S_TX",
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.playback = {
-			.stream_name = "Quaternary MI2S Playback",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.name = "QUAT_MI2S_RX",
-		.id = QUATERNARY_MI2S_RX,
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.capture = {
-			.stream_name = "Quaternary MI2S Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.id = QUATERNARY_MI2S_TX,
-		.name = "QUAT_MI2S_TX",
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.playback = {
-			.stream_name = "Quinary MI2S Playback",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-			SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
-			SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     192000,
-		},
-		.id = QUINARY_MI2S_RX,
-		.name = "QUIN_MI2S_RX",
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	}, {
-		.capture = {
-			.stream_name = "Quinary MI2S Capture",
-			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
-				 SNDRV_PCM_RATE_16000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE,
-			.channels_min = 1,
-			.channels_max = 8,
-			.rate_min =     8000,
-			.rate_max =     48000,
-		},
-		.id = QUINARY_MI2S_TX,
-		.name = "QUIN_MI2S_TX",
-		.ops = &q6i2s_ops,
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	},
-	Q6AFE_TDM_PB_DAI("Primary", 0, PRIMARY_TDM_RX_0),
-	Q6AFE_TDM_PB_DAI("Primary", 1, PRIMARY_TDM_RX_1),
-	Q6AFE_TDM_PB_DAI("Primary", 2, PRIMARY_TDM_RX_2),
-	Q6AFE_TDM_PB_DAI("Primary", 3, PRIMARY_TDM_RX_3),
-	Q6AFE_TDM_PB_DAI("Primary", 4, PRIMARY_TDM_RX_4),
-	Q6AFE_TDM_PB_DAI("Primary", 5, PRIMARY_TDM_RX_5),
-	Q6AFE_TDM_PB_DAI("Primary", 6, PRIMARY_TDM_RX_6),
-	Q6AFE_TDM_PB_DAI("Primary", 7, PRIMARY_TDM_RX_7),
-	Q6AFE_TDM_CAP_DAI("Primary", 0, PRIMARY_TDM_TX_0),
-	Q6AFE_TDM_CAP_DAI("Primary", 1, PRIMARY_TDM_TX_1),
-	Q6AFE_TDM_CAP_DAI("Primary", 2, PRIMARY_TDM_TX_2),
-	Q6AFE_TDM_CAP_DAI("Primary", 3, PRIMARY_TDM_TX_3),
-	Q6AFE_TDM_CAP_DAI("Primary", 4, PRIMARY_TDM_TX_4),
-	Q6AFE_TDM_CAP_DAI("Primary", 5, PRIMARY_TDM_TX_5),
-	Q6AFE_TDM_CAP_DAI("Primary", 6, PRIMARY_TDM_TX_6),
-	Q6AFE_TDM_CAP_DAI("Primary", 7, PRIMARY_TDM_TX_7),
-	Q6AFE_TDM_PB_DAI("Secondary", 0, SECONDARY_TDM_RX_0),
-	Q6AFE_TDM_PB_DAI("Secondary", 1, SECONDARY_TDM_RX_1),
-	Q6AFE_TDM_PB_DAI("Secondary", 2, SECONDARY_TDM_RX_2),
-	Q6AFE_TDM_PB_DAI("Secondary", 3, SECONDARY_TDM_RX_3),
-	Q6AFE_TDM_PB_DAI("Secondary", 4, SECONDARY_TDM_RX_4),
-	Q6AFE_TDM_PB_DAI("Secondary", 5, SECONDARY_TDM_RX_5),
-	Q6AFE_TDM_PB_DAI("Secondary", 6, SECONDARY_TDM_RX_6),
-	Q6AFE_TDM_PB_DAI("Secondary", 7, SECONDARY_TDM_RX_7),
-	Q6AFE_TDM_CAP_DAI("Secondary", 0, SECONDARY_TDM_TX_0),
-	Q6AFE_TDM_CAP_DAI("Secondary", 1, SECONDARY_TDM_TX_1),
-	Q6AFE_TDM_CAP_DAI("Secondary", 2, SECONDARY_TDM_TX_2),
-	Q6AFE_TDM_CAP_DAI("Secondary", 3, SECONDARY_TDM_TX_3),
-	Q6AFE_TDM_CAP_DAI("Secondary", 4, SECONDARY_TDM_TX_4),
-	Q6AFE_TDM_CAP_DAI("Secondary", 5, SECONDARY_TDM_TX_5),
-	Q6AFE_TDM_CAP_DAI("Secondary", 6, SECONDARY_TDM_TX_6),
-	Q6AFE_TDM_CAP_DAI("Secondary", 7, SECONDARY_TDM_TX_7),
-	Q6AFE_TDM_PB_DAI("Tertiary", 0, TERTIARY_TDM_RX_0),
-	Q6AFE_TDM_PB_DAI("Tertiary", 1, TERTIARY_TDM_RX_1),
-	Q6AFE_TDM_PB_DAI("Tertiary", 2, TERTIARY_TDM_RX_2),
-	Q6AFE_TDM_PB_DAI("Tertiary", 3, TERTIARY_TDM_RX_3),
-	Q6AFE_TDM_PB_DAI("Tertiary", 4, TERTIARY_TDM_RX_4),
-	Q6AFE_TDM_PB_DAI("Tertiary", 5, TERTIARY_TDM_RX_5),
-	Q6AFE_TDM_PB_DAI("Tertiary", 6, TERTIARY_TDM_RX_6),
-	Q6AFE_TDM_PB_DAI("Tertiary", 7, TERTIARY_TDM_RX_7),
-	Q6AFE_TDM_CAP_DAI("Tertiary", 0, TERTIARY_TDM_TX_0),
-	Q6AFE_TDM_CAP_DAI("Tertiary", 1, TERTIARY_TDM_TX_1),
-	Q6AFE_TDM_CAP_DAI("Tertiary", 2, TERTIARY_TDM_TX_2),
-	Q6AFE_TDM_CAP_DAI("Tertiary", 3, TERTIARY_TDM_TX_3),
-	Q6AFE_TDM_CAP_DAI("Tertiary", 4, TERTIARY_TDM_TX_4),
-	Q6AFE_TDM_CAP_DAI("Tertiary", 5, TERTIARY_TDM_TX_5),
-	Q6AFE_TDM_CAP_DAI("Tertiary", 6, TERTIARY_TDM_TX_6),
-	Q6AFE_TDM_CAP_DAI("Tertiary", 7, TERTIARY_TDM_TX_7),
-	Q6AFE_TDM_PB_DAI("Quaternary", 0, QUATERNARY_TDM_RX_0),
-	Q6AFE_TDM_PB_DAI("Quaternary", 1, QUATERNARY_TDM_RX_1),
-	Q6AFE_TDM_PB_DAI("Quaternary", 2, QUATERNARY_TDM_RX_2),
-	Q6AFE_TDM_PB_DAI("Quaternary", 3, QUATERNARY_TDM_RX_3),
-	Q6AFE_TDM_PB_DAI("Quaternary", 4, QUATERNARY_TDM_RX_4),
-	Q6AFE_TDM_PB_DAI("Quaternary", 5, QUATERNARY_TDM_RX_5),
-	Q6AFE_TDM_PB_DAI("Quaternary", 6, QUATERNARY_TDM_RX_6),
-	Q6AFE_TDM_PB_DAI("Quaternary", 7, QUATERNARY_TDM_RX_7),
-	Q6AFE_TDM_CAP_DAI("Quaternary", 0, QUATERNARY_TDM_TX_0),
-	Q6AFE_TDM_CAP_DAI("Quaternary", 1, QUATERNARY_TDM_TX_1),
-	Q6AFE_TDM_CAP_DAI("Quaternary", 2, QUATERNARY_TDM_TX_2),
-	Q6AFE_TDM_CAP_DAI("Quaternary", 3, QUATERNARY_TDM_TX_3),
-	Q6AFE_TDM_CAP_DAI("Quaternary", 4, QUATERNARY_TDM_TX_4),
-	Q6AFE_TDM_CAP_DAI("Quaternary", 5, QUATERNARY_TDM_TX_5),
-	Q6AFE_TDM_CAP_DAI("Quaternary", 6, QUATERNARY_TDM_TX_6),
-	Q6AFE_TDM_CAP_DAI("Quaternary", 7, QUATERNARY_TDM_TX_7),
-	Q6AFE_TDM_PB_DAI("Quinary", 0, QUINARY_TDM_RX_0),
-	Q6AFE_TDM_PB_DAI("Quinary", 1, QUINARY_TDM_RX_1),
-	Q6AFE_TDM_PB_DAI("Quinary", 2, QUINARY_TDM_RX_2),
-	Q6AFE_TDM_PB_DAI("Quinary", 3, QUINARY_TDM_RX_3),
-	Q6AFE_TDM_PB_DAI("Quinary", 4, QUINARY_TDM_RX_4),
-	Q6AFE_TDM_PB_DAI("Quinary", 5, QUINARY_TDM_RX_5),
-	Q6AFE_TDM_PB_DAI("Quinary", 6, QUINARY_TDM_RX_6),
-	Q6AFE_TDM_PB_DAI("Quinary", 7, QUINARY_TDM_RX_7),
-	Q6AFE_TDM_CAP_DAI("Quinary", 0, QUINARY_TDM_TX_0),
-	Q6AFE_TDM_CAP_DAI("Quinary", 1, QUINARY_TDM_TX_1),
-	Q6AFE_TDM_CAP_DAI("Quinary", 2, QUINARY_TDM_TX_2),
-	Q6AFE_TDM_CAP_DAI("Quinary", 3, QUINARY_TDM_TX_3),
-	Q6AFE_TDM_CAP_DAI("Quinary", 4, QUINARY_TDM_TX_4),
-	Q6AFE_TDM_CAP_DAI("Quinary", 5, QUINARY_TDM_TX_5),
-	Q6AFE_TDM_CAP_DAI("Quinary", 6, QUINARY_TDM_TX_6),
-	Q6AFE_TDM_CAP_DAI("Quinary", 7, QUINARY_TDM_TX_7),
-	{
-		.playback = {
-			.stream_name = "Display Port Playback",
-			.rates = SNDRV_PCM_RATE_48000 |
-				 SNDRV_PCM_RATE_96000 |
-				 SNDRV_PCM_RATE_192000,
-			.formats = SNDRV_PCM_FMTBIT_S16_LE |
-				   SNDRV_PCM_FMTBIT_S24_LE,
-			.channels_min = 2,
-			.channels_max = 8,
-			.rate_max =     192000,
-			.rate_min =	48000,
-		},
-		.ops = &q6hdmi_ops,
-		.id = DISPLAY_PORT_RX,
-		.name = "DISPLAY_PORT",
-		.probe = msm_dai_q6_dai_probe,
-		.remove = msm_dai_q6_dai_remove,
-	},
-	Q6AFE_CDC_DMA_RX_DAI(WSA_CODEC_DMA_RX_0),
-	Q6AFE_CDC_DMA_TX_DAI(WSA_CODEC_DMA_TX_0),
-	Q6AFE_CDC_DMA_RX_DAI(WSA_CODEC_DMA_RX_1),
-	Q6AFE_CDC_DMA_TX_DAI(WSA_CODEC_DMA_TX_1),
-	Q6AFE_CDC_DMA_TX_DAI(WSA_CODEC_DMA_TX_2),
-	Q6AFE_CDC_DMA_TX_DAI(VA_CODEC_DMA_TX_0),
-	Q6AFE_CDC_DMA_TX_DAI(VA_CODEC_DMA_TX_1),
-	Q6AFE_CDC_DMA_TX_DAI(VA_CODEC_DMA_TX_2),
-	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_0),
-	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_0),
-	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_1),
-	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_1),
-	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_2),
-	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_2),
-	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_3),
-	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_3),
-	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_4),
-	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_4),
-	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_5),
-	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_5),
-	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_6),
-	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_7),
-};
-
-static int q6afe_of_xlate_dai_name(struct snd_soc_component *component,
-				   const struct of_phandle_args *args,
-				   const char **dai_name)
-{
-	int id = args->args[0];
-	int ret = -EINVAL;
-	int i;
-
-	for (i = 0; i  < ARRAY_SIZE(q6afe_dais); i++) {
-		if (q6afe_dais[i].id == id) {
-			*dai_name = q6afe_dais[i].name;
-			ret = 0;
-			break;
-		}
-	}
-
-	return ret;
-}
-
 static const struct snd_soc_dapm_widget q6afe_dai_widgets[] = {
 	SND_SOC_DAPM_AIF_IN("HDMI_RX", NULL, 0, SND_SOC_NOPM, 0, 0),
 	SND_SOC_DAPM_AIF_IN("SLIMBUS_0_RX", NULL, 0, SND_SOC_NOPM, 0, 0),
@@ -1627,7 +960,7 @@ static const struct snd_soc_component_driver q6afe_dai_component = {
 	.num_dapm_widgets = ARRAY_SIZE(q6afe_dai_widgets),
 	.dapm_routes = q6afe_dapm_routes,
 	.num_dapm_routes = ARRAY_SIZE(q6afe_dapm_routes),
-	.of_xlate_dai_name = q6afe_of_xlate_dai_name,
+	.of_xlate_dai_name = q6dsp_audio_ports_of_xlate_dai_name,
 
 };
 
@@ -1715,19 +1048,29 @@ static void of_q6afe_parse_dai_data(struct device *dev,
 
 static int q6afe_dai_dev_probe(struct platform_device *pdev)
 {
+	struct q6dsp_audio_port_dai_driver_config cfg;
+	struct snd_soc_dai_driver *dais;
 	struct q6afe_dai_data *dai_data;
 	struct device *dev = &pdev->dev;
+	int num_dais;
 
 	dai_data = devm_kzalloc(dev, sizeof(*dai_data), GFP_KERNEL);
 	if (!dai_data)
 		return -ENOMEM;
 
 	dev_set_drvdata(dev, dai_data);
-
 	of_q6afe_parse_dai_data(dev, dai_data);
 
-	return devm_snd_soc_register_component(dev, &q6afe_dai_component,
-					  q6afe_dais, ARRAY_SIZE(q6afe_dais));
+	cfg.probe = msm_dai_q6_dai_probe;
+	cfg.remove = msm_dai_q6_dai_remove;
+	cfg.q6hdmi_ops = &q6hdmi_ops;
+	cfg.q6slim_ops = &q6slim_ops;
+	cfg.q6i2s_ops = &q6i2s_ops;
+	cfg.q6tdm_ops = &q6tdm_ops;
+	cfg.q6dma_ops = &q6dma_ops;
+	dais = q6dsp_audio_ports_set_config(dev, &cfg, &num_dais);
+
+	return devm_snd_soc_register_component(dev, &q6afe_dai_component, dais, num_dais);
 }
 
 #ifdef CONFIG_OF
diff --git a/sound/soc/qcom/qdsp6/q6dsp-audio-ports.c b/sound/soc/qcom/qdsp6/q6dsp-audio-ports.c
new file mode 100644
index 000000000000..0fb182c31b53
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6dsp-audio-ports.c
@@ -0,0 +1,625 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2020, Linaro Limited
+
+#include <sound/pcm.h>
+#include <sound/soc.h>
+#include <sound/pcm_params.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
+#include "q6dsp-audio-ports.h"
+
+#define Q6AFE_TDM_PB_DAI(pre, num, did) {				\
+		.playback = {						\
+			.stream_name = pre" TDM"#num" Playback",	\
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
+				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
+				SNDRV_PCM_RATE_176400,			\
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
+				   SNDRV_PCM_FMTBIT_S24_LE |		\
+				   SNDRV_PCM_FMTBIT_S32_LE,		\
+			.channels_min = 1,				\
+			.channels_max = 8,				\
+			.rate_min = 8000,				\
+			.rate_max = 176400,				\
+		},							\
+		.name = #did,						\
+		.id = did,						\
+	}
+
+#define Q6AFE_TDM_CAP_DAI(pre, num, did) {				\
+		.capture = {						\
+			.stream_name = pre" TDM"#num" Capture",		\
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
+				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
+				SNDRV_PCM_RATE_176400,			\
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
+				   SNDRV_PCM_FMTBIT_S24_LE |		\
+				   SNDRV_PCM_FMTBIT_S32_LE,		\
+			.channels_min = 1,				\
+			.channels_max = 8,				\
+			.rate_min = 8000,				\
+			.rate_max = 176400,				\
+		},							\
+		.name = #did,						\
+		.id = did,						\
+	}
+
+#define Q6AFE_CDC_DMA_RX_DAI(did) {				\
+		.playback = {						\
+			.stream_name = #did" Playback",	\
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
+				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
+				SNDRV_PCM_RATE_176400,			\
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
+				   SNDRV_PCM_FMTBIT_S24_LE |		\
+				   SNDRV_PCM_FMTBIT_S32_LE,		\
+			.channels_min = 1,				\
+			.channels_max = 8,				\
+			.rate_min = 8000,				\
+			.rate_max = 176400,				\
+		},							\
+		.name = #did,						\
+		.id = did,						\
+	}
+
+#define Q6AFE_CDC_DMA_TX_DAI(did) {				\
+		.capture = {						\
+			.stream_name = #did" Capture",		\
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |\
+				SNDRV_PCM_RATE_32000 | SNDRV_PCM_RATE_48000 |\
+				SNDRV_PCM_RATE_176400,			\
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |		\
+				   SNDRV_PCM_FMTBIT_S24_LE |		\
+				   SNDRV_PCM_FMTBIT_S32_LE,		\
+			.channels_min = 1,				\
+			.channels_max = 8,				\
+			.rate_min = 8000,				\
+			.rate_max = 176400,				\
+		},							\
+		.name = #did,						\
+		.id = did,						\
+	}
+
+
+static struct snd_soc_dai_driver q6dsp_audio_fe_dais[] = {
+	{
+		.playback = {
+			.stream_name = "HDMI Playback",
+			.rates = SNDRV_PCM_RATE_48000 |
+				 SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 2,
+			.channels_max = 8,
+			.rate_max =     192000,
+			.rate_min =	48000,
+		},
+		.id = HDMI_RX,
+		.name = "HDMI",
+	}, {
+		.name = "SLIMBUS_0_RX",
+		.id = SLIMBUS_0_RX,
+		.playback = {
+			.stream_name = "Slimbus Playback",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+	}, {
+		.name = "SLIMBUS_0_TX",
+		.id = SLIMBUS_0_TX,
+		.capture = {
+			.stream_name = "Slimbus Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+	}, {
+		.playback = {
+			.stream_name = "Slimbus1 Playback",
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
+				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 2,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+		.name = "SLIMBUS_1_RX",
+		.id = SLIMBUS_1_RX,
+	}, {
+		.name = "SLIMBUS_1_TX",
+		.id = SLIMBUS_1_TX,
+		.capture = {
+			.stream_name = "Slimbus1 Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+	}, {
+		.playback = {
+			.stream_name = "Slimbus2 Playback",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+		.name = "SLIMBUS_2_RX",
+		.id = SLIMBUS_2_RX,
+
+	}, {
+		.name = "SLIMBUS_2_TX",
+		.id = SLIMBUS_2_TX,
+		.capture = {
+			.stream_name = "Slimbus2 Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+	}, {
+		.playback = {
+			.stream_name = "Slimbus3 Playback",
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
+				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 2,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+		.name = "SLIMBUS_3_RX",
+		.id = SLIMBUS_3_RX,
+
+	}, {
+		.name = "SLIMBUS_3_TX",
+		.id = SLIMBUS_3_TX,
+		.capture = {
+			.stream_name = "Slimbus3 Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+	}, {
+		.playback = {
+			.stream_name = "Slimbus4 Playback",
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
+				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 2,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+		.name = "SLIMBUS_4_RX",
+		.id = SLIMBUS_4_RX,
+
+	}, {
+		.name = "SLIMBUS_4_TX",
+		.id = SLIMBUS_4_TX,
+		.capture = {
+			.stream_name = "Slimbus4 Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+	}, {
+		.playback = {
+			.stream_name = "Slimbus5 Playback",
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
+				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 2,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+		.name = "SLIMBUS_5_RX",
+		.id = SLIMBUS_5_RX,
+
+	}, {
+		.name = "SLIMBUS_5_TX",
+		.id = SLIMBUS_5_TX,
+		.capture = {
+			.stream_name = "Slimbus5 Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+	}, {
+		.playback = {
+			.stream_name = "Slimbus6 Playback",
+			.rates = SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
+				 SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 2,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+		.name = "SLIMBUS_6_RX",
+		.id = SLIMBUS_6_RX,
+
+	}, {
+		.name = "SLIMBUS_6_TX",
+		.id = SLIMBUS_6_TX,
+		.capture = {
+			.stream_name = "Slimbus6 Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min = 8000,
+			.rate_max = 192000,
+		},
+	}, {
+		.playback = {
+			.stream_name = "Primary MI2S Playback",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.id = PRIMARY_MI2S_RX,
+		.name = "PRI_MI2S_RX",
+	}, {
+		.capture = {
+			.stream_name = "Primary MI2S Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.id = PRIMARY_MI2S_TX,
+		.name = "PRI_MI2S_TX",
+	}, {
+		.playback = {
+			.stream_name = "Secondary MI2S Playback",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.name = "SEC_MI2S_RX",
+		.id = SECONDARY_MI2S_RX,
+	}, {
+		.capture = {
+			.stream_name = "Secondary MI2S Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.id = SECONDARY_MI2S_TX,
+		.name = "SEC_MI2S_TX",
+	}, {
+		.playback = {
+			.stream_name = "Tertiary MI2S Playback",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.name = "TERT_MI2S_RX",
+		.id = TERTIARY_MI2S_RX,
+	}, {
+		.capture = {
+			.stream_name = "Tertiary MI2S Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.id = TERTIARY_MI2S_TX,
+		.name = "TERT_MI2S_TX",
+	}, {
+		.playback = {
+			.stream_name = "Quaternary MI2S Playback",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.name = "QUAT_MI2S_RX",
+		.id = QUATERNARY_MI2S_RX,
+	}, {
+		.capture = {
+			.stream_name = "Quaternary MI2S Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.id = QUATERNARY_MI2S_TX,
+		.name = "QUAT_MI2S_TX",
+	}, {
+		.playback = {
+			.stream_name = "Quinary MI2S Playback",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+			SNDRV_PCM_RATE_16000 | SNDRV_PCM_RATE_96000 |
+			SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     192000,
+		},
+		.id = QUINARY_MI2S_RX,
+		.name = "QUIN_MI2S_RX",
+	}, {
+		.capture = {
+			.stream_name = "Quinary MI2S Capture",
+			.rates = SNDRV_PCM_RATE_48000 | SNDRV_PCM_RATE_8000 |
+				 SNDRV_PCM_RATE_16000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE,
+			.channels_min = 1,
+			.channels_max = 8,
+			.rate_min =     8000,
+			.rate_max =     48000,
+		},
+		.id = QUINARY_MI2S_TX,
+		.name = "QUIN_MI2S_TX",
+	},
+	Q6AFE_TDM_PB_DAI("Primary", 0, PRIMARY_TDM_RX_0),
+	Q6AFE_TDM_PB_DAI("Primary", 1, PRIMARY_TDM_RX_1),
+	Q6AFE_TDM_PB_DAI("Primary", 2, PRIMARY_TDM_RX_2),
+	Q6AFE_TDM_PB_DAI("Primary", 3, PRIMARY_TDM_RX_3),
+	Q6AFE_TDM_PB_DAI("Primary", 4, PRIMARY_TDM_RX_4),
+	Q6AFE_TDM_PB_DAI("Primary", 5, PRIMARY_TDM_RX_5),
+	Q6AFE_TDM_PB_DAI("Primary", 6, PRIMARY_TDM_RX_6),
+	Q6AFE_TDM_PB_DAI("Primary", 7, PRIMARY_TDM_RX_7),
+	Q6AFE_TDM_CAP_DAI("Primary", 0, PRIMARY_TDM_TX_0),
+	Q6AFE_TDM_CAP_DAI("Primary", 1, PRIMARY_TDM_TX_1),
+	Q6AFE_TDM_CAP_DAI("Primary", 2, PRIMARY_TDM_TX_2),
+	Q6AFE_TDM_CAP_DAI("Primary", 3, PRIMARY_TDM_TX_3),
+	Q6AFE_TDM_CAP_DAI("Primary", 4, PRIMARY_TDM_TX_4),
+	Q6AFE_TDM_CAP_DAI("Primary", 5, PRIMARY_TDM_TX_5),
+	Q6AFE_TDM_CAP_DAI("Primary", 6, PRIMARY_TDM_TX_6),
+	Q6AFE_TDM_CAP_DAI("Primary", 7, PRIMARY_TDM_TX_7),
+	Q6AFE_TDM_PB_DAI("Secondary", 0, SECONDARY_TDM_RX_0),
+	Q6AFE_TDM_PB_DAI("Secondary", 1, SECONDARY_TDM_RX_1),
+	Q6AFE_TDM_PB_DAI("Secondary", 2, SECONDARY_TDM_RX_2),
+	Q6AFE_TDM_PB_DAI("Secondary", 3, SECONDARY_TDM_RX_3),
+	Q6AFE_TDM_PB_DAI("Secondary", 4, SECONDARY_TDM_RX_4),
+	Q6AFE_TDM_PB_DAI("Secondary", 5, SECONDARY_TDM_RX_5),
+	Q6AFE_TDM_PB_DAI("Secondary", 6, SECONDARY_TDM_RX_6),
+	Q6AFE_TDM_PB_DAI("Secondary", 7, SECONDARY_TDM_RX_7),
+	Q6AFE_TDM_CAP_DAI("Secondary", 0, SECONDARY_TDM_TX_0),
+	Q6AFE_TDM_CAP_DAI("Secondary", 1, SECONDARY_TDM_TX_1),
+	Q6AFE_TDM_CAP_DAI("Secondary", 2, SECONDARY_TDM_TX_2),
+	Q6AFE_TDM_CAP_DAI("Secondary", 3, SECONDARY_TDM_TX_3),
+	Q6AFE_TDM_CAP_DAI("Secondary", 4, SECONDARY_TDM_TX_4),
+	Q6AFE_TDM_CAP_DAI("Secondary", 5, SECONDARY_TDM_TX_5),
+	Q6AFE_TDM_CAP_DAI("Secondary", 6, SECONDARY_TDM_TX_6),
+	Q6AFE_TDM_CAP_DAI("Secondary", 7, SECONDARY_TDM_TX_7),
+	Q6AFE_TDM_PB_DAI("Tertiary", 0, TERTIARY_TDM_RX_0),
+	Q6AFE_TDM_PB_DAI("Tertiary", 1, TERTIARY_TDM_RX_1),
+	Q6AFE_TDM_PB_DAI("Tertiary", 2, TERTIARY_TDM_RX_2),
+	Q6AFE_TDM_PB_DAI("Tertiary", 3, TERTIARY_TDM_RX_3),
+	Q6AFE_TDM_PB_DAI("Tertiary", 4, TERTIARY_TDM_RX_4),
+	Q6AFE_TDM_PB_DAI("Tertiary", 5, TERTIARY_TDM_RX_5),
+	Q6AFE_TDM_PB_DAI("Tertiary", 6, TERTIARY_TDM_RX_6),
+	Q6AFE_TDM_PB_DAI("Tertiary", 7, TERTIARY_TDM_RX_7),
+	Q6AFE_TDM_CAP_DAI("Tertiary", 0, TERTIARY_TDM_TX_0),
+	Q6AFE_TDM_CAP_DAI("Tertiary", 1, TERTIARY_TDM_TX_1),
+	Q6AFE_TDM_CAP_DAI("Tertiary", 2, TERTIARY_TDM_TX_2),
+	Q6AFE_TDM_CAP_DAI("Tertiary", 3, TERTIARY_TDM_TX_3),
+	Q6AFE_TDM_CAP_DAI("Tertiary", 4, TERTIARY_TDM_TX_4),
+	Q6AFE_TDM_CAP_DAI("Tertiary", 5, TERTIARY_TDM_TX_5),
+	Q6AFE_TDM_CAP_DAI("Tertiary", 6, TERTIARY_TDM_TX_6),
+	Q6AFE_TDM_CAP_DAI("Tertiary", 7, TERTIARY_TDM_TX_7),
+	Q6AFE_TDM_PB_DAI("Quaternary", 0, QUATERNARY_TDM_RX_0),
+	Q6AFE_TDM_PB_DAI("Quaternary", 1, QUATERNARY_TDM_RX_1),
+	Q6AFE_TDM_PB_DAI("Quaternary", 2, QUATERNARY_TDM_RX_2),
+	Q6AFE_TDM_PB_DAI("Quaternary", 3, QUATERNARY_TDM_RX_3),
+	Q6AFE_TDM_PB_DAI("Quaternary", 4, QUATERNARY_TDM_RX_4),
+	Q6AFE_TDM_PB_DAI("Quaternary", 5, QUATERNARY_TDM_RX_5),
+	Q6AFE_TDM_PB_DAI("Quaternary", 6, QUATERNARY_TDM_RX_6),
+	Q6AFE_TDM_PB_DAI("Quaternary", 7, QUATERNARY_TDM_RX_7),
+	Q6AFE_TDM_CAP_DAI("Quaternary", 0, QUATERNARY_TDM_TX_0),
+	Q6AFE_TDM_CAP_DAI("Quaternary", 1, QUATERNARY_TDM_TX_1),
+	Q6AFE_TDM_CAP_DAI("Quaternary", 2, QUATERNARY_TDM_TX_2),
+	Q6AFE_TDM_CAP_DAI("Quaternary", 3, QUATERNARY_TDM_TX_3),
+	Q6AFE_TDM_CAP_DAI("Quaternary", 4, QUATERNARY_TDM_TX_4),
+	Q6AFE_TDM_CAP_DAI("Quaternary", 5, QUATERNARY_TDM_TX_5),
+	Q6AFE_TDM_CAP_DAI("Quaternary", 6, QUATERNARY_TDM_TX_6),
+	Q6AFE_TDM_CAP_DAI("Quaternary", 7, QUATERNARY_TDM_TX_7),
+	Q6AFE_TDM_PB_DAI("Quinary", 0, QUINARY_TDM_RX_0),
+	Q6AFE_TDM_PB_DAI("Quinary", 1, QUINARY_TDM_RX_1),
+	Q6AFE_TDM_PB_DAI("Quinary", 2, QUINARY_TDM_RX_2),
+	Q6AFE_TDM_PB_DAI("Quinary", 3, QUINARY_TDM_RX_3),
+	Q6AFE_TDM_PB_DAI("Quinary", 4, QUINARY_TDM_RX_4),
+	Q6AFE_TDM_PB_DAI("Quinary", 5, QUINARY_TDM_RX_5),
+	Q6AFE_TDM_PB_DAI("Quinary", 6, QUINARY_TDM_RX_6),
+	Q6AFE_TDM_PB_DAI("Quinary", 7, QUINARY_TDM_RX_7),
+	Q6AFE_TDM_CAP_DAI("Quinary", 0, QUINARY_TDM_TX_0),
+	Q6AFE_TDM_CAP_DAI("Quinary", 1, QUINARY_TDM_TX_1),
+	Q6AFE_TDM_CAP_DAI("Quinary", 2, QUINARY_TDM_TX_2),
+	Q6AFE_TDM_CAP_DAI("Quinary", 3, QUINARY_TDM_TX_3),
+	Q6AFE_TDM_CAP_DAI("Quinary", 4, QUINARY_TDM_TX_4),
+	Q6AFE_TDM_CAP_DAI("Quinary", 5, QUINARY_TDM_TX_5),
+	Q6AFE_TDM_CAP_DAI("Quinary", 6, QUINARY_TDM_TX_6),
+	Q6AFE_TDM_CAP_DAI("Quinary", 7, QUINARY_TDM_TX_7),
+	{
+		.playback = {
+			.stream_name = "Display Port Playback",
+			.rates = SNDRV_PCM_RATE_48000 |
+				 SNDRV_PCM_RATE_96000 |
+				 SNDRV_PCM_RATE_192000,
+			.formats = SNDRV_PCM_FMTBIT_S16_LE |
+				   SNDRV_PCM_FMTBIT_S24_LE,
+			.channels_min = 2,
+			.channels_max = 8,
+			.rate_max =     192000,
+			.rate_min =	48000,
+		},
+		.id = DISPLAY_PORT_RX,
+		.name = "DISPLAY_PORT",
+	},
+	Q6AFE_CDC_DMA_RX_DAI(WSA_CODEC_DMA_RX_0),
+	Q6AFE_CDC_DMA_TX_DAI(WSA_CODEC_DMA_TX_0),
+	Q6AFE_CDC_DMA_RX_DAI(WSA_CODEC_DMA_RX_1),
+	Q6AFE_CDC_DMA_TX_DAI(WSA_CODEC_DMA_TX_1),
+	Q6AFE_CDC_DMA_TX_DAI(WSA_CODEC_DMA_TX_2),
+	Q6AFE_CDC_DMA_TX_DAI(VA_CODEC_DMA_TX_0),
+	Q6AFE_CDC_DMA_TX_DAI(VA_CODEC_DMA_TX_1),
+	Q6AFE_CDC_DMA_TX_DAI(VA_CODEC_DMA_TX_2),
+	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_0),
+	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_0),
+	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_1),
+	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_1),
+	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_2),
+	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_2),
+	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_3),
+	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_3),
+	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_4),
+	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_4),
+	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_5),
+	Q6AFE_CDC_DMA_TX_DAI(TX_CODEC_DMA_TX_5),
+	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_6),
+	Q6AFE_CDC_DMA_RX_DAI(RX_CODEC_DMA_RX_7),
+};
+
+int q6dsp_audio_ports_of_xlate_dai_name(struct snd_soc_component *component,
+					const struct of_phandle_args *args,
+					const char **dai_name)
+{
+	int id = args->args[0];
+	int ret = -EINVAL;
+	int i;
+
+	for (i = 0; i  < ARRAY_SIZE(q6dsp_audio_fe_dais); i++) {
+		if (q6dsp_audio_fe_dais[i].id == id) {
+			*dai_name = q6dsp_audio_fe_dais[i].name;
+			ret = 0;
+			break;
+		}
+	}
+
+	return ret;
+}
+
+struct snd_soc_dai_driver *q6dsp_audio_ports_set_config(struct device *dev,
+				struct q6dsp_audio_port_dai_driver_config *cfg,
+				int *num_dais)
+{
+	int i;
+
+	for (i = 0; i  < ARRAY_SIZE(q6dsp_audio_fe_dais); i++) {
+		q6dsp_audio_fe_dais[i].probe = cfg->probe;
+		q6dsp_audio_fe_dais[i].remove = cfg->remove;
+
+		switch (q6dsp_audio_fe_dais[i].id) {
+		case HDMI_RX:
+		case DISPLAY_PORT_RX:
+			q6dsp_audio_fe_dais[i].ops = cfg->q6hdmi_ops;
+			break;
+		case SLIMBUS_0_RX ... SLIMBUS_6_TX:
+			q6dsp_audio_fe_dais[i].ops = cfg->q6slim_ops;
+			break;
+		case QUINARY_MI2S_RX ... QUINARY_MI2S_TX:
+		case PRIMARY_MI2S_RX ... QUATERNARY_MI2S_TX:
+			q6dsp_audio_fe_dais[i].ops = cfg->q6i2s_ops;
+			break;
+		case PRIMARY_TDM_RX_0 ... QUINARY_TDM_TX_7:
+			q6dsp_audio_fe_dais[i].ops = cfg->q6tdm_ops;
+			break;
+		case WSA_CODEC_DMA_RX_0 ... RX_CODEC_DMA_RX_7:
+			q6dsp_audio_fe_dais[i].ops = cfg->q6dma_ops;
+			break;
+		default:
+			break;
+		}
+	}
+
+	*num_dais = ARRAY_SIZE(q6dsp_audio_fe_dais);
+	return q6dsp_audio_fe_dais;
+}
diff --git a/sound/soc/qcom/qdsp6/q6dsp-audio-ports.h b/sound/soc/qcom/qdsp6/q6dsp-audio-ports.h
new file mode 100644
index 000000000000..7f052c8a1257
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6dsp-audio-ports.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __Q6DSP_AUDIO_PORTS_H__
+#define __Q6DSP_AUDIO_PORTS_H__
+
+struct q6dsp_audio_port_dai_driver_config {
+	int (*probe)(struct snd_soc_dai *dai);
+	int (*remove)(struct snd_soc_dai *dai);
+	const struct snd_soc_dai_ops *q6hdmi_ops;
+	const struct snd_soc_dai_ops *q6slim_ops;
+	const struct snd_soc_dai_ops *q6i2s_ops;
+	const struct snd_soc_dai_ops *q6tdm_ops;
+	const struct snd_soc_dai_ops *q6dma_ops;
+};
+
+struct snd_soc_dai_driver *q6dsp_audio_ports_set_config(struct device *dev,
+					struct q6dsp_audio_port_dai_driver_config *cfg,
+					int *num_dais);
+int q6dsp_audio_ports_of_xlate_dai_name(struct snd_soc_component *component,
+					const struct of_phandle_args *args,
+					const char **dai_name);
+#endif /* __Q6DSP_AUDIO_PORTS_H__ */
-- 
2.21.0

