Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4108373CE7
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 16:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233717AbhEEODN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 10:03:13 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:54837 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233690AbhEEODL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 10:03:11 -0400
Received: from mail-qk1-f199.google.com ([209.85.222.199])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1leI6Q-0008Sa-1X
        for devicetree@vger.kernel.org; Wed, 05 May 2021 14:02:14 +0000
Received: by mail-qk1-f199.google.com with SMTP id i62-20020a3786410000b02902e4f9ff4af8so1188486qkd.8
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 07:02:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PTU4LvKoIv4gbIfQl210SnqkxjG4gaXmVLweqPSDUqI=;
        b=oc0IamVtswVHKQJzS0SAKayk6hjpAr3BoS0Lov0NqcRftWL6S5X43cp54LqoA1BuCI
         o5JFSdiJHjv/2iOdbYdywdJyllwQ0MFUD7NKBnp5LRlvMHoYympOlsF9B0bFecx6yDRX
         NJonPIv+geQsk3chysqbRizNqFX9Xz59NziQvLWp3yNqdxPuWn1AaJgmkzHNsoFNR66j
         q6jnEGY1pykfGYE2vgBP6J36LiE6hub1wPTkcUVHv5k9j58aJSbaBRYRWb9TX8E+/01G
         MqBgTkEBvVjrAKue+ad8rbvHLGtL6xwopJLasSUHMkTRwVTyeZ2A7zvAWJlOWpCtIQlj
         YkQg==
X-Gm-Message-State: AOAM530Lp2CnES5jXsEH+h0d2L8kx4yb8Hcf9UJtA/rBMHyjooXw04RP
        BwcYyHShr3JALtZHi3jAVRvj2/cPvq8wbETgwwDcZbrBsTOfILhn+ft8QB5DN9wZzzLBeCJzVLa
        rBdTZvct8qmRnw8InUVpopfv+DqWx4TqOq09iRJA=
X-Received: by 2002:a37:a6c6:: with SMTP id p189mr22059577qke.161.1620223333157;
        Wed, 05 May 2021 07:02:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwNcZdZr9OarCUN7JS5MpdDZOe89c0ANjh7iN+CrZx0Za+sQThYLZ0fXL8V4Op7GS3d+n0c6Q==
X-Received: by 2002:a37:a6c6:: with SMTP id p189mr22059565qke.161.1620223333014;
        Wed, 05 May 2021 07:02:13 -0700 (PDT)
Received: from localhost.localdomain ([45.237.49.2])
        by smtp.gmail.com with ESMTPSA id 97sm5016632qte.20.2021.05.05.07.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 07:02:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] ARM: dts: exynos: fix PWM LED max brightness on Odroid XU/XU3
Date:   Wed,  5 May 2021 09:59:39 -0400
Message-Id: <20210505135941.59898-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
References: <20210505135941.59898-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no "max_brightness" property.  This brings the intentional
brightness reduce of green LED and dtschema checks as well:

  arch/arm/boot/dts/exynos5410-odroidxu.dt.yaml: led-controller-1: led-1: 'max-brightness' is a required property

Fixes: 719f39fec586 ("ARM: dts: exynos5422-odroidxu3: Hook up PWM and use it for LEDs")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi b/arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi
index 2fc3e86dc5f7..982752e1df24 100644
--- a/arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi
+++ b/arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi
@@ -22,7 +22,7 @@ led-1 {
 			 * Green LED is much brighter than the others
 			 * so limit its max brightness
 			 */
-			max_brightness = <127>;
+			max-brightness = <127>;
 			linux,default-trigger = "mmc0";
 		};
 
@@ -30,7 +30,7 @@ led-2 {
 			label = "blue:heartbeat";
 			pwms = <&pwm 2 2000000 0>;
 			pwm-names = "pwm2";
-			max_brightness = <255>;
+			max-brightness = <255>;
 			linux,default-trigger = "heartbeat";
 		};
 	};
-- 
2.25.1

