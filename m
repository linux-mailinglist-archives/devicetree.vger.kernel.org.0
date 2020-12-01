Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B89C92CA3CD
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:28:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727942AbgLAN1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:27:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725977AbgLAN1S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:27:18 -0500
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com [IPv6:2607:f8b0:4864:20::f4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C347C0613D4
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:26:32 -0800 (PST)
Received: by mail-qv1-xf4a.google.com with SMTP id bn4so1183751qvb.9
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=zeBdGQi7aQ2RzZ5oYC/vR5oem1skz7Qr9Eoewd69/U0=;
        b=sBiTWiASpLsq3LJ8BDI2Y+60ZFuYshHMzBf38x4k4bX+31eAuJo+nB4DKrsFFjNV8C
         aH6xszV0gPiWyCE7ttEknJVSpMVfJBLlGpWRLsaTynYSTYQgzTUdPKPMnCRkB6X9pjwX
         ZPrP1ZFeJFV7qDHQ5slC/nQBs6ee872uARmhXyzKsLK0wNHAT11Jeg/eQLAcWeBHEB4h
         N7Pd2bIi9J2+zXLcqomlijYMrJRxxp7PC8NJdBuAYLQm5V8AQWJQ7AmKF48GLEHdxdxL
         WYS1vlpMeFShxIP1uBG2JwcNJ/clnTOJw4CcQ7+4YZphepi4SGqtCaeDeLclMjvRjAXw
         I0xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=zeBdGQi7aQ2RzZ5oYC/vR5oem1skz7Qr9Eoewd69/U0=;
        b=KVI7TbZvGmI05jlS2lFsixD+mESfuC4eOPBeUcY1IjvQfazwHbPs8ivRq6iH+m/tgF
         ZBMLLBEi56xiBq+Gyor9wFmUB2FTOEHkMI2OCd8r5RrpQfIxnQnK7XZ53KCfurmdmA5x
         beLDm1y3qqhljFAqDj0wQlYKGOxyPxpCG3q4xTwzJyhDVk+mrHJsw2d/k+Zm9bbxFUEk
         U0VRFaPg20LrSWrrWj4XJdFH7KDK6/g4/I9RMByMM/qAitffRBt2Bap5SnHdU2tIfQRN
         DJe3LKUHKQjY/1ZMXiS88eNuzv1F5QEBcjG1WEbFHhHrXDzPE5MkHp70ivGvj45yX37d
         u7Pg==
X-Gm-Message-State: AOAM530fPCgDf+/Sm5K/vkGfcBteSYTHl15UX4b7jmOf9GD1VMBlyAWc
        nSvbspVXEY1KD/1EJWZtt9o4JwJhQ8z9
X-Google-Smtp-Source: ABdhPJw7TIM5HCPYLlaI5fQSrFU+itpyEW1viJIZMc/uUz1qwlLjP7916UEQrhWQ+oPDWZ9PvierfZBvcJXv
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a0c:f4d0:: with SMTP id
 o16mr2778113qvm.45.1606829191708; Tue, 01 Dec 2020 05:26:31 -0800 (PST)
Date:   Tue,  1 Dec 2020 21:26:09 +0800
In-Reply-To: <20201201132614.1691352-1-tzungbi@google.com>
Message-Id: <20201201132614.1691352-2-tzungbi@google.com>
Mime-Version: 1.0
References: <20201201132614.1691352-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [RESEND PATCH 1/6] ASoC: mediatek: mt8192: rename common symbols
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Renames common symbols from "mt8192_mt6359_rt1015_rt5682" to
"mt8192_mt6359".

They will share between a few machine drivers on MT8192 and MT6359
with some different audio components.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../mt8192/mt8192-mt6359-rt1015-rt5682.c      | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
index b7f42a530d06..253c028c1630 100644
--- a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
+++ b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
@@ -631,7 +631,7 @@ SND_SOC_DAILINK_DEFS(tdm,
 		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
 		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
-static struct snd_soc_dai_link mt8192_mt6359_rt1015_rt5682_dai_links[] = {
+static struct snd_soc_dai_link mt8192_mt6359_dai_links[] = {
 	/* Front End DAI links */
 	{
 		.name = "Playback_1",
@@ -986,8 +986,8 @@ static struct snd_soc_codec_conf rt1015_amp_conf[] = {
 static struct snd_soc_card mt8192_mt6359_rt1015_rt5682_soc_card = {
 	.name = "mt8192_mt6359_rt1015_rt5682",
 	.owner = THIS_MODULE,
-	.dai_link = mt8192_mt6359_rt1015_rt5682_dai_links,
-	.num_links = ARRAY_SIZE(mt8192_mt6359_rt1015_rt5682_dai_links),
+	.dai_link = mt8192_mt6359_dai_links,
+	.num_links = ARRAY_SIZE(mt8192_mt6359_dai_links),
 	.controls = mt8192_mt6359_rt1015_rt5682_controls,
 	.num_controls = ARRAY_SIZE(mt8192_mt6359_rt1015_rt5682_controls),
 	.dapm_widgets = mt8192_mt6359_rt1015_rt5682_widgets,
@@ -998,7 +998,7 @@ static struct snd_soc_card mt8192_mt6359_rt1015_rt5682_soc_card = {
 	.num_configs = ARRAY_SIZE(rt1015_amp_conf),
 };
 
-static int mt8192_mt6359_rt1015_rt5682_dev_probe(struct platform_device *pdev)
+static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 {
 	struct snd_soc_card *card = &mt8192_mt6359_rt1015_rt5682_soc_card;
 	struct device_node *platform_node;
@@ -1029,32 +1029,32 @@ static int mt8192_mt6359_rt1015_rt5682_dev_probe(struct platform_device *pdev)
 }
 
 #ifdef CONFIG_OF
-static const struct of_device_id mt8192_mt6359_rt1015_rt5682_dt_match[] = {
+static const struct of_device_id mt8192_mt6359_dt_match[] = {
 	{.compatible = "mediatek,mt8192_mt6359_rt1015_rt5682",},
 	{}
 };
 #endif
 
-static const struct dev_pm_ops mt8192_mt6359_rt1015_rt5682_pm_ops = {
+static const struct dev_pm_ops mt8192_mt6359_pm_ops = {
 	.poweroff = snd_soc_poweroff,
 	.restore = snd_soc_resume,
 };
 
-static struct platform_driver mt8192_mt6359_rt1015_rt5682_driver = {
+static struct platform_driver mt8192_mt6359_driver = {
 	.driver = {
-		.name = "mt8192_mt6359_rt1015_rt5682",
+		.name = "mt8192_mt6359",
 #ifdef CONFIG_OF
-		.of_match_table = mt8192_mt6359_rt1015_rt5682_dt_match,
+		.of_match_table = mt8192_mt6359_dt_match,
 #endif
-		.pm = &mt8192_mt6359_rt1015_rt5682_pm_ops,
+		.pm = &mt8192_mt6359_pm_ops,
 	},
-	.probe = mt8192_mt6359_rt1015_rt5682_dev_probe,
+	.probe = mt8192_mt6359_dev_probe,
 };
 
-module_platform_driver(mt8192_mt6359_rt1015_rt5682_driver);
+module_platform_driver(mt8192_mt6359_driver);
 
 /* Module information */
-MODULE_DESCRIPTION("MT8192-MT6359-RT1015-RT5682 ALSA SoC machine driver");
+MODULE_DESCRIPTION("MT8192-MT6359 ALSA SoC machine driver");
 MODULE_AUTHOR("Jiaxin Yu <jiaxin.yu@mediatek.com>");
 MODULE_LICENSE("GPL v2");
-MODULE_ALIAS("mt8192_mt6359_rt1015_rt5682 soc card");
+MODULE_ALIAS("mt8192_mt6359 soc card");
-- 
2.29.2.454.gaff20da3a2-goog

