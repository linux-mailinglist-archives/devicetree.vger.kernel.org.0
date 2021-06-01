Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0A92397272
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 13:34:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233828AbhFALga (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 07:36:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233827AbhFALg3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 07:36:29 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1C77C06138B
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 04:34:47 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id ce15so1915268ejb.4
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 04:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+X+Upp1KkOzzISSwBmRgZ50VCwMFCQhKqjvuG7pRCPY=;
        b=HrOxvbx82HNbXikP4Ae4xRkXgSHTQEPOQ23k78nNZgUyk0X/QGeGCJkBOjcbGCyDdH
         y5pQQTnPn0PSaSXCizEXCXiJgs2JAIRih4dMoXwvqauZGa+cCY2Wh9ypN9Hd8g3NKzLW
         WnQML19OQrtGCmT2AUZacxhMuXryc3PTzvxlpvIp/lNkWkyO2Tk+91YFHoVZVanC2zM7
         HcSFaBPgRMGGdsbVRo56SxhmJ9braOAn41LP4lcEd/1j8l3jOjSAPQ9RzPdwTiJpwF4z
         sngqeePEQX5by98+6JEq0Wa6QHwWTLHwUrr1tIFynSMIJ53nbLG9uRK/6jUq0w1Drx24
         gqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+X+Upp1KkOzzISSwBmRgZ50VCwMFCQhKqjvuG7pRCPY=;
        b=YUuUAk2dMIibObOP1J3ZdIwGwUBShOAx1c7CqgvgbtE3GSRfVa8YoEjsCC+M+IWzxL
         USFhyeoe0A72whmMI78Cqdn57jm/RXviMwvl4k1/tNybYatlyOL6L54OIGRpHa4Z6Aze
         bEP1W+DONj5xp2NZAIAF+LV26YenKA7pBBaP39VWpV3zYzzTYbk4JEzsel9tsqchIPCO
         0eJxUgrce69lCiGEZdOMK5Cem8hnnY+fC2ZERGiMU8k3EbvbnADpyrqDouYiTnR0cmiP
         NX6usUhT0K6UlaKllNEEZIg5Tfpj7cMOgfEDjRmOKhAiEusujlnl3ObVg4Tt9zfukJf6
         l6Aw==
X-Gm-Message-State: AOAM5323GZCc0CRJas/ntDzilL4HPuy2v5RLKDg3IBeamcKcuoVh+R5y
        79FvKiVWxzNWuuuTd1zvkQyCIg==
X-Google-Smtp-Source: ABdhPJy52zG4Okgl37Jf0/WtQadIx4QOYycIEhLToM9FNZj1hY6ZfpiF8N8BXw4OGQbquLIF9fE/SA==
X-Received: by 2002:a17:906:c141:: with SMTP id dp1mr7969982ejc.87.1622547286163;
        Tue, 01 Jun 2021 04:34:46 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id f10sm4729487edx.60.2021.06.01.04.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 04:34:45 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 9/9] ASoC: codecs: wcd938x: add audio routing
