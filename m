Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D57164731B
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 16:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229592AbiLHPcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 10:32:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230385AbiLHPay (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 10:30:54 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BEC984B7C
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 07:30:49 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id o5so2056663wrm.1
        for <devicetree@vger.kernel.org>; Thu, 08 Dec 2022 07:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g6+ABKaCFT5+1C0Y5clbHMJQa6kjF8TIULfr4cCgl3o=;
        b=LCM7oOJmoRy3wGsCUMZoYwr4aV/73j1pYFhJO1iyfzfdj3blRZvKZ9A7suusfQN3IK
         HVhZRy+PL2X0cNNsC5KQp5DgCNKpAttJ396X3I4R8ldvQdKBGe3fJ1ik2epMa1x7tqao
         qDET9+GWyGzE+IFBrTufBYCQDV9QFNzm0R84bD3/QDUSfHpjgKHT6PileWavmSptJc2n
         7vc/NwPAJQFmaeiZh1ightM1l2fYFyRF4SPdvA2O63R1QabasL939xMxgR1e7hDJHTII
         xZ5a8x3tumNJhtq92nPdzh9DyWPqH3fQ6puB38waQgqaZOWPPFmBcfhremrScaTkRTS3
         4BnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6+ABKaCFT5+1C0Y5clbHMJQa6kjF8TIULfr4cCgl3o=;
        b=54TKqdVoNSmR4UKAC+UN79lXIFgH/ASaR2JtXC5sIn4VwzA3gOJiI1WbFgR+u9U8Rv
         YD72XLF7vIrYHHShdHCcVVZuRx3wJY2OhCTpTPJ3MzdQwE3haYreCjWlenM6dKVZ6jBZ
         sbf5wfPGH5AMsJi8bkY43acS2+qngacI0hzQ8PuyiDJy5H6UKAfG/hw92h/2/NAG5VZx
         +5W+2lnDUt8a72sXoVxta6QpabDp/xxkawCxxg2IoPHPofMM174fvpPObe6Qysi5Ig2i
         gGQquf6FZJ/kmdT7qgky740dCwye3dGQZZaRt5reIMc5rmxJ36CojM2W1/sM9kedkFd2
         ai7g==
X-Gm-Message-State: ANoB5pls1YE5285YJHZr90SMuV1c31unt4vuPTPXDu6r6EZGZzZOqZu0
        ayM65NAPv+aMLMz/Ldk32A/NaA==
X-Google-Smtp-Source: AA0mqf5FOPXltuZLPneEbB5VngzDKQGwN6thrtAgUY/6DvNUrqLQncoLNWjNWmFSiUbzrk74ARetEQ==
X-Received: by 2002:a5d:6407:0:b0:242:2cb4:6fa2 with SMTP id z7-20020a5d6407000000b002422cb46fa2mr1703001wru.31.1670513447701;
        Thu, 08 Dec 2022 07:30:47 -0800 (PST)
Received: from predatorhelios.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id h10-20020a5d504a000000b002366553eca7sm10673239wrt.83.2022.12.08.07.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 07:30:47 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v4 6/7] dt-bindings: usb: mediatek,mtk-xhci: add MT8365 SoC bindings
Date:   Thu,  8 Dec 2022 16:30:39 +0100
Message-Id: <20221208153041.3965378-7-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221208153041.3965378-1-bero@baylibre.com>
References: <20221208153041.3965378-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
index 939623867a646..3b92725bbc99b 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
@@ -34,6 +34,7 @@ properties:
           - mediatek,mt8188-xhci
           - mediatek,mt8192-xhci
           - mediatek,mt8195-xhci
+          - mediatek,mt8365-xhci
       - const: mediatek,mtk-xhci
 
   reg:
-- 
2.38.1

