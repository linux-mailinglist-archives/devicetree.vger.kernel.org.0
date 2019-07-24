Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 59860733AD
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 18:24:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728788AbfGXQYR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 12:24:17 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:39222 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728774AbfGXQYQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 12:24:16 -0400
Received: by mail-wm1-f68.google.com with SMTP id u25so31816125wmc.4
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 09:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fEqbgC4ffyUrLuttzgUt5FRl7sGgCywNMcNCDLVp0IE=;
        b=rlHioeG5qyt3yeoOQxhVWAqMVyPP0n2aMILs+ua+NsbJkQeFpxaNCtsES2nnR1WgcL
         u1dWYguZGuirOq5oqOQ20cGCnv3YHT98dSsztpl90vskstO72I7GdzdsiaT4Ji3EnNVo
         AVjULroRg0dNK9ZU5nAtvBiziiO8Mgn3AxNB1UCLKArUeTvi/99lA4FgHqtxoO25kK+l
         LJYrbc3Rzc5mm5C4EDSAcqBQ5lPLeluJ9uTv+tEtZePrPS3oT1ZjURDImzU3qi6GUM13
         XTuW56+4SQx01QA1Qs0DgZe7vftG5O8TkpUBFlUnfhT45c5EkUpf/EMeGEUSWxe+aMmK
         +a9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fEqbgC4ffyUrLuttzgUt5FRl7sGgCywNMcNCDLVp0IE=;
        b=LHDaNz1KxsGuS6oqlkABKTGMW9Qr5fscM9+9Zet9FJkMEoRMyIEx1xV/hLL26D4GMS
         7sHzSiAo9hwNazj5ns7USOhPRNtk4SqLDaC7ewvFg83zWp9qCfOSIUIaY3aEis2+Wsla
         GHgV2TX2VmHjkuLrnbCG9NyAYtU3v58qBYx+t9kiYY15JKNTBUmu8iJTor3w3c3gjtB8
         e8IhovWfwhsAFO6wfyrVuHBp3fcWpvfwgQeEngQz4cvafbf4gwzNFumunQX/H0nbIUer
         LXjCBHOfty92dZ35EFJf/WeevgTlMT1N1fbiR1CUqkyWEj41ujM1y1tQRB/9MvNRqlmC
         5niQ==
X-Gm-Message-State: APjAAAUVUMVhh/c6S4SwcvPJT4jaJKD9nslmkQ7eR8dVSsmR7BwbKmRp
        gSICMoktmrMD0B+BJVcr2dr4Ew==
X-Google-Smtp-Source: APXvYqxSy9x4/yh9m90aKp+X1IKThgfUDZfuujmcY54Z1t8ubh/f8nflpp3+bKvgTzgHbRuawy6wJg==
X-Received: by 2002:a7b:cc09:: with SMTP id f9mr77497784wmh.68.1563985454615;
        Wed, 24 Jul 2019 09:24:14 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f70sm55688960wme.22.2019.07.24.09.24.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 09:24:13 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 5/6] ASoC: codec2codec: remove ephemeral variables
Date:   Wed, 24 Jul 2019 18:24:04 +0200
Message-Id: <20190724162405.6574-6-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724162405.6574-1-jbrunet@baylibre.com>
References: <20190724162405.6574-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that codec to codec links struct snd_soc_pcm_runtime have lasting pcm
and substreams, let's use them. Alsa allocate and keep the
struct snd_pcm_runtime as long as the link is powered.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/soc-dapm.c | 86 ++++++++++++++++++++++++--------------------
 1 file changed, 48 insertions(+), 38 deletions(-)

