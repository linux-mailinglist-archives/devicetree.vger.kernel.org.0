Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB11762E655
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 22:05:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240787AbiKQVFd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 16:05:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240574AbiKQVE4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 16:04:56 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5970D905A0
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:12 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id t25so8191403ejb.8
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 13:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=psBkHMqowoOrMmAFezeNjkHyhvSdQLEEQY2n96pydj4=;
        b=lC07iQH1jl7tfyC4uuwpxN67tYK9v3Yjp9BvXxCSdX6Kr0gmCbNPBdwmbJH6C3IBqb
         soFQhNTCP7/AliDZ5iSeq0RwdGF+EzRCjT1LpsnXm7t/TYRvEi9oxspeX2RvrnzjoI3q
         kEguI2EWVejcIuEo6SqvkZl27KYYNVc5zDhOjp6G6X4eWHO/Py63/bOIiMBOknnmRlTV
         8mQyuQ8AYKr2AN9DyT+F47KSk7ZPwz0WzSX+N6zLumlfhW7hxpwmXXEq4NHGzDce30In
         huAYYvKHB2gD2iq5gA9YryORcTIFpgxRadwCS7AJ5rG0mQLo9GGet5JFVsSOCr8hCbb1
         IKQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=psBkHMqowoOrMmAFezeNjkHyhvSdQLEEQY2n96pydj4=;
        b=FbRvVXlsPCk9iuAgQ13bVu0Yonm6TV5OriXGWvN11oU9gZYm16trumKdd28IjA861s
         gkxC3GM4eXWIZ1JoZlqnVNSkjnn1Ij+C8Aj7IVyFTERpc0nNaDh00PNYrXJT0xuIuPS3
         KGkQFofl6PoRaw9yFFRlFxZSucCaKD0elfw8M2L49y1nzrBhYGqAfBHiieBjkZNWcrxd
         oLg5bx48Lord1Y6FFDkalUm3SbA0Zexr4ZQo3yEn99OOO3HzDUm4cvztzaVxC+IZp6u0
         OssFf7DRGjIz18mGtLRX7IzF7iyyxUzAb1aoW2nvzwXkfDvwCvHGmwOi93g9uaa4vmdj
         54Gw==
X-Gm-Message-State: ANoB5pkSiWK0OfanMB5J0IxpyeIjft7I4usbrlnQ5Ypu1zvGIyAIgxY+
        +cv2zow2s6/Oj4XXQu4i+FNQiA==
X-Google-Smtp-Source: AA0mqf61l4SIM8McX8K8sLWdW8glXhfskZ3bRupcaz7MKTOz5I2y9yCTpxnMADlL4hRsjV1FKMhlfQ==
X-Received: by 2002:a17:906:5251:b0:791:9801:e48a with SMTP id y17-20020a170906525100b007919801e48amr3466134ejm.738.1668719048412;
        Thu, 17 Nov 2022 13:04:08 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7cc8f000000b00461c6e8453dsm970807edt.23.2022.11.17.13.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Nov 2022 13:04:08 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogiocchino.delregno@collabora.com
Subject: [PATCH v3 5/7] dt-bindings: usb: mediatek,mtu3: add MT8365 SoC bindings
Date:   Thu, 17 Nov 2022 22:03:54 +0100
Message-Id: <20221117210356.3178578-6-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221117210356.3178578-1-bero@baylibre.com>
References: <20221117210356.3178578-1-bero@baylibre.com>
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

From: Fabien Parent <fparent@baylibre.com>

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
index 80750b0f458a8..25934871a4d85 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
@@ -27,6 +27,7 @@ properties:
           - mediatek,mt8188-mtu3
           - mediatek,mt8192-mtu3
           - mediatek,mt8195-mtu3
+          - mediatek,mt8365-mtu3
       - const: mediatek,mtu3
 
   reg:
-- 
2.38.1

