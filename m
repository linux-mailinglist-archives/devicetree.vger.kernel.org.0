Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C353769216
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:45:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230257AbjGaJpB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:45:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232391AbjGaJoi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:44:38 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED3F1722
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:44:10 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bf8e5ab39so362736966b.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690796625; x=1691401425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WBYHWBePTU6C5eucIxmnpm6TRHg4GxWEuDC87hbIx8=;
        b=IqwvSfnbNwyimbDjB6LihmC2Gx61tK+naB8QvwHsvXO0AagHSPzWbJRjaS2O7lbNTS
         uKHpeI8ENVUlZNRnDzoAFPLNU3WruTMI9ZxeHtzJ7g+Sn+eDliooYYCqXXpQDwHnf+Vx
         O7zTBYGCz6v48/D4pyTbpPaKFrSLQi3kVi6IxhcF/uRSp7Vw01eHsF2IgPUt+YlBU7Sl
         aCP7bNORn2LuJEnVpcO66BiixqFuMFSKjtmJ4LuMYuhaA9a+bAm5eZq3nhk8AQ1A9gT+
         vm8xlf/Bek/HsVv5bZgvjDupHFPhLOIx6ZAVd3EpcNTdx/7l/Ix904GX8IT2gN15vj5s
         eb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690796625; x=1691401425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WBYHWBePTU6C5eucIxmnpm6TRHg4GxWEuDC87hbIx8=;
        b=WKwasR4EMlW35deMU1QEYYSZr+RfmzwSliuFPcIudO0DKgjIqq7iQyzcLkKCEcphmW
         ErauuTr0ndgUv33eTf0UAxUFhLLCxzTYM+QEkDLF/Op1R4dXDsM4NDE4Xt4qnQGrKSy6
         otGrq9QuAZ9K/BVL9950OIXYFszWK5Noi3MTAyAwYhFkPd/VmgZe3ZpzuKhBGQ4OpMZu
         yawyJjKG+O09CHSGJV7cf8BgJJeWyGQu2OCR/V3l2TenqeP33tXfrovWIZf+UINUFhxy
         m5XnUz89Dfx+xrLOMVNvBwDSq1mUHSRjj84V4f66WB29oNRpFYJksdOC1Ib3E/GddIl2
         ad6w==
X-Gm-Message-State: ABy/qLZX76WgAF+WWt0sOvBoc89Lq7yWwWFRBgOxYh5Kx6ksHwWWPlj4
        juFp01SWOXHIire3ope1a0G7gA==
X-Google-Smtp-Source: APBJJlEzcZhVwa+DwMhnuY0DXZuVupN88Qe/elc0l1P9fP7li1a276oj6YH6VCXWzAUfClUX6fMbBw==
X-Received: by 2002:a17:906:1d7:b0:992:3897:1985 with SMTP id 23-20020a17090601d700b0099238971985mr6746185ejj.43.1690796625086;
        Mon, 31 Jul 2023 02:43:45 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id z17-20020a170906815100b0099bcdfff7cbsm5867547ejw.160.2023.07.31.02.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:43:44 -0700 (PDT)
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
Subject: [PATCH 12/12] ASoC: samsung: tm2_wm5110: parse audio-routing
Date:   Mon, 31 Jul 2023 11:43:03 +0200
Message-Id: <20230731094303.185067-13-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
References: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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
 sound/soc/samsung/tm2_wm5110.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/sound/soc/samsung/tm2_wm5110.c b/sound/soc/samsung/tm2_wm5110.c
index d611ec9e5325..5ebf17f3de1e 100644
--- a/sound/soc/samsung/tm2_wm5110.c
+++ b/sound/soc/samsung/tm2_wm5110.c
@@ -523,10 +523,14 @@ static int tm2_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = snd_soc_of_parse_audio_routing(card, "samsung,audio-routing");
+	ret = snd_soc_of_parse_audio_routing(card, "audio-routing");
 	if (ret < 0) {
-		dev_err(dev, "Audio routing is not specified or invalid\n");
-		return ret;
+		/* Backwards compatible way */
+		ret = snd_soc_of_parse_audio_routing(card, "samsung,audio-routing");
+		if (ret < 0) {
+			dev_err(dev, "Audio routing is not specified or invalid\n");
+			return ret;
+		}
 	}
 
 	card->aux_dev[0].dlc.of_node = of_parse_phandle(dev->of_node,
-- 
2.34.1

