Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E12A764C0C7
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 00:43:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236948AbiLMXnz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 18:43:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236843AbiLMXnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 18:43:53 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35A6B63AF
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:43:52 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id d14so20156088edj.11
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 15:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O64VFuluv/+RAMm/QFXRr7gO6/gguZoVuAfGvEuXsBQ=;
        b=F9RT9ErcDtYTRk4QvJML9Q2BwydzJrsY0EeEGEb3lyQZkpJPZ1825l40mqF59gmBf6
         IEP8/v5jMBBYbDVWMW35gsJbsDp6lrE983cm5GCT4nE4ccUju771j2+52gLQlO8oilL8
         wnWt/26odfyzZNddt7U43WNY+7mNwD2VuKihmUMbVw7x3poO0Tyk2AVzjzS+U8ahunkJ
         ZKsvl4t4z4deKT11qyMyAXvqQdylk1DXpf5MLAHcWsr7LWp3E/wQOdr9J03F0KskP+1x
         riOq9XMk9doRBgxrxIBs3e83RozJhm+4mnJHoQL2RzxKMt0Jbbca/oB0f5BNbaw+Wed2
         CUtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O64VFuluv/+RAMm/QFXRr7gO6/gguZoVuAfGvEuXsBQ=;
        b=ctQ4H5vR2N87nbmebLzYuO7jeWaMWm+Eg9lEZO2dY9yg7vy7aekhlgRi85rzzFi7Ko
         MzynRj1cCxCBFWswu6Q2sE3Gjf7HgJjv5EggrPO34G5cENb3yWhNCyG+FgyuqCjKPuFW
         +0dUOn9z/s5JCG54WUOhGqbI3UWWYsDgRhB6PqcMSZy60MoqFU3roM5gHe3k063+T5F2
         gp0jD6bitU+qfidqyITwoohPjtm6uCwiCGbDvM4vZgqAzHjZoOBW/gGipu6jG3+/3uTz
         wlk8sqZfkGA6fV7h0/dckq0znS5cL0OKOy4NB7ca25dxrSZxMUW0inViTLSQIRQZvBoq
         MK6w==
X-Gm-Message-State: ANoB5pkgU03Hp6C4bn6mMW8vU7e2sgmuyobhok41I3rrn/vVX7Oy7JG1
        eDnlEIQU6x9LP8BCrrzfIzrVmQ==
X-Google-Smtp-Source: AA0mqf44+TtTHjB2d/Gl2sH9AH4zHu5kBAdtGeps2WGjNdvMA739ICQX1O2kyUGBcd+nn1H6QRtCRQ==
X-Received: by 2002:a50:ee1a:0:b0:46b:6214:44c8 with SMTP id g26-20020a50ee1a000000b0046b621444c8mr18101392eds.39.1670975030826;
        Tue, 13 Dec 2022 15:43:50 -0800 (PST)
Received: from predatorhelios.fritz.box (dynamic-093-129-109-038.93.129.pool.telefonica.de. [93.129.109.38])
        by smtp.gmail.com with ESMTPSA id f5-20020a05640214c500b00458b41d9460sm5407498edx.92.2022.12.13.15.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 15:43:50 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com, khilman@baylibre.com
Subject: [PATCH v5 2/7] dt-bindings: irq: mtk, sysirq: add support for mt8365
Date:   Wed, 14 Dec 2022 00:43:41 +0100
Message-Id: <20221213234346.2868828-3-bero@baylibre.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221213234346.2868828-1-bero@baylibre.com>
References: <20221213234346.2868828-1-bero@baylibre.com>
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

Add binding documentation of mediatek,sysirq for mt8365 SoC.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/interrupt-controller/mediatek,sysirq.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt b/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
index 84ced3f4179b9..3ffc60184e445 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
+++ b/Documentation/devicetree/bindings/interrupt-controller/mediatek,sysirq.txt
@@ -25,6 +25,7 @@ Required properties:
 	"mediatek,mt6577-sysirq": for MT6577
 	"mediatek,mt2712-sysirq", "mediatek,mt6577-sysirq": for MT2712
 	"mediatek,mt2701-sysirq", "mediatek,mt6577-sysirq": for MT2701
+	"mediatek,mt8365-sysirq", "mediatek,mt6577-sysirq": for MT8365
 - interrupt-controller : Identifies the node as an interrupt controller
 - #interrupt-cells : Use the same format as specified by GIC in arm,gic.txt.
 - reg: Physical base address of the intpol registers and length of memory
-- 
2.39.0

