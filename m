Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 526FD754D8
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 18:59:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390269AbfGYQ74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 12:59:56 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:36023 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388630AbfGYQ7z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 12:59:55 -0400
Received: by mail-wr1-f66.google.com with SMTP id n4so51620143wrs.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 09:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RjZlNK5foaQOSQzbPfrKvphWkFDjBwZWcqfyFOMILTw=;
        b=m0yzJqTLfQUVO9D+Kp04i0U6B7GihD54VtnGw83R3RZXjnk719z2IdBOI4yHFIO8pg
         BcdA7IFFjKE+VXE5k7AdT6/t48Cn8BgYW1es8YENonXXslAi0vXw0v/7RxiVUZWu40NY
         oxLDlEcPXF18or7K10CjlHkCS2P3s/IbPNxHzqFR//ddxQkc2D7HdacUD4CzQwNnFDmn
         5ceEzOgsjLEtp3yWBOEQKSZCkSGxgNweL34gsO9+3A0vzwlmku1j47Ahvuhn6oVWNEjd
         z7MYMCObi6thyoGQ89GVEUCXW1s2RSyuvrGM86imrJQ+cKvmVgt5WggZfZAcsq50cfon
         uJfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RjZlNK5foaQOSQzbPfrKvphWkFDjBwZWcqfyFOMILTw=;
        b=ayVtt/r9jaOw3FPzc9Av/aNgHY/tU3/7UQgpzTbHr3mPpVl8EEbgjHF/dhtxu24eaN
         QIKqNpl+Etnk/D9blD1UE9aPDJyB+Q9/zahkA/ES13T4y9BxcaThLEDDJk6ti5helFFQ
         G+yOG42JLWNBj8TlV7ad17+yLfYasO3pYbe/0ie+4x68iJgqUeFWO4qRC50Afl92ebqC
         ZL2SX9+d33dDiNyBQsnXz6DMjd1NLZkd66mS/viQUGtN5/Ohzot8L4GP33LGd5HM0NzU
         jPesWYzkCutnPN53xapTFgehe3rGYie0m8+xfRhJ90/FsDRlqMaGJDd3+Wv3GXWemzYg
         FTeQ==
X-Gm-Message-State: APjAAAU4wQAorfD+WQ6HzxdS5XqCFr/SZsZSCIGFYHfdo+w9Eh7JBkSx
        4rQBROLyp6bR23WcCdqufCjM1A==
X-Google-Smtp-Source: APXvYqzkZIFz+KVxgJBu1r3Q+ftdDRhPRxm5CuaClhVaUFvnLzyoMd84/wr8z2QjCOwDlYK0tfyViw==
X-Received: by 2002:adf:eb51:: with SMTP id u17mr3481607wrn.257.1564073993318;
        Thu, 25 Jul 2019 09:59:53 -0700 (PDT)
Received: from starbuck.baylibre.local (uluru.liltaz.com. [163.172.81.188])
        by smtp.googlemail.com with ESMTPSA id q10sm53627199wrf.32.2019.07.25.09.59.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 09:59:52 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v2 1/6] ASoC: codec2codec: run callbacks in order
Date:   Thu, 25 Jul 2019 18:59:44 +0200
Message-Id: <20190725165949.29699-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725165949.29699-1-jbrunet@baylibre.com>
References: <20190725165949.29699-1-jbrunet@baylibre.com>
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
 sound/soc/soc-dapm.c | 36 +++++++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 9 deletions(-)

diff --git a/sound/soc/soc-dapm.c b/sound/soc/soc-dapm.c
index 1d04612601ad..034b31fd2ecb 100644
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
@@ -3853,6 +3848,23 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 				goto out;
 			}
 			sink->active++;
+		}
+
+		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
+		snd_soc_dapm_widget_for_each_source_path(w, path) {
+			source = path->source->priv;
+
+			ret = snd_soc_dai_hw_params(source, &substream, params);
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
 			ret = snd_soc_dai_hw_params(sink, &substream, params);
 			if (ret < 0)
 				goto out;
@@ -3889,9 +3901,18 @@ static int snd_soc_dai_link_event(struct snd_soc_dapm_widget *w,
 		substream.stream = SNDRV_PCM_STREAM_CAPTURE;
 		snd_soc_dapm_widget_for_each_source_path(w, path) {
 			source = path->source->priv;
-
 			snd_soc_dai_hw_free(source, &substream);
+		}
+
+		substream.stream = SNDRV_PCM_STREAM_PLAYBACK;
+		snd_soc_dapm_widget_for_each_sink_path(w, path) {
+			sink = path->sink->priv;
+			snd_soc_dai_hw_free(sink, &substream);
+		}
 
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

