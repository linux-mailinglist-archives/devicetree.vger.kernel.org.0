Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE3C940C616
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 15:15:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234030AbhIONQ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 09:16:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234186AbhIONQ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 09:16:27 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5AF7C0613C1
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:15:08 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id x6so3798714wrv.13
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 06:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pyC0f5gaxJzBJgDwCC1ngp1Qx6HSiM2kRzb09fUKRas=;
        b=F/RlAkkmoilt9yK5vcc5Q6MCXeaj+H6NWoL75l8JQay0zX3+JWB8ENft1x3NKd+mAx
         bAPl3mxAjcgVdcq4uJVw085aeTbFQMSDo6Js7axl1ZNGEYBlh2GUra4mxt7mdI5AIK6P
         QNm2DuJSJZspaOUdkHzXTmbahCUQcg7hmJp8fcc6jEzfvhEJlLGdo8XOqVyWroXfDBGV
         knc/2KeTggY3CD04twTacW8b7B3tD/IwwBZ5MzAK1ReGjxsr1f51pZ6aleUDZB0o2+TM
         8neEAc1Q1As3Iv9DbD3XmBGPSw3xN24Qbn2PiqHBFre6l4469E2qkLvlV+T+2yLfest/
         UWaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pyC0f5gaxJzBJgDwCC1ngp1Qx6HSiM2kRzb09fUKRas=;
        b=XDmzvlMOdqjvv6rlL3LqE5uTiPgVSTtvndgZAwW6eQEg9wTYA1NtGkk/+iBJcE6GAT
         iIpxAS7Gf82yVQHqKxVS8ihjSiBeg9Oks/7QqWzrfrcLnBHXeEDDFRO/aB41lHmhAsoX
         h2Pop+v8qbRyt1F5YEesXBk6i0FAub5N6QJLQ83GuWyvE2ceQHANiQdpdxE+Huhr6Dhb
         LI0NReTb+hrROhTpWI3b9l8PsqNR2wWo8qgolWTeFGB31OuWtjU3UKPk4UFJKiaFY4zu
         lSvIccHOpfcI4J/gyANaFGkr2IP11b/tOtzs8p9p9HTlLShvluHfAOIwDL1kRG1QRYKc
         uDqQ==
X-Gm-Message-State: AOAM531J6NTHnm26MqUDT4s031eKmCeMoyNykKHbpvqQ+eXlLKfZi/Bg
        hSL1RKEXvNXfmrWSITD96X/JZg==
X-Google-Smtp-Source: ABdhPJwrBQ5NLupPDGOSPG8hrzv+LezLgFEXQAa5Ha1bcqoxyDpJIvoopWAJpPgrjN3ft5/l3iJ/qw==
X-Received: by 2002:adf:ded1:: with SMTP id i17mr4980217wrn.83.1631711707224;
        Wed, 15 Sep 2021 06:15:07 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id m29sm14501717wrb.89.2021.09.15.06.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Sep 2021 06:15:06 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org, broonie@kernel.org, robh@kernel.org
Cc:     plai@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        tiwai@suse.de, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, lgirdwood@gmail.com,
        bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 20/22] ASoC: qdsp6: audioreach: add q6apm lpass dai support
Date:   Wed, 15 Sep 2021 14:13:31 +0100
Message-Id: <20210915131333.19047-21-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
References: <20210915131333.19047-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support to Audio port dais on LPASS Audio IP using
existing common q6dsp-lpass-ports.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/Kconfig                  |   4 +
 sound/soc/qcom/qdsp6/Makefile           |   1 +
 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c | 260 ++++++++++++++++++++++++
 3 files changed, 265 insertions(+)
 create mode 100644 sound/soc/qcom/qdsp6/q6apm-lpass-dais.c

diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
index 2e5625b93b38..d1132c4174db 100644
--- a/sound/soc/qcom/Kconfig
+++ b/sound/soc/qcom/Kconfig
@@ -88,9 +88,13 @@ config SND_SOC_QDSP6_APM_DAI
 	tristate
 	select SND_SOC_COMPRESS
 
+config SND_SOC_QDSP6_APM_LPASS_DAI
+	tristate
+
 config SND_SOC_QDSP6_APM
 	tristate
 	select SND_SOC_QDSP6_APM_DAI
+	select SND_SOC_QDSP6_APM_LPASS_DAI
 
 config SND_SOC_QDSP6
 	tristate "SoC ALSA audio driver for QDSP6"
diff --git a/sound/soc/qcom/qdsp6/Makefile b/sound/soc/qcom/qdsp6/Makefile
index a4ec7c4d0e48..bdcbfdfa9bd0 100644
--- a/sound/soc/qcom/qdsp6/Makefile
+++ b/sound/soc/qcom/qdsp6/Makefile
@@ -14,3 +14,4 @@ obj-$(CONFIG_SND_SOC_QDSP6_ASM_DAI) += q6asm-dai.o
 
 obj-$(CONFIG_SND_SOC_QDSP6_APM) += snd-q6apm.o
 obj-$(CONFIG_SND_SOC_QDSP6_APM_DAI) += q6apm-dai.o
