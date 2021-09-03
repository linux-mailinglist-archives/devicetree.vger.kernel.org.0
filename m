Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0513FFF09
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 13:22:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349278AbhICLW5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 07:22:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348457AbhICLW5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 07:22:57 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45D9EC061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 04:21:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b6so7716645wrh.10
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 04:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HgvzBnx/H8EJS6d9iFwurIUtcfEU4ki7XRZAyqJbBlk=;
        b=AQZqddIav+t/v9sH3FC57GramicrBq/UJ3SXZknIjvP9ZIOTSwgNvcy9DZ6HY79LKR
         b0WFeS74uqaQ0l2PjnMRK/74QBQD8wCh0dqx/OQxO39ydccVdquyjZeZ03mWT/lRVIqm
         0hKy/MzNJeCtyXR/qKNlXZjHrQnkXwFkfKFbOknpwu5LWfz5xMskPxNH/2EMGiSr2Xqz
         M/H+4NPW+zRuZUpDky/PBFCCbtSD5bpCv32lZhP4uhpO1tKnPrgX8Ge6K9+omDSQTfGb
         joX00rk6xmHZOLsdFNRIuyKI8BBBUFZiT9p8gHOwY/KxgvLYnQFCwM31LAn6D7lgpca9
         LdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HgvzBnx/H8EJS6d9iFwurIUtcfEU4ki7XRZAyqJbBlk=;
        b=gnpWfKa4ESObVBkw5nNjb1BdOf7iiB+Hbh5wlN/jqg2OaX9fLiiRecWaucifhQvWt+
         P6yLr/MArtq3sYk2EG4D8zmfSsbBMdzFBoljg5JdwZdBgxjQe5pUJvLP0lRXilK3IYI0
         qBEhJT3IMTyGw3duaHFweY5DJR+VH1r9WiG/lRBFVlTYmDiwaWz54WlB0rlE3O7UeX3I
         /qw94oDjxng+6RdsZ1s9nWQn8fPHWqbHCDIuENpvgl+318E21MnkmcVBtgLPRYWPwGLG
         Pei52CVKEX17x/Vm+3rAx9gQW7wbzUEwPUMbap+fbUeCYNFrxAF9Q3VwhJbJfSvpKA+y
         MwDA==
X-Gm-Message-State: AOAM530AIM5uWESbPAI3Ozzd3DHcZQSt+op1QmqnITTu2CbaUoz4Ik5e
        zeKP891yVxIAX6jCb1h398PmjA==
X-Google-Smtp-Source: ABdhPJwHCnxKoZxz9dP8NuKUdt7P0j0eD2SjuQm/GXER1hVhgoW9kegkGvGGaALvz0MBYcvVqZs5eQ==
X-Received: by 2002:adf:db07:: with SMTP id s7mr3602271wri.106.1630668115837;
        Fri, 03 Sep 2021 04:21:55 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f20sm3881877wmb.32.2021.09.03.04.21.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 04:21:55 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 18/21] ASoC: qdsp6: audioreach: add q6apm-dai support
Date:   Fri,  3 Sep 2021 12:20:29 +0100
Message-Id: <20210903112032.25834-19-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/Kconfig           |   5 +
 sound/soc/qcom/qdsp6/Makefile    |   1 +
 sound/soc/qcom/qdsp6/q6apm-dai.c | 504 +++++++++++++++++++++++++++++++
 3 files changed, 510 insertions(+)
 create mode 100644 sound/soc/qcom/qdsp6/q6apm-dai.c

diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index 66d8436ab0a8..fb1921889dc4 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -84,7 +84,12 @@ config SND_SOC_QDSP6_ASM_DAI
 	select SND_SOC_COMPRESS
 	tristate
 
+config SND_SOC_QDSP6_APM_DAI
+	select SND_SOC_COMPRESS
+	tristate
+
 config SND_SOC_QDSP6_APM
+	select SND_SOC_QDSP6_APM_DAI
 	tristate
 
 config SND_SOC_QDSP6
diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index 766b824f6597..a4ec7c4d0e48 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_SND_SOC_QDSP6_ASM) += q6asm.o
 obj-$(CONFIG_SND_SOC_QDSP6_ASM_DAI) += q6asm-dai.o
 
 obj-$(CONFIG_SND_SOC_QDSP6_APM) += snd-q6apm.o
