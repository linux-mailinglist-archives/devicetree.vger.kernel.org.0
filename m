Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 563B36132CA
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 10:34:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230265AbiJaJe1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 05:34:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbiJaJeX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 05:34:23 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57E1DDCA
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 02:34:22 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id j15so15106021wrq.3
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 02:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pIOCfVMQhu6G9ENJOqDHIKDLMubngYMP9+O2JUUOSo0=;
        b=zFXkxtX1PFkSjJelo7kyZc/Zq+XsOPZRH2RbVLitW3lM+AzsMjRLK32yQpgYQEJhbU
         mSPbA2fFm48bLL6Xl0/C+HO8q04EJLWrORrFVCkgADHxq7FAXWLtZVuMFoOfSGmSdwQ2
         5sQPEt7d9F2biobOm5RSqIB9tfFzaIkFoVq9WcvY+LBWYdLyDKsLQDNBwUc7xUESxhJ6
         m1BeT6H6mWqP6LjFb5T2LlhVzwfKtSfPDyexYKk6vYauObhiW1dm0/cDFwVsjGKCl1/s
         OZoOhR6tMagY2e+6LQP29qPSkUohw8V8x6hqQZ0wj9PlR6RR81p8v5HZPoT4HWk0+wsK
         mZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pIOCfVMQhu6G9ENJOqDHIKDLMubngYMP9+O2JUUOSo0=;
        b=yghOVggY8mbiHWPuExndzybll+vEDra3P98jV3MegQg8mepEqGxDYJEcGko73HQzRE
         kqo7lcMlZcT9HEIbVpg2g+gdCyBm1k1F6cq9cVyAi9nOmAlS+aHW7Bcomsjcv4xhfmjQ
         BDjX5X87eE2KrZxliZuqc36uCrAgM0nbpMQGddMcEZbZpBpOFZZSK7KrssedCW89GFnX
         xORgEWP79eCZVpTwd5cLdEuiOe4KpEWUDtVEWY4sNqemLi3n8UTHKwAjJbzba131d8Dz
         +HeZznckqIHp/ZfG6pxUNX+AcAUYhWsdkZ3JdKZ9i8PifOgOi84icuYkgVoT4I3uQ1PR
         wj6Q==
X-Gm-Message-State: ACrzQf3Fp7wKBarQWZclcm+34qboTq+hY7FUVCCChr/6r9dDE5PnRGHK
        TLnU3g/XFe6OrMbAypMM4iD15w==
X-Google-Smtp-Source: AMsMyM7tkQKYDQjctrHNYNq3vnQkCiYI/lOahkZoAzSGPvKC6fMPx4CkMjAjTgXl+jOuHxq4Yl2aUA==
X-Received: by 2002:a5d:6901:0:b0:22f:b097:7de6 with SMTP id t1-20020a5d6901000000b0022fb0977de6mr7625253wru.373.1667208861911;
        Mon, 31 Oct 2022 02:34:21 -0700 (PDT)
Received: from fadwachiby.lan ([2001:861:3104:1980:6db3:63f:b30d:9361])
        by smtp.gmail.com with ESMTPSA id t16-20020adff610000000b0023538fb27c1sm6547566wrp.85.2022.10.31.02.34.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 02:34:21 -0700 (PDT)
From:   fchiby@baylibre.com
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Johnson Wang <johnson.wang@mediatek.com>,
        "Zhiyong . Tao" <zhiyong.tao@mediatek.com>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Fadwa CHIBY <fchiby@baylibre.com>,
        Rob Herring <robh@kernel.org>, Sen Chu <sen.chu@mediatek.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v3 1/3] dt-bindings: soc: mediatek: pwrap: add MT8365 SoC bindings
Date:   Mon, 31 Oct 2022 10:33:56 +0100
Message-Id: <20221031093401.22916-2-fchiby@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031093401.22916-1-fchiby@baylibre.com>
References: <20221031093401.22916-1-fchiby@baylibre.com>
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

From: Fabien Parent <fparent@baylibre.com>

Add pwrap binding documentation for

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Signed-off-by: Fadwa CHIBY <fchiby@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/mediatek/pwrap.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt b/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
index d24e2bc444be..12e4b4260b40 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
@@ -30,6 +30,7 @@ Required properties in pwrap device node.
 	"mediatek,mt8186-pwrap" for MT8186 SoCs
 	"mediatek,mt8188-pwrap", "mediatek,mt8195-pwrap" for MT8188 SoCs
 	"mediatek,mt8195-pwrap" for MT8195 SoCs
+	"mediatek,mt8365-pwrap" for MT8365 SoCs
 	"mediatek,mt8516-pwrap" for MT8516 SoCs
 - interrupts: IRQ for pwrap in SOC
 - reg-names: "pwrap" is required; "pwrap-bridge" is optional.
@@ -39,6 +40,8 @@ Required properties in pwrap device node.
 - clock-names: Must include the following entries:
   "spi": SPI bus clock
   "wrap": Main module clock
+  "sys": Optional system module clock
+  "tmr": Optional timer module clock
 - clocks: Must contain an entry for each entry in clock-names.
 
 Optional properities:
-- 
2.25.1

