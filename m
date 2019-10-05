Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 07A69CC840
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:59:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726853AbfJEF7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:59:24 -0400
Received: from mail-vk1-f201.google.com ([209.85.221.201]:37048 "EHLO
        mail-vk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbfJEF7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:59:24 -0400
Received: by mail-vk1-f201.google.com with SMTP id q187so1906822vkq.4
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=wFKIOToRbdu3m60b5e+tQ6dn8L8Tfr3EeQzYLtHUnvY=;
        b=BX8Y/5ZnAVOwdwTaaOj3xlZG9yaLNx/lWLp0xCiJ+YAQbzLO1/H7MWVfOS9zyVn2Hq
         6DmJsbHEAYHSI5ykSn+SF/fLa7J/pbS0JTn6ozAxgAQv+g6EaWidIvhS2PvZTNkadvNW
         kBwAY+QMO0ZuEQHuKI3MH+ydudPLul3Z2tfllT1Za97JZI36sI+YN4rnuJnmWDXyA9w0
         JfR9PcI0Qiy/j6r0PjQkoiXJFT0SVCH+J/6QoT8zNo8U5tpXQ8e1CZuZpdR3J/cO9Pow
         xFI8hY9w2ambpomcFxlD1eHaOo4gRWdnCXaim60GnlzdFp7WHOAwe4LUWsWE0FJ4XU8l
         1F4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=wFKIOToRbdu3m60b5e+tQ6dn8L8Tfr3EeQzYLtHUnvY=;
        b=hhfeNjv+c/N1APD2FpOnXuOfXEQv6wJLikp125eMqQw9pB2NXzbhOFFWcqITfTeQNd
         3WbdEZDS9GFYQ81pwxDqxrgHTdtdRop8XUJ+JX4JIt0rnpj6Gheri/QgR3cYbBUblpii
         euXXzGj383p2LePgpHoeWoPghAz7/22X1pvwvsQbtTzRGtafdMRbdBzGtLx0+Xp3yaZk
         LFlcb4rV4N2J2laXYl4WT33175CDPpwtGTudjRZ2RFe+ZD7aEEdHXvajtzGCHpbEv9F5
         W8Ascp2Yl04cuJDKVm0nvaoDtlE5IVs6R8xeRnQvK6MTra9DUeVvXaCMQEAJ+qbmfXj4
         FsKA==
X-Gm-Message-State: APjAAAUOUnoR3yAmQfmFqNT99ccUeJRU4rXpYi3D3GHkI2FPa+7zCWc3
        5QyduU84ob0WHB17ItryHR51MvNPHkNd
X-Google-Smtp-Source: APXvYqyoB3OHuRFIyy3n6oDmCcP3tbotAm1PNN/nfJ/Sjg3TJ9YV+pkvlVVzUuCrfqFFRw6Y4K/Xin44PkWY
X-Received: by 2002:ab0:658a:: with SMTP id v10mr2608199uam.73.1570255162880;
 Fri, 04 Oct 2019 22:59:22 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:58:08 +0800
In-Reply-To: <20191005055808.249089-1-tzungbi@google.com>
Message-Id: <20191005130552.10.Ibf012d0cd8679d846213606dc5f426aea1ff590a@changeid>
Mime-Version: 1.0
References: <20191005055808.249089-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 10/10] ASoC: mediatek: mt8183: support WoV
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DAI link and pin muxing for wake on voice.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/mediatek/Kconfig                    |  1 +
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   | 70 ++++++++++++++++++-
 2 files changed, 68 insertions(+), 3 deletions(-)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index 111e44b64b38..8b29f3979899 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -125,6 +125,7 @@ config SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A
 	select SND_SOC_MAX98357A
 	select SND_SOC_BT_SCO
 	select SND_SOC_TS3A227E
+	select SND_SOC_CROS_EC_CODEC
 	help
 	  This adds ASoC driver for Mediatek MT8183 boards
 	  with the MT6358 TS3A227E MAX98357A audio codec.
