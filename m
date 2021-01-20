Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B97712FCC76
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 09:13:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729643AbhATILu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 03:11:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730400AbhATIJw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 03:09:52 -0500
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com [IPv6:2607:f8b0:4864:20::84a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F3F9C061795
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:22 -0800 (PST)
Received: by mail-qt1-x84a.google.com with SMTP id k12so20559260qth.23
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=sQhmAabxwvCN6VVpbop+UBorAEcNt9ytsxAM/0+JvF8=;
        b=XHin27U/N0fQ34PIArxAW2shOw/rjlWwDl3nOAM2NMubmTTzcW1XTDK74gQ1R7RMEn
         0aa47E5WiPHsN90DZqMoVTSTOV08s7sQ19nN53hYxydGfm6dhzAMlaG3+yIFqub69tcx
         q+DRAUhp8hQ7PFUV1nS+QZT91phyTujh4P56fcQXiwRQRyF3lQIpUjAmcz+oMUK4FnNW
         zQxJ9H5GWUx/uyuccaQsFx1a9wFkGDuklQiNxKQf8cuvSrp8S1Qz1z4iTNme3UdcoiwF
         4OaMlf0ltrlbVm5XpTIlWa6vO/e0tAmw86z0AmM3QnLQtLHN0hZE28oWI1YOvnOLeorc
         v01w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=sQhmAabxwvCN6VVpbop+UBorAEcNt9ytsxAM/0+JvF8=;
        b=T3f2YyoNi0JzDo99cDA+8/hhKcxqdyM9T2OS5zaCtBHQp55vqinrOqf8e69R+x/mA1
         cQnnS/zw0da451hbuPFHiYiIY3SqXkXVR9Yr20z5llLaqQPwQQ9rbzhkcmftfY3EYsBh
         1QTAJuXZlAOMeWn6S2H7IPOt2A3cso1EcA9StpDDXtoxOgY3JtxsIMMUt66/cLHAz3Aq
         RnYVpq0EgSB+ZSJmbz8oa5R0Y125eD/96ZczlP83q+t8GtEIQ3FK59xA/yV01oEj3ROq
         1bfkcUKIp87kXhsFyU9hd8/MqCJMB87zkdgKxLrRYt4TYYsf+KRxKbovEJO3al6XIEoH
         PNwQ==
X-Gm-Message-State: AOAM5308x6tEXL0pfAukzpuV0SD/7B27tic96BiZXR4C59N8xgiRcHEP
        939eGg0FCyt7KJL/QtSKJfhVReKCBRnn
X-Google-Smtp-Source: ABdhPJxehndhb8u41XwHipFb3V90nONbfNuOZLuAMKwJz+KEqMbLrtwgT3VtjA53R1Q3SW2jghvJY22UV08P
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:1164:8893:969a:b338])
 (user=tzungbi job=sendgmr) by 2002:a05:6214:14ae:: with SMTP id
 bo14mr8437792qvb.16.1611130161829; Wed, 20 Jan 2021 00:09:21 -0800 (PST)
Date:   Wed, 20 Jan 2021 16:08:50 +0800
In-Reply-To: <20210120080850.699354-1-tzungbi@google.com>
Message-Id: <20210120080850.699354-6-tzungbi@google.com>
Mime-Version: 1.0
References: <20210120080850.699354-1-tzungbi@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 5/5] ASoC: mediatek: mt8192-mt6359: support audio over DP
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If the DTS property is specified, the DP bridge should populate a
"hdmi-codec" platform device (sound/soc/codecs/hdmi-codec.c).

The "hdmi-codec" device is the communication relayer between the ASoC
machine driver and the DP bridge.  For example:
- Notifies DP bridge when setting hw_param.
- Notifies ASoC when jack detection events.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../mt8192/mt8192-mt6359-rt1015-rt5682.c      | 39 ++++++++++++++++++-
 1 file changed, 37 insertions(+), 2 deletions(-)

diff --git a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
index 8ea24b32a535..cc0fc72305d2 100644
--- a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
+++ b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
@@ -33,6 +33,7 @@
 
 struct mt8192_mt6359_priv {
 	struct snd_soc_jack headset_jack;
+	struct snd_soc_jack hdmi_jack;
 };
 
 static int mt8192_rt1015_i2s_hw_params(struct snd_pcm_substream *substream,
@@ -329,6 +330,23 @@ static int mt8192_rt5682_init(struct snd_soc_pcm_runtime *rtd)
 	return snd_soc_component_set_jack(cmpnt_codec, jack, NULL);
 };
 