Date:   Tue,  1 Jun 2021 12:31:58 +0100
Message-Id: <20210601113158.16085-10-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210601113158.16085-1-srinivas.kandagatla@linaro.org>
References: <20210601113158.16085-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds audio routing for both playback and capture.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/wcd938x.c | 94 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
index d251ae35bd81..d659de0e3274 100644
--- a/sound/soc/codecs/wcd938x.c
+++ b/sound/soc/codecs/wcd938x.c
@@ -3123,6 +3123,98 @@ static const struct snd_soc_dapm_widget wcd938x_dapm_widgets[] = {
 	SND_SOC_DAPM_OUTPUT("AUX"),
 	SND_SOC_DAPM_OUTPUT("HPHL"),
 	SND_SOC_DAPM_OUTPUT("HPHR"),
+
+};
+
+static const struct snd_soc_dapm_route wcd938x_audio_map[] = {
+	{"ADC1_OUTPUT", NULL, "ADC1_MIXER"},
+	{"ADC1_MIXER", "Switch", "ADC1 REQ"},
+	{"ADC1 REQ", NULL, "ADC1"},
+	{"ADC1", NULL, "AMIC1"},
+
+	{"ADC2_OUTPUT", NULL, "ADC2_MIXER"},
+	{"ADC2_MIXER", "Switch", "ADC2 REQ"},
+	{"ADC2 REQ", NULL, "ADC2"},
+	{"ADC2", NULL, "HDR12 MUX"},
+	{"HDR12 MUX", "NO_HDR12", "ADC2 MUX"},
+	{"HDR12 MUX", "HDR12", "AMIC1"},
+	{"ADC2 MUX", "INP3", "AMIC3"},
+	{"ADC2 MUX", "INP2", "AMIC2"},
+
+	{"ADC3_OUTPUT", NULL, "ADC3_MIXER"},
+	{"ADC3_MIXER", "Switch", "ADC3 REQ"},
+	{"ADC3 REQ", NULL, "ADC3"},
+	{"ADC3", NULL, "HDR34 MUX"},
+	{"HDR34 MUX", "NO_HDR34", "ADC3 MUX"},
+	{"HDR34 MUX", "HDR34", "AMIC5"},
+	{"ADC3 MUX", "INP4", "AMIC4"},
+	{"ADC3 MUX", "INP6", "AMIC6"},
+
+	{"ADC4_OUTPUT", NULL, "ADC4_MIXER"},
+	{"ADC4_MIXER", "Switch", "ADC4 REQ"},
+	{"ADC4 REQ", NULL, "ADC4"},
+	{"ADC4", NULL, "ADC4 MUX"},
+	{"ADC4 MUX", "INP5", "AMIC5"},
+	{"ADC4 MUX", "INP7", "AMIC7"},
+
+	{"DMIC1_OUTPUT", NULL, "DMIC1_MIXER"},
+	{"DMIC1_MIXER", "Switch", "DMIC1"},
+
+	{"DMIC2_OUTPUT", NULL, "DMIC2_MIXER"},
+	{"DMIC2_MIXER", "Switch", "DMIC2"},
+
+	{"DMIC3_OUTPUT", NULL, "DMIC3_MIXER"},
+	{"DMIC3_MIXER", "Switch", "DMIC3"},
+
+	{"DMIC4_OUTPUT", NULL, "DMIC4_MIXER"},
+	{"DMIC4_MIXER", "Switch", "DMIC4"},
+
+	{"DMIC5_OUTPUT", NULL, "DMIC5_MIXER"},
+	{"DMIC5_MIXER", "Switch", "DMIC5"},
+
+	{"DMIC6_OUTPUT", NULL, "DMIC6_MIXER"},
+	{"DMIC6_MIXER", "Switch", "DMIC6"},
+
+	{"DMIC7_OUTPUT", NULL, "DMIC7_MIXER"},
+	{"DMIC7_MIXER", "Switch", "DMIC7"},
+
+	{"DMIC8_OUTPUT", NULL, "DMIC8_MIXER"},
+	{"DMIC8_MIXER", "Switch", "DMIC8"},
+
+	{"IN1_HPHL", NULL, "VDD_BUCK"},
+	{"IN1_HPHL", NULL, "CLS_H_PORT"},
+
+	{"RX1", NULL, "IN1_HPHL"},
+	{"RX1", NULL, "RXCLK"},
+	{"RDAC1", NULL, "RX1"},
+	{"HPHL_RDAC", "Switch", "RDAC1"},
+	{"HPHL PGA", NULL, "HPHL_RDAC"},
+	{"HPHL", NULL, "HPHL PGA"},
+
+	{"IN2_HPHR", NULL, "VDD_BUCK"},
+	{"IN2_HPHR", NULL, "CLS_H_PORT"},
+	{"RX2", NULL, "IN2_HPHR"},
+	{"RDAC2", NULL, "RX2"},
+	{"RX2", NULL, "RXCLK"},
+	{"HPHR_RDAC", "Switch", "RDAC2"},
+	{"HPHR PGA", NULL, "HPHR_RDAC"},
+	{"HPHR", NULL, "HPHR PGA"},
+
+	{"IN3_AUX", NULL, "VDD_BUCK"},
+	{"IN3_AUX", NULL, "CLS_H_PORT"},
+	{"RX3", NULL, "IN3_AUX"},
+	{"RDAC4", NULL, "RX3"},
+	{"RX3", NULL, "RXCLK"},
+	{"AUX_RDAC", "Switch", "RDAC4"},
+	{"AUX PGA", NULL, "AUX_RDAC"},
+	{"AUX", NULL, "AUX PGA"},
+
+	{"RDAC3_MUX", "RX3", "RX3"},
+	{"RDAC3_MUX", "RX1", "RX1"},
+	{"RDAC3", NULL, "RDAC3_MUX"},
+	{"EAR_RDAC", "Switch", "RDAC3"},
+	{"EAR PGA", NULL, "EAR_RDAC"},
+	{"EAR", NULL, "EAR PGA"},
 };
 
 static int wcd938x_get_micb_vout_ctl_val(u32 micb_mv)
@@ -3290,6 +3382,8 @@ static const struct snd_soc_component_driver soc_codec_dev_wcd938x = {
 	.num_controls = ARRAY_SIZE(wcd938x_snd_controls),
 	.dapm_widgets = wcd938x_dapm_widgets,
 	.num_dapm_widgets = ARRAY_SIZE(wcd938x_dapm_widgets),
+	.dapm_routes = wcd938x_audio_map,
+	.num_dapm_routes = ARRAY_SIZE(wcd938x_audio_map),
 };
 
 static void wcd938x_dt_parse_micbias_info(struct device *dev, struct wcd938x_priv *wcd)
-- 
2.21.0

