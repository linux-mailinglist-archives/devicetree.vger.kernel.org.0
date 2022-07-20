Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F66A57B8CC
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 16:48:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236470AbiGTOsr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 10:48:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235887AbiGTOsq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 10:48:46 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2097A51410
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 07:48:42 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d8so6506084wrp.6
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 07:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:date:subject:mime-version:content-transfer-encoding:message-id
         :references:in-reply-to:to:cc;
        bh=CQqnkWpbbaS2vb+KWbLHEgGJa35COvg0f6M4mKs8LZA=;
        b=gM4/9BiXFiOOF1pc8rgeisC4TUSBONj/s9Sy2t01T6VAZqA0lBUcN3sRDHFYbZtOI6
         fPmNsPEJ99S3Xd0i+4MxIwLP5upJaJfO9xo8gZuMcpnlDLuIz1SraiwzqYZDA8OcCPB0
         7ZrIqTKhUJwbVIgRP+eHTW+mKi90Rke39pJ+cvi96yAS1ymoDAexRKFyNVLl2qSyWXpg
         hXdJtfEzbiPVk3uYcg+8IGhNTtPgNFv6wotdrb/3sYMTJ3tjSrWC5Ej/UN0o16ah9Pto
         M0IDd6ZuZmpMsLe/MKChPecYegGtL3KV4ugh9UxiL0g3mH1AJ1Gv17vZzYAkKPQ5+obJ
         tNig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:date:subject:mime-version
         :content-transfer-encoding:message-id:references:in-reply-to:to:cc;
        bh=CQqnkWpbbaS2vb+KWbLHEgGJa35COvg0f6M4mKs8LZA=;
        b=GX5m27bT6GE/gaPhwzPIgp5/Lolv3o9JAGed4mg/km+I5dcKWpglSaO24ypOSAu+/n
         JkqFOMSYepdHmwwelLSxOGwY7mUozuFpJxDcspvNjvS5pBqO+T+H7BHmrxrSxt5bbgJ0
         gXp53tpC+hTc2fkpQyLMRwG+6bi/l/6eULEFHMyRA1VtAZTqzoKQvrKwsM1AxjwVg2Mz
         8Os94fPB0023MD2cj+i3jobshpmZvXTaKsBPfxIBGVFQ3QwOKjdJkGorKza223DgMJg6
         POmJrJQyndQUZJ6x0KgxUHhQI3dxTWoKTy+XCNkfBfYmi0yQgRiw93pYCsSGQFPQr/lQ
         KeIQ==
X-Gm-Message-State: AJIora/4ksuzINjK69/MFsv3OD0fFDuV9XyMQwJkZovyOdYJlFYwmbpM
        wj+Avwb/QJ3SiHxxGmRZchXoDw==
X-Google-Smtp-Source: AGRyM1vSS3WWayKFuKSqLFjnoDRL0BND5b5er92x5l1u2SV4uA4ZpHgfX/joTCI73kGMN0viOyARJQ==
X-Received: by 2002:adf:e911:0:b0:21e:3a7b:495c with SMTP id f17-20020adfe911000000b0021e3a7b495cmr6677995wrm.388.1658328520469;
        Wed, 20 Jul 2022 07:48:40 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb19:85e6:1900:c639:22f8:bed9:44dd])
        by smtp.gmail.com with ESMTPSA id f8-20020a05600c4e8800b003a31673515bsm3321121wmq.7.2022.07.20.07.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 07:48:40 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
Date:   Wed, 20 Jul 2022 16:48:38 +0200
Subject: [PATCH v1 2/6] dt-bindings: mediatek,mt6779-keypad: use
 unevaluatedProperties
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220720-mt8183-keypad-v1-2-ef9fc29dbff4@baylibre.com>
References: <20220720-mt8183-keypad-v1-0-ef9fc29dbff4@baylibre.com>
In-Reply-To: <20220720-mt8183-keypad-v1-0-ef9fc29dbff4@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        Fabien Parent <parent.f@gmail.com>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Fabien Parent <fparent@baylibre.com>,
        linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.10.0-dev-54fef
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

writing-bindings.rst states:
> - If schema includes other schema (e.g. /schemas/i2c/i2c-controller.yaml) use
>   "unevaluatedProperties:false". In other cases, usually use
>   "additionalProperties:false".

mt6779-keypad includes matrix-keymap.yaml so replace additionalProperties:false
by unevaluatedProperties:false.

Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

diff --git a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
index 03ebd2665d07..ca8ae40a73f7 100644
--- a/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
+++ b/Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
@@ -56,7 +56,7 @@ required:
   - clocks
   - clock-names
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
b4 0.10.0-dev-54fef
