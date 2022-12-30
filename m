Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6084D659C0E
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 21:35:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235478AbiL3Ufv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 15:35:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231285AbiL3Ufr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 15:35:47 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB314CD9
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 12:35:45 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id r26so26508100edc.5
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 12:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dWHvYV5ANxh44fAnbu/SIKvM1eyaybv8RI9j5qMIu70=;
        b=uS5XwbN6Cd+quarAEaPBZ8Qdm2GRtFW2gLwHOn/gFhRLB9JRyTLMoJ1sB1XetKmoyX
         BT67LhRe+AFPWthSJvyCZDvdBwbkUw7Ck5kZwAGEKtM0QbyW1yzzldtmmKfOqLlb9rH0
         JX5TjIbE8SLWFJEJE6dUA90Hwh6dHwibXprvaISB/FmC3ugguyJCB2l7MlPdggocSV0W
         J9sv1qOrdBikPYKoqEyx/c/WGjYZPteiRTAOkmxEk4bQhJFeGU3wGN9vh57B/PA/jnFi
         QD3KQHC1d2IPJNymVqhDWLineSflMcVg3IfKN7UQ9UVqbVz+3YX2aVUmairzzZq0z/7A
         7YMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dWHvYV5ANxh44fAnbu/SIKvM1eyaybv8RI9j5qMIu70=;
        b=GUjj0ZcWAVSYM81lmp/IspiIsXZk507Jj5cTRccfBEIi/zmWfQdspGIGQ27kV0krF2
         NiA9fhryK40yD9y/4WNre1Nd5FSMD8OCFtwcobQeCqdViF1X+8okSFnizhkGgJkgN9Mv
         k5H11tH0rkcrDe4HqybaGmXOhaEgwHC0JacayQeKAU4fCGW8kURxDVRBaAWc/g1/eMZU
         BlJZLNXINY6NJxXLSjctN46wk352YqAPOvCGyKLdHGr8TBAFNio7c0pycAEsAN529sh5
         I79G7oSoliF5IR7MayHKBdNnnSZe8YVRzWVu+YPEmHi7tWD66qcJmk3mnpJYlUmM/x6G
         YoqQ==
X-Gm-Message-State: AFqh2kr9SBLT+LD6z+uNBjCTl3HiEzUyfUpvzExKJ8e0IkaQBmS+Z/GK
        GvVqUOsqn8eI2wzdhNwzfTS7BQ==
X-Google-Smtp-Source: AMrXdXuy+dEc24z5+ONQrU6m153uiwdEz9TEz5Zy0BmpYrbHLTfOxwHWujhx9euA2k8AZL/eqIbdBQ==
X-Received: by 2002:a05:6402:b91:b0:487:1a83:a6a0 with SMTP id cf17-20020a0564020b9100b004871a83a6a0mr11433674edb.13.1672432544213;
        Fri, 30 Dec 2022 12:35:44 -0800 (PST)
Received: from predatorhelios.fritz.box (dynamic-2a01-0c22-cd9d-4b00-ef17-3c78-1696-7315.c22.pool.telefonica.de. [2a01:c22:cd9d:4b00:ef17:3c78:1696:7315])
        by smtp.gmail.com with ESMTPSA id c10-20020a056402158a00b00482c1f1a039sm8350500edv.30.2022.12.30.12.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Dec 2022 12:35:43 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        matthias.bgg@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, gregkh@linuxfoundation.org,
        chunfeng.yun@mediatek.com, linus.walleij@linaro.org,
        lee@kernel.org, maz@kernel.org, tglx@linutronix.de,
        angelogioacchino.delregno@collabora.com
Subject: [PATCH v6 1/7] dt-bindings: arm64: dts: mediatek: Add mt8365-evk board
Date:   Fri, 30 Dec 2022 21:35:35 +0100
Message-Id: <20221230203541.146807-2-bero@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221230203541.146807-1-bero@baylibre.com>
References: <20221230203541.146807-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the Mediatek mt8365-evk board.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 2275e5d93721b..ae12b1cab9fbd 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -244,6 +244,10 @@ properties:
           - enum:
               - mediatek,mt8183-pumpkin
           - const: mediatek,mt8183
+      - items:
+          - enum:
+              - mediatek,mt8365-evk
+          - const: mediatek,mt8365
       - items:
           - enum:
               - mediatek,mt8516-pumpkin
-- 
2.39.0

