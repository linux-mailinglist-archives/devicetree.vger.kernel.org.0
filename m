Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AB7169998F
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 17:12:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229752AbjBPQMY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 11:12:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbjBPQMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 11:12:22 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 636F64D622
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 08:12:18 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id m10so2369117wrn.4
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 08:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Uam+EfbMJvYSMYj1PNEm4eMKYS9JSHriCql+8aR0/Y=;
        b=uG6JP4J5s4VgCLeaaSMrrYpMUkz7e4/+QoqIn2zymNuW8AGZIWurM14kCbo0hv7w8C
         xiAFyM3gIPNHLY7UQRPNKfQpab5CBmhzgBs1147o4xL3s9XEebMW0/EW5HEqg3T4i5cw
         lcj5Qt0nvvUeJJACn73GWUboKFIVQZfcAlCLEY4oTgbUTDXVdKOPcDZeEc8VbAH4lCGj
         QMfEqX7nU10RTyrofs6XrHhFJXHYh9fNfeoH2bz5i42bZW2GC02X/OfNXNzz37faNxPs
         kWes3m0nHyJq9xgQNTXRNPOM3XiuefIl4RVcOy6E8COMZiQQHmKL7zTKPZKSPbow/hjk
         ycRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Uam+EfbMJvYSMYj1PNEm4eMKYS9JSHriCql+8aR0/Y=;
        b=3UV5sThDU1VmG3zOPFSnaZZ53qgjiYw13uaVtA1xH0utWO+S6DS6OmM16sEcR6VVOg
         KNqqssxUwy0m045H9gzStc6u/lbso6zuG/ikIQVdroSN1nYmooOVouRR4ryQpDfSXy1Z
         W4oM0EFMMdL4cukd7xTj+c4AJuYbfrsI5dZe15wuTS7ZOoeyRqUlvFuHfEi8HHl4Xi/C
         1bWBDcQNE30cReKGyKKlJb7mQL843cFEeHQNUh6K63ImaXCvcmYPQOKGSBofM4oocdGL
         lEPty0m316MSCabkQIhecT1tuBbK1iznoiJd1Le70k+hg19gKLxX0Jy0JxPnRUrF/O2u
         /RYg==
X-Gm-Message-State: AO0yUKUSWoTrCB5aUX2Ht8lsuHB6nCEHWrF7L4vlouRHcTIFirmnYQeO
        1kPUIsZXtGPOc6GJbjm4pDvVEw==
X-Google-Smtp-Source: AK7set/JKqI19u8VBblreToMVeV9IFpXFUeRASqKuwKNy3pTpYRD6UdiZmFXkRth/8vgC4ASzyhEgg==
X-Received: by 2002:a5d:688c:0:b0:2bf:1ec:a068 with SMTP id h12-20020a5d688c000000b002bf01eca068mr4816134wru.53.1676563936902;
        Thu, 16 Feb 2023 08:12:16 -0800 (PST)
Received: from [127.0.0.1] ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id m16-20020adff390000000b002c56a1a5a95sm1845586wro.30.2023.02.16.08.12.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Feb 2023 08:12:16 -0800 (PST)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Thu, 16 Feb 2023 17:02:25 +0100
Subject: [PATCH v8 1/3] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195
 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20220919-v8-1-a84c80468fe9@baylibre.com>
References: <20220919-v8-0-a84c80468fe9@baylibre.com>
In-Reply-To: <20220919-v8-0-a84c80468fe9@baylibre.com>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
        Jitao shi <jitao.shi@mediatek.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, mac.shen@mediatek.com,
        stuart.lee@mediatek.com, Guillaume Ranquet <granquet@baylibre.com>
X-Mailer: b4 0.13-dev
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
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
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

