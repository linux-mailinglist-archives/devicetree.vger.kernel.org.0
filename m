Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4AEF769211
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:44:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbjGaJog (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:44:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232390AbjGaJoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:44:18 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F317E10D8
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:43:47 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5222c5d71b8so6309251a12.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690796616; x=1691401416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2vbXpmjMjw+lKtOoDoBL66la8kJXNdX97D3faoVkRss=;
        b=h0U8orN3P8YFW+0Ac69J0BgBO4B5tO/PrgUCdrR26HbMX7htpegZrJu+ZNW2PA6CQ3
         OqweKqo09CAaM3sAN1p3n+aIIDDOjktrgs3LE2WhF29mggUMc17XPGZ7U5aNN/O8glwo
         ZMOPQKFLs5rfQ1lTijtCibzI/9SwgQvdH7jz3Hwdcr9dv1DhuwhEAAuSJqLyFrfOnTdK
         0w90tdeYVvtHbJ16IGl8k1HRk+thSstWj24w0hG5AL/PFBPI5Cvay2JjO6HxW9Q7Gqs4
         K4+DO5Wz9tHY5sdFrJWPVNX/dMrUbFMZocazfiGWyUv5dis5MD9MCcPV08OPXyC3X+01
         /M5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690796616; x=1691401416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2vbXpmjMjw+lKtOoDoBL66la8kJXNdX97D3faoVkRss=;
        b=dl0qTpeVntzK9ZEGjRAy/TEWDUv1HPvXEVmUItJ4Yx6RqPva2x26TZlXvaorjVI7rF
         WUllFgzhQ2IPeVfQPqvAiM8bdRVrZ01c9CXZkxgDtK61F+jjNsNgoqAn89BZrmidU4TO
         HKbv4TVP/RTun4UrnNQlFyV0Su6sImRE7HntkqyCwa/t6++2L+bHDEP9D1j6X/7+JsFY
         qa37tR15r0g0hOP5sQa1oH/baCY/cD/B4OkFCmcSXsK/JA/ZVI5B+UVScj4lyYF4+d42
         uGeexR89+R2FKa1KaC8MEEo0HmCSRhG9tNJLBYmIKMzH+OxKUCXsLSIJ4WfS4IyOI3Zu
         6WPg==
X-Gm-Message-State: ABy/qLZXA8WjwC2OfPWHP5/q9+MHI6Z3zwF5Cbi7fi1wLb17cQ+3PZ51
        QIttmGV8rE54KikYTnB8MEZDyA==
X-Google-Smtp-Source: APBJJlH95qguXBDd28tv5zYfROsmG2YCNzdEPQjZ/n9M5l2bQqmUAM/BlIg2lNBRwJKlhNLMIYYX6w==
X-Received: by 2002:a17:906:77d0:b0:99b:ef9c:e634 with SMTP id m16-20020a17090677d000b0099bef9ce634mr6065950ejn.65.1690796616598;
        Mon, 31 Jul 2023 02:43:36 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id z17-20020a170906815100b0099bcdfff7cbsm5867547ejw.160.2023.07.31.02.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:43:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Rohit kumar <quic_rohkumar@quicinc.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>,
        Rao Mandadapu <srivasam@codeaurora.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Trevor Wu <trevor.wu@mediatek.com>,
        Jonathan Bakker <xc-racer2@live.ca>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 09/12] ASoC: samsung: aries_wm8994: parse audio-routing
Date:   Mon, 31 Jul 2023 11:43:00 +0200
Message-Id: <20230731094303.185067-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
References: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Parse generic sound card "audio-routing" property and fallback to
"samsung,audio-routing" if it is missing.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/samsung/aries_wm8994.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/sound/soc/samsung/aries_wm8994.c b/sound/soc/samsung/aries_wm8994.c
index 7492bb41456c..dd3cd2c9644a 100644
--- a/sound/soc/samsung/aries_wm8994.c
+++ b/sound/soc/samsung/aries_wm8994.c
@@ -620,10 +620,14 @@ static int aries_audio_probe(struct platform_device *pdev)
 	/* Update card-name if provided through DT, else use default name */
 	snd_soc_of_parse_card_name(card, "model");
 
-	ret = snd_soc_of_parse_audio_routing(card, "samsung,audio-routing");
+	ret = snd_soc_of_parse_audio_routing(card, "audio-routing");
 	if (ret < 0) {
-		dev_err(dev, "Audio routing invalid/unspecified\n");
-		return ret;
+		/* Backwards compatible way */
+		ret = snd_soc_of_parse_audio_routing(card, "samsung,audio-routing");
+		if (ret < 0) {
+			dev_err(dev, "Audio routing invalid/unspecified\n");
+			return ret;
+		}
 	}
 
 	aries_dai[1].dai_fmt = priv->variant->modem_dai_fmt;
-- 
2.34.1

