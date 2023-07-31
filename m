Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 769387691F7
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:43:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbjGaJnV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:43:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231532AbjGaJnS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:43:18 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1123D137
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:43:16 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-52256241b76so5664588a12.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690796594; x=1691401394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n6++1atFcJlpU6KcQ6EW+qw2Dj8W42OQi/XJDZGdi1g=;
        b=dhc03fGGpA5as1+HMhYMWdZE3IsL092HC0LprsNTQBPQ7s6TkXj6YxXAQqPWytVh44
         cb7SNFy7YjkMCHLx7fxXAZBDfQvbHE87OLNS2OdhRomqKJJlzT6k6gHtLaZEOZy2CLOx
         2VRDt7SdmllRm1yYORj/MI3aRZbrIwKLb2/6RnHVesH2HAh1d5L6M3ZHrZhtkYl+0Vpm
         OrVV5xkeBfvzo1fxSl3sE/3HPfPBEYMcyLl+L6/C3UMXWC651H+jsnnSOBFAzr8DxI3w
         udHKxhJmN8ichJzsj0QspP+1UYSEPxBXkMJi88MqqrUlzTtP8d81k25fDK4sYQ5R5ls+
         SvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690796594; x=1691401394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6++1atFcJlpU6KcQ6EW+qw2Dj8W42OQi/XJDZGdi1g=;
        b=eucqXHYdNULgyR2WG/7czjxUoPcE69N9r4fhL0P2S881krnu6PWpcH829Z6r4eNWnG
         Q/hY8+5auktJ3T6bRW/ZXTmSxa88r6/Xrx27z/iKd7SeYNgzbSkNZ0IkTHpkyo1sE8SB
         kbgxqyL3uLBnz/zUQ+oxBkVwoCgvla7NJf/5XdJI5xDkowm0gQY/1UNanFrsAjFk6N8l
         ra0mSOCvwO00cEEmet00GMCmaEHDgcC9I0kujqYzDA2L22vsn1ykABQsFDNstBu/5ew1
         K347hB9/0vhePtcrmB6jeHUWioc26zQ6lOKpAhKPjw4/ExdIDunLKo73uRCR67rIxJw8
         Bj0g==
X-Gm-Message-State: ABy/qLZA2WHsmGJPmmFqEae+ya/rh4cXOQ5e0l21TGtemOkWn23+1VdZ
        ACJZn8e384pf68MzZyVzJZ5DcA==
X-Google-Smtp-Source: APBJJlGWo3hFADwY+WaMzw9Z36mCtTdvjCEOo31rIf0hKufIkRKpCycEbTJFgmy0co12hnDOO35r7Q==
X-Received: by 2002:a17:907:7711:b0:99b:f3ef:f088 with SMTP id kw17-20020a170907771100b0099bf3eff088mr6220810ejc.69.1690796594520;
        Mon, 31 Jul 2023 02:43:14 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id z17-20020a170906815100b0099bcdfff7cbsm5867547ejw.160.2023.07.31.02.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:43:14 -0700 (PDT)
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
Subject: [PATCH 01/12] ASoC: dt-bindings: amlogic,gx-sound-card: correct maxItems constraints
Date:   Mon, 31 Jul 2023 11:42:52 +0200
Message-Id: <20230731094303.185067-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
References: <20230731094303.185067-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

minItems without maxItems implies upper limit, so add some high maxItems
to fix dtbs_check warnings like:

  meson-gxm-s912-libretech-pc.dtb: sound: audio-routing: ['AU2 INL', 'ACODEC LOLN', 'AU2 INR', 'ACODEC LORN', '7J4-14 LEFT', 'AU2 OUTL', '7J4-11 RIGHT', 'AU2 OUTR'] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/sound/amlogic,gx-sound-card.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
index b358fd601ed3..45d6202d9730 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
+++ b/Documentation/devicetree/bindings/sound/amlogic,gx-sound-card.yaml
@@ -21,6 +21,7 @@ properties:
   audio-routing:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
     minItems: 2
+    maxItems: 32
     description: |-
       A list of the connections between audio components. Each entry is a
       pair of strings, the first being the connection's sink, the second
@@ -29,6 +30,7 @@ properties:
   audio-widgets:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
     minItems: 2
+    maxItems: 8
     description: |-
       A list off component DAPM widget. Each entry is a pair of strings,
       the first being the widget type, the second being the widget name
-- 
2.34.1

