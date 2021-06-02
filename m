Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A33983987A6
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 13:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230172AbhFBLHa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 07:07:30 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:52383 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232630AbhFBLGm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 07:06:42 -0400
Received: from mail-wm1-f71.google.com ([209.85.128.71])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1loOgE-0003xk-Hc
        for devicetree@vger.kernel.org; Wed, 02 Jun 2021 11:04:58 +0000
Received: by mail-wm1-f71.google.com with SMTP id x20-20020a1c7c140000b029018f49a7efb7so2039716wmc.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 04:04:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YhVs5+yDO9h9on9x1DPcrehgvWwWuJdLjHq3isSOMC0=;
        b=NEAzVCnZr4qNdvDmHaZYzkPgcczr7cMkEn7Lvyh1QjpbCG6Zd/gjuPJAeBmdnD1XDa
         cxgqcW9LaFPmu3jSnXMHlZt8H4V6uBhZXm/qrJC2uhMixbLWVqkOdIsdNnxJ7M0UsGX9
         J+A7VU9zGezeQ5YlYYAOrphR2sOfnZY23z7WKVRmA2xcOdJmZEE0SDtvGw2sqO8ykaqR
         CI+P6OGl3SDg55pc5OiPhWTH7l4W8ZElHQp+j8dwIKp4lq3LkJezzJ2LG2V87ZTfcPkU
         KA6s7u03he2YQwadTwyboDz/egIbYE65A23v32OcVlpxS5NKJvyzg4tPONTE3LJansfH
         E9bw==
X-Gm-Message-State: AOAM5329/Mk6r3wqeY0hB0ggotDf0Qy26YR+DyQkhA+k3C+JDGG7ap6K
        FmUYjBeoQqVO7xe4Ud8NCoSoPsvIo7M5935Ka0YhJjufE7PJk2a7DAp+n4zBYptNhz59mXCSmWK
        GIyssG2PwLsPntNzKZYds2N8i1o/DabGMg3x+YfY=
X-Received: by 2002:adf:d1e3:: with SMTP id g3mr32415756wrd.21.1622631898157;
        Wed, 02 Jun 2021 04:04:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyBVAdcEUzNSdNpRNt+RKpqTaEPmiltMElZsjQo/kAY6JmRnIUhRaYe9xLQQbGQ4Aj+1EJvwg==
X-Received: by 2002:adf:d1e3:: with SMTP id g3mr32415725wrd.21.1622631897939;
        Wed, 02 Jun 2021 04:04:57 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-185-9.adslplus.ch. [188.155.185.9])
        by smtp.gmail.com with ESMTPSA id f5sm6948175wrf.22.2021.06.02.04.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 04:04:57 -0700 (PDT)
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
Subject: [RESEND PATCH v2 4/4] mfd: max14577: Do not enforce (incorrect) interrupt trigger type
Date:   Wed,  2 Jun 2021 13:04:45 +0200
Message-Id: <20210602110445.33536-4-krzysztof.kozlowski@canonical.com>
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

The Maxim 14577/77836 datasheets describe the interrupt line as active
low with a requirement of acknowledge from the CPU therefore the edge
falling is not correct.

The interrupt line is shared between PMIC and charger driver, so using
level sensitive interrupt is here especially important to avoid races.
With an edge configuration in case if first PMIC signals interrupt
followed shortly after by the RTC, the interrupt might not be yet
cleared/acked thus the second one would not be noticed.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes since v1:
1. Add Ack
---
 Documentation/devicetree/bindings/mfd/max14577.txt | 4 ++--
 drivers/mfd/max14577.c                             | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/max14577.txt b/Documentation/devicetree/bindings/mfd/max14577.txt
index 92070b346756..be11943a0560 100644
--- a/Documentation/devicetree/bindings/mfd/max14577.txt
+++ b/Documentation/devicetree/bindings/mfd/max14577.txt
@@ -71,7 +71,7 @@ max14577@25 {
 	compatible = "maxim,max14577";
 	reg = <0x25>;
 	interrupt-parent = <&gpx1>;
-	interrupts = <5 IRQ_TYPE_NONE>;
+	interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
 
 	muic: max14577-muic {
 		compatible = "maxim,max14577-muic";
@@ -106,7 +106,7 @@ max77836@25 {
 	compatible = "maxim,max77836";
 	reg = <0x25>;
 	interrupt-parent = <&gpx1>;
-	interrupts = <5 IRQ_TYPE_NONE>;
+	interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
 
 	muic: max77836-muic {
 		compatible = "maxim,max77836-muic";
diff --git a/drivers/mfd/max14577.c b/drivers/mfd/max14577.c
index be185e9d5f16..6c487fa14e9c 100644
--- a/drivers/mfd/max14577.c
+++ b/drivers/mfd/max14577.c
@@ -332,7 +332,7 @@ static int max77836_init(struct max14577 *max14577)
 	}
 
 	ret = regmap_add_irq_chip(max14577->regmap_pmic, max14577->irq,
-			IRQF_TRIGGER_FALLING | IRQF_ONESHOT | IRQF_SHARED,
+			IRQF_ONESHOT | IRQF_SHARED,
 			0, &max77836_pmic_irq_chip,
 			&max14577->irq_data_pmic);
 	if (ret != 0) {
@@ -418,14 +418,14 @@ static int max14577_i2c_probe(struct i2c_client *i2c,
 		irq_chip = &max77836_muic_irq_chip;
 		mfd_devs = max77836_devs;
 		mfd_devs_size = ARRAY_SIZE(max77836_devs);
-		irq_flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT | IRQF_SHARED;
+		irq_flags = IRQF_ONESHOT | IRQF_SHARED;
 		break;
 	case MAXIM_DEVICE_TYPE_MAX14577:
 	default:
 		irq_chip = &max14577_irq_chip;
 		mfd_devs = max14577_devs;
 		mfd_devs_size = ARRAY_SIZE(max14577_devs);
-		irq_flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT;
+		irq_flags = IRQF_ONESHOT;
 		break;
 	}
 
-- 
2.27.0

