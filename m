Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEC3B67B4AA
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 15:36:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235807AbjAYOgA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 09:36:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235731AbjAYOfr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 09:35:47 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD67D59763
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 06:35:18 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id kt14so48212353ejc.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 06:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bNAP8XOhS4LLuKpYRGvk3aTC1kcIWQVhxMWfMNAmKbo=;
        b=XI56FY3zdSbodru6XyaSckXAzeKh3QRabQyWKssCiIY3piUefej4aa7TzAGc8aY+O4
         LE5Z4IAgg/dp9SiPmzC/4GrMGUypz1U4tWpJ5eCWEU26PU4+Xq7ziQeD5wyNZbmPWdLm
         VNit3CW95B+L+QAND7QBOSGAdft+DXGmXAtrGEJpsQhonRBE4Fl4VUoqJBCJrr9PyMzJ
         35csBY9r6sdvRn8rHURXDTnLnXGKraiacTlw8dlFuFVzl7i/kH1BBzprfAM+IgGz5A9a
         oUtNs54x7h+EwqNhInwn6Ms2xNmmJKfqFQcmzLZ8qlWBizfZ9Y+ah94Kj9lVsDVAxQGM
         DQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bNAP8XOhS4LLuKpYRGvk3aTC1kcIWQVhxMWfMNAmKbo=;
        b=pTUocCoMmGDpUPU/5rHKKbnPEJoY2t67iPmU9mmhLr+To7DcvTv83isdmcBGze8OEm
         SlArFMqiKCid7UYiz1Vm8w7QA09KRsbDnqruiz2ynqs6rWpNvgjG7dFtsG6Fr68oZtOq
         sykzsUoqbrJ+nLbBYrtZzUF/GhSSFagjQLF7gGLm7netHHspEJzG0pRVx+dEnQ8DAsd1
         Gu84/C9LU5UoeOBQgMn8pZUivNM45RNT6z+vwI4ELhZ9DXMguttQKAxOdMO68mgRxAWc
         S73PtFq08L0nyKVlKkX3jiKogdNYWDIkcoZZLlRASDkp+mqRwDTiJKFbsEUYMyPMKRNd
         8v1g==
X-Gm-Message-State: AFqh2kp3AsHBcgMbtfVWFKTucCWvYXx/mQHCUav7u/+IDn+XulGfaPLd
        46rDAU47bQqgapLnzdTQdrXPgQ==
X-Google-Smtp-Source: AMrXdXuyV6+EysVX1+hGOVONX/1mtR5/7VVd7TNdEwU5XREjyeamJj5NUnKYcjnWGa1pQbaUxGIN1Q==
X-Received: by 2002:a17:907:214c:b0:838:1b80:9a7a with SMTP id rk12-20020a170907214c00b008381b809a7amr33613635ejb.12.1674657308378;
        Wed, 25 Jan 2023 06:35:08 -0800 (PST)
Received: from c64.fritz.box ([81.221.122.240])
        by smtp.gmail.com with ESMTPSA id gx2-20020a1709068a4200b0082000f8d871sm2437789ejc.152.2023.01.25.06.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 06:35:07 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
        linux-usb@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, tglx@linutronix.de,
        maz@kernel.org, lee@kernel.org, linus.walleij@linaro.org,
        matthias.bgg@gmail.com, gregkh@linuxfoundation.org,
        daniel.lezcano@linaro.org, chunfeng.yun@mediatek.com,
        angelogioacchino.delregno@collabora.com, nfraprado@collabora.com,
        allen-kh.cheng@mediatek.com, sean.wang@mediatek.com,
        zhiyong.tao@mediatek.com
Subject: [PATCH v9 2/9] dt-bindings: irq: mtk, sysirq: add support for mt8365
Date:   Wed, 25 Jan 2023 15:34:56 +0100
Message-Id: <20230125143503.1015424-3-bero@baylibre.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125143503.1015424-1-bero@baylibre.com>
References: <20230125143503.1015424-1-bero@baylibre.com>
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
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
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
2.39.1

