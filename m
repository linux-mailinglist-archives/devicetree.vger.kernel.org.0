Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16AFF77706E
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 08:33:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233713AbjHJGdr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 02:33:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233691AbjHJGdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 02:33:38 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99AAD268A
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 23:33:24 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3fe1fc8768aso4988505e9.1
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 23:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691649203; x=1692254003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WNOB2kSBm/ZCjLUQLsGBk0BsOPSn2yUKgs+5rBFTqgc=;
        b=nLzSxmdCld1p6/GNXMg8hXGakyqAdX2VctistK9WujPaXg2PnipVH+tA2okLWW90UN
         YK/BFf8rIAf9y9/FGQ16JTl3nEBJ/MahEeOfpBlHh+TGbMxyT3EbfPpUk4Sm9grnzt2z
         gZp/ofk3kXabjgpR2yA9JR5MjMdRURursj822tzChJxLFRvP1VLsc0LlKXQT0c6d+ti9
         rSq3OGfAnGXEG0/5D0ATH2CgUFxhUIBl4ymOlV3u6DabbmQOrsaSODD0uljC0IGsD/tD
         OezEw1qzk81Eqwk/q90jugj+om1k4tatpOqQqvVcsUpFq19K3NW2VUO7WrhFuFTXTL0G
         vZug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691649203; x=1692254003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WNOB2kSBm/ZCjLUQLsGBk0BsOPSn2yUKgs+5rBFTqgc=;
        b=YAeQ1ZsbWDEg6BS+v1twCeiUFnEgzMbbV+n5EAcij2XVpaKxPmHzRleuXtExp7PJfh
         nfcmxVY/29p/9QncjAAah9aSQ0USvAXP+XFViY7eFazp+4+koA5K4uT1X16hPoQqIbq5
         fAUFKYaI3/t7VY8s4Qx98aTn+iWQNMhd16rDM8NTVaxKEFI4R2iRbiW0t89ttlwo3ww4
         MSMA8Vpvo51Bt0jNYtvgEhswO2I0ncxUrh07T2pBrmzHyl/njqwkfD27pCyVjobWo8f8
         NGv7hKQH94Dzcp0Q0w+0ktlW+mc62vWzyiDLZeb0hhp0FT/BfA8f3ONUyxeSioYSuH2/
         EecQ==
X-Gm-Message-State: AOJu0Yx/loL6Jt25HERPmlJtbvF8/BMv2P8kg7Pijv1roj9qxluPcDMM
        s3WoYz2XpwSRNbfmU4hj5MYOnA==
X-Google-Smtp-Source: AGHT+IHTzWeiFzQtz6B61NWeYjn6qIfVxR+QqP5IsC0pkDiH1Mt6bYQC6K+5H8AdGVl3d82V9DJTJw==
X-Received: by 2002:a05:600c:d6:b0:3fe:1cac:37d7 with SMTP id u22-20020a05600c00d600b003fe1cac37d7mr1221145wmm.10.1691649203041;
        Wed, 09 Aug 2023 23:33:23 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id o10-20020a1c750a000000b003fe2b6d64c8sm4020018wmc.21.2023.08.09.23.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 23:33:22 -0700 (PDT)
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
Subject: [PATCH v2 09/11] ASoC: samsung: midas_wm1811: parse audio-routing
Date:   Thu, 10 Aug 2023 08:32:57 +0200
Message-Id: <20230810063300.20151-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810063300.20151-1-krzysztof.kozlowski@linaro.org>
References: <20230810063300.20151-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Parse generic sound card "audio-routing" property and fallback to
"samsung,audio-routing" if it is missing.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/samsung/midas_wm1811.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/sound/soc/samsung/midas_wm1811.c b/sound/soc/samsung/midas_wm1811.c
index 6931b9a45b3e..9e83ed071f39 100644
--- a/sound/soc/samsung/midas_wm1811.c
+++ b/sound/soc/samsung/midas_wm1811.c
@@ -462,10 +462,14 @@ static int midas_probe(struct platform_device *pdev)
 		return ret;
 	}
 
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
 
 	cpu = of_get_child_by_name(dev->of_node, "cpu");
-- 
2.34.1

