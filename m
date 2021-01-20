Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9BA22FCC8C
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 09:17:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730254AbhATIRa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 03:17:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728911AbhATIJh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 03:09:37 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79D5AC0613ED
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:07 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id b3so27206512yba.20
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=/155YZh3u5CZmgGBqPs3Z1+3mEPs7kdY4M8ErlsIDVk=;
        b=AtlWPW3GrzhyJULCarM8VZ8F0HOfbax+wBlJ8g98wMRFHTRQR3bs0jBaLuHGOxVIQy
         cX325kDqXK1qGGiFrkEY9ZnYg7A6h0tryl45WOi9LUeSswQa9rBAXl1UhNSJPRCr9iGq
         tQa+dzXs+r7JLdfFCGQ5JQR21rxlfxFvW8W5X2wOlEMiWoQ6lTNL9lu9ohaAI7d5WzFW
         nGk4LxBH9htsd80WSpuyPKLAw3TCZmrwHDoi/QPk/zxrj0P6L9sW4G5oG85jf52gJ6Rh
         I+sYwZkrGq5IA+VFfX+nHBPWaRxhGdkR5fij0zmAse/wN97bKZlQvg7wnsPtLApiej+k
         KHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=/155YZh3u5CZmgGBqPs3Z1+3mEPs7kdY4M8ErlsIDVk=;
        b=RCuHSSGrl7RSbViHio7ReZdgq2vaE2YypFXeyS5O3Bs4DmA6rirydnnVlOtMpg24tm
         szfwhsz3c1OfegyoPT6JsLcC0w3Ucq3WwE9/ZfzNxXXijvuO1j24A4OyUNAjlzCY3rhC
         vYAXRon+9tnHRuvsAWoETLctujV6nSiiII++YCWDD6Q/X6lV/xeqwpgkGRZC4hcy5Zrq
         WBKlkYLCbLexk3WN8/cHXcg4oev0xixGiv0Mv8xO4RCWCNTrpMiwVdR1CjG2DLag6daB
         iUKUccwiIgVdcjCz97dVxNiWqZP3I8YjQlVYJ0O1GvZK9GH8WygRmLYq2JvDsLEoWE7+
         ZF2A==
X-Gm-Message-State: AOAM53305UW+YqQ48f51SwpK4ii+hf4JIPVObTp9YHA7+FdTynPhrFO6
        7IPGAstYs5k1GcJKrrO5Uz0QxohqYudh
X-Google-Smtp-Source: ABdhPJyQ8DW1noUGr4HZs4A7OSfLntlH3/PooBCS8aEmx3ebRmA55jp19tECYGkklu+64qR7FFpwPyKhI66g
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:1164:8893:969a:b338])
 (user=tzungbi job=sendgmr) by 2002:a25:500b:: with SMTP id
 e11mr11701233ybb.138.1611130146774; Wed, 20 Jan 2021 00:09:06 -0800 (PST)
Date:   Wed, 20 Jan 2021 16:08:46 +0800
In-Reply-To: <20210120080850.699354-1-tzungbi@google.com>
Message-Id: <20210120080850.699354-2-tzungbi@google.com>
Mime-Version: 1.0
References: <20210120080850.699354-1-tzungbi@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 1/5] ASoC: mediatek: mt8192-mt6359: move headset_jack to card
 specific data
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Moves headset_jack to card specific data.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c   | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
index a988ce1e58de..72d337fc8534 100644
--- a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
+++ b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
@@ -31,7 +31,9 @@
 #define RT5682_CODEC_DAI	"rt5682-aif1"
 #define RT5682_DEV0_NAME	"rt5682.1-001a"
 
-static struct snd_soc_jack headset_jack;
+struct mt8192_mt6359_priv {
+	struct snd_soc_jack headset_jack;
+};
 
 static int mt8192_rt1015_i2s_hw_params(struct snd_pcm_substream *substream,
 				       struct snd_pcm_hw_params *params)
@@ -305,7 +307,8 @@ static int mt8192_rt5682_init(struct snd_soc_pcm_runtime *rtd)
 {
 	struct snd_soc_component *cmpnt_codec =
 		asoc_rtd_to_codec(rtd, 0)->component;
-	struct snd_soc_jack *jack = &headset_jack;
+	struct mt8192_mt6359_priv *priv = snd_soc_card_get_drvdata(rtd->card);
+	struct snd_soc_jack *jack = &priv->headset_jack;
 	int ret;
 
 	ret = snd_soc_card_jack_new(rtd->card, "Headset Jack",
@@ -1038,6 +1041,7 @@ static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 	int ret, i;
 	struct snd_soc_dai_link *dai_link;
 	const struct of_device_id *match;
+	struct mt8192_mt6359_priv *priv;
 
 	platform_node = of_parse_phandle(pdev->dev.of_node,
 					 "mediatek,platform", 0);
@@ -1083,6 +1087,11 @@ static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 			dai_link->platforms->of_node = platform_node;
 	}
 
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+	snd_soc_card_set_drvdata(card, priv);
+
 	ret = mt8192_afe_gpio_init(&pdev->dev);
 	if (ret) {
 		dev_err(&pdev->dev, "init gpio error %d\n", ret);
-- 
2.30.0.284.gd98b1dd5eaa7-goog

