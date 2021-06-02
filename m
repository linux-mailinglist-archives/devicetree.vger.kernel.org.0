Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 741693987A3
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 13:05:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232129AbhFBLHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 07:07:14 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:52370 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232614AbhFBLGk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 07:06:40 -0400
Received: from mail-wm1-f69.google.com ([209.85.128.69])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1loOgD-0003wt-50
        for devicetree@vger.kernel.org; Wed, 02 Jun 2021 11:04:57 +0000
Received: by mail-wm1-f69.google.com with SMTP id n127-20020a1c27850000b02901717a27c785so2042401wmn.9
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 04:04:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n51+iZBJFEKTpd4H5RsiqOX4EmYJ/qwnjVcD0oxhR00=;
        b=USQOKsMIsPD7E/dyRZeaKGFTCgXb2oKXOWjgaRgVP8X0diPsvZp67+tpyRo27w2PjE
         dXsaUC7jSGE1jMb05CghuglAm21XSimitxXk8RK+nRO12PrdzrHfnsFlbsYnqbJYE1kB
         5bmPA7V8JtlpesfDy5zwdRR75XjvBe78A3tKA2bQPKUqnmQ/8jBOF7SjCcLR0u3e+qCS
         e7EHiI45XVOpVkVeEqfwrnM5oYzpOWOz1YZkL+3ZC9ahSMJCi9l+dkqK72d9qAJKuUr2
         WzNnTpiW854N41D8nmE+ib/2yHEL+THLOxhfFw1SC4E/Tu+9iZ2z9zBAJPQFvHO92x0u
         8ODQ==
X-Gm-Message-State: AOAM533qOqBf2FuVNvWbfy44LBWItf5Cto9cDQX9xUWSibRCwAzo6Gqg
        osVbgVIcOvlRQCX7Avka3EIPvbrLwNciEgElrXIsm1+HVAFh6GgepILqRZvFg8lIy3FotSnz7PY
        cmzIZGz1q/29+XgNsUAGcTcI+8GXXWbC8opvQkXs=
X-Received: by 2002:a1c:7912:: with SMTP id l18mr4134982wme.135.1622631896868;
        Wed, 02 Jun 2021 04:04:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwi7ZAEEu2MKEqxXm7R6CA7ko+G2i72fsOXMFCC2uqr4f20mt+GCTkxF+fVmuzTcm6sjisFNQ==
X-Received: by 2002:a1c:7912:: with SMTP id l18mr4134962wme.135.1622631896704;
        Wed, 02 Jun 2021 04:04:56 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-185-9.adslplus.ch. [188.155.185.9])
        by smtp.gmail.com with ESMTPSA id f5sm6948175wrf.22.2021.06.02.04.04.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 04:04:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v2 3/4] mfd: max77693: Do not enforce (incorrect) interrupt trigger type
Date:   Wed,  2 Jun 2021 13:04:44 +0200
Message-Id: <20210602110445.33536-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210602110445.33536-1-krzysztof.kozlowski@canonical.com>
References: <20210602110445.33536-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

Interrupt line can be configured on different hardware in different way,
even inverted.  Therefore driver should not enforce specific trigger
type - edge falling - but instead rely on Devicetree to configure it.

The Maxim 77693 datasheet describes the interrupt line as active low
with a requirement of acknowledge from the CPU therefore the edge
falling is not correct.

The interrupt line is shared between PMIC and RTC driver, so using level
sensitive interrupt is here especially important to avoid races.  With
an edge configuration in case if first PMIC signals interrupt followed
shortly after by the RTC, the interrupt might not be yet cleared/acked
thus the second one would not be noticed.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes since v1:
1. Add ack.
---
 Documentation/devicetree/bindings/mfd/max77693.txt |  2 +-
 drivers/mfd/max77693.c                             | 12 ++++--------
 2 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/max77693.txt b/Documentation/devicetree/bindings/mfd/max77693.txt
index 0ced96e16c16..1032df14498b 100644
--- a/Documentation/devicetree/bindings/mfd/max77693.txt
+++ b/Documentation/devicetree/bindings/mfd/max77693.txt
@@ -139,7 +139,7 @@ Example:
 		compatible = "maxim,max77693";
 		reg = <0x66>;
 		interrupt-parent = <&gpx1>;
-		interrupts = <5 2>;
+		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
 
 		regulators {
 			esafeout@1 {
diff --git a/drivers/mfd/max77693.c b/drivers/mfd/max77693.c
index 596ed85cab3b..4e6244e17559 100644
--- a/drivers/mfd/max77693.c
+++ b/drivers/mfd/max77693.c
@@ -222,8 +222,7 @@ static int max77693_i2c_probe(struct i2c_client *i2c,
 	}
 
 	ret = regmap_add_irq_chip(max77693->regmap, max77693->irq,
-				IRQF_ONESHOT | IRQF_SHARED |
-				IRQF_TRIGGER_FALLING, 0,
+				IRQF_ONESHOT | IRQF_SHARED, 0,
 				&max77693_led_irq_chip,
 				&max77693->irq_data_led);
 	if (ret) {
@@ -232,8 +231,7 @@ static int max77693_i2c_probe(struct i2c_client *i2c,
 	}
 
 	ret = regmap_add_irq_chip(max77693->regmap, max77693->irq,
-				IRQF_ONESHOT | IRQF_SHARED |
-				IRQF_TRIGGER_FALLING, 0,
+				IRQF_ONESHOT | IRQF_SHARED, 0,
 				&max77693_topsys_irq_chip,
 				&max77693->irq_data_topsys);
 	if (ret) {
@@ -242,8 +240,7 @@ static int max77693_i2c_probe(struct i2c_client *i2c,
 	}
 
 	ret = regmap_add_irq_chip(max77693->regmap, max77693->irq,
-				IRQF_ONESHOT | IRQF_SHARED |
-				IRQF_TRIGGER_FALLING, 0,
+				IRQF_ONESHOT | IRQF_SHARED, 0,
 				&max77693_charger_irq_chip,
 				&max77693->irq_data_chg);
 	if (ret) {
@@ -252,8 +249,7 @@ static int max77693_i2c_probe(struct i2c_client *i2c,
 	}
 
 	ret = regmap_add_irq_chip(max77693->regmap_muic, max77693->irq,
-				IRQF_ONESHOT | IRQF_SHARED |
-				IRQF_TRIGGER_FALLING, 0,
+				IRQF_ONESHOT | IRQF_SHARED, 0,
 				&max77693_muic_irq_chip,
 				&max77693->irq_data_muic);
 	if (ret) {
-- 
2.27.0

