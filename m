Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 973522CA3D1
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:28:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387597AbgLAN1z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:27:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387523AbgLAN1z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:27:55 -0500
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com [IPv6:2607:f8b0:4864:20::1049])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 632C7C061A47
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:26:51 -0800 (PST)
Received: by mail-pj1-x1049.google.com with SMTP id ob4so1130101pjb.9
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=SQuaclQlbq8ZR5gX0U6eAnPIjuDHifr/n0O8Gkw3oUU=;
        b=P+0WQ1phBJO1qp5WKeFAKy04MY9rRx4Edu4MF2zM+0Z18+QN9jK+WYmhaxsvb6HRw6
         n9xnnsqZM07DyTXbBerMEyjrF94sAzO7a5JE9kqJcz+tlMJq3mAZHQ5Rq2ok+hEOlMvv
         MaWL2YIwSDMXAfuzMhI1zHB8YVHp8GBIxS3BWsUOS9X9v8tiueSizWJfr5NbauebWbhA
         E3thCrfSOrA8//jRhgqLAnzTGImpwUvlmL/YW43hPp1PyxaG0SrtOPv9jVeVkqNWEGN5
         Q5mcGhHWiMhuweoBIIli6dzHyhm5XWpW1aVORGSPLC632WfvbQmU4boOnMN92wYckdMi
         1hYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=SQuaclQlbq8ZR5gX0U6eAnPIjuDHifr/n0O8Gkw3oUU=;
        b=SzQNjPotXn7cdPnzgKV6FjkDCL4xjGiXq97eE+Bz5IXGTQwb6Yh9y9WuRA9xT6EXG7
         fJy9UPK49Le6g/MTPAxpQrUsz2qjr2o2/iXUa4U5Zt/XbZVB51QlL3cO5WlJ11wEE8bn
         Q1WE913h4jv34iEZKxSNKiPCKnevN45INJ4X1ro5ICT1pr4oiiDb09FqMTaXr/vCQFln
         33Y5r/gtC9SVwKO0ygiGE7RmINtx/ekeei40xG8PY0zmjTUxQblmzlQ+yEIuF3pzJbP9
         JOZaFQo7tRJrKFbAwwzluqkLhp5F1NJ1J2tSitC1kInAH4cQ5BBAzkw9QAwCuWv9NANJ
         9yNA==
X-Gm-Message-State: AOAM532NC2vu3rXs2jUj9H6ynwr47/qcGRazg79B6Fq3eFqQ3+HM/JdL
        Y7OYgPf63VCbDHyrdFo3ARbF1B0av5qe
X-Google-Smtp-Source: ABdhPJxd09EeTMvgoN7wMG5sCX3SEvxsILCwYqI54xEA2B9ORVM8M4ipscINbd9qpITlRVIgZbEJKOoZv57O
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a17:90a:17a4:: with SMTP id
 q33mr295837pja.0.1606829210557; Tue, 01 Dec 2020 05:26:50 -0800 (PST)
Date:   Tue,  1 Dec 2020 21:26:14 +0800
In-Reply-To: <20201201132614.1691352-1-tzungbi@google.com>
Message-Id: <20201201132614.1691352-7-tzungbi@google.com>
Mime-Version: 1.0
References: <20201201132614.1691352-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [RESEND PATCH 6/6] ASoC: mediatek: mt8192: support rt1015p_rt5682
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Supports machines with rt1015p and rt5682.  Uses new proposed compatible
string "mt8192_mt6359_rt1015p_rt5682".

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/mediatek/Kconfig                    |  1 +
 .../mt8192/mt8192-mt6359-rt1015-rt5682.c      | 54 +++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index 49772dfc92c7..8d3dcfb6a580 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -175,6 +175,7 @@ config SND_SOC_MT8192_MT6359_RT1015_RT5682
 	depends on SND_SOC_MT8192
 	select SND_SOC_MT6359
 	select SND_SOC_RT1015
+	select SND_SOC_RT1015P
 	select SND_SOC_RT5682_I2C
 	select SND_SOC_DMIC
 	help
