Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 31431AA268
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 14:02:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388985AbfIEMBh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 08:01:37 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:35191 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388966AbfIEMBh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 08:01:37 -0400
Received: by mail-wm1-f67.google.com with SMTP id n10so2687751wmj.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 05:01:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ty6grr2CqBsGiLMZEwUvr96EbkiXeHRzoxeQk67yQIk=;
        b=HGlhMhBacIfIQFKMtkZsKhGnnBNTeG4ikwn1/HkS3Ajg2L6g78ZlyF8lhw6v6UbzqC
         RtheK/89P1pt+0pH3mLz0BKwndFqR0VToA+SyMftxNAqlO5g3ysFe6UUsS2JJDa7TT0U
         02CpO0DjOm++hE8RswmYQ3dodOc6Vswu1Lyc5dY3dZlIlH18GXxfWTT3KMzh9iQAWhlL
         WrS4sMc5IqyT4baQ7udu5pYuIYVQ4eEYuu9FqAY2fEYIlhrVJZtNVTp3tFb7ayqaXIa+
         OE9ydQzsc/jQsFWNkwiSwnL8ddqCQvM+elHpmcSgrwbFjqxrtrmpgu+FvSRv7h8YzKQW
         bP3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ty6grr2CqBsGiLMZEwUvr96EbkiXeHRzoxeQk67yQIk=;
        b=e7rDohe7JdcHNWIhLHMRPUptcVT5FxibTvyubtaJ5KKO47c3X6plFnvgRLJIT0vhmE
         fXS9WvErxvhc9m6w5dEobZGkFxZ2Zbf8lw17SVyhpJWHrdAiwwMgu0PjuV7NG/xC68a4
         9L+NkrNrHYDW1aYHcW46pSIZWBB2h9YZl16necjZ2ADQTJhALNh91/2WUkIvqdlT0R4z
         JuKHhZzBdBK8AZANxOVQYVnGp3Q57cYwTzNhxeFz+S15VdHx+GSK05cjntVllxTSJEZr
         usJ0K5vBdBeiLxDcOnrbYlQZ5P/5zrxsfj+hhHRpv5IdBL9PUQdkWr77DOQLy4RJtXoJ
         LsyA==
X-Gm-Message-State: APjAAAV5jgtEH0GCEMgbsHiBcI0s1onzpG5GCvCJNlF6ej18nO20DxtH
        G7k1IcrfR0ZYhrwv8+tTRY+VlQ==
X-Google-Smtp-Source: APXvYqyQ2uMB+QE10XeT5YDdU0Y7KVgM/kfMVR7Ux0OrquB6l45jM69QHFeZ4laRjHpp8Uaw1YQsJw==
X-Received: by 2002:a1c:1903:: with SMTP id 3mr2504214wmz.4.1567684895062;
        Thu, 05 Sep 2019 05:01:35 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id a18sm3436311wrh.25.2019.09.05.05.01.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2019 05:01:34 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>
Subject: [PATCH 7/8] ASoC: meson: axg-toddr: add sm1 support
Date:   Thu,  5 Sep 2019 14:01:19 +0200
Message-Id: <20190905120120.31752-8-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190905120120.31752-1-jbrunet@baylibre.com>
References: <20190905120120.31752-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On sm1, the maximum number TODDR inputs is extended to 16.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 sound/soc/meson/axg-toddr.c | 68 +++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/sound/soc/meson/axg-toddr.c b/sound/soc/meson/axg-toddr.c
index 2e9a2e5862ce..c8ea2145f576 100644
--- a/sound/soc/meson/axg-toddr.c
+++ b/sound/soc/meson/axg-toddr.c
@@ -25,6 +25,7 @@
 #define CTRL0_TODDR_LSB_POS_MASK	GENMASK(7, 3)
 #define CTRL0_TODDR_LSB_POS(x)		((x) << 3)
 #define CTRL1_TODDR_FORCE_FINISH	BIT(25)
+#define CTRL1_SEL_SHIFT			28
 
 #define TODDR_MSB_POS	31
 
