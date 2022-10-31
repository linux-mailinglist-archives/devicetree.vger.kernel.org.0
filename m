Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34462613602
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 13:22:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231336AbiJaMWy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 08:22:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231309AbiJaMWu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 08:22:50 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3153F5A7
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 05:22:36 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id o7so7044889pjj.1
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 05:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8MOAU43uzzEUBwcN8jl9h6i5tY3MCh/3gF6pphcM5rw=;
        b=xN7tZuq2qouAUfQeHfc1L09Per4c9T2dfiX3qbfhPmIHtEpLihIg5PUhpTLg4cy6Yz
         y4qRiWhmHwBlpXJ29ln1E28k7ZzojpUiQKRbv9wZLFEhOr0Z942UjtTXEfeimin3jDqa
         neD3zqkPD662BsriBkWqUIVqFs4EfQqZDqFkWyoOP3nau+pvtuuuTCrxPtIHI/GnqzQm
         0sVgDmgPPSNmx9cwmnDeaAkfefXEJfd75ywNTMS2PqMgugfqehY62FXP4MSugTcp/RG8
         fJqsXymPgQMRD3XCT/djPuBES7ykfUoXAsTLjqKrJz9DfqFUAAcaG1dKG+mMr356jFzl
         bmyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8MOAU43uzzEUBwcN8jl9h6i5tY3MCh/3gF6pphcM5rw=;
        b=5OV14/HynUQTeTho38Kz6ys8j4aglQv7FH3v6Ek6PlMp1ei/9viw1a7ovc+1v0+kwE
         6MfKN0ODVukvbZK3r4WbVPklPdZBTED4fJ/5EAS6YJTyd+WxUSif+FQ9P2SppRt4lvUo
         MFHHXe6sE9V5O+hpbLchW1gFTqk/c2fMuXBldwYc+FW8+p9ntwBlo2fwld60Bnv/d38k
         2M74Rs95WN9Joy3mKCUoCfx8eKIAhEErfyO/RL3iMh+xvvCgXKDh6+I/2K41qbheIDiP
         No4VMYG68Q3vEUyyt0nahqDIeyalqqML9zEwRUbLQ7rnj3e0hJ1QI5elr/Fp4LRu2PzN
         f9Pg==
X-Gm-Message-State: ACrzQf03g51P8iw9YOALWsmIzB6w9dqp/DninJP3c4h2BKXw/Nr9f08T
        cjg74wAmZxpzSMe4O9LgbXmzNA==
X-Google-Smtp-Source: AMsMyM6YF1Ot+9V5drlAzDff3KujPHKAXkBxz0hQIsb2pJJFxWRH1341O2ZxT8TggMSOEsuLif+hKA==
X-Received: by 2002:a17:90a:b00d:b0:212:f91d:88c7 with SMTP id x13-20020a17090ab00d00b00212f91d88c7mr14690544pjq.112.1667218956067;
        Mon, 31 Oct 2022 05:22:36 -0700 (PDT)
Received: from localhost.localdomain (118-167-185-125.dynamic-ip.hinet.net. [118.167.185.125])
        by smtp.gmail.com with ESMTPSA id y123-20020a623281000000b0056bf24f0837sm4445483pfy.166.2022.10.31.05.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 05:22:35 -0700 (PDT)
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
Subject: [PATCH v5 1/2] ASoC: mediatek: dt-bindings: modify machine bindings for two MICs case
Date:   Mon, 31 Oct 2022 20:22:23 +0800
Message-Id: <20221031122224.1846221-2-ajye_huang@compal.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031122224.1846221-1-ajye_huang@compal.corp-partner.google.com>
References: <20221031122224.1846221-1-ajye_huang@compal.corp-partner.google.com>
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