diff --git a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
index 0d2cc6800f08..716fbb4126b5 100644
--- a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
+++ b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
@@ -560,6 +560,11 @@ SND_SOC_DAILINK_DEFS(i2s3_rt1015,
 						   RT1015_CODEC_DAI)),
 		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
 
+SND_SOC_DAILINK_DEFS(i2s3_rt1015p,
+		     DAILINK_COMP_ARRAY(COMP_CPU("I2S3")),
+		     DAILINK_COMP_ARRAY(COMP_CODEC("rt1015p", "HiFi")),
+		     DAILINK_COMP_ARRAY(COMP_EMPTY()));
+
 SND_SOC_DAILINK_DEFS(i2s5,
 		     DAILINK_COMP_ARRAY(COMP_CPU("I2S5")),
 		     DAILINK_COMP_ARRAY(COMP_DUMMY()),
@@ -997,6 +1002,41 @@ static struct snd_soc_card mt8192_mt6359_rt1015_rt5682_card = {
 	.num_configs = ARRAY_SIZE(rt1015_amp_conf),
 };
 
+static const struct snd_soc_dapm_widget
+mt8192_mt6359_rt1015p_rt5682_widgets[] = {
+	SND_SOC_DAPM_SPK("Speakers", NULL),
+	SND_SOC_DAPM_HP("Headphone Jack", NULL),
+	SND_SOC_DAPM_MIC("Headset Mic", NULL),
+};
+
+static const struct snd_soc_dapm_route mt8192_mt6359_rt1015p_rt5682_routes[] = {
+	/* speaker */
+	{ "Speakers", NULL, "Speaker" },
+	/* headset */
+	{ "Headphone Jack", NULL, "HPOL" },
+	{ "Headphone Jack", NULL, "HPOR" },
+	{ "IN1P", NULL, "Headset Mic" },
+};
+
+static const struct snd_kcontrol_new mt8192_mt6359_rt1015p_rt5682_controls[] = {
+	SOC_DAPM_PIN_SWITCH("Speakers"),
+	SOC_DAPM_PIN_SWITCH("Headphone Jack"),
+	SOC_DAPM_PIN_SWITCH("Headset Mic"),
+};
+
+static struct snd_soc_card mt8192_mt6359_rt1015p_rt5682_card = {
+	.name = "mt8192_mt6359_rt1015p_rt5682",
+	.owner = THIS_MODULE,
+	.dai_link = mt8192_mt6359_dai_links,
+	.num_links = ARRAY_SIZE(mt8192_mt6359_dai_links),
+	.controls = mt8192_mt6359_rt1015p_rt5682_controls,
+	.num_controls = ARRAY_SIZE(mt8192_mt6359_rt1015p_rt5682_controls),
+	.dapm_widgets = mt8192_mt6359_rt1015p_rt5682_widgets,
+	.num_dapm_widgets = ARRAY_SIZE(mt8192_mt6359_rt1015p_rt5682_widgets),
+	.dapm_routes = mt8192_mt6359_rt1015p_rt5682_routes,
+	.num_dapm_routes = ARRAY_SIZE(mt8192_mt6359_rt1015p_rt5682_routes),
+};
+
 static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 {
 	struct snd_soc_card *card;
@@ -1032,6 +1072,16 @@ static int mt8192_mt6359_dev_probe(struct platform_device *pdev)
 				dai_link->platforms = i2s3_rt1015_platforms;
 				dai_link->num_platforms =
 					ARRAY_SIZE(i2s3_rt1015_platforms);
+			} else if (card == &mt8192_mt6359_rt1015p_rt5682_card) {
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
 
@@ -1054,6 +1104,10 @@ static const struct of_device_id mt8192_mt6359_dt_match[] = {
 		.compatible = "mediatek,mt8192_mt6359_rt1015_rt5682",
 		.data = &mt8192_mt6359_rt1015_rt5682_card,
 	},
+	{
+		.compatible = "mediatek,mt8192_mt6359_rt1015p_rt5682",
+		.data = &mt8192_mt6359_rt1015p_rt5682_card,
+	},
 	{}
 };
 #endif
-- 
2.29.2.454.gaff20da3a2-goog

