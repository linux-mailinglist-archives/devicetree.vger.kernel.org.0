Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 960F2748731
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 17:00:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232968AbjGEPAx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 11:00:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232864AbjGEPAp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 11:00:45 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 588D41FCB
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 08:00:19 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9891c73e0fbso161584766b.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 08:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688569213; x=1691161213;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnLqXOY5KwTjIOEFy51ANagMZo4XdzRpY7gfu7Vu0l8=;
        b=r26AqE30HS/XnHKZXPS9m0ct+30STfkk420BMG1Us2IupdRziXJKiqQnveJkvsX/CA
         GiXmeHVfluPVqr88tSpUYDlhnSAIPGqMHW3iTaH8CnHUH7dE9+jd/kBMN2WHRSxtDaJ7
         /Ql35sMahFWE4iNeiiCHdJnBLkOTtQCohTMyo/D8W/7rRB5Ro8fMmxBVHgMXqyNHv/Mb
         lkpP+fesYqY1elxYzBn8l+0URYjR/XDY255DHT8GNMr1eolI0++4fBx2ddGtGp+6B3PT
         RTCA+MQCbZJzTHimVzOfoJE8uqwda/HfyviTbdReJCzqGuEBK4B3knb+K3A8sPFpPuFi
         QvCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688569213; x=1691161213;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnLqXOY5KwTjIOEFy51ANagMZo4XdzRpY7gfu7Vu0l8=;
        b=cja1n4eENe0PH93Li5pZb5lgfLiDbwP5k4cQcAHgBf5mnA6PGUhx2IFi9vfDGX/pwM
         EUrw76XdGQGUclsBgzXgbw4UkQSfp5koD2zr/uIyXgK4NdEL1kXHZdx5ASNQo5DbT2ty
         QePo/2Hg5rx9wBe2h41CyMd8L1q5v65iQ+vMVpAsdt84tstEWfs+JDCWAqALawSLGGi5
         1S5B9rKTN1LqhnXFwNF842B3g2KjQw3Xa3T4qhIzT2tGAG0Dbbdk9q0BBQCuWIV8NiNm
         zCFNqxP5CHlNe0B0UATgIPwdsh8nHOtp6FzOCptW55pLNPO9jhCc7yzk8X7cPlawVP0/
         EARA==
X-Gm-Message-State: ABy/qLYXfSaGCiZG+wnnwEAPN/YSzfphffZTbr9z3BdkITnhWQy8vXWt
        G5g8GYIei/0YsMb8IcJHc2zvgarKghUJspRoQKQ=
