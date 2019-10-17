Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BE757DAEFE
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 16:01:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439761AbfJQOB1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 10:01:27 -0400
Received: from mail-yb1-f202.google.com ([209.85.219.202]:47429 "EHLO
        mail-yb1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437401AbfJQOB1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 10:01:27 -0400
Received: by mail-yb1-f202.google.com with SMTP id j2so624910ybm.14
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 07:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=TGRk5VKUseteFNz9IdieAorUl/jPsDxLvDx05ItO45s=;
        b=rIhJwKUl3ey3DfK+hJ6gtObEbk8w9lJN8FwtQ2NDhIPHw4CpwQs48OQ5PSE3KVomXQ
         wz74Y141vWmpwb8ZRTXrrE86i8eeimnBsS/2LyG+c+UvvKddYJ1/l4YOCk0QoJ5UkOu4
         RdOcqkzxl0NJ/AU0vl4/20juJBCsHLKEv1kGqJTcA8ZNl+YF6DeFpJVBK4gDNk8McRvH
         atVYcVboBISGi9QJrmeigP+mn0knbkg58Ka/HjMz++Pgtojyj1TfH3n6RXhALL/gZEce
         d2eHY089pv+TiqqVS3XnXPB0a19+EQN8b25wG0lnvV9l5uQJhpMGTkLNRKCDFJ3pRBvr
         ccAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=TGRk5VKUseteFNz9IdieAorUl/jPsDxLvDx05ItO45s=;
        b=MXq7WKgmEsueV8WY0keODhn2aZ+c8HdfYHdeu1QdMztWn3yAf3W81UOYCYxrPf6TE4
         QuylRtQDvjokSoJLzwhQwQ8/XWhaVz1ce8BQwoJLY2KIRnHGTSgAxb3rhXj8jJjDPXda
         j1dqMXVe6MfZaXf1MdGNk18yt4mrT7688FQM17sxNmgNOenhxhMcV6gXugL5ngndBOnF
         xahN3iinDvd3qlkFV/TMqk0IgTsJkkM3bYTwfBicAWdABo9VLeAW+4f8d/FP9YJaJQVT
         ni9AMAZW2WnXgQVcVrckBFf7JH5kjrP+LQufwEbGjLJzf54c44rEa1ayfVQBioTnz4bP
         2u7A==
X-Gm-Message-State: APjAAAUBhgKgOuiRaPLrshpF+xeaXB3FRM1LWcmlvYY8dpuz2J5R6+e+
        HhmLCWDjLz9n9hKmKKK4M7J7hEe4PVye
X-Google-Smtp-Source: APXvYqz8GKngkqaQHrN7BhPxupi50PFCV7rAjAl4jrR2OAde0Swk8V7gi3iNkNVMCgVay+HRqi1fqwa4nods
X-Received: by 2002:a81:11d3:: with SMTP id 202mr2679548ywr.354.1571320884414;
 Thu, 17 Oct 2019 07:01:24 -0700 (PDT)
Date:   Thu, 17 Oct 2019 22:00:15 +0800
In-Reply-To: <20191017213539.00-tzungbi@google.com>
Message-Id: <20191017213539.10.Ibf012d0cd8679d846213606dc5f426aea1ff590a@changeid>
Mime-Version: 1.0
References: <20191017213539.00-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 10/10] ASoC: mediatek: mt8183: support WoV
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
2.23.0.700.g56cf767bdb-goog

