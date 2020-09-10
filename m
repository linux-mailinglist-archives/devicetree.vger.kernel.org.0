Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05299263C18
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 06:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725868AbgIJEeC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 00:34:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725372AbgIJEdp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 00:33:45 -0400
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com [IPv6:2607:f8b0:4864:20::649])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 977B1C061573
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 21:33:45 -0700 (PDT)
Received: by mail-pl1-x649.google.com with SMTP id u6so342022plq.2
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 21:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=hX4LArcIeiO7DYSi2U69MGeuOS3UcDbsbvMpax4YZiQ=;
        b=X7L9xsXpI8xisXTHeGC3144T4IPbYh15nR9ONudmSIjCs0g684NnQ161VNfT0XemSd
         YZVVV6Wgq8zZcltxC81G8LV7o5VNNpnSvcWnTrWbzD+8xu3WlPdM3WDd/qpxKnlB77VY
         OqFNlTsANHLCwtVg72haywnIi4EUyVft/tNX5keDqxz0RBfAE4aDcEPsZ8KY360Q3BHd
         oNbV8yZho2aBeRrYBi9gkDvLujhsQ9QLNyT1d7R+irORYSPGkvS7eDUUt2DCgve4hF40
         7J57IHVh5fvtZYGRIGqsbvOtswn5L7NG+OR34FbTTAIt3CSgzvzQx4pokCzYwdLc8wuk
         Jx3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=hX4LArcIeiO7DYSi2U69MGeuOS3UcDbsbvMpax4YZiQ=;
        b=DTY3iPIYMlHntqkTwnwCoUnirszkhscGRNdae/5nEDXlAv6OGtBZO0Lk+ohJ//MqD3
         ZeIrAnVgtXQc0OS2UbxFkxuWVlxIp44y/jN4bysJiwZQ+9mG1DnohSc5OAi0B9D8dqCN
         /7EDwRQIiccZ6ckLoXtBG2uMetlM0+uQ5h9rCKa6cg75Vu/rn/KOPOFhqJVWdn0x3jWh
         k9/Fbcvvgvl4Mcme3sOzuEywUr3naEtoi/VM6SLbvb0ngrpWcOO3ozuCEWGyhCVKykmi
         1J52nfjOeCF54PTor/PyrADzyFyGif9ln8q0cwZZ2lAO1fYxn7ocwy5VKcUNK87g04mk
         FRnA==
X-Gm-Message-State: AOAM532ygPZWc0gMKs+LrE0ZqWmFlrWsZtzNDJkvvoHvKGajmFxbQ4Nz
        p6FKqZE54PBKis2suIrafQHBD7/51GCY
X-Google-Smtp-Source: ABdhPJyWRnHMvm3L2Eu/UMmLMq9QF4ZQmZIK24+n8KT9ZqVUNNrMza56akTJLqby1J700xPh5ROXIGhRiQQW
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a62:5586:0:b029:13e:d13d:a12c with SMTP id
 j128-20020a6255860000b029013ed13da12cmr3550982pfb.20.1599712424246; Wed, 09
 Sep 2020 21:33:44 -0700 (PDT)
Date:   Thu, 10 Sep 2020 12:33:30 +0800
In-Reply-To: <20200910043331.3808223-1-tzungbi@google.com>
Message-Id: <20200910043331.3808223-2-tzungbi@google.com>
Mime-Version: 1.0
References: <20200910043331.3808223-1-tzungbi@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH RESEND 1/2] ASoC: rt1015p: add codec driver
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, jack.yu@realtek.com,
        tzungbi@google.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds rt1015p codec driver.

Rt1015p is a rt1015 variant.
- It doesn't support I2C.
- It only supports S24, 48kHz, 64FS.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 sound/soc/codecs/Kconfig   |   7 ++
 sound/soc/codecs/Makefile  |   2 +
 sound/soc/codecs/rt1015p.c | 148 +++++++++++++++++++++++++++++++++++++
 3 files changed, 157 insertions(+)
 create mode 100644 sound/soc/codecs/rt1015p.c

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index e6c71ca0cd9b..1cf686eb6a51 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -155,6 +155,7 @@ config SND_SOC_ALL_CODECS
 	imply SND_SOC_RT298
 	imply SND_SOC_RT1011
 	imply SND_SOC_RT1015
