Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D9BFFD5FF9
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 12:21:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731307AbfJNKVb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 06:21:31 -0400
Received: from mail-pl1-f201.google.com ([209.85.214.201]:48606 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731305AbfJNKVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 06:21:31 -0400
Received: by mail-pl1-f201.google.com with SMTP id g20so9817941plj.15
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 03:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=TGRk5VKUseteFNz9IdieAorUl/jPsDxLvDx05ItO45s=;
        b=RV4T7j5Vhr3Wq6JOwSEbLmQu0HchKMynfCJCEr+FDn6XpVhhmE1Rg/gN5yRNqJn2w7
         aE4LxnLOcuTgENXBnTIg4hcFJJ0nJelOaNVSyhLxRwFYy29nv5MW8+A3uS99NgCrDBFU
         VCgut6JPOikiNwAHlEqvDg7LKmgS6NmpAN8/trcGwlzVb3HxQNHcGd+Zsg/lBSt17V3P
         pxhNUx6HL/K/rME89Vd8toaZtZxiNcs9Ot6zr5n2t9pMZAj1cOWu8MdyFvw0IHnzIsOj
         Dd6/j61yDQ1dmPh/IZpZORHst/Cx6sxLwOW7aUjBoVz1mUrLBlr+iSHOPh2K4EBH+XfK
         CZbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=TGRk5VKUseteFNz9IdieAorUl/jPsDxLvDx05ItO45s=;
        b=B3IJcnmeCJp6v4fXRjQ8OqvK4Fzpf+OMyN61QgfsbUCbECOLHJL4bDGlIoXHVuhZU2
         NZChcYVGlUjbLZ/axP3b6D9qo8xFU+Ef4ufVZGc8icjNbykj1Dy2aUjZ6TA52jPS4Nsv
         m+WQ+gkOxC2EIT5Gkq7cnEbyPNp42r47qLvtr8/rO5RA+Oa1DoBbvtPHDoFxKIenxIQ/
         FvvmCzrldGrL3YVrLZhHvVdn0FRNrSSg1e1SbKcLYaDEo3MvuY/p5oeUSpYNGIvxyoWq
         I44vnSoYW/ntcT5/pL8Tq6V3mzPVSjiCeC0FjuoBFyGWiqXqpoTu3a7mW5G53HFCxxav
         tt8A==
X-Gm-Message-State: APjAAAXogt0Pst5kJlVsbI+2oduOOOnvylJ6MNzI3nZM6VI7KT808RWo
        t+fXxc4mOHzTVFWD89UHg/ndQFloMrxb
X-Google-Smtp-Source: APXvYqxdjXmfjzMWkkrpMbIh8ZFqL8/PJsfbzoiXUmNkbqu13cy9Ifq/KU8zgxnSlDAOLu9kmSKOl6ZNacoY
X-Received: by 2002:a65:5b05:: with SMTP id y5mr32923119pgq.48.1571048488530;
 Mon, 14 Oct 2019 03:21:28 -0700 (PDT)
Date:   Mon, 14 Oct 2019 18:20:22 +0800
In-Reply-To: <20191014102022.236013-1-tzungbi@google.com>
Message-Id: <20191014180059.10.Ibf012d0cd8679d846213606dc5f426aea1ff590a@changeid>
Mime-Version: 1.0
References: <20191014102022.236013-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v3 10/10] ASoC: mediatek: mt8183: support WoV
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

