Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E326A552362
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 19:59:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244847AbiFTR6P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 13:58:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235495AbiFTR5l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 13:57:41 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61ADD1F2C7
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 10:57:40 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id n20so15831476ejz.10
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 10:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AJQuruVrTZv1nynKWNjB1vjGLvsDIVSRslYYaj6JlpY=;
        b=M65tnED65OqJVAxSCBkJnGQmHwgrsIYi5e0h6QJAQ7fctahuQIrbOUqTqQUonE1G3Z
         v5PIgcBMqgyE5z3vYfbMk2hEDgxAfzXjX6DnZAw/w3p37KpSHuSIlcJE7eFAQ18oclbx
         mcKgGbHzqFvDfe4VyYOZnQhk8GIFekj5mRNjijcE8lcH8VLTOutYa92ochTWISB+Utdf
         btL08omZ3byAWYW4eUKYqPmgkvKHQmAgO9EbZsTIBTemTetHI14SYhT9oTK1hc/RJHUI
         MZx7k3CgXoV0UtwnMv3Oz8FUBQDPcvsW87y9pyX0sEUEBKvJc8dOn4rmmdzY1YlVlALI
         iaxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AJQuruVrTZv1nynKWNjB1vjGLvsDIVSRslYYaj6JlpY=;
        b=eKcUkYh2fxJMeF76acPphxa+AfAplh3oc5fzwpkpLIWNUITpgBfFqr21FVXsOqzDFK
         BzIH/gVilI5TDlSJeD90PPcpxwxJenbGzX1BhedE6cT9Q5rFEOpWPsib+OgE56mJUddX
         /EnesXQZ6vrMS2UuJqepBfzsapqQnAcfIvHeTGEwx3VF43QvHe9N2YV9BdKnj0/MdKSl
         r7xNDOVWSUHkGS2VDUmTEGhk6kCUmIrO7Nw2znv8oxuxEjXiDYHQXwGFuUPvtROQkYmZ
         uxlyAUeD+gnXL75ZimpuNUsO/yeNF/bAZgtrq7hNAMhWFFyku2gXveYXyrmayBMuLQ3v
         zuWQ==
X-Gm-Message-State: AJIora/Cp/6vecQ1/Dq0iAOsSVQ0L3DZ4m8UuxAhHkBvyfLjhhnaORna
        JPZOEQZArfRzHNKbAMOo+s47eA==
X-Google-Smtp-Source: AGRyM1u5mzC+exD0UTFj2M5x/7WCl2DFpSLx2iD4jDg+DUR1XDEC0nnM+cdiUCJ+iX6AksDbASeDjQ==
X-Received: by 2002:a17:907:1686:b0:710:6ff6:1b97 with SMTP id hc6-20020a170907168600b007106ff61b97mr22359781ejc.378.1655747858935;
        Mon, 20 Jun 2022 10:57:38 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g13-20020aa7c84d000000b004357b717a96sm4309925edt.85.2022.06.20.10.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 10:57:38 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 8/8] ARM: dts: exynos: add function and color to LED nodes in Odroid XU/XU3
Date:   Mon, 20 Jun 2022 19:57:16 +0200
Message-Id: <20220620175716.132143-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220620175716.132143-1-krzysztof.kozlowski@linaro.org>
References: <20220620175716.132143-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add common LED properties - the function and color - to LED nodes in
Exynos5422 Odroid XU/XU3/XU3-Lite, so we can drop in some places
deprecated label property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi b/arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi
index 982752e1df24..8c0e1716c0b3 100644
--- a/arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi
+++ b/arch/arm/boot/dts/exynos54xx-odroidxu-leds.dtsi
@@ -9,6 +9,7 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 
 / {
 	led-controller-1 {
@@ -16,6 +17,8 @@ led-controller-1 {
 
 		led-1 {
 			label = "green:mmc0";
+			function = LED_FUNCTION_DISK_ACTIVITY;
+			color = <LED_COLOR_ID_GREEN>;
 			pwms = <&pwm 1 2000000 0>;
 			pwm-names = "pwm1";
 			/*
@@ -27,7 +30,8 @@ led-1 {
 		};
 
 		led-2 {
-			label = "blue:heartbeat";
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_BLUE>;
 			pwms = <&pwm 2 2000000 0>;
 			pwm-names = "pwm2";
 			max-brightness = <255>;
@@ -40,6 +44,8 @@ led-controller-2 {
 
 		led-3 {
 			label = "red:microSD";
+			function = LED_FUNCTION_DISK_ACTIVITY;
+			color = <LED_COLOR_ID_RED>;
 			gpios = <&gpx2 3 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 			linux,default-trigger = "mmc1";
-- 
2.34.1

