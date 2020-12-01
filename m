Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABED22CA3CF
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:28:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391096AbgLAN10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:27:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387597AbgLAN1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:27:25 -0500
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com [IPv6:2607:f8b0:4864:20::44a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8DBBC0617A6
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:26:39 -0800 (PST)
Received: by mail-pf1-x44a.google.com with SMTP id l11so939694pfc.16
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=Y0+xH3UGiixm7l2bnHVG2So+xIAjdFpqflSxFA1Eik0=;
        b=b8SIL1ahSDDGUQ+5ZihBBJeGgWjEpbPbg2yISAfdYMgJPH3MlaXrLwwL/dLSRncgu1
         r6F+B+ECCIzwnUvwa2WBdzeTMNgyoNQKyDiII5/O8qh89JCrE8nM1dAn7WvznQjAdLvH
         QheAb4gUwhEJyWpkbPU8zdUzfm9BhLijxDDB2EbJL9gDs21ip1tM5BsGM8EAPJlUNnuN
         pz36CUbHf6EoZ+Nyhfk/7Ye8RQgCQ11D88Qo1RPCEAsNy0B42IAFCTXlothueNaMAWmG
         ykprODVCJ/rKfKmKdr7qA0jxtv2Ef64kWxlLHi+lIFdjNOs5/3J16p8InkZwgrAkxq6I
         CH6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Y0+xH3UGiixm7l2bnHVG2So+xIAjdFpqflSxFA1Eik0=;
        b=npLm7YZ0badIDkocRTZmFVVDV2Qa3GZQRL7ufbXp5Eeo9dovZNXNqOEV8UpKP0+60X
         r8Vwh+yc5unqHO9Cq+pN+iod6wmbdIcZQUntD9KxAVq6VvVsJqQZNxZ3qFzZSikAyZjr
         AoFF1mGdMWgAK7HNrkdZeM0XSKg+RcsGDwMOPiNNPeErIJUKhjQT1+MJMy/WEy3z/IMr
         QnEM/y9sZeLsIgweI2VKCaPTWziqz/D9K/3kdT5wAUnt9QigH8sGegSc7ZTBqNBXp1RB
         Y/G1bw5oc86CANbdtwk700wyUHxuubzjZijRv/XRZ9a67icoaDEyThfSc9msygfgBjN+
         eBbA==
X-Gm-Message-State: AOAM531WvIf1766Q8cPC/lXl3EA2+37u4pf4DNBO35HOjBOItjqUU+G/
        dr9zwo1lw6fQSHOXejL4wnXcGm9QyY1G
X-Google-Smtp-Source: ABdhPJxtqbPJs83UWd/SREUWwdihnnM1qCVhKWtIhJAJTyQJf5ajt+m6NRpMyEfnIXMm4P2hXs2Nv0n/cyxm
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:aa7:8a90:0:b029:19b:1166:2a22 with SMTP id
 a16-20020aa78a900000b029019b11662a22mr2400107pfc.31.1606829199180; Tue, 01
 Dec 2020 05:26:39 -0800 (PST)
Date:   Tue,  1 Dec 2020 21:26:11 +0800
In-Reply-To: <20201201132614.1691352-1-tzungbi@google.com>
Message-Id: <20201201132614.1691352-4-tzungbi@google.com>
Mime-Version: 1.0
References: <20201201132614.1691352-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [RESEND PATCH 3/6] ASoC: mediatek: mt8192: move rt1015_rt5682
 specific data
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Moves rt1015_rt5682 specific data right before the snd_soc_card
definition for neat purpose.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../mt8192/mt8192-mt6359-rt1015-rt5682.c      | 50 +++++++++----------
 1 file changed, 25 insertions(+), 25 deletions(-)

diff --git a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
index e841fd32e8cc..0d2cc6800f08 100644
--- a/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
+++ b/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c
@@ -33,31 +33,6 @@
 
 static struct snd_soc_jack headset_jack;
 
-static const struct snd_soc_dapm_widget
-mt8192_mt6359_rt1015_rt5682_widgets[] = {
-	SND_SOC_DAPM_SPK("Left Spk", NULL),
-	SND_SOC_DAPM_SPK("Right Spk", NULL),
-	SND_SOC_DAPM_HP("Headphone Jack", NULL),
-	SND_SOC_DAPM_MIC("Headset Mic", NULL),
-};
-
-static const struct snd_soc_dapm_route mt8192_mt6359_rt1015_rt5682_routes[] = {
-	/* speaker */
-	{ "Left Spk", NULL, "Left SPO" },
-	{ "Right Spk", NULL, "Right SPO" },
-	/* headset */
-	{ "Headphone Jack", NULL, "HPOL" },
-	{ "Headphone Jack", NULL, "HPOR" },
-	{ "IN1P", NULL, "Headset Mic" },
-};
-
-static const struct snd_kcontrol_new mt8192_mt6359_rt1015_rt5682_controls[] = {
-	SOC_DAPM_PIN_SWITCH("Left Spk"),
-	SOC_DAPM_PIN_SWITCH("Right Spk"),
-	SOC_DAPM_PIN_SWITCH("Headphone Jack"),
-	SOC_DAPM_PIN_SWITCH("Headset Mic"),
-};
-
 static int mt8192_rt1015_i2s_hw_params(struct snd_pcm_substream *substream,
 				       struct snd_pcm_hw_params *params)
 {
@@ -971,6 +946,31 @@ static struct snd_soc_dai_link mt8192_mt6359_dai_links[] = {
 	},
 };
 
+static const struct snd_soc_dapm_widget
+mt8192_mt6359_rt1015_rt5682_widgets[] = {
+	SND_SOC_DAPM_SPK("Left Spk", NULL),
+	SND_SOC_DAPM_SPK("Right Spk", NULL),
+	SND_SOC_DAPM_HP("Headphone Jack", NULL),
+	SND_SOC_DAPM_MIC("Headset Mic", NULL),
+};
+
+static const struct snd_soc_dapm_route mt8192_mt6359_rt1015_rt5682_routes[] = {
+	/* speaker */
+	{ "Left Spk", NULL, "Left SPO" },
+	{ "Right Spk", NULL, "Right SPO" },
+	/* headset */
+	{ "Headphone Jack", NULL, "HPOL" },
+	{ "Headphone Jack", NULL, "HPOR" },
+	{ "IN1P", NULL, "Headset Mic" },
+};
+
+static const struct snd_kcontrol_new mt8192_mt6359_rt1015_rt5682_controls[] = {
+	SOC_DAPM_PIN_SWITCH("Left Spk"),
+	SOC_DAPM_PIN_SWITCH("Right Spk"),
+	SOC_DAPM_PIN_SWITCH("Headphone Jack"),
+	SOC_DAPM_PIN_SWITCH("Headset Mic"),
+};
+
 static struct snd_soc_codec_conf rt1015_amp_conf[] = {
 	{
 		.dlc = COMP_CODEC_CONF(RT1015_DEV0_NAME),
-- 
2.29.2.454.gaff20da3a2-goog

