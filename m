Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B925265719
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 04:49:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725799AbgIKCtA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 22:49:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725300AbgIKCs5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 22:48:57 -0400
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C541AC061573
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 19:48:56 -0700 (PDT)
Received: by mail-qt1-x849.google.com with SMTP id c5so5594395qtd.12
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 19:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=OL6Xca6wUTPR4KoDA1xBq3ODskMxZl1kDYmO7BayCTk=;
        b=dLZIjf7n0npnKd6VdQ//HGxZeCosdJZA3pvmsUmXYVUE/733J5SFK6o8U2lpv8RBPt
         hfvAE0s/nKApYLm2W2T8h/TtgDZCWJUOtUCXi2kwm3XBeH+wPmD8CerR52z2G/hQRJ2R
         yB2QYDAYuS52CkrvREjjyA1s8lRFQCl0wtjYwmJKcOyCBmLu7aNf4XtCFldqD+wB9gcV
         qqxeoLGMHFn+KoC3rZcxmCeMwm4/VJWbjn3IJVHhMqstsX8LZQn4dcpxEWRut3VVc7NX
         Ay/yK58EhKVAF88//yuY2BQ0dAH/udf//+HLzLGDYLa3R4txJiLLG6xGN7Sp5YiQ4/I0
         sR3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=OL6Xca6wUTPR4KoDA1xBq3ODskMxZl1kDYmO7BayCTk=;
        b=JS1CWFJyupq6fEHEz4Gh4Keb7lZoEeicYL0uXsnrHrjpcA5j4m/IifaDmfaF8rcoEl
         yRkPXTT93IGYfU798Dz7JGBETpfEhLNnL7+jXQSmIf9jI/Ri+jYonLGlZST66EysJk7G
         yDSIH0Asumv2NC/b4vKIIrWiK5sf3pMGuWxxL+FF9LEPHwnOaNZPyL6ZGt+BJlYkFdxj
         mhZlrfqJ2BytK63KGp2pGmUM0mg0ASyM7qfmvhNixy1EOPRpLUdraHmDF+dS+WHMDZOv
         ZYq7WMz61yAPyQTyL1ehen4zQK+IFzojtkAjo12pF19r4hYk6Mx7W2p1KxUI9VslSHbI
         qPQQ==
X-Gm-Message-State: AOAM531V0wVj3pOjNsoZP6V13hhuzz/YOYzlSDr0hcZ9quVpPRK4deaJ
        QryGqAu7pe8INZi9K2qpSjTcLzS6h0Ve
X-Google-Smtp-Source: ABdhPJytnnY1L+ZcVp1rnBboTBm+V2Y6jLV/v4L2ZulAlFV9n0VOjVW5DEEiQmMM5ybQ3zgxVrhZId/WvKbk
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a0c:d848:: with SMTP id
 i8mr119788qvj.31.1599792536009; Thu, 10 Sep 2020 19:48:56 -0700 (PDT)
Date:   Fri, 11 Sep 2020 10:48:33 +0800
In-Reply-To: <20200911024833.1673961-1-tzungbi@google.com>
Message-Id: <20200911024833.1673961-3-tzungbi@google.com>
Mime-Version: 1.0
References: <20200911024833.1673961-1-tzungbi@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH 2/2] ASoC: mediatek: mt8183-da7219: support machine driver
 with rt1015p
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Supports machine driver with rt1015p ("mt8183_da7219_rt1015p").
Embeds in the existing mt8183-da7219-max98357.c because they share
most of the code.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/mediatek/Kconfig                    |  1 +
 .../mediatek/mt8183/mt8183-da7219-max98357.c  | 40 +++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index f7bc007bbdec..76e055d1dfb2 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -140,6 +140,7 @@ config SND_SOC_MT8183_DA7219_MAX98357A
 	select SND_SOC_MT6358
 	select SND_SOC_MAX98357A
 	select SND_SOC_RT1015
+	select SND_SOC_RT1015P
 	select SND_SOC_DA7219
 	select SND_SOC_BT_SCO
 	select SND_SOC_HDMI_CODEC