diff --git a/sound/soc/soc-dapm.c b/sound/soc/soc-dapm.c
index aa6e47beaec3..e0eedff5fe94 100644
--- a/sound/soc/soc-dapm.c
+++ b/sound/soc/soc-dapm.c
@@ -3802,48 +3802,45 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 {
 	struct snd_soc_dapm_path *path;
 	struct snd_soc_dai *source, *sink;
-	struct snd_soc_pcm_runtime *rtd = w->priv;
 	const struct snd_soc_pcm_stream *config;
-	struct snd_pcm_substream substream;
+	struct snd_pcm_substream *substream = w->priv;
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
 	struct snd_pcm_hw_params params;
 	struct snd_pcm_runtime *runtime = NULL;
-	int ret = 0;
+	int ret = 0, saved_stream = substream->stream;
 
 	if (WARN_ON(list_empty(&w->edges[SND_SOC_DAPM_DIR_OUT]) ||
 		    list_empty(&w->edges[SND_SOC_DAPM_DIR_IN])))
 		return -EINVAL;
 
-	memset(&substream, 0, sizeof(substream));
-
-	/* Allocate a dummy snd_pcm_runtime for startup() and other ops() */
-	runtime = kzalloc(sizeof(*runtime), GFP_KERNEL);
-	if (!runtime) {
-		ret = -ENOMEM;
-		goto out;
-	}
-	substream.runtime = runtime;
-	substream.private_data = rtd;
-
 	switch (event) {
 	case SND_SOC_DAPM_PRE_PMU:
-		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
+		runtime = kzalloc(sizeof(*runtime), GFP_KERNEL);
+		if (!runtime) {
+			ret = -ENOMEM;
+			goto out;
+		}
+		substream->runtime = runtime;
+
+		substream->stream = SNDRV_PCM_STREAM_CAPTURE;
 		snd_soc_dapm_widget_for_each_source_path(w, path) {
 			source = path->source->priv;
 
-			ret = snd_soc_dai_startup(source, &substream);
+			ret = snd_soc_dai_startup(source, substream);
 			if (ret < 0) {
 				dev_err(source->dev,
 					"ASoC: startup() failed: %d\n", ret);
 				goto out;
+
 			}
 			source->active++;
 		}
 
-		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
+		substream->stream = SNDRV_PCM_STREAM_PLAYBACK;
 		snd_soc_dapm_widget_for_each_sink_path(w, path) {
 			sink = path->sink->priv;
 
-			ret = snd_soc_dai_startup(sink, &substream);
+			ret = snd_soc_dai_startup(sink, substream);
 			if (ret < 0) {
 				dev_err(sink->dev,
 					"ASoC: startup() failed: %d\n", ret);
@@ -3852,6 +3849,8 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 			sink->active++;
 		}
 
+		substream->hw_opened = 1;
+
 		/*
 		 * Note: getting the config after .startup() gives a chance to
 		 * either party on the link to alter the configuration if
@@ -3871,26 +3870,26 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 			goto out;
 		}
 
-		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
+		substream->stream = SNDRV_PCM_STREAM_CAPTURE;
 		snd_soc_dapm_widget_for_each_source_path(w, path) {
 			source = path->source->priv;
 
-			ret = soc_dai_hw_params(&substream, &params, source);
+			ret = soc_dai_hw_params(substream, &params, source);
 			if (ret < 0)
 				goto out;
 
-			dapm_update_dai_unlocked(&substream, &params, source);
+			dapm_update_dai_unlocked(substream, &params, source);
 		}
 
-		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
+		substream->stream = SNDRV_PCM_STREAM_PLAYBACK;
 		snd_soc_dapm_widget_for_each_sink_path(w, path) {
 			sink = path->sink->priv;
 
-			ret = soc_dai_hw_params(&substream, &params, sink);
+			ret = soc_dai_hw_params(substream, &params, sink);
 			if (ret < 0)
 				goto out;
 
-			dapm_update_dai_unlocked(&substream, &params, sink);
+			dapm_update_dai_unlocked(substream, &params, sink);
 		}
 
 		break;
@@ -3920,40 +3919,45 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 			ret = 0;
 		}
 
-		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
+		substream->stream = SNDRV_PCM_STREAM_CAPTURE;
 		snd_soc_dapm_widget_for_each_source_path(w, path) {
 			source = path->source->priv;
-			snd_soc_dai_hw_free(source, &substream);
+			snd_soc_dai_hw_free(source, substream);
 		}
 
-		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
+		substream->stream = SNDRV_PCM_STREAM_PLAYBACK;
 		snd_soc_dapm_widget_for_each_sink_path(w, path) {
 			sink = path->sink->priv;
-			snd_soc_dai_hw_free(sink, &substream);
+			snd_soc_dai_hw_free(sink, substream);
 		}
 
-		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
+		substream->stream = SNDRV_PCM_STREAM_CAPTURE;
 		snd_soc_dapm_widget_for_each_source_path(w, path) {
 			source = path->source->priv;
 			source->active--;
-			snd_soc_dai_shutdown(source, &substream);
+			snd_soc_dai_shutdown(source, substream);
 		}
 
-		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
+		substream->stream = SNDRV_PCM_STREAM_PLAYBACK;
 		snd_soc_dapm_widget_for_each_sink_path(w, path) {
 			sink = path->sink->priv;
 			sink->active--;
-			snd_soc_dai_shutdown(sink, &substream);
+			snd_soc_dai_shutdown(sink, substream);
 		}
 		break;
 
+	case SND_SOC_DAPM_POST_PMD:
+		kfree(substream->runtime);
+		break;
+
 	default:
 		WARN(1, "Unknown event %d\n", event);
 		ret = -EINVAL;
 	}
 
 out:
-	kfree(runtime);
+	/* Restore the substream direction */
+	substream->stream = saved_stream;
 	return ret;
 }
 
@@ -4076,9 +4080,11 @@ snd_soc_dapm_alloc_kcontrol(struct snd_soc_card *card,
 }
 
 static struct snd_soc_dapm_widget *
-snd_soc_dapm_new_dai(struct snd_soc_card *card, struct snd_soc_pcm_runtime *rtd,
+snd_soc_dapm_new_dai(struct snd_soc_card *card,
+		     struct snd_pcm_substream *substream,
 		     char *id)
 {
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
 	struct snd_soc_dapm_widget template;
 	struct snd_soc_dapm_widget *w;
 	const char **w_param_text;
@@ -4097,7 +4103,7 @@ snd_soc_dapm_new_dai(struct snd_soc_card *card, struct snd_soc_pcm_runtime *rtd,
 	template.name = link_name;
 	template.event = snd_soc_dai_link_event;
 	template.event_flags = SND_SOC_DAPM_PRE_PMU | SND_SOC_DAPM_POST_PMU |
-		SND_SOC_DAPM_PRE_PMD;
+		SND_SOC_DAPM_PRE_PMD | SND_SOC_DAPM_POST_PMD;
 	template.kcontrol_news = NULL;
 
 	/* allocate memory for control, only in case of multiple configs */
@@ -4132,7 +4138,7 @@ snd_soc_dapm_new_dai(struct snd_soc_card *card, struct snd_soc_pcm_runtime *rtd,
 		goto outfree_kcontrol_news;
 	}
 
-	w->priv = rtd;
+	w->priv = substream;
 
 	return w;
 
@@ -4254,6 +4260,8 @@ static void dapm_connect_dai_link_widgets(struct snd_soc_card *card,
 	struct snd_soc_dai *codec_dai;
 	struct snd_soc_dapm_widget *playback = NULL, *capture = NULL;
 	struct snd_soc_dapm_widget *codec, *playback_cpu, *capture_cpu;
+	struct snd_pcm_substream *substream;
+	struct snd_pcm_str *streams = rtd->pcm->streams;
 	int i;
 
 	if (rtd->dai_link->params) {
@@ -4272,7 +4280,8 @@ static void dapm_connect_dai_link_widgets(struct snd_soc_card *card,
 
 		if (playback_cpu && codec) {
 			if (!playback) {
-				playback = snd_soc_dapm_new_dai(card, rtd,
+				substream = streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
+				playback = snd_soc_dapm_new_dai(card, substream,
 								"playback");
 				if (IS_ERR(playback)) {
 					dev_err(rtd->dev,
@@ -4301,7 +4310,8 @@ static void dapm_connect_dai_link_widgets(struct snd_soc_card *card,
 
 		if (codec && capture_cpu) {
 			if (!capture) {
-				capture = snd_soc_dapm_new_dai(card, rtd,
+				substream = streams[SNDRV_PCM_STREAM_CAPTURE].substream;
+				capture = snd_soc_dapm_new_dai(card, substream,
 							       "capture");
 				if (IS_ERR(capture)) {
 					dev_err(rtd->dev,
-- 
2.21.0

