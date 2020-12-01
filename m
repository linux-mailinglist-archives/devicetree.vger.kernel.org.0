Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49ECE2CA3CC
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:28:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389045AbgLAN1Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:27:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387597AbgLAN1Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:27:16 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BF95C0613D6
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:26:36 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id c9so2359869ybs.8
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=xpmr0QppfKaZgs1QfZTCXWDbMOfoG2eoYaqppx7TWQc=;
        b=r6Z9QdqiHKrH2BBNE9kdnblSzW428RnZuze83cE+mVbwyWpOHxsA5P09JZ7L2GUUVC
         ACVaWCWrCv7+9oSBwwUE8Nm0VRYzvwtyK1UR99JUDaC4SUIzdCdM68JjJUHD8lyvKEx1
         Vzv/hL8bvwrH9VMdjJUMkuWNcSH9LtYEOzVscsRP7L1lJY4X/ftCl2YCWeJVPVg/o/hx
         eeJwP8e7C9FqSB8jVUwJTbmc0vbuqBhSnZGjdwqBrpB6ztsYOde/AMblg/Hzwzh1eMIU
         U3pFx3Ug4x4bmC6SmkicAY45hZ7BJ3FLm4QHtnkFH6bMp2BF0EgVb8qB0Na2JB5xsPSJ
         KEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=xpmr0QppfKaZgs1QfZTCXWDbMOfoG2eoYaqppx7TWQc=;
        b=FuzAcfRzPgcmdQ2s/UHvl4SiWBNMKK8Ko29/nWhBnDg6HcbpnlTioM2nZoqcTYPzFk
         yBBaT/w8CUmqJeIx13/tVRL0asEsDKyRPZc9sj4rlChIoC135LSzc63EB5K6wFg85Uyw
         0VsbG/jNmERcGXv/dMHDozX5081UzT1MOq/JeXOt4x6566LEG0j2NubU6lzOMuuBg35B
         RKO/sIvgXCE1riwW9Gutn9Q39+mipTV+m7nJolslDBzSeOquY+BI+pTkVGVfiqWkRIWL
         9jAouVwp6vXsdDDY651XBr+lTZsVV8D8GdMj2moix6iSdkE6tAX6xhVVOeu7e12vFbt5
         lQiA==
X-Gm-Message-State: AOAM532dzrR+EPVPs4IeKXmD8Q7RfKAR9xTGjtCNQbm1S8bm3ZQ2jSAU
        Aexvv6NxuaPub7geTuQWHFKkRXFbbU6w
X-Google-Smtp-Source: ABdhPJzXQvl3KcxrG86zIVoJaYcMhh/XfXutz/bOaV5brDNIpgEdVe6dLzgpGlUSZPp0zI3OYxltaRwpylIW
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a25:bf82:: with SMTP id
 l2mr3503068ybk.1.1606829195340; Tue, 01 Dec 2020 05:26:35 -0800 (PST)
Date:   Tue,  1 Dec 2020 21:26:10 +0800
In-Reply-To: <20201201132614.1691352-1-tzungbi@google.com>
Message-Id: <20201201132614.1691352-3-tzungbi@google.com>
Mime-Version: 1.0
References: <20201201132614.1691352-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [RESEND PATCH 2/6] ASoC: mediatek: mt8192: extract rt1015_rt5682
 specific DAI link
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Extracts rt1015_rt5682 specific DAI link from the common one.  Fills the
DAI link data according to of_match.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../mt8192/mt8192-mt6359-rt1015-rt5682.c      | 39 +++++++++++++++----
 1 file changed, 31 insertions(+), 8 deletions(-)

diff --git a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
index 253c028c1630..e841fd32e8cc 100644
--- a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
+++ b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
@@ -9,6 +9,7 @@
 
 #include <linux/input.h>
 #include <linux/module.h>
