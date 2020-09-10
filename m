Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3F2A263C5F
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 07:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726725AbgIJFYY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 01:24:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725868AbgIJFYI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 01:24:08 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CAF4C061573
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 22:24:07 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id u9so345294plk.4
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 22:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2nWlloeWe4+nv6hVrTbPWUl2P9w8K0JESAZLCRmELVU=;
        b=Jly6RuxBojd9khDo1aBZFbbE7iUymQQYlkNgHAGTRC/IGga0p/m/w/CkOY9snpatGR
         58eOqJx6SKkTxAE7U7cwXh+zZp5T1+Qvnop0cEBrwdZuw/FUw5znODV105LJmAW6iRXP
         eWukC6v5ZlhBlERJkU+Nt8ElBhRHBHnxo5s7I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2nWlloeWe4+nv6hVrTbPWUl2P9w8K0JESAZLCRmELVU=;
        b=meqAYl9cn+wBKUX2jmvGtgoJonnPorbmsKD6VlKSCfqhyBIuETnIwUFHxpdLynB3sd
         rI70Km0dslr1pZqzfV/p3A1lzC/eVdz+wnyLcmoXvMTbd5gT11GJACg8w2mDv856+y/R
         SJDhu6WG7sYzBlG1FuV2SswARJ+3ekOV1gEjCbVknExxiN7AgKRSduTkmpl2XxAAoQyN
         cFxDMY6nOP4fvqBYqpUYKE+AqE4EsNgZvDGqyIXqN59nM2NVyxiWtDA4+Ie+NDytbyPV
         rD1pocizRz8hlWZKFpv3qRrfxqKIy0k6n5ZfMzGz5gTRlcytmJpHMold84b6azpV1G4r
         lq4g==
X-Gm-Message-State: AOAM533A2PYRIQecmgbWWUWyR7XMPXAgSEHVdnVC3K1JJBweBWKw9ri0
        gXKQml5UIxbDUGAQ5gYOOiHM+g==
X-Google-Smtp-Source: ABdhPJwiwRt7uJD2Tdw1Iu+DXvUoRD4x3qop7uDcJyYhptNWqo3qcCeWVelp64P4NCI+7u30w1o/aw==
X-Received: by 2002:a17:90a:fb52:: with SMTP id iq18mr3855544pjb.162.1599715447176;
        Wed, 09 Sep 2020 22:24:07 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:de4a:3eff:fe7d:d39c])
        by smtp.gmail.com with ESMTPSA id jz6sm772242pjb.22.2020.09.09.22.24.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 22:24:06 -0700 (PDT)
From:   Cheng-Yi Chiang <cychiang@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>, Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>, dianders@chromium.org,
        dgreid@chromium.org, tzungbi@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Cheng-Yi Chiang <cychiang@chromium.org>
Subject: [PATCH v8 1/3] ASoC: hdmi-codec: Use set_jack ops to set jack
Date:   Thu, 10 Sep 2020 13:23:45 +0800
Message-Id: <20200910052347.1790735-2-cychiang@chromium.org>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
In-Reply-To: <20200910052347.1790735-1-cychiang@chromium.org>
References: <20200910052347.1790735-1-cychiang@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use set_jack ops to set jack so machine drivers do not need to include
hdmi-codec.h explicitly.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 include/sound/hdmi-codec.h                           |  3 ---
 sound/soc/codecs/hdmi-codec.c                        | 12 ++++--------
 sound/soc/mediatek/mt8173/mt8173-rt5650.c            |  5 ++---
 sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c   |  5 ++---
 .../mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c |  5 ++---
 sound/soc/rockchip/rockchip_max98090.c               |  3 +--
 6 files changed, 11 insertions(+), 22 deletions(-)

diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
index 7754631a3102..b55970859a13 100644
--- a/include/sound/hdmi-codec.h
+++ b/include/sound/hdmi-codec.h
@@ -117,9 +117,6 @@ struct hdmi_codec_pdata {
 struct snd_soc_component;
 struct snd_soc_jack;
 
-int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
-			       struct snd_soc_jack *jack);
-
 #define HDMI_CODEC_DRV_NAME "hdmi-audio-codec"
 
 #endif /* __HDMI_CODEC_H__ */
diff --git a/sound/soc/codecs/hdmi-codec.c b/sound/soc/codecs/hdmi-codec.c
index 8c6f540533ba..d1de5bcd5daa 100644
--- a/sound/soc/codecs/hdmi-codec.c
+++ b/sound/soc/codecs/hdmi-codec.c
@@ -698,13 +698,9 @@ static void plugged_cb(struct device *dev, bool plugged)
 		hdmi_codec_jack_report(hcp, 0);
 }
 