+	imply SND_SOC_RT1015P
 	imply SND_SOC_RT1305
 	imply SND_SOC_RT1308
 	imply SND_SOC_RT5514
@@ -1032,6 +1033,7 @@ config SND_SOC_RL6231
 	default y if SND_SOC_RT5682=y
 	default y if SND_SOC_RT1011=y
 	default y if SND_SOC_RT1015=y
+	default y if SND_SOC_RT1015P=y
 	default y if SND_SOC_RT1305=y
 	default y if SND_SOC_RT1308=y
 	default m if SND_SOC_RT5514=m
@@ -1049,6 +1051,7 @@ config SND_SOC_RL6231
 	default m if SND_SOC_RT5682=m
 	default m if SND_SOC_RT1011=m
 	default m if SND_SOC_RT1015=m
+	default m if SND_SOC_RT1015P=m
 	default m if SND_SOC_RT1305=m
 	default m if SND_SOC_RT1308=m
 
@@ -1081,6 +1084,10 @@ config SND_SOC_RT1015
 	tristate
 	depends on I2C
 
+config SND_SOC_RT1015P
+	tristate
+	depends on GPIOLIB
+
 config SND_SOC_RT1305
 	tristate
 	depends on I2C
diff --git a/sound/soc/codecs/Makefile b/sound/soc/codecs/Makefile
index 9a3f58c1069a..2e5a79b55102 100644
--- a/sound/soc/codecs/Makefile
+++ b/sound/soc/codecs/Makefile
@@ -159,6 +159,7 @@ snd-soc-rl6231-objs := rl6231.o
 snd-soc-rl6347a-objs := rl6347a.o
 snd-soc-rt1011-objs := rt1011.o
 snd-soc-rt1015-objs := rt1015.o
+snd-soc-rt1015p-objs := rt1015p.o
 snd-soc-rt1305-objs := rt1305.o
 snd-soc-rt1308-objs := rt1308.o
 snd-soc-rt1308-sdw-objs := rt1308-sdw.o
@@ -465,6 +466,7 @@ obj-$(CONFIG_SND_SOC_RL6231)	+= snd-soc-rl6231.o
 obj-$(CONFIG_SND_SOC_RL6347A)	+= snd-soc-rl6347a.o
 obj-$(CONFIG_SND_SOC_RT1011)	+= snd-soc-rt1011.o
 obj-$(CONFIG_SND_SOC_RT1015)	+= snd-soc-rt1015.o
+obj-$(CONFIG_SND_SOC_RT1015P)	+= snd-soc-rt1015p.o
 obj-$(CONFIG_SND_SOC_RT1305)	+= snd-soc-rt1305.o
 obj-$(CONFIG_SND_SOC_RT1308)	+= snd-soc-rt1308.o
 obj-$(CONFIG_SND_SOC_RT1308_SDW)	+= snd-soc-rt1308-sdw.o