+obj-$(CONFIG_SND_SOC_QDSP6_APM_DAI) += q6apm-dai.o
diff --git a/sound/soc/qcom/qdsp6/q6apm-dai.c b/sound/soc/qcom/qdsp6/q6apm-dai.c
new file mode 100644
index 000000000000..be6dc6232290
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6apm-dai.c
@@ -0,0 +1,504 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2021, Linaro Limited
+
+#include <linux/init.h>
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <sound/soc.h>
+#include <sound/soc-dapm.h>
+#include <sound/pcm.h>
+#include <linux/spinlock.h>
+#include <asm/dma.h>
+#include <linux/dma-mapping.h>
+#include <linux/of_device.h>
+#include <sound/pcm_params.h>
+#include "q6apm.h"
+
+#define DRV_NAME "q6apm-dai"
+
+#define PLAYBACK_MIN_NUM_PERIODS    2
+#define PLAYBACK_MAX_NUM_PERIODS   8
+#define PLAYBACK_MAX_PERIOD_SIZE    65536
+#define PLAYBACK_MIN_PERIOD_SIZE    128
+#define CAPTURE_MIN_NUM_PERIODS     2
+#define CAPTURE_MAX_NUM_PERIODS     8
+#define CAPTURE_MAX_PERIOD_SIZE     4096
+#define CAPTURE_MIN_PERIOD_SIZE     320
+#define BUFFER_BYTES_MAX (PLAYBACK_MAX_NUM_PERIODS * PLAYBACK_MAX_PERIOD_SIZE)
+#define BUFFER_BYTES_MIN (PLAYBACK_MIN_NUM_PERIODS * PLAYBACK_MIN_PERIOD_SIZE)
+
+#define SID_MASK_DEFAULT	0xF
+
+enum stream_state {
+	Q6APM_STREAM_IDLE = 0,
+	Q6APM_STREAM_STOPPED,
+	Q6APM_STREAM_RUNNING,
+};
+
+struct q6apm_dai_rtd {
+	struct snd_pcm_substream *substream;
+	struct snd_compr_stream *cstream;
+	struct snd_compr_params codec_param;
+	struct snd_dma_buffer dma_buffer;
+	spinlock_t lock;
+	phys_addr_t phys;
+	unsigned int pcm_size;
+	unsigned int pcm_count;
+	unsigned int pcm_irq_pos;       /* IRQ position */
+	unsigned int periods;
+	unsigned int bytes_sent;
+	unsigned int bytes_received;
+	unsigned int copied_total;
+	uint16_t bits_per_sample;
+	uint16_t source; /* Encoding source bit mask */
+	uint16_t session_id;
+	enum stream_state state;
+	struct q6apm_graph *graph;
+};
+
+struct q6apm_dai_data {
+	long long sid;
+};
+
+static struct snd_pcm_hardware q6apm_dai_hardware_capture = {
+	.info =                 (SNDRV_PCM_INFO_MMAP |
+				SNDRV_PCM_INFO_BLOCK_TRANSFER |
+				SNDRV_PCM_INFO_MMAP_VALID |
+				SNDRV_PCM_INFO_INTERLEAVED |
+				SNDRV_PCM_INFO_PAUSE | SNDRV_PCM_INFO_RESUME),
+	.formats =              (SNDRV_PCM_FMTBIT_S16_LE |
+				SNDRV_PCM_FMTBIT_S24_LE),
+	.rates =                SNDRV_PCM_RATE_8000_48000,
+	.rate_min =             8000,
+	.rate_max =             48000,
+	.channels_min =         2,
+	.channels_max =         4,
+	.buffer_bytes_max =     CAPTURE_MAX_NUM_PERIODS *
+				CAPTURE_MAX_PERIOD_SIZE,
+	.period_bytes_min =	CAPTURE_MIN_PERIOD_SIZE,
+	.period_bytes_max =     CAPTURE_MAX_PERIOD_SIZE,
+	.periods_min =          CAPTURE_MIN_NUM_PERIODS,
+	.periods_max =          CAPTURE_MAX_NUM_PERIODS,
+	.fifo_size =            0,
+};
+
+static struct snd_pcm_hardware q6apm_dai_hardware_playback = {
+	.info =                 (SNDRV_PCM_INFO_MMAP |
+				SNDRV_PCM_INFO_BLOCK_TRANSFER |
+				SNDRV_PCM_INFO_MMAP_VALID |
+				SNDRV_PCM_INFO_INTERLEAVED |
+				SNDRV_PCM_INFO_PAUSE | SNDRV_PCM_INFO_RESUME),
+	.formats =              (SNDRV_PCM_FMTBIT_S16_LE |
+				SNDRV_PCM_FMTBIT_S24_LE),
+	.rates =                SNDRV_PCM_RATE_8000_192000,
+	.rate_min =             8000,
+	.rate_max =             192000,
+	.channels_min =         2,
+	.channels_max =         8,
+	.buffer_bytes_max =     (PLAYBACK_MAX_NUM_PERIODS *
+				PLAYBACK_MAX_PERIOD_SIZE),
+	.period_bytes_min =	PLAYBACK_MIN_PERIOD_SIZE,
+	.period_bytes_max =     PLAYBACK_MAX_PERIOD_SIZE,
+	.periods_min =          PLAYBACK_MIN_NUM_PERIODS,
+	.periods_max =          PLAYBACK_MAX_NUM_PERIODS,
+	.fifo_size =            0,
+};
+
+static void event_handler(uint32_t opcode, uint32_t token,
+			  uint32_t *payload, void *priv)
+{
+	struct q6apm_dai_rtd *prtd = priv;
+	struct snd_pcm_substream *substream = prtd->substream;
+
+	switch (opcode) {
+	case APM_CLIENT_EVENT_CMD_EOS_DONE:
+		prtd->state = Q6APM_STREAM_STOPPED;
+		break;
+	case APM_CLIENT_EVENT_DATA_WRITE_DONE: {
+		prtd->pcm_irq_pos += prtd->pcm_count;
+		snd_pcm_period_elapsed(substream);
+		if (prtd->state == Q6APM_STREAM_RUNNING) {
+			q6apm_write_async(prtd->graph,
+					   prtd->pcm_count, 0, 0, NO_TIMESTAMP);
+		}
+
+		break;
+		}
+	case APM_CLIENT_EVENT_DATA_READ_DONE:
+		prtd->pcm_irq_pos += prtd->pcm_count;
+		snd_pcm_period_elapsed(substream);
+		if (prtd->state == Q6APM_STREAM_RUNNING)
+			q6apm_read(prtd->graph);
+
+		break;
+	default:
+		break;
+	}
+}
+
+static int q6apm_dai_prepare(struct snd_soc_component *component,
+			     struct snd_pcm_substream *substream)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct q6apm_dai_rtd *prtd = runtime->private_data;
+	struct audioreach_module_config cfg;
+	struct q6apm_dai_data *pdata;
+	int ret;
+
+	pdata = snd_soc_component_get_drvdata(component);
+	if (!pdata)
+		return -EINVAL;
+
+	if (!prtd || !prtd->graph) {
+		dev_err(component->dev, "%s: private data null or audio client freed\n",
+			__func__);
+		return -EINVAL;
+	}
+
+	cfg.direction = substream->stream;
+	cfg.sample_rate = runtime->rate;
+	cfg.num_channels = runtime->channels;
+	cfg.bit_width = prtd->bits_per_sample;
+
+	prtd->pcm_count = snd_pcm_lib_period_bytes(substream);
+	prtd->pcm_irq_pos = 0;
+	/* rate and channels are sent to audio driver */
+	ret = q6apm_graph_media_format_shmem(prtd->graph, &cfg);
+	if (ret < 0) {
+		dev_err(component->dev, "%s: q6apm_open_write failed\n", __func__);
+		return ret;
+	}
+
+	ret = q6apm_graph_media_format_pcm(prtd->graph, &cfg);
+	if (ret < 0)
+		pr_info("%s: CMD Format block failed\n", __func__);
+
+	ret = q6apm_map_memory_regions(prtd->graph,
+				       substream->stream,
+				       prtd->phys,
+				       (prtd->pcm_size / prtd->periods),
+				       prtd->periods);
+
+	if (ret < 0) {
+		dev_err(component->dev, "Audio Start: Buffer Allocation failed rc = %d\n",
+							ret);
+		return -ENOMEM;
+	}
+
+	ret = q6apm_graph_prepare(prtd->graph);
+	if (ret) {
+		dev_err(component->dev, "Failed to prepare Graph %d\n", ret);
+		return ret;
+	}
+
+	ret = q6apm_graph_start(prtd->graph);
+	if (ret) {
+		dev_err(component->dev, "Failed to Start Graph %d\n", ret);
+		return ret;
+	}
+
+	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
+		int i;
+		/* Queue the buffers */
+		for (i = 0; i < runtime->periods; i++)
+			q6apm_read(prtd->graph);
+
+	}
+	prtd->state = Q6APM_STREAM_RUNNING;
+
+	return 0;
+}
+
+static int q6apm_dai_trigger(struct snd_soc_component *component,
+			     struct snd_pcm_substream *substream, int cmd)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct q6apm_dai_rtd *prtd = runtime->private_data;
+	int ret = 0;
+
+	switch (cmd) {
+	case SNDRV_PCM_TRIGGER_START:
+	case SNDRV_PCM_TRIGGER_RESUME:
+	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
+		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
+			ret = q6apm_write_async(prtd->graph, prtd->pcm_count, 0, 0, NO_TIMESTAMP);
+		break;
+	case SNDRV_PCM_TRIGGER_STOP:
+		prtd->state = Q6APM_STREAM_STOPPED;
+		break;
+	case SNDRV_PCM_TRIGGER_SUSPEND:
+	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
+		break;
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	return ret;
+}
+
+static int q6apm_dai_open(struct snd_soc_component *component,
+			  struct snd_pcm_substream *substream)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct snd_soc_pcm_runtime *soc_prtd = substream->private_data;
+	struct snd_soc_dai *cpu_dai = asoc_rtd_to_cpu(soc_prtd, 0);
+	struct q6apm_dai_rtd *prtd;
+	struct q6apm_dai_data *pdata;
+	struct device *dev = component->dev;
+	int ret;
+	int graph_id;
+
+	graph_id = cpu_dai->driver->id;
+
+	pdata = snd_soc_component_get_drvdata(component);
+	if (!pdata) {
+		dev_err(component->dev, "Drv data not found ..\n");
+		return -EINVAL;
+	}
+
+	prtd = kzalloc(sizeof(*prtd), GFP_KERNEL);
+	if (prtd == NULL)
+		return -ENOMEM;
+
+	prtd->substream = substream;
+
+	prtd->graph = q6apm_graph_open(dev, (q6apm_cb)event_handler,
+				       prtd, graph_id);
+	if (IS_ERR(prtd->graph)) {
+		pr_info("%s: Could not allocate memory\n", __func__);
+		ret = PTR_ERR(prtd->graph);
+		kfree(prtd);
+		return ret;
+	}
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
+		runtime->hw = q6apm_dai_hardware_playback;
+	else if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
+		runtime->hw = q6apm_dai_hardware_capture;
+
+	/* Ensure that buffer size is a multiple of period size */
+	ret = snd_pcm_hw_constraint_integer(runtime,
+					    SNDRV_PCM_HW_PARAM_PERIODS);
+	if (ret < 0) {
+		dev_err(dev, "snd_pcm_hw_constraint_integer failed\n");
+		return ret;
+	}
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		ret = snd_pcm_hw_constraint_minmax(runtime,
+			SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
+			BUFFER_BYTES_MIN, BUFFER_BYTES_MAX);
+		if (ret < 0) {
+			dev_err(dev, "constraint for buffer bytes min max ret = %d\n",
+									ret);
+			return ret;
+		}
+	}
+
+	ret = snd_pcm_hw_constraint_step(runtime, 0,
+					 SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 32);
+	if (ret < 0) {
+		dev_err(dev, "constraint for period bytes step ret = %d\n",
+								ret);
+		return ret;
+	}
+	ret = snd_pcm_hw_constraint_step(runtime, 0,
+					 SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 32);
+	if (ret < 0) {
+		dev_err(dev, "constraint for buffer bytes step ret = %d\n",
+								ret);
+		return ret;
+	}
+
+	runtime->private_data = prtd;
+	runtime->dma_bytes = BUFFER_BYTES_MAX;
+	if (pdata->sid < 0)
+		prtd->phys = substream->dma_buffer.addr;
+	else
+		prtd->phys = substream->dma_buffer.addr | (pdata->sid << 32);
+
+	snd_pcm_set_runtime_buffer(substream, &substream->dma_buffer);
+
+	return 0;
+}
+
+static int q6apm_dai_close(struct snd_soc_component *component,
+			   struct snd_pcm_substream *substream)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct q6apm_dai_rtd *prtd = runtime->private_data;
+
+	if (prtd && prtd->graph) {
+		q6apm_graph_stop(prtd->graph);
+
+		q6apm_unmap_memory_regions(prtd->graph,
+					   substream->stream);
+		q6apm_graph_close(prtd->graph);
+		prtd->graph = NULL;
+		kfree(prtd);
+		runtime->private_data = NULL;
+	}
+
+	return 0;
+}
+
+static snd_pcm_uframes_t q6apm_dai_pointer(struct snd_soc_component *component,
+					   struct snd_pcm_substream *substream)
+{
+
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct q6apm_dai_rtd *prtd = runtime->private_data;
+
+	if (prtd->pcm_irq_pos >= prtd->pcm_size)
+		prtd->pcm_irq_pos = 0;
+
+	return bytes_to_frames(runtime, (prtd->pcm_irq_pos));
+}
+
+static int q6apm_dai_mmap(struct snd_soc_component *component,
+			  struct snd_pcm_substream *substream,
+			  struct vm_area_struct *vma)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct device *dev = component->dev;
+
+	return dma_mmap_coherent(dev, vma,
+			runtime->dma_area, runtime->dma_addr,
+			runtime->dma_bytes);
+}
+
+static int q6apm_dai_hw_params(struct snd_soc_component *component,
+			       struct snd_pcm_substream *substream,
+			       struct snd_pcm_hw_params *params)
+{
+	struct snd_pcm_runtime *runtime = substream->runtime;
+	struct q6apm_dai_rtd *prtd = runtime->private_data;
+
+	prtd->pcm_size = params_buffer_bytes(params);
+	prtd->periods = params_periods(params);
+
+	switch (params_format(params)) {
+	case SNDRV_PCM_FORMAT_S16_LE:
+		prtd->bits_per_sample = 16;
+		break;
+	case SNDRV_PCM_FORMAT_S24_LE:
+		prtd->bits_per_sample = 24;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int q6apm_dai_pcm_new(struct snd_soc_component *component,
+			     struct snd_soc_pcm_runtime *rtd)
+{
+	struct snd_pcm_substream *psubstream, *csubstream;
+	struct snd_pcm *pcm = rtd->pcm;
+	struct device *dev;
+	int size, ret;
+
+	dev = component->dev;
+	size = BUFFER_BYTES_MAX;
+	psubstream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
+	if (psubstream) {
+		ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dev, size,
+					  &psubstream->dma_buffer);
+		if (ret) {
+			dev_err(dev, "Cannot allocate buffer(s)\n");
+			return ret;
+		}
+	}
+
+	csubstream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
+	if (csubstream) {
+		ret = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, dev, size,
+					  &csubstream->dma_buffer);
+		if (ret) {
+			dev_err(dev, "Cannot allocate buffer(s)\n");
+			if (psubstream)
+				snd_dma_free_pages(&psubstream->dma_buffer);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static void q6apm_dai_pcm_free(struct snd_soc_component *component,
+			       struct snd_pcm *pcm)
+{
+	struct snd_pcm_substream *substream;
+	int i;
+
+	if (!pcm->streams)
+		return;
+
+	for (i = 0; i < ARRAY_SIZE(pcm->streams); i++) {
+		substream = pcm->streams[i].substream;
+		if (substream) {
+			snd_dma_free_pages(&substream->dma_buffer);
+			substream->dma_buffer.area = NULL;
+			substream->dma_buffer.addr = 0;
+		}
+	}
+}
+
+static const struct snd_soc_component_driver q6apm_fe_dai_component = {
+	.name		= DRV_NAME,
+	.open		= q6apm_dai_open,
+	.close		= q6apm_dai_close,
+	.prepare	= q6apm_dai_prepare,
+	.pcm_construct	= q6apm_dai_pcm_new,
+	.pcm_destruct	= q6apm_dai_pcm_free,
+	.mmap		= q6apm_dai_mmap,
+	.hw_params	= q6apm_dai_hw_params,
+	.pointer	= q6apm_dai_pointer,
+	.trigger	= q6apm_dai_trigger,
+};
+
+static int q6apm_dai_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->of_node;
+	struct of_phandle_args args;
+	struct q6apm_dai_data *pdata;
+	int rc;
+
+	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
+	if (!pdata)
+		return -ENOMEM;
+
+	rc = of_parse_phandle_with_fixed_args(node, "iommus", 1, 0, &args);
+	if (rc < 0)
+		pdata->sid = -1;
+	else
+		pdata->sid = args.args[0] & SID_MASK_DEFAULT;
+
+	dev_set_drvdata(dev, pdata);
+
+	return devm_snd_soc_register_component(dev, &q6apm_fe_dai_component,
+					       NULL, 0);
+}
+
+static const struct of_device_id q6apm_dai_device_id[] = {
+	{ .compatible = "qcom,q6apm-dais" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, q6apm_dai_device_id);
+
+static struct platform_driver q6apm_dai_platform_driver = {
+	.driver = {
+		.name = "q6apm-dai",
+		.of_match_table = of_match_ptr(q6apm_dai_device_id),
+	},
+	.probe = q6apm_dai_probe,
+};
+module_platform_driver(q6apm_dai_platform_driver);
+
+MODULE_DESCRIPTION("Q6APM dai driver");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0

