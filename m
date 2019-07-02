Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85E155CB17
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 10:11:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727986AbfGBILQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 04:11:16 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:42159 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728845AbfGBIKk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 04:10:40 -0400
Received: by mail-wr1-f68.google.com with SMTP id x17so16626909wrl.9
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 01:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6w/GuJg3Wv5sdgYml+OSsyjWJOST160LQSj1OPE2d+U=;
        b=V5ojfh/nIYxJ8br7yRRPldpAp+B+EEcvC5RpvEEUsxFxtMRQL+m5/3PoVy8pC1dBhS
         cezE9aLEWk//PMgpalxk5Tq84ctonXyha97x/ex/ipSXeiLhIFkjdElyc5w6+CePs7yw
         J9hnIZYTGZVIaGfzle3uLwVSwbHBGBzJD8soDv3NsipTVsU7zegH/x2JfHsSQo6aAFt0
         /s2QxSK8m9fpJHZz8k8eNQNmpFV9LoOJUQ148B8Gp6KBmeYpH4y58FnnoSwDEPC/8q2o
         xd65LibUuNxrvpZ3lkTYJ0OfmMso2iJzvAh2fmB2MqHwC77+nLf7HLul3Ctlo8SWYqNV
         bN/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6w/GuJg3Wv5sdgYml+OSsyjWJOST160LQSj1OPE2d+U=;
        b=XKgcl/ErHaGFuTqvvnYtEk0hwwLBLZ91mDWnXLPXdNLqTvPaAatrFhT6hOk6LbL8bR
         GnHrqnsRfAyGnYUaWXuH7pEnzZ1S9tTWyjwdXyQurg/YHtk+oZVsIyxI8xtMqLZimxwu
         bLmyY95W562eyowNPGP9vRit/YSRvuzX9o0MLU49+2GtSodmvdHMmmzH1Y+6iq0RIsVW
         9t92Y+JiUoS87U5PCm53l769OGS+oouPE80WcUiHNm1eGK5jXsqALRlnoeIbvLt4BmIg
         AFkl9Pd7L+0c1Ph2ppCqM4ySaA0ZB4RO6QhN2N2RzGIlFm/36dU2v9A2Xjb4r9z1aTAs
         t1SQ==
X-Gm-Message-State: APjAAAWfyFM9LPgb92ydPV1f0hfHRFMzbTMS2JCZTcgWU1W88UImFzNL
        OXWh9RMgTMa16NPflV5G9JRvjw==
X-Google-Smtp-Source: APXvYqxFaLqssOb/xWiJj7lcOf1iZ3aD71J1VAfk54kHfhTwhNH/k3b6ZOZEFW4FHrUMw5DDXIuk3w==
X-Received: by 2002:a5d:42ca:: with SMTP id t10mr3168188wrr.202.1562055037870;
        Tue, 02 Jul 2019 01:10:37 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id e4sm1608859wme.16.2019.07.02.01.10.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 02 Jul 2019 01:10:37 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh+dt@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org,
        srini@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 6/6] ASoC: wcd934x: add audio routings
Date:   Tue,  2 Jul 2019 09:09:20 +0100
Message-Id: <20190702080920.22623-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds audio routing for both playback and capture.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/wcd934x.c | 327 +++++++++++++++++++++++++++++++++++++
 1 file changed, 327 insertions(+)

diff --git a/sound/soc/codecs/wcd934x.c b/sound/soc/codecs/wcd934x.c
index 285e816b5f8c..0e47a63c1300 100644
--- a/sound/soc/codecs/wcd934x.c
+++ b/sound/soc/codecs/wcd934x.c
@@ -158,6 +158,161 @@
 	} \
 }
 
