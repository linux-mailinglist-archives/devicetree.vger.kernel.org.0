Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0DF5777068
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 08:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231611AbjHJGdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 02:33:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233648AbjHJGdW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 02:33:22 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA7EE2699
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 23:33:19 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b9ab1725bbso8865261fa.0
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 23:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691649198; x=1692253998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HYK3gBdbZNa0sNOQK67Ss/5e2crqIr7FWYCpvQqQW+g=;
        b=zMl0Q6Wo4VQxBOxQpo1rTcZRIWwM309TN6yCpDr/EeJrTnVpUvCkfew3iUmCwJpBBI
         MChHsatOC+ZhTfU2GaboaU02NCWtGr0R7Gbm/BTk/oo1E7nczfHfoN85tuwbxL0uJTEo
         ZaGHg4nLZ4pbZ5BbBxSkikvWi9RcizQXngjyy4DdN1wBLiBT3TIoW3brijqlQs6hlXHE
         7tuvYU4gYApdVRXh2fRnXMsZxuZb7lmL0XjHsLL+pxGon2FmmwvaKEobyZ3mXvtUv8Wv
         jsl+QYF967v94rD1iOqlmd8WDBTfo7YsOmIQLBuxdeAsQz1qI0dhUFzOtv67ghiWnKzw
         2SaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691649198; x=1692253998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYK3gBdbZNa0sNOQK67Ss/5e2crqIr7FWYCpvQqQW+g=;
        b=MMpDqA7iYEWdX/LoMHHZ80clVOS6WCjD10BZvw5cOyE1fV5ItPkbAOfGzYZmuj9hnW
         y/yPrZsI7M5X59eQbUhB67Sulo74F5jSP4wV5rBKSHIK8FWUQK638Qxo95yyuvrG+S41
         jtXdw3eaiW7yt9RMOC6r5WLoNx7xh9TpgHEG2uJxQjI8FtXvOKyqKkoB/7UCQXeRz5fD
         WXON3HdaqnlwvxgOKJ1wJLbmy3dZ2ioCJZ5LWwR2cL2aNIzl70HwcffD8l9vpTg9FnAf
         vm1ZiAO1iTbGJ+wG3ATnwGFrh4yhjrkXduDi4/nCKoqNvKiUws3aYZ4by0souWdMDXG4
         I3pQ==
X-Gm-Message-State: AOJu0YzH421F0EfLwDtiZrRt0EpF2jTatBSeAFGvGP+ZAi7h77W6nK41
        kXXUz9/S8wgdQWMgm8RwrLuvTw==
X-Google-Smtp-Source: AGHT+IFqfz82dC6HvQTaxglBx3yT9S64xVlc1ywkXQiWNswPweX3dARtW7q3pPyLGsgAYz8OCa/Z+A==
X-Received: by 2002:a2e:9a84:0:b0:2b6:df71:cff1 with SMTP id p4-20020a2e9a84000000b002b6df71cff1mr1059849lji.52.1691649198267;
        Wed, 09 Aug 2023 23:33:18 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id o10-20020a1c750a000000b003fe2b6d64c8sm4020018wmc.21.2023.08.09.23.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 23:33:17 -0700 (PDT)
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
Subject: [PATCH v2 07/11] ASoC: samsung: odroid: use of_property_present to check for property
Date:   Thu, 10 Aug 2023 08:32:55 +0200
Message-Id: <20230810063300.20151-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810063300.20151-1-krzysztof.kozlowski@linaro.org>
References: <20230810063300.20151-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"samsung,audio-widgets" and "samsung,audio-routing" are not boolean
properties, thus more appropriate is to use of_property_present() to
check if they are present.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/samsung/odroid.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/samsung/odroid.c b/sound/soc/samsung/odroid.c
index a5442592bde4..1743bd55ba1a 100644
--- a/sound/soc/samsung/odroid.c
+++ b/sound/soc/samsung/odroid.c
@@ -223,14 +223,14 @@ static int odroid_audio_probe(struct platform_device *pdev)
 	if (ret < 0)
 		return ret;
 
-	if (of_property_read_bool(dev->of_node, "samsung,audio-widgets")) {
+	if (of_property_present(dev->of_node, "samsung,audio-widgets")) {
 		ret = snd_soc_of_parse_audio_simple_widgets(card,
 						"samsung,audio-widgets");
 		if (ret < 0)
 			return ret;
 	}
 
-	if (of_property_read_bool(dev->of_node, "samsung,audio-routing")) {
+	if (of_property_present(dev->of_node, "samsung,audio-routing")) {
 		ret = snd_soc_of_parse_audio_routing(card,
 						"samsung,audio-routing");
 		if (ret < 0)
-- 
2.34.1