@@ -221,6 +222,70 @@ static const struct axg_fifo_match_data g12a_toddr_match_data = {
 	.dai_drv	= &g12a_toddr_dai_drv
 };
 
+static const char * const sm1_toddr_sel_texts[] = {
+	"IN 0", "IN 1", "IN 2",  "IN 3",  "IN 4",  "IN 5",  "IN 6",  "IN 7",
+	"IN 8", "IN 9", "IN 10", "IN 11", "IN 12", "IN 13", "IN 14", "IN 15"
+};
+
+static SOC_ENUM_SINGLE_DECL(sm1_toddr_sel_enum, FIFO_CTRL1, CTRL1_SEL_SHIFT,
+			    sm1_toddr_sel_texts);
+
+static const struct snd_kcontrol_new sm1_toddr_in_mux =
+	SOC_DAPM_ENUM("Input Source", sm1_toddr_sel_enum);
+
+static const struct snd_soc_dapm_widget sm1_toddr_dapm_widgets[] = {
+	SND_SOC_DAPM_MUX("SRC SEL", SND_SOC_NOPM, 0, 0, &sm1_toddr_in_mux),
+	SND_SOC_DAPM_AIF_IN("IN 0",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 1",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 2",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 3",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 4",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 5",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 6",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 7",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 8",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 9",  NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 10", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 11", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 12", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 13", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 14", NULL, 0, SND_SOC_NOPM, 0, 0),
+	SND_SOC_DAPM_AIF_IN("IN 15", NULL, 0, SND_SOC_NOPM, 0, 0),
+};
+
+static const struct snd_soc_dapm_route sm1_toddr_dapm_routes[] = {
+	{ "Capture", NULL, "SRC SEL" },
+	{ "SRC SEL", "IN 0",  "IN 0" },
+	{ "SRC SEL", "IN 1",  "IN 1" },
+	{ "SRC SEL", "IN 2",  "IN 2" },
+	{ "SRC SEL", "IN 3",  "IN 3" },
+	{ "SRC SEL", "IN 4",  "IN 4" },
+	{ "SRC SEL", "IN 5",  "IN 5" },
+	{ "SRC SEL", "IN 6",  "IN 6" },
+	{ "SRC SEL", "IN 7",  "IN 7" },
+	{ "SRC SEL", "IN 8",  "IN 8" },
+	{ "SRC SEL", "IN 9",  "IN 9" },
+	{ "SRC SEL", "IN 10", "IN 10" },
+	{ "SRC SEL", "IN 11", "IN 11" },
+	{ "SRC SEL", "IN 12", "IN 12" },
+	{ "SRC SEL", "IN 13", "IN 13" },
+	{ "SRC SEL", "IN 14", "IN 14" },
+	{ "SRC SEL", "IN 15", "IN 15" },
+};
+
+static const struct snd_soc_component_driver sm1_toddr_component_drv = {
+	.dapm_widgets		= sm1_toddr_dapm_widgets,
+	.num_dapm_widgets	= ARRAY_SIZE(sm1_toddr_dapm_widgets),
+	.dapm_routes		= sm1_toddr_dapm_routes,
+	.num_dapm_routes	= ARRAY_SIZE(sm1_toddr_dapm_routes),
+	.ops			= &g12a_fifo_pcm_ops
+};
+
+static const struct axg_fifo_match_data sm1_toddr_match_data = {
+	.component_drv	= &sm1_toddr_component_drv,
+	.dai_drv	= &g12a_toddr_dai_drv
+};
+
 static const struct of_device_id axg_toddr_of_match[] = {
 	{
 		.compatible = "amlogic,axg-toddr",
@@ -228,6 +293,9 @@ static const struct of_device_id axg_toddr_of_match[] = {
 	}, {
 		.compatible = "amlogic,g12a-toddr",
 		.data = &g12a_toddr_match_data,
+	}, {
+		.compatible = "amlogic,sm1-toddr",
+		.data = &sm1_toddr_match_data,
 	}, {}
 };
 MODULE_DEVICE_TABLE(of, axg_toddr_of_match);
-- 
2.21.0

