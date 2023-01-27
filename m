Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72FEF67EA9A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 17:16:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234759AbjA0QQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 11:16:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234735AbjA0QQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 11:16:30 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10FB27C70E
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:16:19 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id l8so3817018wms.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 08:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Uam+EfbMJvYSMYj1PNEm4eMKYS9JSHriCql+8aR0/Y=;
        b=FBohCa2b8WdTVp7MGVRDS3dLRaOrbrBi2uuIZf966p4bOyGhSJrUVBkAnB6x53m/tg
         VFV5p3BR5QIP0KDyXiuxRd9nI/A8W2Wwjl0p5aVV1a5catHDsxLcXVznB40owoyHVpsH
         7B4RzoNfs1IBKgCCtaya/LHcJSdk3M/U61O5XwOxlFBSJaYrn7XkbngYgHEhVIJl7byF
         7s3j7P7nw7jNa5Vvnd2v+0z2gn+1rKfozE6NFBAixu+f4ELSkxL5qH/2vp29jjr2yM/w
         jjvsgLCRzXAh2gEBTID1HnBUIegUbh/AfMrR0jLG3se0tuPvIcmyW5JoM/m2VvQiKlIU
         K0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Uam+EfbMJvYSMYj1PNEm4eMKYS9JSHriCql+8aR0/Y=;
        b=kqJbAZ6LaV7shDicgtx+Ff58S9Z86qQV1NyrLfkMmt8nVW2Aw5O8FCYswhe+bW5GWn
         X0OWSMEuJ49/4ukNfZKsNGWin1sO9o49Cp0uZ2l9cL6LDVq1dXNToLB9imBe02d0fsQ9
         huvSlzlM5LTASUgA0WRPNDsKS9GCC0Kvpmb3zeVqKj/JkMtK5RrFBzAFG4lLr5RBqyad
         tv76pIRTgySihH7xpYaIfhPFETWfHhhfEZwFThHNMeqxp7kYtLbdqvsqLL0E3BrP9n4h
         YFh1d0zpIYgfebbEyrt9sUyUPY+Q1So0aF0Z67F5LjyeJMHJTaYzqsM6JRFU8Fdu2sIV
         mifA==
X-Gm-Message-State: AO0yUKWf1/rglOZeduzibVvEa5YqSlZDiUQnLSqRhHgSgoSDTRwxqQd5
        5EP3COWy2hC8kOqT2JEKkhVFHg==
X-Google-Smtp-Source: AK7set9Qn6JT80gbgEpgbkrZBDPOZ76VGGhfU4VDXCnUQBx/8KZXu0IA+WUdtlaq99ASdKMUN1G1Kw==
X-Received: by 2002:a05:600c:17c6:b0:3dc:3b1a:5d1f with SMTP id y6-20020a05600c17c600b003dc3b1a5d1fmr2527696wmo.0.1674836177641;
        Fri, 27 Jan 2023 08:16:17 -0800 (PST)
Received: from [127.0.0.1] ([2a01:cb19:85c2:1100:7fe1:513:212f:568e])
        by smtp.gmail.com with ESMTPSA id e19-20020a05600c439300b003cfd4e6400csm4744566wmn.19.2023.01.27.08.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 08:16:17 -0800 (PST)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Fri, 27 Jan 2023 17:11:34 +0100
Subject: [PATCH v6 1/3] dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220919-v6-1-2f641c422cb6@baylibre.com>
References: <20220919-v6-0-2f641c422cb6@baylibre.com>
In-Reply-To: <20220919-v6-0-2f641c422cb6@baylibre.com>
To:     David Airlie <airlied@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        CK Hu <ck.hu@mediatek.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jitao shi <jitao.shi@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, stuart.lee@mediatek.com,
        Guillaume Ranquet <granquet@baylibre.com>,
        mac.shen@mediatek.com, kernel test robot <lkp@intel.com>,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
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
