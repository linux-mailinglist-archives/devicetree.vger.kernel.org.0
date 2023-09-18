Return-Path: <devicetree+bounces-1112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A847A4BF4
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C6E0281C64
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 159E21D68A;
	Mon, 18 Sep 2023 15:23:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BED1CABB
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:23:31 +0000 (UTC)
Received: from out-217.mta1.migadu.com (out-217.mta1.migadu.com [IPv6:2001:41d0:203:375::d9])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1512010D2
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:19:41 -0700 (PDT)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695042950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xSNguzTtIikVl+RQdSUYwmi0RN1Huyk35tspr09PREQ=;
	b=isHIvKmXlXetcHeWf7DjvK3hd0YtioC94nvej32bNq/CvGmTve1YeRzk+rYdpbOh0eQmpk
	3aiceae+rP8+l/Bty+m+0HhdJ1aPNr9wTOaaXq8QcJU/1D3y62W4pOmNmmFobZ3fW+9BI5
	IteLeq+6kc4S8MCQ1xLRVOVJdBKUGOEqHm/qlXmvM085CmOb7lyFmN67ZPTrwlR5rA92kH
	BLmKr17w/zrQraxWAHXbs6ZAPSqI1ztNaVsn6me2MSKb/5xeUJ8BB9L9M/UquqEbTNmhzf
	Y3xECSLmLS/OImXDAGxVOfMUi014+rkxkLAHyEw90TlaljKsCYCp6MqrfVh0fw==
From: John Watts <contact@jookia.org>
To: alsa-devel@alsa-project.org
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	John Watts <contact@jookia.org>,
	patches@opensource.cirrus.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] ASoC: wm8782: Constrain maximum audio rate at runtime
Date: Mon, 18 Sep 2023 23:15:30 +1000
Message-ID: <20230918131532.2257615-2-contact@jookia.org>
In-Reply-To: <20230918131532.2257615-1-contact@jookia.org>
References: <20230918131532.2257615-1-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The wm8782 supports up to 192kHz audio when pins are set correctly.
Instead of hardcoding which rates are supported constrain them at
runtime based on a max_rate variable.

Signed-off-by: John Watts <contact@jookia.org>
Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/codecs/wm8782.c | 42 ++++++++++++++++++++++++++++-----------
 1 file changed, 30 insertions(+), 12 deletions(-)

diff --git a/sound/soc/codecs/wm8782.c b/sound/soc/codecs/wm8782.c
index 95ff4339d103..f3dc87b92b1e 100644
--- a/sound/soc/codecs/wm8782.c
+++ b/sound/soc/codecs/wm8782.c
@@ -23,6 +23,27 @@
 #include <sound/initval.h>
 #include <sound/soc.h>
 
+/* regulator power supply names */
+static const char *supply_names[] = {
+	"Vdda", /* analog supply, 2.7V - 3.6V */
+	"Vdd",  /* digital supply, 2.7V - 5.5V */
+};
+
+struct wm8782_priv {
+	struct regulator_bulk_data supplies[ARRAY_SIZE(supply_names)];
+	int max_rate;
+};
+
+static int wm8782_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
+{
+	struct snd_pcm_runtime *runtime = sub->runtime;
+	struct wm8782_priv *priv =
+		snd_soc_component_get_drvdata(dai->component);
+
+	return snd_pcm_hw_constraint_minmax(runtime, SNDRV_PCM_HW_PARAM_RATE,
+					   8000, priv->max_rate);
+}
+
 static const struct snd_soc_dapm_widget wm8782_dapm_widgets[] = {
 SND_SOC_DAPM_INPUT("AINL"),
 SND_SOC_DAPM_INPUT("AINR"),
@@ -33,28 +54,22 @@ static const struct snd_soc_dapm_route wm8782_dapm_routes[] = {
 	{ "Capture", NULL, "AINR" },
 };
 
+static const struct snd_soc_dai_ops wm8782_dai_ops = {
+	.startup = &wm8782_dai_startup,
+};
+
 static struct snd_soc_dai_driver wm8782_dai = {
 	.name = "wm8782",
 	.capture = {
 		.stream_name = "Capture",
 		.channels_min = 2,
 		.channels_max = 2,
-		/* For configurations with FSAMPEN=0 */
-		.rates = SNDRV_PCM_RATE_8000_48000,
+		.rates = SNDRV_PCM_RATE_8000_192000,
 		.formats = SNDRV_PCM_FMTBIT_S16_LE |
 			   SNDRV_PCM_FMTBIT_S20_3LE |
 			   SNDRV_PCM_FMTBIT_S24_LE,
 	},
-};
-
-/* regulator power supply names */
-static const char *supply_names[] = {
-	"Vdda", /* analog supply, 2.7V - 3.6V */
-	"Vdd",  /* digital supply, 2.7V - 5.5V */
-};
-
-struct wm8782_priv {
-	struct regulator_bulk_data supplies[ARRAY_SIZE(supply_names)];
+	.ops = &wm8782_dai_ops,
 };
 
 static int wm8782_soc_probe(struct snd_soc_component *component)
@@ -121,6 +136,9 @@ static int wm8782_probe(struct platform_device *pdev)
 	if (ret < 0)
 		return ret;
 
+	/* For configurations with FSAMPEN=0 */
+	priv->max_rate = 48000;
+
 	return devm_snd_soc_register_component(&pdev->dev,
 			&soc_component_dev_wm8782, &wm8782_dai, 1);
 }
-- 
2.42.0


