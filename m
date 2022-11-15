Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAB00629030
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:55:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236205AbiKOCz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:55:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237262AbiKOCyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:49 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3C3C1A079
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:40 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id kt23so32922129ejc.7
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tGFeLYCtw0pQ4Vg1WxSYyEWBzkxCWkgNacW8i2OpJuo=;
        b=eFCGkMLvHxR9VMBx62cHp0LyKbih0Hox3ctugbMQWX9AheY6hi9kUDPV16l1ngp8V/
         GXvdDM4QJYKCtH0hpZWF9X97elCxk/dJs+iTF5fCuTdfoQmyMZb6CG40b/ivwNYxUPHg
         hXlV0S0+MlGR4gtsKASrbJE1xJJ+lnkH6+/HLFzB2lmpQqknpCneVFlWUm9Ia2s4w308
         HwfTCUmmM5FfQKFOobaymjfs11RR8w3vLQ7JkCojWeYnGx0ZFUPh9HK9Z1UZ4vU3IaM+
         d0NcWKKL0b4y9lR7r60Mpny0WTigF9+7cmA0EzZclFgrc/eCPbKDgvl1uZZGPOuBa8n2
         eM9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tGFeLYCtw0pQ4Vg1WxSYyEWBzkxCWkgNacW8i2OpJuo=;
        b=5v9ztgafRi7NfKdKx1Eil5E5xLvTlXoQ0fIM/LXCoHF7UsoaQwXZkI6x9kTL2DORmw
         4k8c1a66zSTrnDxa4RofVh5S1V5rpOJR/l+9fMtzMBEizur7kCvC2h4mFZtxWaI+SZYo
         aDoM62xFLjyLgc8L5723L5S8DMk2mmQTTYadQKCtJVQ4F5b9m1ObnCX+jXFmcs5pUoMK
         0WB9SKuJfs1Vb6PA0TbcTDO/pS6H5Fi0uBI8aGKctT0+uiakGmz68HktJDZxP6ow+TGo
         /R+67txNDogp6MrD6L7P0X58yzkxn2wyqptzviEosDvKCSvgKHafAR7/aSc2Gkk6U6q2
         k6Uw==
X-Gm-Message-State: ANoB5pk27x9f4NqC1jOphD+JVzjr4biWByWcsfIWy7farX89pQdcCZHh
        uj+wqi73X032vdkYDtTC6AlT7w==
X-Google-Smtp-Source: AA0mqf44R6leH9X8yl07swkhukNegilqS07Q6onZ4yJzwtMAvw+nsL9LazTWCSfy67gQyyhv+Ch9eQ==
X-Received: by 2002:a17:906:33da:b0:78d:b046:aaae with SMTP id w26-20020a17090633da00b0078db046aaaemr11872899eja.218.1668480880417;
        Mon, 14 Nov 2022 18:54:40 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:40 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 14/15] dt-bindings: thermal: mediatek: add documentation for MT8365 SoC
Date:   Tue, 15 Nov 2022 03:54:20 +0100
Message-Id: <20221115025421.59847-15-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
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

Add binding documentation for the Mediatek MT8365 SoC.

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/thermal/mediatek-thermal.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
index 5c7e7bdd029ab..d1b30733dfce3 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
@@ -15,6 +15,7 @@ Required properties:
   - "mediatek,mt7622-thermal" : For MT7622 SoC
   - "mediatek,mt8183-thermal" : For MT8183 family of SoCs
   - "mediatek,mt8516-thermal", "mediatek,mt2701-thermal : For MT8516 family of SoCs
+  - "mediatek,mt8365-thermal" : for MT8365 family of SoCs
 - reg: Address range of the thermal controller
 - interrupts: IRQ for the thermal controller
 - clocks, clock-names: Clocks needed for the thermal controller. required
-- 
2.38.1