-/**
- * hdmi_codec_set_jack_detect - register HDMI plugged callback
- * @component: the hdmi-codec instance
- * @jack: ASoC jack to report (dis)connection events on
- */
-int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
-			       struct snd_soc_jack *jack)
+static int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
+				      struct snd_soc_jack *jack,
+				      void *data)
 {
 	struct hdmi_codec_priv *hcp = snd_soc_component_get_drvdata(component);
 	int ret = -EOPNOTSUPP;
@@ -720,7 +716,6 @@ int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
 	}
 	return ret;
 }
-EXPORT_SYMBOL_GPL(hdmi_codec_set_jack_detect);
 
 static int hdmi_dai_spdif_probe(struct snd_soc_dai *dai)
 {
@@ -806,6 +801,7 @@ static const struct snd_soc_component_driver hdmi_driver = {
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
 	.non_legacy_dai_naming	= 1,
+	.set_jack		= hdmi_codec_set_jack_detect,
 };
 
 static int hdmi_codec_probe(struct platform_device *pdev)
diff --git a/sound/soc/mediatek/mt8173/mt8173-rt5650.c b/sound/soc/mediatek/mt8173/mt8173-rt5650.c
index 347b095d478d..c28ebf891cb0 100644
--- a/sound/soc/mediatek/mt8173/mt8173-rt5650.c
+++ b/sound/soc/mediatek/mt8173/mt8173-rt5650.c
@@ -11,7 +11,6 @@
 #include <linux/of_gpio.h>
 #include <sound/soc.h>
 #include <sound/jack.h>
-#include <sound/hdmi-codec.h>
 #include "../../codecs/rt5645.h"
 
 #define MCLK_FOR_CODECS		12288000
@@ -154,8 +153,8 @@ static int mt8173_rt5650_hdmi_init(struct snd_soc_pcm_runtime *rtd)
 	if (ret)
 		return ret;
 
-	return hdmi_codec_set_jack_detect(asoc_rtd_to_codec(rtd, 0)->component,
-					  &mt8173_rt5650_hdmi_jack);
+	return snd_soc_component_set_jack(asoc_rtd_to_codec(rtd, 0)->component,
+					  &mt8173_rt5650_hdmi_jack, NULL);
 }
 
 enum {
diff --git a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
index 06d0a4f80fc1..e53c6200d5a7 100644
--- a/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c
@@ -10,7 +10,6 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/pinctrl/consumer.h>
-#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
@@ -369,8 +368,8 @@ static int mt8183_da7219_max98357_hdmi_init(struct snd_soc_pcm_runtime *rtd)
 	if (ret)
 		return ret;
 
-	return hdmi_codec_set_jack_detect(asoc_rtd_to_codec(rtd, 0)->component,
-					  &priv->hdmi_jack);
+	return snd_soc_component_set_jack(asoc_rtd_to_codec(rtd, 0)->component,
+					  &priv->hdmi_jack, NULL);
 }
 
 static struct snd_soc_dai_link mt8183_da7219_dai_links[] = {
diff --git a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
index 07410d7afaa9..327dfad41e31 100644
--- a/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
+++ b/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c
@@ -9,7 +9,6 @@
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/pinctrl/consumer.h>
-#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm_params.h>
 #include <sound/soc.h>
@@ -350,8 +349,8 @@ mt8183_mt6358_ts3a227_max98357_hdmi_init(struct snd_soc_pcm_runtime *rtd)
 	if (ret)
 		return ret;
 
-	return hdmi_codec_set_jack_detect(asoc_rtd_to_codec(rtd, 0)->component,
-					  &priv->hdmi_jack);
+	return snd_soc_component_set_jack(asoc_rtd_to_codec(rtd, 0)->component,
+					  &priv->hdmi_jack, NULL);
 }
 
 static struct snd_soc_dai_link mt8183_mt6358_ts3a227_dai_links[] = {
diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 9acfd024aa5d..c8f1a28a92b7 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -12,7 +12,6 @@
 #include <linux/gpio.h>
 #include <linux/of_gpio.h>
 #include <sound/core.h>
-#include <sound/hdmi-codec.h>
 #include <sound/jack.h>
 #include <sound/pcm.h>
 #include <sound/pcm_params.h>
@@ -238,7 +237,7 @@ static int rk_hdmi_init(struct snd_soc_pcm_runtime *runtime)
 		return ret;
 	}
 
-	return hdmi_codec_set_jack_detect(component, &rk_hdmi_jack);
+	return snd_soc_component_set_jack(component, &rk_hdmi_jack, NULL);
 }
 
 /* max98090 dai_link */
-- 
2.28.0.526.ge36021eeef-goog

