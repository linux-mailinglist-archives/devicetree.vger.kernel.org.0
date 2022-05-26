Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 030C15354B9
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348782AbiEZUld (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:41:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348892AbiEZUla (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:41:30 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 674CFCF9
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:41:24 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id f9so5218652ejc.0
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Y5UFb7XgLvBUFKAtSz03uKpF5a++oXIA+TPFT+Sfg2A=;
        b=VApX7qgRWBBCFLCVF1xPxaMd7iv9/LgwNp1Y8LXMGxeWVzrbwB64hx7Gk+9bO6u0ak
         KtLAKhV4UOd4bz6QyAwJo94dxJlVZchPMjEfoudMpDwRgfs9vTMEqMH3ZQcw4JWqkeEk
         c2fjZD6NOkI8unLZcrZITcG9ffdsatwEfU5cVXwArEK33uhYD5aqBIhOC8L1/bzbDbwG
         OpgfatbrL7eqBfdASSc+5wb7QEESnmJXMbMvcUGPgM8l1VYzqr6DGay/h+906kR9xxfV
         6bSpajG5HFapAOnszqouS/ziOZwD0NrDxvZ4gpTl02vE+HBsj4X9MQmXJi5uxhLZX8mE
         bjyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y5UFb7XgLvBUFKAtSz03uKpF5a++oXIA+TPFT+Sfg2A=;
        b=mWhaplno41c7LzEbB5m3WbmsS7eaRiknkW77WlOGXkr/Ql4BDiXZoksTZ1+yVgW9Sg
         F8zsT1Ucss+FLPyDpLolypI7kgZTsPfgV60lI7gJ1+aS/mDyCiwFzpqvJ1yBrsrl74ye
         OO3MRXwvTG2sDm5QzBhDbPezTOgrL7XmpGPUXi6kC9tliB3R1ilUICDIWqfJ1ooFy7+u
         e1f5nLJpm3NNen76RV9u1ZFi8wfR4DCoRNMD26kAE+kCPDG5NOtUHX4sCk2zLMlad6Bn
         6hCm+poLjg7vJ5pXeIt1EKkm3eNROZqZGBbHNR98NNs9QLLqg1KTRBFbPq1jCf99x6EM
         pfjw==
X-Gm-Message-State: AOAM532iGVhbOSLvLrOqd502TL/ilUTvCnajQPaCDp1kIOz9lubg4hUw
        cHB7HBBeggxbhGv4wAWwMNHqQw==
X-Google-Smtp-Source: ABdhPJzIXn754ViI7D++cdgXqpxvr6R6U6sEXU1YrC/bZQQt+H5KYd3S3ClJSNe40jNUeszOOd4Ddg==
X-Received: by 2002:a17:907:7e90:b0:6fe:c5bc:d391 with SMTP id qb16-20020a1709077e9000b006fec5bcd391mr22945381ejc.747.1653597683325;
        Thu, 26 May 2022 13:41:23 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y8-20020a50f1c8000000b0042b0dd5db38sm1235470edl.36.2022.05.26.13.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:41:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: at91: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:41:09 +0200
Message-Id: <20220526204110.831805-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204110.831805-1-krzysztof.kozlowski@linaro.org>
References: <20220526204110.831805-1-krzysztof.kozlowski@linaro.org>
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

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/at91-kizbox3-hs.dts         | 2 +-
 arch/arm/boot/dts/at91-sam9x60ek.dts          | 2 +-
 arch/arm/boot/dts/at91-sama5d27_som1.dtsi     | 2 +-
 arch/arm/boot/dts/at91-sama5d27_som1_ek.dts   | 4 ++--
 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts | 2 +-
 arch/arm/boot/dts/at91-sama5d2_icp.dts        | 4 ++--
 arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts     | 6 +++---
 arch/arm/boot/dts/at91-sama5d2_xplained.dts   | 6 +++---
 arch/arm/boot/dts/sam9x60.dtsi                | 2 +-
 9 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/at91-kizbox3-hs.dts b/arch/arm/boot/dts/at91-kizbox3-hs.dts
index 2799b2a1f4d2..224f4d5ac4df 100644
--- a/arch/arm/boot/dts/at91-kizbox3-hs.dts
+++ b/arch/arm/boot/dts/at91-kizbox3-hs.dts
@@ -186,7 +186,7 @@ id_usba {
 
 &pioA {
 	pinctrl_key_gpio_default: key_gpio_default {
-		pinmux=  <PIN_PA22__GPIO>,
+		pinmux = <PIN_PA22__GPIO>,
 		<PIN_PA24__GPIO>,
 		<PIN_PA26__GPIO>,
 		<PIN_PA29__GPIO>,
diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index 7719ea3d4933..886bc855daa4 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -85,7 +85,7 @@ gpio_keys {
 		sw1 {
 			label = "SW1";
 			gpios = <&pioD 18 GPIO_ACTIVE_LOW>;
-			linux,code=<KEY_PROG1>;
+			linux,code = <KEY_PROG1>;
 			wakeup-source;
 		};
 	};
diff --git a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
index a4623cc67cc1..e87c4990bf5d 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
+++ b/arch/arm/boot/dts/at91-sama5d27_som1.dtsi
@@ -15,7 +15,7 @@ / {
 	compatible = "atmel,sama5d27-som1", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
 
 	aliases {
-		i2c0	= &i2c0;
+		i2c0 = &i2c0;
 	};
 
 	clocks {
diff --git a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
index 08f0d4b995ff..b1c390ae5f98 100644
--- a/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_som1_ek.dts
@@ -21,8 +21,8 @@ aliases {
 		serial0 = &uart1;	/* DBGU */
 		serial1 = &uart4;	/* mikro BUS 1 */
 		serial2 = &uart2;	/* mikro BUS 2 */
-		i2c1	= &i2c1;
-		i2c2	= &i2c3;
+		i2c1 = &i2c1;
+		i2c2 = &i2c3;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
index 5e8755f22784..48e85fc3d998 100644
--- a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
@@ -19,7 +19,7 @@ aliases {
 		serial1 = &uart6;	/* BT */
 		serial2 = &uart5;	/* mikro BUS 2 */
 		serial3 = &uart3;	/* mikro BUS 1 */
-		i2c1	= &i2c1;
+		i2c1 = &i2c1;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/at91-sama5d2_icp.dts b/arch/arm/boot/dts/at91-sama5d2_icp.dts
index 806eb1d911d7..5ff692ea8a20 100644
--- a/arch/arm/boot/dts/at91-sama5d2_icp.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_icp.dts
@@ -24,8 +24,8 @@ aliases {
 		serial1 = &uart1;	/* mikro BUS 3 */
 		serial3 = &uart3;	/* mikro BUS 2 */
 		serial5 = &uart7;	/* flx2 */
-		i2c0	= &i2c0;
-		i2c1	= &i2c1;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
index 8ed58af01391..64c3e63de179 100644
--- a/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts
@@ -20,9 +20,9 @@ / {
 
 	aliases {
 		serial0 = &uart0;	/* DBGU */
-		i2c0	= &i2c0;	/* mikroBUS 1 */
-		i2c1	= &i2c1;	/* XPRO EXT1 */
-		i2c2	= &i2c2;
+		i2c0 = &i2c0;	/* mikroBUS 1 */
+		i2c1 = &i2c1;	/* XPRO EXT1 */
+		i2c2 = &i2c2;
 	};
 
 	chosen {
diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
index cdfe891f9a9e..5959bf0c2fa3 100644
--- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
+++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
@@ -205,10 +205,10 @@ vdd_1v35_reg: REG_DCDC1 {
 
 							regulator-state-mem {
 								regulator-on-in-suspend;
-								regulator-suspend-min-microvolt=<1400000>;
-								regulator-suspend-max-microvolt=<1400000>;
+								regulator-suspend-min-microvolt = <1400000>;
+								regulator-suspend-max-microvolt = <1400000>;
 								regulator-changeable-in-suspend;
-								regulator-mode=<ACT8945A_REGULATOR_MODE_LOWPOWER>;
+								regulator-mode = <ACT8945A_REGULATOR_MODE_LOWPOWER>;
 							};
 						};
 
diff --git a/arch/arm/boot/dts/sam9x60.dtsi b/arch/arm/boot/dts/sam9x60.dtsi
index c328b67bea0c..a0e21022dbc5 100644
--- a/arch/arm/boot/dts/sam9x60.dtsi
+++ b/arch/arm/boot/dts/sam9x60.dtsi
@@ -464,7 +464,7 @@ pwm0: pwm@f8034000 {
 				interrupts = <18 IRQ_TYPE_LEVEL_HIGH 4>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 18>;
 				#pwm-cells = <3>;
-				status="disabled";
+				status = "disabled";
 			};
 
 			hlcdc: hlcdc@f8038000 {
-- 
2.34.1

