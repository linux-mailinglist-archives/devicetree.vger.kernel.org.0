Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 72F2F733A9
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 18:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728748AbfGXQYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 12:24:15 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:40904 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728750AbfGXQYN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 12:24:13 -0400
Received: by mail-wm1-f67.google.com with SMTP id v19so42200777wmj.5
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 09:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ocUEQSXynTuFhR8u/rePjf3f/sB3eXLVGjV4BtMdyVs=;
        b=T0XHmH7fMTKgxRE+sBpYoKeEOwc7aBtGRsTgi4fQxLrOEfcW0U1YUrrDIw3Rn8GfcX
         lhkdzqNgssqMuQEo4DlEKUn+PqiRDTIY4NzwiQSGNCWQYJT4nWBscmNenvtx/y77qByz
         O8J4L/61kEPly3Vt5mbDYBXjERECUfgji3eBFFbA6oDgkOQBZ8258HWGNKxps1E1ytBc
         yhcCI72ckTJOjSU/9LYbSvhgbXuhl++XmTvK3k18dhhjOxg4/KAzDMeMlj+t7BdxUBl4
         j/DDcIcHQnT2kaq7UbX8BV78x4zpvLXHqdaoHZc5oUhkEUtplY4+LLtmUNuYSRCw2Q2N
         fe6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ocUEQSXynTuFhR8u/rePjf3f/sB3eXLVGjV4BtMdyVs=;
        b=ipUbBowsxq/9TUmn9/epO15Ko1gy0KG5vdk0Als+l5qAR8xk/fYvWr0BrLJRuU7D8S
         zCYo0i+lbqGSkEQdHu3YhxwGFyau9VW6ZwshqfZUqEVmEmB2+SdhXBieX8+Do/2nP1Kf
         4A8Evh/1KHzdSdOLDc+c5YMvX3aux5dg7cJVukRsg6XUEO9Civ8j/j6Mq2wOc1KbON9y
         8RqML3WK1HCsw/Uh01VmPzJpro/JbOOh2VI95Dkgt0Fv+g4fdZZBBr1zb0i1fN41lcZx
         O/UZYG5RoyuTQd4fAYMjU1C8SPrmw85Huw2ydALcXzW66IGbMA9JXPkihL0wIbkEpb8V
         RapA==
X-Gm-Message-State: APjAAAUDWxPuklTn7UBH98aVKO7lrPLjPTn3qUOSEOY+dC6+yw7l6YTE
        qLh2j1gI0pEsDgVsMxwKE0gbqQ==
X-Google-Smtp-Source: APXvYqz5KeYU3i1H08gJ6KW2smQMst4ZM+01sZk1tJDy733pmW2ILw3I6IwRuTSHXx60lHlH/0OyTA==
X-Received: by 2002:a1c:f409:: with SMTP id z9mr4986239wma.176.1563985450593;
        Wed, 24 Jul 2019 09:24:10 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id f70sm55688960wme.22.2019.07.24.09.24.09
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 09:24:09 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 1/6] ASoC: codec2codec: run callbacks in order
Date:   Wed, 24 Jul 2019 18:24:00 +0200
Message-Id: <20190724162405.6574-2-jbrunet@baylibre.com>
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

When handling dai_link events on codec to codec links, run all .startup()
callbacks on sinks and sources before running any .hw_params(). Same goes
for hw_free() and shutdown(). This is closer to the behavior of regular
dai links

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/soc-dapm.c | 38 ++++++++++++++++++++++++++++----------
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/sound/soc/soc-dapm.c b/sound/soc/soc-dapm.c
index 1d04612601ad..5348abda7ce2 100644
--- a/sound/soc/soc-dapm.c
+++ b/sound/soc/soc-dapm.c
@@ -3835,11 +3835,6 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 				goto out;
 			}
 			source->active++;
-			ret = snd_soc_dai_hw_params(source, &substream, params);
-			if (ret < 0)
-				goto out;
-
-			dapm_update_dai_unlocked(&substream, params, source);
 		}
 
 		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
@@ -3853,7 +3848,24 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 				goto out;
 			}
 			sink->active++;
-			ret = snd_soc_dai_hw_params(sink, &substream, params);
+		}
+
+		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
+		snd_soc_dapm_widget_for_each_source_path(w, path) {
+			source = path->source->priv;
+
+			ret = soc_dai_hw_params(&substream, params, source);
+			if (ret < 0)
+				goto out;
+
+			dapm_update_dai_unlocked(&substream, params, source);
+		}
+
+		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
+		snd_soc_dapm_widget_for_each_sink_path(w, path) {
+			sink = path->sink->priv;
+
+			ret = soc_dai_hw_params(&substream, params, sink);
 			if (ret < 0)
 				goto out;
 
@@ -3889,9 +3901,18 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
 		snd_soc_dapm_widget_for_each_source_path(w, path) {
 			source = path->source->priv;
-
 			snd_soc_dai_hw_free(source, &substream);
+		}
 
+		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
+		snd_soc_dapm_widget_for_each_sink_path(w, path) {
+			sink = path->sink->priv;
+			snd_soc_dai_hw_free(sink, &substream);
+		}
+
+		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
+		snd_soc_dapm_widget_for_each_source_path(w, path) {
+			source = path->source->priv;
 			source->active--;
 			snd_soc_dai_shutdown(source, &substream);
 		}
@@ -3899,9 +3920,6 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
 		snd_soc_dapm_widget_for_each_sink_path(w, path) {
 			sink = path->sink->priv;
-
-			snd_soc_dai_hw_free(sink, &substream);
-
 			sink->active--;
 			snd_soc_dai_shutdown(sink, &substream);
 		}
-- 
2.21.0

