Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67F6D67EA2A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 17:00:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234200AbjA0QAJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 11:00:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234102AbjA0QAG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 11:00:06 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82C708660F
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:00:02 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id b7so5393404wrt.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/FOgQ0NZG0jwRqHnOj//3vzxfhNSgcxkGZMIRLxc18=;
        b=Z581dVEflQIlkmAKVpzH1Hx78FcKmqgluOxsgZVKB34gp/ileDSKefoZZa6XtitIdh
         VeyfnjDVQp2URi7NSUQ6bfXScFnBxGluMOrrpalAE1hlJYoypTK5wriQD7F6LWFf5hSS
         cqAbhI+M1KnpkLcR1KxQKLrj1pvLyK6A18TsnpbNXC6/AiRIFHvd5LmfZ6DAE+N4NsPN
         jbWWNZNKISVB16cKK348o+yXYUhLdlwEZC8Iq5M8hxtXRVb6TNeLqE/FxYA64xUYbnC0
         2AfgGKURgK4IW/6uTHPr+SobQH2IGMduVh3aCIULGx8M1W4QTqmGfUwX7vhmtNcGF1aT
         GCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y/FOgQ0NZG0jwRqHnOj//3vzxfhNSgcxkGZMIRLxc18=;
        b=QKnMG7SH2VWsmq0CQXZG1IuW2i7mP0f3AWAJf7/ITdCd4lP8Va7O3385rSxrTHLwPw
         28qK9vCC1vgVMODMwFXHXQFev+VUPeIebDbBm5mPTKDJQU3bRT0DV+mwZZTt1z0m7JqX
         1Tz+K5/8eJ1hHP5DnnNIR8UfNa8qT2b7GAYw94vvUhp6yHzcDqMxeO3WpXPz/dvSaE6W
         6mkK0QHfKqaXiDtbm3f0M2LGFmw8BHlYfAizLludWoV5faP+AXJgJIm0RxlwP1LTuV4Z
         Cj3anEEEsMEtywYkT64AhYzT+L4f1NMR7LAux02joxNFMKtiE/sqhZ54CXTZLV//AGOw
         ZDCQ==
X-Gm-Message-State: AFqh2krEZWu+GcjJPXFpT2yfjIKLOETtQCPVgb+tBakgLLrsGU7aRmBG
        vZU8UzKT0mlvr1axnv1O8p+b4A==
X-Google-Smtp-Source: AMrXdXsfxZfsB12h/I+4kDdqKwJTa4EmVK4edFjSQJRMCkCqjHfeJdCXRiwlufDWBONCnyUY10a/Qg==
X-Received: by 2002:a05:6000:8d:b0:2be:3a6a:f565 with SMTP id m13-20020a056000008d00b002be3a6af565mr26758952wrx.38.1674835200796;
        Fri, 27 Jan 2023 08:00:00 -0800 (PST)
Received: from [127.0.0.1] ([2a01:cb19:85c2:1100:7fe1:513:212f:568e])
        by smtp.gmail.com with ESMTPSA id b11-20020adfe30b000000b002bfcc940014sm3171942wrj.82.2023.01.27.07.59.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 08:00:00 -0800 (PST)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Fri, 27 Jan 2023 16:55:08 +0100
Subject: [PATCH v5 1/3] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v5-1-cfb0e5ad29b2@baylibre.com>
References: <20220919-v5-0-cfb0e5ad29b2@baylibre.com>
In-Reply-To: <20220919-v5-0-cfb0e5ad29b2@baylibre.com>
To:     Vinod Koul <vkoul@kernel.org>, Jitao shi <jitao.shi@mediatek.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Airlie <airlied@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        mac.shen@mediatek.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-phy@lists.infradead.org,
        Guillaume Ranquet <granquet@baylibre.com>,
        devicetree@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, stuart.lee@mediatek.com
X-Mailer: b4 0.11.0-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible for the HDMI PHY on MT8195

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index 6cfdaadec085..f3a8b0b745d1 100644
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
2.39.0