diff --git a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
index 06d0a4f80fc1..68fe23b96b14 100644
--- a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
@@ -348,6 +348,12 @@ SND_SOC_DAILINK_DEFS(i2s3_rt1015,
 			   COMP_CODEC(DA7219_DEV_NAME, DA7219_CODEC_DAI)),
 	DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
+SND_SOC_DAILINK_DEFS(i2s3_rt1015p,
+	DAILINK_COMP_ARRAY(COMP_CPU("I2S3")),
+	DAILINK_COMP_ARRAY(COMP_CODEC("rt1015p", "HiFi"),
+			   COMP_CODEC(DA7219_DEV_NAME, DA7219_CODEC_DAI)),
+	DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
 SND_SOC_DAILINK_DEFS(i2s5,
 	DAILINK_COMP_ARRAY(COMP_CPU("I2S5")),
 	DAILINK_COMP_ARRAY(COMP_CODEC("bt-sco", "bt-sco-pcm")),
@@ -641,6 +647,23 @@ static struct snd_soc_card mt8183_da7219_rt1015_card = {
 	.num_configs = ARRAY_SIZE(mt8183_da7219_rt1015_codec_conf),
 };
 
+static struct snd_soc_card mt8183_da7219_rt1015p_card = {
+	.name = "mt8183_da7219_rt1015p",
+	.owner = THIS_MODULE,
+	.controls = mt8183_da7219_max98357_snd_controls,
+	.num_controls = ARRAY_SIZE(mt8183_da7219_max98357_snd_controls),
+	.dapm_widgets = mt8183_da7219_max98357_dapm_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(mt8183_da7219_max98357_dapm_widgets),
+	.dapm_routes = mt8183_da7219_max98357_dapm_routes,
+	.num_dapm_routes = ARRAY_SIZE(mt8183_da7219_max98357_dapm_routes),
+	.dai_link = mt8183_da7219_dai_links,
+	.num_links = ARRAY_SIZE(mt8183_da7219_dai_links),
+	.aux_dev = &mt8183_da7219_max98357_headset_dev,
+	.num_aux_devs = 1,
+	.codec_conf = mt6358_codec_conf,
+	.num_configs = ARRAY_SIZE(mt6358_codec_conf),
+};
+
 static int mt8183_da7219_max98357_dev_probe(struct platform_device *pdev)
 {
 	struct snd_soc_card *card;
@@ -696,6 +719,19 @@ static int mt8183_da7219_max98357_dev_probe(struct platform_device *pdev)
 				dai_link->platforms = i2s3_rt1015_platforms;
 				dai_link->num_platforms =
 					ARRAY_SIZE(i2s3_rt1015_platforms);
+			} else if (card == &mt8183_da7219_rt1015p_card) {
+				dai_link->be_hw_params_fixup =
+					mt8183_rt1015_i2s_hw_params_fixup;
+				dai_link->ops = &mt8183_da7219_i2s_ops;
+				dai_link->cpus = i2s3_rt1015p_cpus;
+				dai_link->num_cpus =
+					ARRAY_SIZE(i2s3_rt1015p_cpus);
+				dai_link->codecs = i2s3_rt1015p_codecs;
+				dai_link->num_codecs =
+					ARRAY_SIZE(i2s3_rt1015p_codecs);
+				dai_link->platforms = i2s3_rt1015p_platforms;
+				dai_link->num_platforms =
+					ARRAY_SIZE(i2s3_rt1015p_platforms);
 			}
 		}
 
@@ -742,6 +778,10 @@ static const struct of_device_id mt8183_da7219_max98357_dt_match[] = {
 		.compatible = "mediatek,mt8183_da7219_rt1015",
 		.data = &mt8183_da7219_rt1015_card,
 	},
+	{
+		.compatible = "mediatek,mt8183_da7219_rt1015p",
+		.data = &mt8183_da7219_rt1015p_card,
+	},
 	{}
 };
 #endif
-- 
2.28.0.526.ge36021eeef-goog

