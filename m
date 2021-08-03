Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D38B53DEE58
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 14:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236027AbhHCMy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 08:54:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236065AbhHCMyz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 08:54:55 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6CF5C0613D5
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 05:54:43 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id h13so11740647wrp.1
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 05:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dnxIf2garcynrw65BP0C+FovPiZi/HWK1IhSQHSOY70=;
        b=QJG2rvWVVwrCVvnsg2tbQp+YHVlBrNT7zIDxfPm6ymvv2JoFOPnwCx+dMWUMcqSnYw
         9SH2TPE/F9BVICmHnkdoEJHXHgZE9GS7vFttIF07DHskXu0vb7HXOltSEGs2ZKmJWv2B
         ymjbKjdqViwf+3uiW/dJOrIt4zFoQH+80ctomYQX7a8tH+vB+SrrtBKVIq+fqhs0FuLt
         wNW/mxzu2nj9t332FQ+JKiFhLK52WMmrADYZME2gVEORJfkiUlP1zn9+h9xUzNPA4lBW
         jmYOzWPCz12t1I6fLib0ZJ0hohSP+W3FCGtteLJ3Sx9esHyjbIkLT/I/djelKPXFJP36
         JZ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dnxIf2garcynrw65BP0C+FovPiZi/HWK1IhSQHSOY70=;
        b=RlVO35QHVnkq3zKSQndoD34uxIIB4qlHxnadz/Y4hK7i2+WXZ5fb3pOLaq0Km6XmKw
         VTrHMiQWvUShgmzDiSXOuvMOWHWUzXpkjRvjJ53xAQFcWq9NNZlz8hDmIRA1VvwFXYvI
         McGJlq6mnkoumpdGwU0L5OnSUHYrL+uIPgj+j4ra1MxUEZMXUN/R/rEVirB62BruE1Pq
         nMw1HiWeYX04HUP2I3hZXVNUA/RQz1rgsNG98gRgOgq4Yk9Sq+IPFiEl7PK/YaF22i12
         FJr/4ap2Skoe0AkzWiNSlG3dGEcWBSDzzrtPbPfaF8Ax0UZt1CRs+9DsvV6H357mPw7s
         PlAA==
X-Gm-Message-State: AOAM533MA8An0ZgbZPxAtJRL2cNFUC5NgvqCXN8XQL0uj2VK4sLxw2EO
        JNTTX3OdPSrUKMyhtIGvNccw0g==
X-Google-Smtp-Source: ABdhPJyKyAElGEO5fzA7nWSTO0fTWK5ZWYE5XlhRDOd+mTxlsHFOmlrkG8TThnAFgwhGqk84hxrDcQ==
X-Received: by 2002:a5d:518a:: with SMTP id k10mr22923929wrv.400.1627995282347;
        Tue, 03 Aug 2021 05:54:42 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h14sm14695574wrp.55.2021.08.03.05.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 05:54:41 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, tiwai@suse.de, devicetree@vger.kernel.org,
        perex@perex.cz, alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 17/20] ASoC: qdsp6: audioreach: add q6apm-dai support
Date:   Tue,  3 Aug 2021 13:54:08 +0100
Message-Id: <20210803125411.28066-18-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
References: <20210803125411.28066-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/Kconfig           |   4 +
 sound/soc/qcom/qdsp6/Makefile    |   2 +
 sound/soc/qcom/qdsp6/q6apm-dai.c | 504 +++++++++++++++++++++++++++++++
 3 files changed, 510 insertions(+)
 create mode 100644 sound/soc/qcom/qdsp6/q6apm-dai.c

diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index b36bae955a81..4f0fbf2032cc 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -103,10 +103,14 @@ config SND_SOC_QDSP6
 	 audio drivers. This includes q6asm, q6adm,
 	 q6afe interfaces to DSP using apr.
 
+config SND_SOC_QDSP6_APM_DAI
+	tristate
+
 config SND_SOC_QDSP6_AUDIOREACH
 	tristate "SoC ALSA audio drives for Qualcomm QDSP AUDIOREACH Framework"
 	depends on QCOM_GPR
 	select SND_SOC_TOPOLOGY
+	select SND_SOC_QDSP6_APM_DAI
 	help
 	 To add support for Qualcomm QDSP6 AudioReach Audio Framework.
 	 This will enable sound soc platform specific audio drivers.
diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index 15f9cc453efb..3e93911d04fa 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 snd-ar-objs := audioreach.o q6apm.o topology.o
+snd-apm-dai-objs := q6apm-dai.o
 
 snd-afe-dai-objs += q6dsp-audio-ports.o q6afe-dai.o
 snd-afe-clks-objs := q6dsp-audio-clocks.o q6afe-clocks.o
@@ -15,3 +16,4 @@ obj-$(CONFIG_SND_SOC_QDSP6_ASM) += q6asm.o
 obj-$(CONFIG_SND_SOC_QDSP6_ASM_DAI) += q6asm-dai.o
 
 obj-$(CONFIG_SND_SOC_QDSP6_AUDIOREACH) += snd-ar.o
+obj-$(CONFIG_SND_SOC_QDSP6_APM_DAI) += snd-apm-dai.o
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