+#define WCD934X_INTERPOLATOR_PATH(id)			\
+	{"RX INT" #id "_1 MIX1 INP0", "RX0", "CDC_IF RX0 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "RX1", "CDC_IF RX1 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "RX2", "CDC_IF RX2 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "RX3", "CDC_IF RX3 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "RX4", "CDC_IF RX4 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "RX5", "CDC_IF RX5 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "RX6", "CDC_IF RX6 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "RX7", "CDC_IF RX7 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "IIR0", "IIR0"},	\
+	{"RX INT" #id "_1 MIX1 INP0", "IIR1", "IIR1"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "RX0", "CDC_IF RX0 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "RX1", "CDC_IF RX1 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "RX2", "CDC_IF RX2 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "RX3", "CDC_IF RX3 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "RX4", "CDC_IF RX4 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "RX5", "CDC_IF RX5 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "RX6", "CDC_IF RX6 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "RX7", "CDC_IF RX7 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "IIR0", "IIR0"},	\
+	{"RX INT" #id "_1 MIX1 INP1", "IIR1", "IIR1"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "RX0", "CDC_IF RX0 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "RX1", "CDC_IF RX1 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "RX2", "CDC_IF RX2 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "RX3", "CDC_IF RX3 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "RX4", "CDC_IF RX4 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "RX5", "CDC_IF RX5 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "RX6", "CDC_IF RX6 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "RX7", "CDC_IF RX7 MUX"},	\
+	{"RX INT" #id "_1 MIX1 INP2", "IIR0", "IIR0"},		\
+	{"RX INT" #id "_1 MIX1 INP2", "IIR1", "IIR1"},		\
+	{"RX INT" #id "_1 MIX1", NULL, "RX INT" #id "_1 MIX1 INP0"}, \
+	{"RX INT" #id "_1 MIX1", NULL, "RX INT" #id "_1 MIX1 INP1"}, \
+	{"RX INT" #id "_1 MIX1", NULL, "RX INT" #id "_1 MIX1 INP2"}, \
+	{"RX INT" #id "_2 MUX", "RX0", "CDC_IF RX0 MUX"},	\
+	{"RX INT" #id "_2 MUX", "RX1", "CDC_IF RX1 MUX"},	\
+	{"RX INT" #id "_2 MUX", "RX2", "CDC_IF RX2 MUX"},	\
+	{"RX INT" #id "_2 MUX", "RX3", "CDC_IF RX3 MUX"},	\
+	{"RX INT" #id "_2 MUX", "RX4", "CDC_IF RX4 MUX"},	\
+	{"RX INT" #id "_2 MUX", "RX5", "CDC_IF RX5 MUX"},	\
+	{"RX INT" #id "_2 MUX", "RX6", "CDC_IF RX6 MUX"},	\
+	{"RX INT" #id "_2 MUX", "RX7", "CDC_IF RX7 MUX"},	\
+	{"RX INT" #id "_2 INTERP", NULL, "RX INT" #id "_2 MUX"},	\
+	{"RX INT" #id " SEC MIX", NULL, "RX INT" #id "_2 INTERP"},	\
+	{"RX INT" #id "_1 INTERP", NULL, "RX INT" #id "_1 MIX1"},	\
+	{"RX INT" #id " SEC MIX", NULL, "RX INT" #id "_1 INTERP"},	\
+	{"RX INT" #id " MIX2", NULL, "RX INT" #id " SEC MIX"},	\
+	{"RX INT" #id " MIX2", NULL, "RX INT" #id " MIX2 INP"}
+
+#define WCD934X_SLIM_RX_AIF_PATH(id)	\
+	{"SLIM RX" #id " MUX", "AIF1_PB", "AIF1 PB"},	\
+	{"SLIM RX" #id " MUX", "AIF2_PB", "AIF2 PB"},	\
+	{"SLIM RX" #id " MUX", "AIF3_PB", "AIF3 PB"},	\
+	{"SLIM RX" #id " MUX", "AIF4_PB", "AIF4 PB"},	\
+	{"SLIM RX" #id, NULL, "SLIM RX" #id " MUX"},	\
+	{"CDC_IF RX" #id " MUX", "SLIM RX" #id, "SLIM RX" #id}
+
+#define WCD934X_ADC_MUX(id) \
+	{"ADC MUX" #id, "DMIC", "DMIC MUX" #id },	\
+	{"ADC MUX" #id, "AMIC", "AMIC MUX" #id },	\
+	{"DMIC MUX" #id, "DMIC0", "DMIC0"},		\
+	{"DMIC MUX" #id, "DMIC1", "DMIC1"},		\
+	{"DMIC MUX" #id, "DMIC2", "DMIC2"},		\
+	{"DMIC MUX" #id, "DMIC3", "DMIC3"},		\
+	{"DMIC MUX" #id, "DMIC4", "DMIC4"},		\
+	{"DMIC MUX" #id, "DMIC5", "DMIC5"},		\
+	{"AMIC MUX" #id, "ADC1", "ADC1"},		\
+	{"AMIC MUX" #id, "ADC2", "ADC2"},		\
+	{"AMIC MUX" #id, "ADC3", "ADC3"},		\
+	{"AMIC MUX" #id, "ADC4", "ADC4"}
+
+	/*
+	 * SRC0, SRC1 inputs to Sidetone RX Mixer
+	 * on RX0, RX1, RX2, RX3, RX4 and RX7 chains
+	 */
+#define WCD934X_IIR_INP_MUX(id) \
+	{"IIR" #id, NULL, "IIR" #id " INP0 MUX"},	\
+	{"IIR" #id " INP0 MUX", "DEC0", "ADC MUX0"},	\
+	{"IIR" #id " INP0 MUX", "DEC1", "ADC MUX1"},	\
+	{"IIR" #id " INP0 MUX", "DEC2", "ADC MUX2"},	\
+	{"IIR" #id " INP0 MUX", "DEC3", "ADC MUX3"},	\
+	{"IIR" #id " INP0 MUX", "DEC4", "ADC MUX4"},	\
+	{"IIR" #id " INP0 MUX", "DEC5", "ADC MUX5"},	\
+	{"IIR" #id " INP0 MUX", "DEC6", "ADC MUX6"},	\
+	{"IIR" #id " INP0 MUX", "DEC7", "ADC MUX7"},	\
+	{"IIR" #id " INP0 MUX", "DEC8", "ADC MUX8"},	\
+	{"IIR" #id " INP0 MUX", "RX0", "CDC_IF RX0 MUX"},	\
+	{"IIR" #id " INP0 MUX", "RX1", "CDC_IF RX1 MUX"},	\
+	{"IIR" #id " INP0 MUX", "RX2", "CDC_IF RX2 MUX"},	\
+	{"IIR" #id " INP0 MUX", "RX3", "CDC_IF RX3 MUX"},	\
+	{"IIR" #id " INP0 MUX", "RX4", "CDC_IF RX4 MUX"},	\
+	{"IIR" #id " INP0 MUX", "RX5", "CDC_IF RX5 MUX"},	\
+	{"IIR" #id " INP0 MUX", "RX6", "CDC_IF RX6 MUX"},	\
+	{"IIR" #id " INP0 MUX", "RX7", "CDC_IF RX7 MUX"},	\
+	{"IIR" #id, NULL, "IIR" #id " INP1 MUX"},	\
+	{"IIR" #id " INP1 MUX", "DEC0", "ADC MUX0"},	\
+	{"IIR" #id " INP1 MUX", "DEC1", "ADC MUX1"},	\
+	{"IIR" #id " INP1 MUX", "DEC2", "ADC MUX2"},	\
+	{"IIR" #id " INP1 MUX", "DEC3", "ADC MUX3"},	\
+	{"IIR" #id " INP1 MUX", "DEC4", "ADC MUX4"},	\
+	{"IIR" #id " INP1 MUX", "DEC5", "ADC MUX5"},	\
+	{"IIR" #id " INP1 MUX", "DEC6", "ADC MUX6"},	\
+	{"IIR" #id " INP1 MUX", "DEC7", "ADC MUX7"},	\
+	{"IIR" #id " INP1 MUX", "DEC8", "ADC MUX8"},	\
+	{"IIR" #id " INP1 MUX", "RX0", "CDC_IF RX0 MUX"},	\
+	{"IIR" #id " INP1 MUX", "RX1", "CDC_IF RX1 MUX"},	\
+	{"IIR" #id " INP1 MUX", "RX2", "CDC_IF RX2 MUX"},	\
+	{"IIR" #id " INP1 MUX", "RX3", "CDC_IF RX3 MUX"},	\
+	{"IIR" #id " INP1 MUX", "RX4", "CDC_IF RX4 MUX"},	\
+	{"IIR" #id " INP1 MUX", "RX5", "CDC_IF RX5 MUX"},	\
+	{"IIR" #id " INP1 MUX", "RX6", "CDC_IF RX6 MUX"},	\
+	{"IIR" #id " INP1 MUX", "RX7", "CDC_IF RX7 MUX"},	\
+	{"IIR" #id, NULL, "IIR" #id " INP2 MUX"},	\
+	{"IIR" #id " INP2 MUX", "DEC0", "ADC MUX0"},	\
+	{"IIR" #id " INP2 MUX", "DEC1", "ADC MUX1"},	\
+	{"IIR" #id " INP2 MUX", "DEC2", "ADC MUX2"},	\
+	{"IIR" #id " INP2 MUX", "DEC3", "ADC MUX3"},	\
+	{"IIR" #id " INP2 MUX", "DEC4", "ADC MUX4"},	\
+	{"IIR" #id " INP2 MUX", "DEC5", "ADC MUX5"},	\
+	{"IIR" #id " INP2 MUX", "DEC6", "ADC MUX6"},	\
+	{"IIR" #id " INP2 MUX", "DEC7", "ADC MUX7"},	\
+	{"IIR" #id " INP2 MUX", "DEC8", "ADC MUX8"},	\
+	{"IIR" #id " INP2 MUX", "RX0", "CDC_IF RX0 MUX"},	\
+	{"IIR" #id " INP2 MUX", "RX1", "CDC_IF RX1 MUX"},	\
+	{"IIR" #id " INP2 MUX", "RX2", "CDC_IF RX2 MUX"},	\
+	{"IIR" #id " INP2 MUX", "RX3", "CDC_IF RX3 MUX"},	\
+	{"IIR" #id " INP2 MUX", "RX4", "CDC_IF RX4 MUX"},	\
+	{"IIR" #id " INP2 MUX", "RX5", "CDC_IF RX5 MUX"},	\
+	{"IIR" #id " INP2 MUX", "RX6", "CDC_IF RX6 MUX"},	\
+	{"IIR" #id " INP2 MUX", "RX7", "CDC_IF RX7 MUX"},	\
+	{"IIR" #id, NULL, "IIR" #id " INP3 MUX"},	\
+	{"IIR" #id " INP3 MUX", "DEC0", "ADC MUX0"},	\
+	{"IIR" #id " INP3 MUX", "DEC1", "ADC MUX1"},	\
+	{"IIR" #id " INP3 MUX", "DEC2", "ADC MUX2"},	\
+	{"IIR" #id " INP3 MUX", "DEC3", "ADC MUX3"},	\
+	{"IIR" #id " INP3 MUX", "DEC4", "ADC MUX4"},	\
+	{"IIR" #id " INP3 MUX", "DEC5", "ADC MUX5"},	\
+	{"IIR" #id " INP3 MUX", "DEC6", "ADC MUX6"},	\
+	{"IIR" #id " INP3 MUX", "DEC7", "ADC MUX7"},	\
+	{"IIR" #id " INP3 MUX", "DEC8", "ADC MUX8"},	\
+	{"IIR" #id " INP3 MUX", "RX0", "CDC_IF RX0 MUX"},	\
+	{"IIR" #id " INP3 MUX", "RX1", "CDC_IF RX1 MUX"},	\
+	{"IIR" #id " INP3 MUX", "RX2", "CDC_IF RX2 MUX"},	\
+	{"IIR" #id " INP3 MUX", "RX3", "CDC_IF RX3 MUX"},	\
+	{"IIR" #id " INP3 MUX", "RX4", "CDC_IF RX4 MUX"},	\
+	{"IIR" #id " INP3 MUX", "RX5", "CDC_IF RX5 MUX"},	\
+	{"IIR" #id " INP3 MUX", "RX6", "CDC_IF RX6 MUX"},	\
+	{"IIR" #id " INP3 MUX", "RX7", "CDC_IF RX7 MUX"}
+
+#define WCD934X_SLIM_TX_AIF_PATH(id)	\
+	{"AIF1_CAP Mixer", "SLIM TX" #id, "SLIM TX" #id },	\
+	{"AIF2_CAP Mixer", "SLIM TX" #id, "SLIM TX" #id },	\
+	{"AIF3_CAP Mixer", "SLIM TX" #id, "SLIM TX" #id },	\
+	{"SLIM TX" #id, NULL, "CDC_IF TX" #id " MUX"}
+
 enum {
 	MIC_BIAS_1 = 1,
 	MIC_BIAS_2,
@@ -5280,6 +5435,176 @@ static const struct snd_soc_dapm_widget wcd934x_dapm_widgets[] = {
 			   ARRAY_SIZE(aif3_slim_cap_mixer)),
 };
 
+static const struct snd_soc_dapm_route wcd934x_audio_map[] = {
+	/* RX0-RX7 */
+	WCD934X_SLIM_RX_AIF_PATH(0),
+	WCD934X_SLIM_RX_AIF_PATH(1),
+	WCD934X_SLIM_RX_AIF_PATH(2),
+	WCD934X_SLIM_RX_AIF_PATH(3),
+	WCD934X_SLIM_RX_AIF_PATH(4),
+	WCD934X_SLIM_RX_AIF_PATH(5),
+	WCD934X_SLIM_RX_AIF_PATH(6),
+	WCD934X_SLIM_RX_AIF_PATH(7),
+
+	/* 7 Interpolators */
+	WCD934X_INTERPOLATOR_PATH(0),
+	WCD934X_INTERPOLATOR_PATH(1),
+	WCD934X_INTERPOLATOR_PATH(2),
+	WCD934X_INTERPOLATOR_PATH(3),
+	WCD934X_INTERPOLATOR_PATH(4),
+	WCD934X_INTERPOLATOR_PATH(7),
+	WCD934X_INTERPOLATOR_PATH(8),
+
+	/* RX0 Ear out */
+	{"RX INT0_1 INTERP", NULL, "RX INT0_1 MIX1"},
+	{"RX INT0 SEC MIX", NULL, "RX INT0_1 INTERP"},
+	{"RX INT0 MIX2 INP", "SRC0", "SRC0"},
+	{"RX INT0 MIX2 INP", "SRC1", "SRC1"},
+	{"RX INT0 MIX2", NULL, "RX INT0 SEC MIX"},
+	{"RX INT0 MIX2", NULL, "RX INT0 MIX2 INP"},
+	{"RX INT0 DEM MUX", "CLSH_DSM_OUT", "RX INT0 MIX2"},
+	{"RX INT0 DAC", NULL, "RX INT0 DEM MUX"},
+	{"RX INT0 DAC", NULL, "RX_BIAS"},
+	{"EAR PA", NULL, "RX INT0 DAC"},
+	{"EAR", NULL, "EAR PA"},
+
+	/* RX1 Headphone left */
+	{"RX INT1_1 INTERP", NULL, "RX INT1_1 MIX1"},
+	{"RX INT1 SEC MIX", NULL, "RX INT1_1 INTERP"},
+	{"RX INT1 MIX2 INP", "SRC0", "SRC0"},
+	{"RX INT1 MIX2 INP", "SRC1", "SRC1"},
+	{"RX INT1 MIX2", NULL, "RX INT1 SEC MIX"},
+	{"RX INT1 MIX2", NULL, "RX INT1 MIX2 INP"},
+	{"RX INT1 MIX3", NULL, "RX INT1 MIX2"},
+	{"RX INT1 DEM MUX", "CLSH_DSM_OUT", "RX INT1 MIX3"},
+	{"RX INT1 DAC", NULL, "RX INT1 DEM MUX"},
+	{"RX INT1 DAC", NULL, "RX_BIAS"},
+	{"HPHL PA", NULL, "RX INT1 DAC"},
+	{"HPHL", NULL, "HPHL PA"},
+
+	/* RX2 Headphone right */
+	{"RX INT2_1 INTERP", NULL, "RX INT2_1 MIX1"},
+	{"RX INT2 SEC MIX", NULL, "RX INT2_1 INTERP"},
+	{"RX INT2 MIX2 INP", "SRC0", "SRC0"},
+	{"RX INT2 MIX2 INP", "SRC1", "SRC1"},
+	{"RX INT2 MIX2", NULL, "RX INT2 SEC MIX"},
+	{"RX INT2 MIX2", NULL, "RX INT2 MIX2 INP"},
+	{"RX INT2 MIX3", NULL, "RX INT2 MIX2"},
+	{"RX INT2 DEM MUX", "CLSH_DSM_OUT", "RX INT2 MIX3"},
+	{"RX INT2 DAC", NULL, "RX INT2 DEM MUX"},
+	{"RX INT2 DAC", NULL, "RX_BIAS"},
+	{"HPHR PA", NULL, "RX INT2 DAC"},
+	{"HPHR", NULL, "HPHR PA"},
+
+	/* RX3 HIFi LineOut1 */
+	{"RX INT3_1 INTERP", NULL, "RX INT3_1 MIX1"},
+	{"RX INT3 SEC MIX", NULL, "RX INT3_1 INTERP"},
+	{"RX INT3 MIX2 INP", "SRC0", "SRC0"},
+	{"RX INT3 MIX2 INP", "SRC1", "SRC1"},
+	{"RX INT3 MIX2", NULL, "RX INT3 SEC MIX"},
+	{"RX INT3 MIX2", NULL, "RX INT3 MIX2 INP"},
+	{"RX INT3 MIX3", NULL, "RX INT3 MIX2"},
+	{"RX INT3 DAC", NULL, "RX INT3 MIX3"},
+	{"RX INT3 DAC", NULL, "RX_BIAS"},
+	{"LINEOUT1 PA", NULL, "RX INT3 DAC"},
+	{"LINEOUT1", NULL, "LINEOUT1 PA"},
+
+	/* RX4 HIFi LineOut2 */
+	{"RX INT4_1 INTERP", NULL, "RX INT4_1 MIX1"},
+	{"RX INT4 SEC MIX", NULL, "RX INT4_1 INTERP"},
+	{"RX INT4 MIX2 INP", "SRC0", "SRC0"},
+	{"RX INT4 MIX2 INP", "SRC1", "SRC1"},
+	{"RX INT4 MIX2", NULL, "RX INT4 SEC MIX"},
+	{"RX INT4 MIX2", NULL, "RX INT4 MIX2 INP"},
+	{"RX INT4 SEC MIX", NULL, "RX INT4_1 MIX1"},
+	{"RX INT4 MIX3", NULL, "RX INT4 MIX2"},
+	{"RX INT4 DAC", NULL, "RX INT4 MIX3"},
+	{"RX INT4 DAC", NULL, "RX_BIAS"},
+	{"LINEOUT2 PA", NULL, "RX INT4 DAC"},
+	{"LINEOUT2", NULL, "LINEOUT2 PA"},
+
+	/* RX7 Speaker Left Out PA */
+	{"RX INT7_1 INTERP", NULL, "RX INT7_1 MIX1"},
+	{"RX INT7 SEC MIX", NULL, "RX INT7_1 INTERP"},
+	{"RX INT7 MIX2 INP", "SRC0", "SRC0"},
+	{"RX INT7 MIX2 INP", "SRC1", "SRC1"},
+	{"RX INT7 MIX2", NULL, "RX INT7 SEC MIX"},
+	{"RX INT7 MIX2", NULL, "RX INT7 MIX2 INP"},
+	{"RX INT7 CHAIN", NULL, "RX INT7 MIX2"},
+	{"RX INT7 CHAIN", NULL, "RX_BIAS"},
+	{"SPK1 OUT", NULL, "RX INT7 CHAIN"},
+
+	/* RX8 Speaker Right Out PA */
+	{"RX INT8_1 INTERP", NULL, "RX INT8_1 MIX1"},
+	{"RX INT8 SEC MIX", NULL, "RX INT8_1 INTERP"},
+	{"RX INT8 SEC MIX", NULL, "RX INT8_1 MIX1"},
+	{"RX INT8 CHAIN", NULL, "RX INT8 SEC MIX"},
+	{"RX INT8 CHAIN", NULL, "RX_BIAS"},
+	{"SPK2 OUT", NULL, "RX INT8 CHAIN"},
+
+	/* Tx */
+	{"AIF1 CAP", NULL, "AIF1_CAP Mixer"},
+	{"AIF2 CAP", NULL, "AIF2_CAP Mixer"},
+	{"AIF3 CAP", NULL, "AIF3_CAP Mixer"},
+
+	WCD934X_SLIM_TX_AIF_PATH(0),
+	WCD934X_SLIM_TX_AIF_PATH(1),
+	WCD934X_SLIM_TX_AIF_PATH(2),
+	WCD934X_SLIM_TX_AIF_PATH(3),
+	WCD934X_SLIM_TX_AIF_PATH(4),
+	WCD934X_SLIM_TX_AIF_PATH(5),
+	WCD934X_SLIM_TX_AIF_PATH(6),
+	WCD934X_SLIM_TX_AIF_PATH(7),
+	WCD934X_SLIM_TX_AIF_PATH(8),
+
+	WCD934X_ADC_MUX(0),
+	WCD934X_ADC_MUX(1),
+	WCD934X_ADC_MUX(2),
+	WCD934X_ADC_MUX(3),
+	WCD934X_ADC_MUX(4),
+	WCD934X_ADC_MUX(5),
+	WCD934X_ADC_MUX(6),
+	WCD934X_ADC_MUX(7),
+	WCD934X_ADC_MUX(8),
+
+	{"CDC_IF TX0 MUX", "DEC0", "ADC MUX0"},
+	{"CDC_IF TX1 MUX", "DEC1", "ADC MUX1"},
+	{"CDC_IF TX2 MUX", "DEC2", "ADC MUX2"},
+	{"CDC_IF TX3 MUX", "DEC3", "ADC MUX3"},
+	{"CDC_IF TX4 MUX", "DEC4", "ADC MUX4"},
+	{"CDC_IF TX5 MUX", "DEC5", "ADC MUX5"},
+	{"CDC_IF TX6 MUX", "DEC6", "ADC MUX6"},
+	{"CDC_IF TX7 MUX", "DEC7", "ADC MUX7"},
+	{"CDC_IF TX8 MUX", "DEC8", "ADC MUX8"},
+
+	{"AMIC4_5 SEL", "AMIC4", "AMIC4"},
+	{"AMIC4_5 SEL", "AMIC5", "AMIC5"},
+
+	{ "DMIC0", NULL, "DMIC0 Pin" },
+	{ "DMIC1", NULL, "DMIC1 Pin" },
+	{ "DMIC2", NULL, "DMIC2 Pin" },
+	{ "DMIC3", NULL, "DMIC3 Pin" },
+	{ "DMIC4", NULL, "DMIC4 Pin" },
+	{ "DMIC5", NULL, "DMIC5 Pin" },
+
+	{"ADC1", NULL, "AMIC1"},
+	{"ADC2", NULL, "AMIC2"},
+	{"ADC3", NULL, "AMIC3"},
+	{"ADC4", NULL, "AMIC4_5 SEL"},
+
+	WCD934X_IIR_INP_MUX(0),
+	WCD934X_IIR_INP_MUX(1),
+
+	{"SRC0", NULL, "IIR0"},
+	{"SRC1", NULL, "IIR1"},
+
+	/* VI Feedback */
+	{"AIF4_VI Mixer", "SPKR_VI_1", "VIINPUT"},
+	{"AIF4_VI Mixer", "SPKR_VI_2", "VIINPUT"},
+	{"AIF4 VI", NULL, "AIF4_VI Mixer"},
+
+};
+
 static const struct snd_soc_component_driver wcd934x_component_drv = {
 	.probe = wcd934x_comp_probe,
 	.remove = wcd934x_comp_remove,
@@ -5288,6 +5613,8 @@ static const struct snd_soc_component_driver wcd934x_component_drv = {
 	.num_controls = ARRAY_SIZE(wcd934x_snd_controls),
 	.dapm_widgets = wcd934x_dapm_widgets,
 	.num_dapm_widgets = ARRAY_SIZE(wcd934x_dapm_widgets),
+	.dapm_routes = wcd934x_audio_map,
+	.num_dapm_routes = ARRAY_SIZE(wcd934x_audio_map),
 };
 
 static int wcd934x_codec_probe(struct wcd934x_codec *wcd)
-- 
2.21.0

