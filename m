Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C525336AB9
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 04:32:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230183AbhCKDcY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 22:32:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230431AbhCKDcQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 22:32:16 -0500
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com [IPv6:2607:f8b0:4864:20::f4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 550FAC061574
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 19:32:16 -0800 (PST)
Received: by mail-qv1-xf4a.google.com with SMTP id k92so10708853qva.20
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 19:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=ta3c37NC4IC38mag1lCTgXilpT5IXIyHlWQH4EiC/iA=;
        b=pKhD1S53tPW8xEw0EjG1zY8EqSWaFA1ZGIMnppVhynZq+48BEUkcpXvmbt2f8of5fi
         TWq/YeYdJZb+7Maj234fxi0H+q3PrbBIBJWlbXwYtYveHu7XiqUOp8fwGCB8a+4oaIil
         2gtRYuyr6qiLR3KJPJ/Rw2I3rDl51xKZ0zzkau+UpSOu0aoCTyduHInerq1ezpFE/ma2
         AjSzuplJPwyxsD2wfh/bwBqsP5Rfk2oFEc2991BGcbpdiUgwB1TnI+3hgaheRJADX8+i
         roC+95ULvIHvc3vAttWclG+jjCvpZaW0vO0ioZfmcv+bRJAmbDVaDEj23jVk1ZXXTz3A
         CxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=ta3c37NC4IC38mag1lCTgXilpT5IXIyHlWQH4EiC/iA=;
        b=kjdr6hRffPMje/pi9y0u17kCfaI9m+i3gE/4lvs4/YusqaimEBgAOZN9hcrpl/wOvc
         49IpnaR1B0EbEqNQdqxsRlvZLVYdOFTuEbCPALE6Lji7W/uYH5HaX8n9FpvhH3MTUfxz
         +5zk5ndlj3vnsHP69rmLiuU8m5dBlToMtnFd8pyZB2W8WVeJejGEaJAXGSvpWLCmzRQb
         zT+sp5as/AjyUSBg+7r1FZeaEIQJX+ZzG8Zps3lDEz6g7KjMYsZmhYsTbZ6b/W0CMiJ3
         euLQw8BM+9jN3+REsgfr5in3BsH+jP7/NjMzRWuHus7J1GkkXxMDVJ8qhdLw9tpt9Xiq
         SIsg==
X-Gm-Message-State: AOAM530Uw4SPv9pCFitaQrNt52rPm8qY1QGuOxHb7/XgJ1YH225SFiVw
        Ho/zmNGqpTI9JuE+4s2GZa7wjdFEehb5
X-Google-Smtp-Source: ABdhPJyjG9Eti+3Jl9cxnyfQ8irNUI+/6ZL9YuaCZo7HcpU2iTmXZS+14JL16sfSy/SFI7vcw0qFLAdT3Utv
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:d958:2f3:afb:68a3])
 (user=tzungbi job=sendgmr) by 2002:ad4:4692:: with SMTP id
 bq18mr6269467qvb.0.1615433535565; Wed, 10 Mar 2021 19:32:15 -0800 (PST)
Date:   Thu, 11 Mar 2021 11:31:51 +0800
In-Reply-To: <20210311033151.1818603-1-tzungbi@google.com>
Message-Id: <20210311033151.1818603-3-tzungbi@google.com>
Mime-Version: 1.0
References: <20210311033151.1818603-1-tzungbi@google.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH 2/2] ASoC: mediatek: mt8183: support machine driver with rt1015p
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Supports machine driver with rt1015p ("mt8183_mt6358_ts3a227_rt1015p").
Embeds in the existing mt8183-mt6358-ts3a227-max98357.c because they
share most of the code.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/mediatek/Kconfig                    |  1 +
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   | 29 +++++++++++++++++++
 2 files changed, 30 insertions(+)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index effdb76369e4..74dae4332d17 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -124,6 +124,7 @@ config SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A
 	select SND_SOC_MT6358
 	select SND_SOC_MAX98357A
 	select SND_SOC_RT1015
+	select SND_SOC_RT1015P
 	select SND_SOC_BT_SCO
 	select SND_SOC_TS3A227E
 	select SND_SOC_CROS_EC_CODEC if CROS_EC
diff --git a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
index 271413e719e3..94dcbd36c869 100644
--- a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
@@ -284,6 +284,11 @@ SND_SOC_DAILINK_DEFS(i2s3_rt1015,
 			   COMP_CODEC(RT1015_DEV1_NAME, RT1015_CODEC_DAI)),
 	DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
+SND_SOC_DAILINK_DEFS(i2s3_rt1015p,
+	DAILINK_COMP_ARRAY(COMP_CPU("I2S3")),
+	DAILINK_COMP_ARRAY(COMP_CODEC("rt1015p", "HiFi")),
+	DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
 SND_SOC_DAILINK_DEFS(i2s5,
 	DAILINK_COMP_ARRAY(COMP_CPU("I2S5")),
 	DAILINK_COMP_ARRAY(COMP_CODEC("bt-sco", "bt-sco-pcm")),
@@ -590,6 +595,13 @@ static struct snd_soc_card mt8183_mt6358_ts3a227_rt1015_card = {
 	.num_configs = ARRAY_SIZE(mt8183_mt6358_ts3a227_rt1015_amp_conf),
 };
 
+static struct snd_soc_card mt8183_mt6358_ts3a227_rt1015p_card = {
+	.name = "mt8183_mt6358_ts3a227_rt1015p",
+	.owner = THIS_MODULE,
+	.dai_link = mt8183_mt6358_ts3a227_dai_links,
+	.num_links = ARRAY_SIZE(mt8183_mt6358_ts3a227_dai_links),
+};
+
 static int
 mt8183_mt6358_ts3a227_max98357_headset_init(struct snd_soc_component *component)
 {
@@ -686,6 +698,19 @@ mt8183_mt6358_ts3a227_max98357_dev_probe(struct platform_device *pdev)
 				dai_link->platforms = i2s3_rt1015_platforms;
 				dai_link->num_platforms =
 					ARRAY_SIZE(i2s3_rt1015_platforms);
+			} else if (card == &mt8183_mt6358_ts3a227_rt1015p_card) {
+				dai_link->be_hw_params_fixup =
+					mt8183_rt1015_i2s_hw_params_fixup;
+				dai_link->ops = &mt8183_mt6358_i2s_ops;
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
 
@@ -772,6 +797,10 @@ static const struct of_device_id mt8183_mt6358_ts3a227_max98357_dt_match[] = {
 		.compatible = "mediatek,mt8183_mt6358_ts3a227_rt1015",
 		.data = &mt8183_mt6358_ts3a227_rt1015_card,
 	},
+	{
+		.compatible = "mediatek,mt8183_mt6358_ts3a227_rt1015p",
+		.data = &mt8183_mt6358_ts3a227_rt1015p_card,
+	},
 	{}
 };
 #endif
-- 
2.31.0.rc2.261.g7f71774620-goog