+obj-$(CONFIG_SND_SOC_QDSP6_APM_LPASS_DAI) += q6apm-lpass-dais.o
diff --git a/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
new file mode 100644
index 000000000000..ce9e5646d8f3
--- /dev/null
+++ b/sound/soc/qcom/qdsp6/q6apm-lpass-dais.c
@@ -0,0 +1,260 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2021, Linaro Limited
+
+#include <linux/err.h>
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <sound/pcm.h>
+#include <sound/soc.h>
+#include <sound/pcm_params.h>
+#include "q6dsp-lpass-ports.h"
+#include "audioreach.h"
+#include "q6apm.h"
+
+#define AUDIOREACH_BE_PCM_BASE	16
+
+struct q6apm_lpass_dai_data {
+	struct q6apm_graph *graph[APM_PORT_MAX];
+	bool is_port_started[APM_PORT_MAX];
+	struct audioreach_module_config module_config[APM_PORT_MAX];
+};
+
+static int q6dma_set_channel_map(struct snd_soc_dai *dai,
+				 unsigned int tx_num, unsigned int *tx_ch_mask,
+				 unsigned int rx_num, unsigned int *rx_ch_mask)
+{
+
+	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
+	struct audioreach_module_config *cfg = &dai_data->module_config[dai->id];
+	int ch_mask;
+
+	switch (dai->id) {
+	case WSA_CODEC_DMA_TX_0:
+	case WSA_CODEC_DMA_TX_1:
+	case WSA_CODEC_DMA_TX_2:
+	case VA_CODEC_DMA_TX_0:
+	case VA_CODEC_DMA_TX_1:
+	case VA_CODEC_DMA_TX_2:
+	case TX_CODEC_DMA_TX_0:
+	case TX_CODEC_DMA_TX_1:
+	case TX_CODEC_DMA_TX_2:
+	case TX_CODEC_DMA_TX_3:
+	case TX_CODEC_DMA_TX_4:
+	case TX_CODEC_DMA_TX_5:
+		if (!tx_ch_mask) {
+			dev_err(dai->dev, "tx slot not found\n");
+			return -EINVAL;
+		}
+
+		if (tx_num > AR_PCM_MAX_NUM_CHANNEL) {
+			dev_err(dai->dev, "invalid tx num %d\n",
+				tx_num);
+			return -EINVAL;
+		}
+		ch_mask = *tx_ch_mask;
+
+		break;
+	case WSA_CODEC_DMA_RX_0:
+	case WSA_CODEC_DMA_RX_1:
+	case RX_CODEC_DMA_RX_0:
+	case RX_CODEC_DMA_RX_1:
+	case RX_CODEC_DMA_RX_2:
+	case RX_CODEC_DMA_RX_3:
+	case RX_CODEC_DMA_RX_4:
+	case RX_CODEC_DMA_RX_5:
+	case RX_CODEC_DMA_RX_6:
+	case RX_CODEC_DMA_RX_7:
+		/* rx */
+		if (!rx_ch_mask) {
+			dev_err(dai->dev, "rx slot not found\n");
+			return -EINVAL;
+		}
+		if (rx_num > APM_PORT_MAX_AUDIO_CHAN_CNT) {
+			dev_err(dai->dev, "invalid rx num %d\n",
+				rx_num);
+			return -EINVAL;
+		}
+		ch_mask = *rx_ch_mask;
+
+		break;
+	default:
+		dev_err(dai->dev, "%s: invalid dai id 0x%x\n",
+			__func__, dai->id);
+		return -EINVAL;
+	}
+
+	cfg->active_channels_mask = ch_mask;
+
+	return 0;
+}
+
+static int q6dma_hw_params(struct snd_pcm_substream *substream,
+			   struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
+{
+	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
+	struct audioreach_module_config *cfg = &dai_data->module_config[dai->id];
+
+	cfg->bit_width = params_width(params);
+	cfg->sample_rate = params_rate(params);
+	cfg->num_channels = params_channels(params);
+
+	return 0;
+}
+
+static void q6apm_lpass_dai_shutdown(struct snd_pcm_substream *substream, struct snd_soc_dai *dai)
+{
+	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
+	int rc;
+
+	if (!dai_data->is_port_started[dai->id])
+		return;
+	rc = q6apm_graph_stop(dai_data->graph[dai->id]);
+	if (rc < 0)
+		dev_err(dai->dev, "fail to close APM port (%d)\n", rc);
+
+	q6apm_graph_close(dai_data->graph[dai->id]);
+	dai_data->is_port_started[dai->id] = false;
+}
+
+static int q6apm_lpass_dai_prepare(struct snd_pcm_substream *substream, struct snd_soc_dai *dai)
+{
+	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
+	struct audioreach_module_config *cfg = &dai_data->module_config[dai->id];
+	struct q6apm_graph *graph;
+	int graph_id = dai->id;
+	int rc;
+
+	/**
+	 * It is recommend to load DSP with source graph first and then sink
+	 * graph, so sequence for playback and capture will be different
+	 */
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
+		if (IS_ERR(graph)) {
+			dev_err(dai->dev, "Failed to open graph (%d)\n", graph_id);
+			rc = PTR_ERR(graph);
+			return rc;
+		}
+		dai_data->graph[graph_id] = graph;
+	}
+
+	cfg->direction = substream->stream;
+	rc = q6apm_graph_media_format_pcm(dai_data->graph[dai->id], cfg);
+
+	if (rc) {
+		dev_err(dai->dev, "Failed to set media format %d\n", rc);
+		return rc;
+	}
+
+	rc = q6apm_graph_prepare(dai_data->graph[dai->id]);
+	if (rc) {
+		dev_err(dai->dev, "Failed to prepare Graph %d\n", rc);
+		return rc;
+	}
+
+	rc = q6apm_graph_start(dai_data->graph[dai->id]);
+	if (rc < 0) {
+		dev_err(dai->dev, "fail to start APM port %x\n", dai->id);
+		return rc;
+	}
+	dai_data->is_port_started[dai->id] = true;
+
+	return 0;
+}
+
+static int q6apm_lpass_dai_startup(struct snd_pcm_substream *substream, struct snd_soc_dai *dai)
+{
+	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
+	struct q6apm_graph *graph;
+	int graph_id = dai->id;
+
+	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
+		graph = q6apm_graph_open(dai->dev, NULL, dai->dev, graph_id);
+		if (IS_ERR(graph)) {
+			dev_err(dai->dev, "Failed to open graph (%d)\n", graph_id);
+			return PTR_ERR(graph);
+		}
+		dai_data->graph[graph_id] = graph;
+	}
+
+	return 0;
+}
+
+static int q6i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
+{
+	struct q6apm_lpass_dai_data *dai_data = dev_get_drvdata(dai->dev);
+	struct audioreach_module_config *cfg = &dai_data->module_config[dai->id];
+
+	cfg->fmt = fmt;
+
+	return 0;
+}
+
+static const struct snd_soc_dai_ops q6dma_ops = {
+	.prepare	= q6apm_lpass_dai_prepare,
+	.startup	= q6apm_lpass_dai_startup,
+	.shutdown	= q6apm_lpass_dai_shutdown,
+	.set_channel_map  = q6dma_set_channel_map,
+	.hw_params        = q6dma_hw_params,
+};
+
+static const struct snd_soc_dai_ops q6i2s_ops = {
+	.prepare	= q6apm_lpass_dai_prepare,
+	.startup	= q6apm_lpass_dai_startup,
+	.shutdown	= q6apm_lpass_dai_shutdown,
+	.set_channel_map  = q6dma_set_channel_map,
+	.hw_params        = q6dma_hw_params,
+	.set_fmt	= q6i2s_set_fmt,
+};
+
+static const struct snd_soc_component_driver q6apm_lpass_dai_component = {
+	.name = "q6apm-be-dai-component",
+	.of_xlate_dai_name = q6dsp_audio_ports_of_xlate_dai_name,
+	.be_pcm_base = AUDIOREACH_BE_PCM_BASE,
+	.use_dai_pcm_id = true,
+};
+
+static int q6apm_lpass_dai_dev_probe(struct platform_device *pdev)
+{
+	struct q6dsp_audio_port_dai_driver_config cfg;
+	struct q6apm_lpass_dai_data *dai_data;
+	struct snd_soc_dai_driver *dais;
+	struct device *dev = &pdev->dev;
+	int num_dais;
+
+	dai_data = devm_kzalloc(dev, sizeof(*dai_data), GFP_KERNEL);
+	if (!dai_data)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, dai_data);
+
+	memset(&cfg, 0, sizeof(cfg));
+	cfg.q6i2s_ops = &q6i2s_ops;
+	cfg.q6dma_ops = &q6dma_ops;
+	dais = q6dsp_audio_ports_set_config(dev, &cfg, &num_dais);
+
+	return devm_snd_soc_register_component(dev, &q6apm_lpass_dai_component, dais, num_dais);
+}
+
+#ifdef CONFIG_OF
+static const struct of_device_id q6apm_lpass_dai_device_id[] = {
+	{ .compatible = "qcom,q6apm-lpass-dais" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, q6apm_lpass_dai_device_id);
+#endif
+
+static struct platform_driver q6apm_lpass_dai_platform_driver = {
+	.driver = {
+		.name = "q6apm-lpass-dais",
+		.of_match_table = of_match_ptr(q6apm_lpass_dai_device_id),
+	},
+	.probe = q6apm_lpass_dai_dev_probe,
+};
+module_platform_driver(q6apm_lpass_dai_platform_driver);
+
+MODULE_DESCRIPTION("AUDIOREACH APM LPASS dai driver");
+MODULE_LICENSE("GPL");
-- 
2.21.0

