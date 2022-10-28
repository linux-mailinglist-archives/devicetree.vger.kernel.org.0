Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5828611936
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 19:22:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231208AbiJ1RW3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 13:22:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230189AbiJ1RW2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 13:22:28 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DF79226E7F
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 10:22:28 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id io19so5393747plb.8
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 10:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MFMOsXdTB5Df8ggzsilthr4+D/qAdNxZr6+urTN5nT0=;
        b=8U/f+2hJhjF5TA6s84eiTLKl/O3fHVNMKbmkkAJ5FX/aRcszHn6fJBjnhGYYHQFhG2
         fTBTsLcL84cBOXGg2Q2mgiqcOwDnk0opQiYBNiOu+hlqD6C3F0E27LwvFgrg+Gg2KVws
         IY4kwfWNNnR2taX0KaH5Xdz+RlGQDTjTI2U7QhXlmr6JX79RWzIM7O4kL64obG6g93Ap
         mWD4qOOieD+oZ44d4vdRDuRIkCdVolcJZunUq0em5vrp7EzLh/2OkrNn4jIuIg3M2bYE
         cuTIJeKO+N8Hd8kHyOTSeNXd5vXuSV/aBQl2AyhpHg9klUbUKNp4gciAvT5jrIToqZuN
         lHbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MFMOsXdTB5Df8ggzsilthr4+D/qAdNxZr6+urTN5nT0=;
        b=dPaSs/Avvqm7BmYBExq7ivYVK+C+ouEbItbtuKj8EBUBg5GRiQXpYf2nlPiL4XZzH4
         Xd2j+LyzwoDICDr6rK5dCr6Lsxcl+gnMl1XIuufGsIlnR2oE62LOhZD1vPvofKggvHr8
         LM2F4bO288fF7A/hknIz6tfsoAdMdxkBKWM47vJ346rupY+RdOPDnzqOZN/3Aom69IK9
         vcYtBvZA93X+15lzvG76SE8QkWe36INIA7ojNo5KJ6e6sP2j2Q9cb6yF2S2MJsGnUqcy
         L0uaSEPXJ87ujKOkdiv60AW0tmt3hWUjbqt00WiyVCVt9IbasIJgxhOeobMh5gcH6z1J
         3qag==
X-Gm-Message-State: ACrzQf3kblu+br8E9EII7KVE4IkNJls8D3VzMorGdtPE4lqmJW9JOhLh
        agdy8zbLEPKg6YLvHf+vSSZ8yQ==
X-Google-Smtp-Source: AMsMyM7tCLeMSIkzuM8wzGQXwgjziB10x1ohi/U73N7eYMIHY7EgkGmX+ArJKDN2eNOxLRCaa23Crw==
X-Received: by 2002:a17:902:968f:b0:180:a7ff:78ba with SMTP id n15-20020a170902968f00b00180a7ff78bamr10947plp.87.1666977747715;
        Fri, 28 Oct 2022 10:22:27 -0700 (PDT)
Received: from localhost.localdomain (118-167-210-30.dynamic-ip.hinet.net. [118.167.210.30])
        by smtp.gmail.com with ESMTPSA id rm10-20020a17090b3eca00b0021282014066sm4604945pjb.9.2022.10.28.10.22.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 10:22:27 -0700 (PDT)
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        "chunxu . li" <chunxu.li@mediatek.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Jiaxin Yu <jiaxin.yu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: [PATCH v2 1/2] ASoC: mediatek: dt-bindings: modify machine bindings for two MICs case
Date:   Sat, 29 Oct 2022 01:22:14 +0800
Message-Id: <20221028172215.1471235-2-ajye_huang@compal.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028172215.1471235-1-ajye_huang@compal.corp-partner.google.com>
References: <20221028172215.1471235-1-ajye_huang@compal.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a property "dmic-gpios" for switching between two MICs.

Signed-off-by: Ajye Huang <ajye_huang@compal.corp-partner.google.com>
---
 .../bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml        | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
index 4fc5b045d3cf..212d2982590a 100644
--- a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
@@ -21,6 +21,10 @@ properties:
     $ref: "/schemas/types.yaml#/definitions/phandle"
     description: The phandle of MT8186 ASoC platform.
 
+  dmic-gpios:
+    maxItems: 1
+    description: GPIO for switching between DMICs
+
   headset-codec:
     type: object
     additionalProperties: false
@@ -72,6 +76,8 @@ examples:
         pinctrl-0 = <&aud_clk_mosi_off>;
         pinctrl-1 = <&aud_clk_mosi_on>;
 
+        dmic-gpios = <&pio 23 0>;
+
         headset-codec {
             sound-dai = <&rt5682s>;
         };
-- 
2.25.1

