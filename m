Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17E20573D86
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 22:04:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236898AbiGMUED (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 16:04:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237024AbiGMUEC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 16:04:02 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49DB0DF9B
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:04:00 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id dn9so21745211ejc.7
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2SGW61JURl6spHdcZUPXC5nNCZBAg6B4jWuGQuAyeu8=;
        b=A7hyB5o6+HsqXXoO4OIrKXXbFKv0unJH8gwMXBEUx3GH/TEYRBix3oi89mKml4bavt
         plajyFDz4nT2RIFFvuv7rul1OEPZzcZERyBgwgkgCNTsKnF1m3+gWTarvBAJTT17QBE9
         XFZwlgRPJx4aTP+Z0JwWCC3m0k2KDXT03fNrQs7vyWW65L7I5mxav4vKXeOj7WkqjpY2
         Vz8CWhk62LTKSd6uJZ8NTtvulWsH/McK/2IdRpeZo1ilBThqYz3TFH8waifnq2QkRl/C
         9kVqzEIl9kdrf+rlfn+5vl1Lrks4xsnMfwVEjQZR5EKPpN8DNGCbawRSzHoTePP/nnxM
         4dSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2SGW61JURl6spHdcZUPXC5nNCZBAg6B4jWuGQuAyeu8=;
        b=jRdZLJS78SYWEWRURy2eEfo4beMJAD0/FEw0dlzfdb1ut+WUwtq4Kds25qnisECQ2z
         tiu4xpQaHbYoJOxQZSKTtFC6ruJWxhu2p1uhkAV3Uaoh8tE9g5mgK8HcC1oMY2QVUTAc
         sqi+i2ahSGDxDt4V1zVgx9qTXX6poRLvYcXl+bGcv6wLTsL/HOTadp3W0DFzcIfaCdya
         uaSmuW7bHcimfdCKdlp/H7usgqflvPfB8xolP5y36fk8NAv5s19CF2nNacw/8dZPmOI5
         sPkrXQBBf4cG2Qiri+/xVJ5vfe9hKxu7X+1fs6wZctxxRrsf2s7VJLgQyKgZJ+lJmdX5
         GQvA==
X-Gm-Message-State: AJIora/FaMJOGU4En74NALx/No+EskB8+pK6dJN7A/fRHa25wKLksrMc
        QaErn+3/c6tJ/n+RXyfn0RA=
X-Google-Smtp-Source: AGRyM1vFL7ifsm7KMj10C8KdfHuMIfUSC+dvyS2X76ll7VbPckz9amOTyEWMJZnk3GVEfBI2CaAuxA==
X-Received: by 2002:a17:907:2848:b0:72b:5ba5:1db5 with SMTP id el8-20020a170907284800b0072b5ba51db5mr5405862ejc.703.1657742638686;
        Wed, 13 Jul 2022 13:03:58 -0700 (PDT)
Received: from localhost.lan ([194.187.74.233])
        by smtp.gmail.com with ESMTPSA id l10-20020a1709060cca00b0072b1cb2818csm5300695ejh.158.2022.07.13.13.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 13:03:58 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: arm: Add Asus GT-AX6000 based on BCM4912
Date:   Wed, 13 Jul 2022 22:03:50 +0200
Message-Id: <20220713200351.28526-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

It's a home router, the first BCM4912 SoC based public device.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
index d9dc4f22f4a5..324e59104360 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcmbca.yaml
@@ -31,6 +31,7 @@ properties:
       - description: BCM4912 based boards
         items:
           - enum:
+              - asus,gt-ax6000
               - brcm,bcm94912
           - const: brcm,bcm4912
           - const: brcm,bcmbca
-- 
2.34.1

