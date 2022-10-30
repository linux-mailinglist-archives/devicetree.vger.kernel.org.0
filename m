Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F661612935
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 09:54:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbiJ3IyQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Oct 2022 04:54:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229861AbiJ3IyP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 04:54:15 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6E22B82
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 01:54:11 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id d59-20020a17090a6f4100b00213202d77e1so13483881pjk.2
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 01:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mv+BLBNqBpWOA3vNeD4kjDL2MA9szaMxuhuDzPkq1ks=;
        b=TMAYw7yigmzOnPFudyA0NvbqzI6+opZd+SUpXDi5eDzotTQJ0WK2rDpLf5ccdeVE8g
         3PqS7MQpWLfHuwgGbYKmJZ2ysQsAW1YmjPIcozhsoG9zMMJZpaOr+M9Pul9ru6h0VY4S
         BGS9GSTc7OXtM8PWGJJW6xY4PeB5KTn5r/+Qw5zirqfqnBqIQO+x4EZD1RBvKsebU5Yp
         ZbBBx/6D3kgyYQQnbdOIvxb90fDUTc28u/3Nn7yVrKmk1TRLw5gOQqggutvvSCKoRof1
         s9C69TJ6maRenZJG0/QV+XYqrl4hWPrdxOdA1gSC3UVBdl5NGNTTpSEoaE0IvmFl03h9
         uBTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mv+BLBNqBpWOA3vNeD4kjDL2MA9szaMxuhuDzPkq1ks=;
        b=Qnh8/Uc+b+Yv1FkoUStFFTg5ocXWzWO8G3Skuq91z9KFT+nrzTwB6RU3omGaN8Iz7w
         frwHmwbQsJTLNwYqWa7gBBc1tkUbI3OFoMj3cmdcgESdTQiilEONWSjjlrSvVq0GqmKw
         HGFPa1vWUefeYlL6s1YnWiPqH9/4DTZTE2d9lNCTt3cw05t6zJfQCAWQ1eYJSxWBpXZq
         5jEgzWBmd6jzB9yIwPjhEVO32Hukf5FTUGVZPMA8Y4bsvlchLBfU67iygvex+NPbyWJ7
         chDT0x2rZ7LBk0kxKVowudlbYmxcGQqJiD26BjFuCTNsRCGVOAu42HdvIwrFta//1KTe
         70gA==
X-Gm-Message-State: ACrzQf0Em/y5PTuNZkTZFeu8T21gZfCrYf5TdT9hJr+w54weq3Au/Ocu
        vkIDKNBtnn9NBhw7mI5Gb5jMGg==
X-Google-Smtp-Source: AMsMyM74Wq7d2lV8Ds8HII8GqBYH4mUQ5vxzN4bfvVHLfopJFxA14Df2ZPsSepJWrLU8Zi+ASuBHUg==
X-Received: by 2002:a17:902:7897:b0:178:9292:57b9 with SMTP id q23-20020a170902789700b00178929257b9mr8369620pll.102.1667120051195;
        Sun, 30 Oct 2022 01:54:11 -0700 (PDT)
Received: from localhost.localdomain (118-167-185-125.dynamic-ip.hinet.net. [118.167.185.125])
        by smtp.gmail.com with ESMTPSA id n9-20020a63f809000000b0041ae78c3493sm2054627pgh.52.2022.10.30.01.54.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 01:54:10 -0700 (PDT)
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
Subject: [PATCH v3 1/2] ASoC: mediatek: dt-bindings: modify machine bindings for two MICs case
Date:   Sun, 30 Oct 2022 16:53:57 +0800
Message-Id: <20221030085358.1619285-2-ajye_huang@compal.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221030085358.1619285-1-ajye_huang@compal.corp-partner.google.com>
References: <20221030085358.1619285-1-ajye_huang@compal.corp-partner.google.com>
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
 .../sound/mt8186-mt6366-rt1019-rt5682s.yaml         | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
index 4fc5b045d3cf..46ad2cf4365e 100644
--- a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
@@ -21,6 +21,13 @@ properties:
     $ref: "/schemas/types.yaml#/definitions/phandle"
     description: The phandle of MT8186 ASoC platform.
 
+  dmic-gpios:
+    maxItems: 1
+    description:
+      dmic-gpios optional prop for switching between two DMICs.
+      Ex, the GPIO can control a MUX HW component to select
+      dmic clk and data form a Front or Rear dmic.
+
   headset-codec:
     type: object
     additionalProperties: false
@@ -68,9 +75,13 @@ examples:
         compatible = "mediatek,mt8186-mt6366-rt1019-rt5682s-sound";
         mediatek,platform = <&afe>;
         pinctrl-names = "aud_clk_mosi_off",
-                        "aud_clk_mosi_on";
+                        "aud_clk_mosi_on" ,
+                        "aud_gpio_dmic_sec";
         pinctrl-0 = <&aud_clk_mosi_off>;
         pinctrl-1 = <&aud_clk_mosi_on>;
+        pinctrl-2 = <&aud_gpio_dmic_sec>;
+
+        dmic-gpios = <&pio 23 GPIO_ACTIVE_HIGH>;
 
         headset-codec {
             sound-dai = <&rt5682s>;
-- 
2.25.1