+#include <linux/of_device.h>
 #include <linux/pm_runtime.h>
 #include <sound/jack.h>
 #include <sound/pcm_params.h>
@@ -576,7 +577,7 @@ SND_SOC_DAILINK_DEFS(i2s2,
 		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
 		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
-SND_SOC_DAILINK_DEFS(i2s3,
+SND_SOC_DAILINK_DEFS(i2s3_rt1015,
 		     DAILINK_COMP_ARRAY(COMP_CPU("I2S3")),
 		     DAILINK_COMP_ARRAY(COMP_CODEC(RT1015_DEV0_NAME,
 						   RT1015_CODEC_DAI),
@@ -894,8 +895,6 @@ static struct snd_soc_dai_link mt8192_mt6359_dai_links[] = {
 		.dpcm_playback = 1,
 		.ignore_suspend = 1,
 		.be_hw_params_fixup = mt8192_i2s_hw_params_fixup,
-		SND_SOC_DAILINK_REG(i2s3),
-		.ops = &mt8192_rt1015_i2s_ops,
 	},
 	{
 		.name = "I2S5",
@@ -983,7 +982,7 @@ static struct snd_soc_codec_conf rt1015_amp_conf[] = {
 	},
 };
 
-static struct snd_soc_card mt8192_mt6359_rt1015_rt5682_soc_card = {
+static struct snd_soc_card mt8192_mt6359_rt1015_rt5682_card = {
 	.name = "mt8192_mt6359_rt1015_rt5682",
 	.owner = THIS_MODULE,
 	.dai_link = mt8192_mt6359_dai_links,
@@ -1000,12 +999,11 @@ static struct snd_soc_card mt8192_mt6359_rt1015_rt5682_soc_card = {
 
 static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 {
-	struct snd_soc_card *card = &mt8192_mt6359_rt1015_rt5682_soc_card;
+	struct snd_soc_card *card;
 	struct device_node *platform_node;
 	int ret, i;
 	struct snd_soc_dai_link *dai_link;
-
-	card->dev = &pdev->dev;
+	const struct of_device_id *match;
 
 	platform_node = of_parse_phandle(pdev->dev.of_node,
 					 "mediatek,platform", 0);
@@ -1014,7 +1012,29 @@ static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	match = of_match_device(pdev->dev.driver->of_match_table, &pdev->dev);
+	if (!match || !match->data)
+		return -EINVAL;
+
+	card = (struct snd_soc_card *)match->data;
+	card->dev = &pdev->dev;
+
 	for_each_card_prelinks(card, i, dai_link) {
+		if (strcmp(dai_link->name, "I2S3") == 0) {
+			if (card == &mt8192_mt6359_rt1015_rt5682_card) {
+				dai_link->ops = &mt8192_rt1015_i2s_ops;
+				dai_link->cpus = i2s3_rt1015_cpus;
+				dai_link->num_cpus =
+					ARRAY_SIZE(i2s3_rt1015_cpus);
+				dai_link->codecs = i2s3_rt1015_codecs;
+				dai_link->num_codecs =
+					ARRAY_SIZE(i2s3_rt1015_codecs);
+				dai_link->platforms = i2s3_rt1015_platforms;
+				dai_link->num_platforms =
+					ARRAY_SIZE(i2s3_rt1015_platforms);
+			}
+		}
+
 		if (!dai_link->platforms->name)
 			dai_link->platforms->of_node = platform_node;
 	}
@@ -1030,7 +1050,10 @@ static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 
 #ifdef CONFIG_OF
 static const struct of_device_id mt8192_mt6359_dt_match[] = {
-	{.compatible = "mediatek,mt8192_mt6359_rt1015_rt5682",},
+	{
+		.compatible = "mediatek,mt8192_mt6359_rt1015_rt5682",
+		.data = &mt8192_mt6359_rt1015_rt5682_card,
+	},
 	{}
 };
 #endif
-- 
2.29.2.454.gaff20da3a2-goog