diff --git a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
index bb9cdc0d6552..0555f7d73d05 100644
--- a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
@@ -19,11 +19,12 @@ enum PINCTRL_PIN_STATE {
 	PIN_STATE_DEFAULT = 0,
 	PIN_TDM_OUT_ON,
 	PIN_TDM_OUT_OFF,
+	PIN_WOV,
 	PIN_STATE_MAX
 };
 
 static const char * const mt8183_pin_str[PIN_STATE_MAX] = {
-	"default", "aud_tdm_out_on", "aud_tdm_out_off",
+	"default", "aud_tdm_out_on", "aud_tdm_out_off", "wov",
 };
 
 struct mt8183_mt6358_ts3a227_max98357_priv {
@@ -142,6 +143,11 @@ SND_SOC_DAILINK_DEFS(playback_hdmi,
 	DAILINK_COMP_ARRAY(COMP_DUMMY()),
 	DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
+SND_SOC_DAILINK_DEFS(wake_on_voice,
+	DAILINK_COMP_ARRAY(COMP_DUMMY()),
+	DAILINK_COMP_ARRAY(COMP_DUMMY()),
+	DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
 /* BE */
 SND_SOC_DAILINK_DEFS(primary_codec,
 	DAILINK_COMP_ARRAY(COMP_CPU("ADDA")),
@@ -229,6 +235,41 @@ static struct snd_soc_ops mt8183_mt6358_tdm_ops = {
 	.shutdown = mt8183_mt6358_tdm_shutdown,
 };
 
+static int
+mt8183_mt6358_ts3a227_max98357_wov_startup(
+	struct snd_pcm_substream *substream)
+{
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+	struct snd_soc_card *card = rtd->card;
+	struct mt8183_mt6358_ts3a227_max98357_priv *priv =
+			snd_soc_card_get_drvdata(card);
+
+	return pinctrl_select_state(priv->pinctrl,
+				    priv->pin_states[PIN_WOV]);
+}
+
+static void
+mt8183_mt6358_ts3a227_max98357_wov_shutdown(
+	struct snd_pcm_substream *substream)
+{
+	struct snd_soc_pcm_runtime *rtd = substream->private_data;
+	struct snd_soc_card *card = rtd->card;
+	struct mt8183_mt6358_ts3a227_max98357_priv *priv =
+			snd_soc_card_get_drvdata(card);
+	int ret;
+
+	ret = pinctrl_select_state(priv->pinctrl,
+				   priv->pin_states[PIN_STATE_DEFAULT]);
+	if (ret)
+		dev_err(card->dev, "%s failed to select state %d\n",
+			__func__, ret);
+}
+
+static const struct snd_soc_ops mt8183_mt6358_ts3a227_max98357_wov_ops = {
+	.startup = mt8183_mt6358_ts3a227_max98357_wov_startup,
+	.shutdown = mt8183_mt6358_ts3a227_max98357_wov_shutdown,
+};
+
 static struct snd_soc_dai_link
 mt8183_mt6358_ts3a227_max98357_dai_links[] = {
 	/* FE */
@@ -306,6 +347,15 @@ mt8183_mt6358_ts3a227_max98357_dai_links[] = {
 		.dpcm_playback = 1,
 		SND_SOC_DAILINK_REG(playback_hdmi),
 	},
+	{
+		.name = "Wake on Voice",
+		.stream_name = "Wake on Voice",
+		.ignore_suspend = 1,
+		.ignore = 1,
+		SND_SOC_DAILINK_REG(wake_on_voice),
+		.ops = &mt8183_mt6358_ts3a227_max98357_wov_ops,
+	},
+
 	/* BE */
 	{
 		.name = "Primary Codec",
@@ -429,7 +479,7 @@ static int
 mt8183_mt6358_ts3a227_max98357_dev_probe(struct platform_device *pdev)
 {
 	struct snd_soc_card *card = &mt8183_mt6358_ts3a227_max98357_card;
-	struct device_node *platform_node;
+	struct device_node *platform_node, *ec_codec;
 	struct snd_soc_dai_link *dai_link;
 	struct mt8183_mt6358_ts3a227_max98357_priv *priv;
 	int ret;
@@ -444,10 +494,24 @@ mt8183_mt6358_ts3a227_max98357_dev_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	ec_codec = of_parse_phandle(pdev->dev.of_node, "mediatek,ec-codec", 0);
+
 	for_each_card_prelinks(card, i, dai_link) {
 		if (dai_link->platforms->name)
 			continue;
-		dai_link->platforms->of_node = platform_node;
+
+		if (ec_codec && strcmp(dai_link->name, "Wake on Voice") == 0) {
+			dai_link->cpus[0].name = NULL;
+			dai_link->cpus[0].of_node = ec_codec;
+			dai_link->cpus[0].dai_name = NULL;
+			dai_link->codecs[0].name = NULL;
+			dai_link->codecs[0].of_node = ec_codec;
+			dai_link->codecs[0].dai_name = "Wake on Voice";
+			dai_link->platforms[0].of_node = ec_codec;
+			dai_link->ignore = 0;
+		} else {
+			dai_link->platforms->of_node = platform_node;
+		}
 	}
 
 	mt8183_mt6358_ts3a227_max98357_headset_dev.dlc.of_node =
-- 
2.23.0.581.g78d2f28ef7-goog

