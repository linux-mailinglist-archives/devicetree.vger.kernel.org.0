Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AE49616334
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 13:59:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231246AbiKBM7u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 08:59:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230233AbiKBM7t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 08:59:49 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD0972872D
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 05:59:48 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id l22-20020a17090a3f1600b00212fbbcfb78so2018741pjc.3
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 05:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MOAU43uzzEUBwcN8jl9h6i5tY3MCh/3gF6pphcM5rw=;
        b=AQ8kPTbbljZVxfnEfi0hbxKI6s+gMzT3qxWIe3ilfWN97UlKHjGVYW5BTYtNTaj/GR
         r5YSNGanhu5FZjRo6qzDGNK92FQVb90OmXFyhITipQcw0DQ8X7WRdldd1lVriuxJs3u8
         bclVsAx4PenGpbY2lU2i+m/kNgF3EyA0eELvzK2Hl8UfgFWodpYU4RQkOAPz4GnnjyY8
         dnHZoYjqs0AKUBo9KRCmhkHdy37BtxaoMfhq869YnSsr0DhuorCXvBpPW2KJrh0lZcj8
         m585Yw0icnATeNTAPidouJ8I/Ysoh3Crl1R2swI0tmLmCckEkpkplYx9g9uainWRrYOW
         8r7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8MOAU43uzzEUBwcN8jl9h6i5tY3MCh/3gF6pphcM5rw=;
        b=JbBYGT9TTZrnz/7NYBxHGnsjlTieQZmfMIq8JJbPYH1C9533G7G880Xj/pvz4ohAUy
         zORfCxU0VoCRK84WP4ZUVaPm4ziuS0iH3Pd0jTCQ3KhyklGBzFBYd+ufXEt156iiCOsm
         KrbBBXdUqiNPXfDaRzsSEZqLtXYa5QY5a1OuLS3BbkYyTAX3i+AJxa5nk7Dm+9YwL4Yx
         ufVN1Ct2KUc21GBiKGNwFOG1Kbu4llQmg++eYUFE5gZWREeVmG3o/Yt7y5QdXwDhDUt1
         QwzHSU0vgN7hrbRmK9cDpiUDX4lk6Ca+bq+Hws1+ZBFRai82HOMntNqZ07M+oOL9sUon
         CcLw==
X-Gm-Message-State: ACrzQf3K9wPEOyCNnlo8WqfGvn7ftGW8p1Tc5cCIZXcqMd7ObHKBD18A
        tokIkVfWhhztCRkIU51uPWHp6g==
X-Google-Smtp-Source: AMsMyM52YMs6itJcER5nB0dN3QV1+Sc4QPdClAE5epUFWcxb/aLsW2ay/8oaQDOlk0eVDD79VsWRUw==
X-Received: by 2002:a17:902:e88e:b0:187:27a7:c8a9 with SMTP id w14-20020a170902e88e00b0018727a7c8a9mr13695292plg.169.1667393988129;
        Wed, 02 Nov 2022 05:59:48 -0700 (PDT)
Received: from localhost.localdomain (118-167-210-180.dynamic-ip.hinet.net. [118.167.210.180])
        by smtp.gmail.com with ESMTPSA id k14-20020a170902d58e00b0017f59ebafe7sm8259345plh.212.2022.11.02.05.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:59:47 -0700 (PDT)
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
Subject: [PATCH v6 1/2] ASoC: mediatek: dt-bindings: modify machine bindings for two MICs case
Date:   Wed,  2 Nov 2022 20:59:35 +0800
Message-Id: <20221102125936.2176748-2-ajye_huang@compal.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102125936.2176748-1-ajye_huang@compal.corp-partner.google.com>
References: <20221102125936.2176748-1-ajye_huang@compal.corp-partner.google.com>
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
 .../sound/mt8186-mt6366-rt1019-rt5682s.yaml        | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml b/Documentation/devicetree/bindings/sound/mt8186-mt6366-rt1019-rt5682s.yaml
index 4fc5b045d3cf..9d3139990237 100644
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
@@ -63,14 +70,19 @@ required:
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
 
     sound: mt8186-sound {
         compatible = "mediatek,mt8186-mt6366-rt1019-rt5682s-sound";
         mediatek,platform = <&afe>;
         pinctrl-names = "aud_clk_mosi_off",
-                        "aud_clk_mosi_on";
+                        "aud_clk_mosi_on",
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

