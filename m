Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8E37714C38
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 16:37:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230035AbjE2OhO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 10:37:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229993AbjE2Ogy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 10:36:54 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C7BFF9
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 07:36:49 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-96f7bf3cf9eso663543966b.0
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 07:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685371008; x=1687963008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=telyeAKdwo8lnoUKAmP+74qLgfYo7FAmVRnOD3rnVlA=;
        b=3QfEh8YT8VlS0OUoEUSTFqi+WztJAYkk4PhkEglwIH04qFEanNcPwOOPmCHJ/1lDt/
         yVqGExXRre1c1nr96wxJP7QnC4JprkZWqeQ/BtThg4TKlroQmiOxv+A+O6yueYTaQWhz
         7sLhSdW9avkV3hB82XpYzgZLK7b8O6gmYyEgU92a/RfFuwlymQgoluWFq2jBEGvGBisj
         kTOHOhRtav6y4SNBrQweLvEkORs3EZBvdATLVMBHuHW+iMoPqDWSR19jxiIPjeK9uNCk
         O4a0rhlExDisIvCEYiVQmeypKwJ1F2bvaABfy3THAitdx3yRpCG7r+rDD+MYgZCbfqIq
         fwkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685371008; x=1687963008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=telyeAKdwo8lnoUKAmP+74qLgfYo7FAmVRnOD3rnVlA=;
        b=CFPBkknnX3E7tmMdiMLccUHOhYzwDTx9psmHbGKsV72HtZeB9bF2W7cQzjf224TKIg
         FoqrCRuGWw/clK7UFZF2ZsZNZPle0s1OOtatXBZFu0VCWPY63h6Hq+ux1YbURSB0SxxR
         ouvZ+hEM/A7auldwTybt//aJiGsgvAYszMvrfhMSadvic7SK6epgIQPKxLe33GRW2tE+
         rp3IHpe7t8GPT4PZDARIbqw1DH+TvvMef4f1Eiw9hDMv+qJv/qHqfCvP17TvEIzDn203
         Hj1iUkCv+HfcfhrXs5R92r8UclaRUmjgP19cx8YrmEp1oop0ZVsDOz5IA8ix2osGOb9o
         yLOQ==
X-Gm-Message-State: AC+VfDy3BsfGCfEtKBwBU1dm8iVNSjYUH+ynE0PPt3yccypsziPWYIPZ
        3wTn8OzN8T39j4JCPNvqj1Vw1Q==
X-Google-Smtp-Source: ACHHUZ4QgZFbnnhdPEGrQaTJdIUZ1I3VKBbk9dR2dNCddcnlogHxJeDuEb3qF8lU0zYWvc3pVjZAYA==
X-Received: by 2002:a17:907:7f0b:b0:96f:e080:4f56 with SMTP id qf11-20020a1709077f0b00b0096fe0804f56mr10191410ejc.31.1685371008553;
        Mon, 29 May 2023 07:36:48 -0700 (PDT)
Received: from [127.0.0.1] (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id le8-20020a170907170800b0096f803afbe3sm5993654ejc.66.2023.05.29.07.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 07:36:48 -0700 (PDT)
From:   Guillaume Ranquet <granquet@baylibre.com>
Date:   Mon, 29 May 2023 16:31:04 +0200
Subject: [PATCH v4 7/8] dt-bindings: display: mediatek: dpi: Add compatible
 for MediaTek MT8195
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20220919-v4-7-687f09a06dd9@baylibre.com>
References: <20220919-v4-0-687f09a06dd9@baylibre.com>
In-Reply-To: <20220919-v4-0-687f09a06dd9@baylibre.com>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
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
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, mac.shen@mediatek.com,
        stuart.lee@mediatek.com, Guillaume Ranquet <granquet@baylibre.com>
X-Mailer: b4 0.13-dev
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add dt-binding documentation of dpi for MediaTek MT8195 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index d976380801e3..cabe4031729a 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -25,6 +25,7 @@ properties:
       - mediatek,mt8186-dpi
       - mediatek,mt8188-dp-intf
       - mediatek,mt8192-dpi
+      - mediatek,mt8195-dpi
       - mediatek,mt8195-dp-intf
 
   reg:

-- 
2.40.0