diff --git a/sound/soc/codecs/rt1015p.c b/sound/soc/codecs/rt1015p.c
new file mode 100644
index 000000000000..59bb60682270
--- /dev/null
+++ b/sound/soc/codecs/rt1015p.c
@@ -0,0 +1,148 @@
+// SPDX-License-Identifier: GPL-2.0-only
+//
+// rt1015p.c  --  RT1015P ALSA SoC audio amplifier driver
+//
+// Copyright 2020 The Linux Foundation. All rights reserved.
+
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <sound/pcm.h>
+#include <sound/soc.h>
+#include <sound/soc-dai.h>
+#include <sound/soc-dapm.h>
+
+struct rt1015p_priv {
+	struct gpio_desc *sdb;
+	int sdb_switch;
+};
+
+static int rt1015p_daiops_trigger(struct snd_pcm_substream *substream,
+		int cmd, struct snd_soc_dai *dai)
+{
+	struct snd_soc_component *component = dai->component;
+	struct rt1015p_priv *rt1015p =
+		snd_soc_component_get_drvdata(component);
+
+	if (!rt1015p->sdb)
+		return 0;
+
+	switch (cmd) {
+	case SNDRV_PCM_TRIGGER_START:
+	case SNDRV_PCM_TRIGGER_RESUME:
+	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
+		if (rt1015p->sdb_switch) {
+			gpiod_set_value(rt1015p->sdb, 1);
+			dev_dbg(component->dev, "set sdb to 1");
+		}
+		break;
+	case SNDRV_PCM_TRIGGER_STOP:
+	case SNDRV_PCM_TRIGGER_SUSPEND:
+	case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
+		gpiod_set_value(rt1015p->sdb, 0);
+		dev_dbg(component->dev, "set sdb to 0");
+		break;
+	}
+
+	return 0;
+}
+
+static int rt1015p_sdb_event(struct snd_soc_dapm_widget *w,
+		struct snd_kcontrol *kcontrol, int event)
+{
+	struct snd_soc_component *component =
+		snd_soc_dapm_to_component(w->dapm);
+	struct rt1015p_priv *rt1015p =
+		snd_soc_component_get_drvdata(component);
+
+	if (event & SND_SOC_DAPM_POST_PMU)
+		rt1015p->sdb_switch = 1;
+	else if (event & SND_SOC_DAPM_POST_PMD)
+		rt1015p->sdb_switch = 0;
+
+	return 0;
+}
+
+static const struct snd_soc_dapm_widget rt1015p_dapm_widgets[] = {
+	SND_SOC_DAPM_OUTPUT("Speaker"),
+	SND_SOC_DAPM_OUT_DRV_E("SDB", SND_SOC_NOPM, 0, 0, NULL, 0,
+			rt1015p_sdb_event,
+			SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_POST_PMD),
+};
+
+static const struct snd_soc_dapm_route rt1015p_dapm_routes[] = {
+	{"SDB", NULL, "HiFi Playback"},
+	{"Speaker", NULL, "SDB"},
+};
+
+static const struct snd_soc_component_driver rt1015p_component_driver = {
+	.dapm_widgets		= rt1015p_dapm_widgets,
+	.num_dapm_widgets	= ARRAY_SIZE(rt1015p_dapm_widgets),
+	.dapm_routes		= rt1015p_dapm_routes,
+	.num_dapm_routes	= ARRAY_SIZE(rt1015p_dapm_routes),
+	.idle_bias_on		= 1,
+	.use_pmdown_time	= 1,
+	.endianness		= 1,
+	.non_legacy_dai_naming	= 1,
+};
+
+static const struct snd_soc_dai_ops rt1015p_dai_ops = {
+	.trigger        = rt1015p_daiops_trigger,
+};
+
+static struct snd_soc_dai_driver rt1015p_dai_driver = {
+	.name = "HiFi",
+	.playback = {
+		.stream_name	= "HiFi Playback",
+		.formats	= SNDRV_PCM_FMTBIT_S24,
+		.rates		= SNDRV_PCM_RATE_48000,
+		.channels_min	= 1,
+		.channels_max	= 2,
+	},
+	.ops    = &rt1015p_dai_ops,
+};
+
+static int rt1015p_platform_probe(struct platform_device *pdev)
+{
+	struct rt1015p_priv *rt1015p;
+
+	rt1015p = devm_kzalloc(&pdev->dev, sizeof(*rt1015p), GFP_KERNEL);
+	if (!rt1015p)
+		return -ENOMEM;
+
+	rt1015p->sdb = devm_gpiod_get_optional(&pdev->dev,
+				"sdb", GPIOD_OUT_LOW);
+	if (IS_ERR(rt1015p->sdb))
+		return PTR_ERR(rt1015p->sdb);
+
+	dev_set_drvdata(&pdev->dev, rt1015p);
+
+	return devm_snd_soc_register_component(&pdev->dev,
+			&rt1015p_component_driver,
+			&rt1015p_dai_driver, 1);
+}
+
+#ifdef CONFIG_OF
+static const struct of_device_id rt1015p_device_id[] = {
+	{ .compatible = "realtek,rt1015p" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, rt1015p_device_id);
+#endif
+
+static struct platform_driver rt1015p_platform_driver = {
+	.driver = {
+		.name = "rt1015p",
+		.of_match_table = of_match_ptr(rt1015p_device_id),
+	},
+	.probe = rt1015p_platform_probe,
+};
+module_platform_driver(rt1015p_platform_driver);
+
+MODULE_DESCRIPTION("ASoC RT1015P driver");
+MODULE_LICENSE("GPL v2");
-- 
2.28.0.526.ge36021eeef-goog

