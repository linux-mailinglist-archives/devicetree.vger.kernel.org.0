Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 274AB5FF105
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 17:20:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230101AbiJNPUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 11:20:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230103AbiJNPUK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 11:20:10 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B1061725
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 08:20:04 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id o20-20020a05600c4fd400b003b4a516c479so3769941wmq.1
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 08:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=li+ooNBePGxuv5adSrcu60bPx2IUcKrfzonF2RWQwto=;
        b=epkJ13yY8mYBq+7snTc4JIPHLrRNtilHx+hAalOSDuQQtz7vFP5mgU+7k1Vhr0+rFX
         Ow1xaOHCWvrWzCFqYYcViguZdLp828mdx+FfUb4KmOsBySHDSICcntviZ2W336a6B20D
         Govk7liuLT6Y5gJiCtbaGpu98F7yk7qK8JetNh9QJtVR/7O41KdtOWcSszbYCKNjK+oO
         WCC7gTI69GwD8HTlXtRqZ6XJlbkQptIlMG/ITOBi6Yl+1IfFhrk2LfFXI4o9IVx7ynBl
         /C3aGlkxyXAtGdgdwX5nXm3acDaEmIiDA4A0nDoP2aAcHyT7Rw7wYJsMk8u9fF38G0Wh
         uejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=li+ooNBePGxuv5adSrcu60bPx2IUcKrfzonF2RWQwto=;
        b=CDdrJlF21CU1t089KD1kOBYDipf+CBJzMHXbuxBafZA7tJ2AEM5MCfCyEBboWnHT4N
         oox6E96fmUA/HgW3/hnH5i2V4FZaw9RSGF/STZZxsDxgSXPKMu0EubgBfmqHV7Vi4uvE
         hSkVPlco57G62cmNSWQpez1B4Q1UoQb06Nxs9eN4otgEdfzr79uHkfXmMD4AKjyWciOa
         Eyw+zBxLizWlE1n1hk04LyK+0uZE9VTgyY/kixmDmHvTQgz40z2UlYstPk8DQOu0vZ5G
         PgF+3jIMeGwECjv0CiJ2WVLPdZNBpEv2l5k5sQOJtV3bLAup6ET6/75DXCz5lhjii9Dx
         Eqog==
X-Gm-Message-State: ACrzQf2Z7yIwWGk7nYJ2H0Upobb1BqDdPDIY7Jhyoina+hIYB/ehZsuw
        Yk8qaOLh/MsIZXlPLKbQ86ywYQ==
X-Google-Smtp-Source: AMsMyM7nfhhjiRNQJTJ256AUcmhFf8h1a1IyYKXuRQ+avC22+kNiw+Sb+phmd/NqxY8Jm5rg3oVcSA==
X-Received: by 2002:a05:600c:689b:b0:3c2:fd6e:1fe5 with SMTP id fn27-20020a05600c689b00b003c2fd6e1fe5mr3974394wmb.99.1665760803237;
        Fri, 14 Oct 2022 08:20:03 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6241-7429-3074-96af-9642-0004.rev.sfr.net. [2a02:8440:6241:7429:3074:96af:9642:4])
        by smtp.gmail.com with ESMTPSA id z11-20020a05600c0a0b00b003c6bd91caa5sm2818223wmp.17.2022.10.14.08.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 08:20:02 -0700 (PDT)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Fri, 14 Oct 2022 17:15:54 +0200
Subject: [PATCH v2 01/12] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v2-1-8419dcf4f09d@baylibre.com>
References: <20220919-v2-0-8419dcf4f09d@baylibre.com>
In-Reply-To: <20220919-v2-0-8419dcf4f09d@baylibre.com>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        David Airlie <airlied@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jitao shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     Guillaume Ranquet <granquet@baylibre.com>, stuart.lee@mediatek.com,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        mac.shen@mediatek.com, linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org
X-Mailer: b4 0.11.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible for the HDMI PHY on MT8195

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index 0d94950b84ca..71c75a11e189 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -28,6 +28,7 @@ properties:
           - const: mediatek,mt2701-hdmi-phy
       - const: mediatek,mt2701-hdmi-phy
       - const: mediatek,mt8173-hdmi-phy
+      - const: mediatek,mt8195-hdmi-phy
 
   reg:
     maxItems: 1

-- 
b4 0.11.0-dev