+static int mt8192_mt6359_hdmi_init(struct snd_soc_pcm_runtime *rtd)
+{
+	struct snd_soc_component *cmpnt_codec =
+		asoc_rtd_to_codec(rtd, 0)->component;
+	struct mt8192_mt6359_priv *priv = snd_soc_card_get_drvdata(rtd->card);
+	int ret;
+
+	ret = snd_soc_card_jack_new(rtd->card, "HDMI Jack", SND_JACK_LINEOUT,
+				    &priv->hdmi_jack, NULL, 0);
+	if (ret) {
+		dev_err(rtd->dev, "HDMI Jack creation failed: %d\n", ret);
+		return ret;
+	}
+
+	return snd_soc_component_set_jack(cmpnt_codec, &priv->hdmi_jack, NULL);
+}
+
 static int mt8192_i2s_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
 				      struct snd_pcm_hw_params *params)
 {
@@ -600,7 +618,7 @@ SND_SOC_DAILINK_DEFS(pcm2,
 
 SND_SOC_DAILINK_DEFS(tdm,
 		     DAILINK_COMP_ARRAY(COMP_CPU("TDM")),
-		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
+		     DAILINK_COMP_ARRAY(COMP_CODEC(NULL, "i2s-hifi")),
 		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
 static struct snd_soc_dai_link mt8192_mt6359_dai_links[] = {
@@ -936,8 +954,14 @@ static struct snd_soc_dai_link mt8192_mt6359_dai_links[] = {
 	{
 		.name = "TDM",
 		.no_pcm = 1,
+		.dai_fmt = SND_SOC_DAIFMT_DSP_A |
+			   SND_SOC_DAIFMT_IB_NF |
+			   SND_SOC_DAIFMT_CBM_CFM,
 		.dpcm_playback = 1,
 		.ignore_suspend = 1,
+		.be_hw_params_fixup = mt8192_i2s_hw_params_fixup,
+		.ignore = 1,
+		.init = mt8192_mt6359_hdmi_init,
 		SND_SOC_DAILINK_REG(tdm),
 	},
 };
@@ -948,6 +972,7 @@ mt8192_mt6359_rt1015_rt5682_widgets[] = {
 	SND_SOC_DAPM_SPK("Right Spk", NULL),
 	SND_SOC_DAPM_HP("Headphone Jack", NULL),
 	SND_SOC_DAPM_MIC("Headset Mic", NULL),
+	SND_SOC_DAPM_OUTPUT("TDM Out"),
 };
 
 static const struct snd_soc_dapm_route mt8192_mt6359_rt1015_rt5682_routes[] = {
@@ -958,6 +983,8 @@ static const struct snd_soc_dapm_route mt8192_mt6359_rt1015_rt5682_routes[] = {
 	{ "Headphone Jack", NULL, "HPOL" },
 	{ "Headphone Jack", NULL, "HPOR" },
 	{ "IN1P", NULL, "Headset Mic" },
+	/* TDM */
+	{ "TDM Out", NULL, "TDM" },
 };
 
 static const struct snd_kcontrol_new mt8192_mt6359_rt1015_rt5682_controls[] = {
@@ -1031,7 +1058,7 @@ static struct snd_soc_card mt8192_mt6359_rt1015p_rt5682_card = {
 static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 {
 	struct snd_soc_card *card;
-	struct device_node *platform_node;
+	struct device_node *platform_node, *hdmi_codec;
 	int ret, i;
 	struct snd_soc_dai_link *dai_link;
 	const struct of_device_id *match;
@@ -1051,6 +1078,9 @@ static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 	card = (struct snd_soc_card *)match->data;
 	card->dev = &pdev->dev;
 
+	hdmi_codec = of_parse_phandle(pdev->dev.of_node,
+				      "mediatek,hdmi-codec", 0);
+
 	for_each_card_prelinks(card, i, dai_link) {
 		if (strcmp(dai_link->name, "I2S3") == 0) {
 			if (card == &mt8192_mt6359_rt1015_rt5682_card) {
@@ -1077,6 +1107,11 @@ static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 			}
 		}
 
+		if (hdmi_codec && strcmp(dai_link->name, "TDM") == 0) {
+			dai_link->codecs->of_node = hdmi_codec;
+			dai_link->ignore = 0;
+		}
+
 		if (!dai_link->platforms->name)
 			dai_link->platforms->of_node = platform_node;
 	}
-- 
2.30.0.284.gd98b1dd5eaa7-goog