X-Google-Smtp-Source: APBJJlGBz2LTi9nzkoIhxcnP2EJrmjWUF3R+KjVyK+evz95mgQUJMozKV4c0894dJHDAiwuCYykt3g==
X-Received: by 2002:a17:907:8a20:b0:98e:3935:60f4 with SMTP id sc32-20020a1709078a2000b0098e393560f4mr2489875ejc.1.1688569213351;
        Wed, 05 Jul 2023 08:00:13 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id bu5-20020a170906a14500b0096f6a131b9fsm14704838ejb.23.2023.07.05.08.00.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 08:00:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: mediatek: add missing space before {
Date:   Wed,  5 Jul 2023 17:00:06 +0200
Message-Id: <20230705150006.293690-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230705150006.293690-1-krzysztof.kozlowski@linaro.org>
References: <20230705150006.293690-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing whitespace between node name/label and opening {.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   | 48 +++++++++----------
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 12 ++---
 .../boot/dts/mediatek/mt8183-pumpkin.dts      | 12 ++---
 3 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index d8bd51807683..ce336a48c897 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -155,8 +155,8 @@ &mt6358_vsram_gpu_reg {
 };
 
 &pio {
-	i2c_pins_0: i2c0{
-		pins_i2c{
+	i2c_pins_0: i2c0 {
+		pins_i2c {
 			pinmux = <PINMUX_GPIO82__FUNC_SDA0>,
 				 <PINMUX_GPIO83__FUNC_SCL0>;
 			mediatek,pull-up-adv = <3>;
@@ -164,8 +164,8 @@ pins_i2c{
 		};
 	};
 
-	i2c_pins_1: i2c1{
-		pins_i2c{
+	i2c_pins_1: i2c1 {
+		pins_i2c {
 			pinmux = <PINMUX_GPIO81__FUNC_SDA1>,
 				 <PINMUX_GPIO84__FUNC_SCL1>;
 			mediatek,pull-up-adv = <3>;
@@ -173,8 +173,8 @@ pins_i2c{
 		};
 	};
 
-	i2c_pins_2: i2c2{
-		pins_i2c{
+	i2c_pins_2: i2c2 {
+		pins_i2c {
 			pinmux = <PINMUX_GPIO103__FUNC_SCL2>,
 				 <PINMUX_GPIO104__FUNC_SDA2>;
 			mediatek,pull-up-adv = <3>;
@@ -182,8 +182,8 @@ pins_i2c{
 		};
 	};
 
-	i2c_pins_3: i2c3{
-		pins_i2c{
+	i2c_pins_3: i2c3 {
+		pins_i2c {
 			pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
 				 <PINMUX_GPIO51__FUNC_SDA3>;
 			mediatek,pull-up-adv = <3>;
@@ -191,8 +191,8 @@ pins_i2c{
 		};
 	};
 
-	i2c_pins_4: i2c4{
-		pins_i2c{
+	i2c_pins_4: i2c4 {
+		pins_i2c {
 			pinmux = <PINMUX_GPIO105__FUNC_SCL4>,
 				 <PINMUX_GPIO106__FUNC_SDA4>;
 			mediatek,pull-up-adv = <3>;
@@ -200,8 +200,8 @@ pins_i2c{
 		};
 	};
 
-	i2c_pins_5: i2c5{
-		pins_i2c{
+	i2c_pins_5: i2c5 {
+		pins_i2c {
 			pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
 				 <PINMUX_GPIO49__FUNC_SDA5>;
 			mediatek,pull-up-adv = <3>;
@@ -209,8 +209,8 @@ pins_i2c{
 		};
 	};
 
-	spi_pins_0: spi0{
-		pins_spi{
+	spi_pins_0: spi0 {
+		pins_spi {
 			pinmux = <PINMUX_GPIO85__FUNC_SPI0_MI>,
 				 <PINMUX_GPIO86__FUNC_SPI0_CSB>,
 				 <PINMUX_GPIO87__FUNC_SPI0_MO>,
@@ -324,8 +324,8 @@ pins_clk {
 		};
 	};
 
-	spi_pins_1: spi1{
-		pins_spi{
+	spi_pins_1: spi1 {
+		pins_spi {
 			pinmux = <PINMUX_GPIO161__FUNC_SPI1_A_MI>,
 				 <PINMUX_GPIO162__FUNC_SPI1_A_CSB>,
 				 <PINMUX_GPIO163__FUNC_SPI1_A_MO>,
@@ -334,8 +334,8 @@ pins_spi{
 		};
 	};
 
-	spi_pins_2: spi2{
-		pins_spi{
+	spi_pins_2: spi2 {
+		pins_spi {
 			pinmux = <PINMUX_GPIO0__FUNC_SPI2_CSB>,
 				 <PINMUX_GPIO1__FUNC_SPI2_MO>,
 				 <PINMUX_GPIO2__FUNC_SPI2_CLK>,
@@ -344,8 +344,8 @@ pins_spi{
 		};
 	};
 
-	spi_pins_3: spi3{
-		pins_spi{
+	spi_pins_3: spi3 {
+		pins_spi {
 			pinmux = <PINMUX_GPIO21__FUNC_SPI3_MI>,
 				 <PINMUX_GPIO22__FUNC_SPI3_CSB>,
 				 <PINMUX_GPIO23__FUNC_SPI3_MO>,
@@ -354,8 +354,8 @@ pins_spi{
 		};
 	};
 
-	spi_pins_4: spi4{
-		pins_spi{
+	spi_pins_4: spi4 {
+		pins_spi {
 			pinmux = <PINMUX_GPIO17__FUNC_SPI4_MI>,
 				 <PINMUX_GPIO18__FUNC_SPI4_CSB>,
 				 <PINMUX_GPIO19__FUNC_SPI4_MO>,
@@ -364,8 +364,8 @@ pins_spi{
 		};
 	};
 
-	spi_pins_5: spi5{
-		pins_spi{
+	spi_pins_5: spi5 {
+		pins_spi {
 			pinmux = <PINMUX_GPIO13__FUNC_SPI5_MI>,
 				 <PINMUX_GPIO14__FUNC_SPI5_CSB>,
 				 <PINMUX_GPIO15__FUNC_SPI5_MO>,
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 6ce16a265e05..f881bb82005c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -692,7 +692,7 @@ pins_scp_uart {
 	};
 
 	spi0_pins: spi0 {
-		pins_spi{
+		pins_spi {
 			pinmux = <PINMUX_GPIO85__FUNC_SPI0_MI>,
 				 <PINMUX_GPIO86__FUNC_GPIO86>,
 				 <PINMUX_GPIO87__FUNC_SPI0_MO>,
@@ -702,7 +702,7 @@ pins_spi{
 	};
 
 	spi1_pins: spi1 {
-		pins_spi{
+		pins_spi {
 			pinmux = <PINMUX_GPIO161__FUNC_SPI1_A_MI>,
 				 <PINMUX_GPIO162__FUNC_SPI1_A_CSB>,
 				 <PINMUX_GPIO163__FUNC_SPI1_A_MO>,
@@ -712,7 +712,7 @@ pins_spi{
 	};
 
 	spi2_pins: spi2 {
-		pins_spi{
+		pins_spi {
 			pinmux = <PINMUX_GPIO0__FUNC_SPI2_CSB>,
 				 <PINMUX_GPIO1__FUNC_SPI2_MO>,
 				 <PINMUX_GPIO2__FUNC_SPI2_CLK>;
@@ -725,7 +725,7 @@ pins_spi_mi {
 	};
 
 	spi3_pins: spi3 {
-		pins_spi{
+		pins_spi {
 			pinmux = <PINMUX_GPIO21__FUNC_SPI3_MI>,
 				 <PINMUX_GPIO22__FUNC_SPI3_CSB>,
 				 <PINMUX_GPIO23__FUNC_SPI3_MO>,
@@ -735,7 +735,7 @@ pins_spi{
 	};
 
 	spi4_pins: spi4 {
-		pins_spi{
+		pins_spi {
 			pinmux = <PINMUX_GPIO17__FUNC_SPI4_MI>,
 				 <PINMUX_GPIO18__FUNC_SPI4_CSB>,
 				 <PINMUX_GPIO19__FUNC_SPI4_MO>,
@@ -745,7 +745,7 @@ pins_spi{
 	};
 
 	spi5_pins: spi5 {
-		pins_spi{
+		pins_spi {
 			pinmux = <PINMUX_GPIO13__FUNC_SPI5_MI>,
 				 <PINMUX_GPIO14__FUNC_SPI5_CSB>,
 				 <PINMUX_GPIO15__FUNC_SPI5_MO>,
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
index 526bcae7a3f8..b5784a60c315 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-pumpkin.dts
@@ -193,7 +193,7 @@ &mt6358_vsram_gpu_reg {
 
 &pio {
 	i2c_pins_0: i2c0 {
-		pins_i2c{
+		pins_i2c {
 			pinmux = <PINMUX_GPIO82__FUNC_SDA0>,
 				 <PINMUX_GPIO83__FUNC_SCL0>;
 			mediatek,pull-up-adv = <3>;
@@ -202,7 +202,7 @@ pins_i2c{
 	};
 
 	i2c_pins_1: i2c1 {
-		pins_i2c{
+		pins_i2c {
 			pinmux = <PINMUX_GPIO81__FUNC_SDA1>,
 				 <PINMUX_GPIO84__FUNC_SCL1>;
 			mediatek,pull-up-adv = <3>;
@@ -211,7 +211,7 @@ pins_i2c{
 	};
 
 	i2c_pins_2: i2c2 {
-		pins_i2c{
+		pins_i2c {
 			pinmux = <PINMUX_GPIO103__FUNC_SCL2>,
 				 <PINMUX_GPIO104__FUNC_SDA2>;
 			mediatek,pull-up-adv = <3>;
@@ -220,7 +220,7 @@ pins_i2c{
 	};
 
 	i2c_pins_3: i2c3 {
-		pins_i2c{
+		pins_i2c {
 			pinmux = <PINMUX_GPIO50__FUNC_SCL3>,
 				 <PINMUX_GPIO51__FUNC_SDA3>;
 			mediatek,pull-up-adv = <3>;
@@ -229,7 +229,7 @@ pins_i2c{
 	};
 
 	i2c_pins_4: i2c4 {
-		pins_i2c{
+		pins_i2c {
 			pinmux = <PINMUX_GPIO105__FUNC_SCL4>,
 				 <PINMUX_GPIO106__FUNC_SDA4>;
 			mediatek,pull-up-adv = <3>;
@@ -238,7 +238,7 @@ pins_i2c{
 	};
 
 	i2c_pins_5: i2c5 {
-		pins_i2c{
+		pins_i2c {
 			pinmux = <PINMUX_GPIO48__FUNC_SCL5>,
 				 <PINMUX_GPIO49__FUNC_SDA5>;
 			mediatek,pull-up-adv = <3>;
-- 
2.34.1

