Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DC20762C97
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 09:06:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232419AbjGZHGn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 03:06:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229852AbjGZHFu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 03:05:50 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF34A49F9
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:03:41 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-51e619bcbf9so8449292a12.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 00:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690355019; x=1690959819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yHJNnsXc4d/K/z6VhqA+wtVe+B6ZApclNDr3oVz3Qng=;
        b=ue0FwepuEKanedIaHj88Eu2du8PJDtqjDGNpgDhpT2z4n0dS9MRxnqTskins8Gk9HF
         L6MK1edEEuji1HIuypxoDb1OCwJn4IbPxoy5xCEz+5gvcG8gC9cCcns9+rY4SDi+hqSK
         1IqgDd4Ari2bRlA4wkExlMs6VP3NNa5XR2rqJgsxb6Qeo5TEN/xJnorg5SdT6tcYCgfd
         8Zi5RHN6s3F2hj2Q4bU/JwgTyjgw9J+bXBlAgCLVZ97eu960x1t69oY7XksH3mEZZxvf
         17yBbT7pOQZEPQ6O1v9ODy1zbB47ocmWKIwW3vwR80hiOJGDfT/fxIhJlOdpgIbQBiGq
         uV7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690355019; x=1690959819;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yHJNnsXc4d/K/z6VhqA+wtVe+B6ZApclNDr3oVz3Qng=;
        b=ZbYGINcvBgyYHExN/L+NdyWqewR+XvctI4ukTyz6Zw2bN6vETVRSc8V2cE7sSNejv6
         +nIrsai7rVqavv+ZueG1+i7PEK440P+cXg4zc7sxdUgrjuGjx2PllUF4lwEkx0qusBKC
         4c43MBarLBsCqES5XZJ84PAzFJ90SH4Yn3o9o7JoXrVntaq4MUo4NNIk+t2FunxC+zuy
         K4Wlb617jq6xz26gYHb90Np30zA87MuVZUNARcaCqWQnoj1KjE9e8yyim8jqEqh+hK4h
         SRS/ukh7Ywvalv52j0ANBf/cvsC0rlsvsKv4CajxILMskpwHDDR81ocwOQX/yUcS4/Cg
         Iekg==
X-Gm-Message-State: ABy/qLYzV3a9gnT5k2Ep5T7BpspHgLonzLIfEX5rET4zljd5HznmV4Dk
        xdVECHnizmfvc+y9lGZQMRyC0A==
X-Google-Smtp-Source: APBJJlGnDIhxl1WovcgmyilqMxw7RAGIcmctqxCam8gYqUxk7SpEEL3pcCtNf0MDvcl2CVE72MU7cg==
X-Received: by 2002:a05:6402:744:b0:522:5873:d4aa with SMTP id p4-20020a056402074400b005225873d4aamr828651edy.23.1690355019657;
        Wed, 26 Jul 2023 00:03:39 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id dy16-20020a05640231f000b005224f840130sm1572003edb.60.2023.07.26.00.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 00:03:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 7/8] ARM: dts: imx27: drop incorrect reg in fixed regulators
Date:   Wed, 26 Jul 2023 09:03:21 +0200
Message-Id: <20230726070322.103871-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230726070322.103871-1-krzysztof.kozlowski@linaro.org>
References: <20230726070322.103871-1-krzysztof.kozlowski@linaro.org>
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

Fixed regulators are not in some bus and bindings do not allow a "reg"
property.  Move them out of "regulators" node to top-level.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx27-apf27dev.dts  | 19 ++++--------
 .../imx/imx27-eukrea-mbimxsd27-baseboard.dts  | 25 ++++++----------
 .../nxp/imx/imx27-phytec-phycard-s-rdk.dts    | 19 ++++--------
 .../dts/nxp/imx/imx27-phytec-phycore-rdk.dts  | 21 ++++++-------
 .../dts/nxp/imx/imx27-phytec-phycore-som.dtsi | 30 +++++++------------
 5 files changed, 41 insertions(+), 73 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx27-apf27dev.dts b/arch/arm/boot/dts/nxp/imx/imx27-apf27dev.dts
index 6f1e8ce9e76e..a21f1f7c24b8 100644
--- a/arch/arm/boot/dts/nxp/imx/imx27-apf27dev.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx27-apf27dev.dts
@@ -54,19 +54,12 @@ user {
 		};
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		reg_max5821: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "max5821-reg";
-			regulator-min-microvolt = <2500000>;
-			regulator-max-microvolt = <2500000>;
-			regulator-always-on;
-		};
+	reg_max5821: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "max5821-reg";
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+		regulator-always-on;
 	};
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts b/arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts
index 9c3ec82ec7e5..145e459625b3 100644
--- a/arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx27-eukrea-mbimxsd27-baseboard.dts
@@ -54,22 +54,15 @@ led2 {
 		};
 	};
 
-	regulators {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "simple-bus";
-
-		reg_lcd: regulator@0 {
-			pinctrl-names = "default";
-			pinctrl-0 = <&pinctrl_lcdreg>;
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "LCD";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio1 25 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	reg_lcd: regulator-0 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_lcdreg>;
+		regulator-name = "LCD";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio1 25 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
 	};
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycard-s-rdk.dts b/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycard-s-rdk.dts
index 188639738dc3..25442eba21c1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycard-s-rdk.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycard-s-rdk.dts
@@ -33,19 +33,12 @@ timing0: 640x480 {
 		};
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		reg_3v3: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "3V3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
+	reg_3v3: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
 	};
 };
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycore-rdk.dts b/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycore-rdk.dts
index 344e77790152..7f0cd4d3ec2d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycore-rdk.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycore-rdk.dts
@@ -37,18 +37,15 @@ timing0: 240x320 {
 		};
 	};
 
-	regulators {
-		regulator@2 {
-			compatible = "regulator-fixed";
-			pinctrl-names = "default";
-			pinctrl-0 = <&pinctrl_csien>;
-			reg = <2>;
-			regulator-name = "CSI_EN";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			gpio = <&gpio2 24 GPIO_ACTIVE_LOW>;
-			regulator-always-on;
-		};
+	regulator-2 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_csien>;
+		regulator-name = "CSI_EN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio2 24 GPIO_ACTIVE_LOW>;
+		regulator-always-on;
 	};
 
 	usbphy {
diff --git a/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycore-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycore-som.dtsi
index 3d10273177e9..7191e10712b9 100644
--- a/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx27-phytec-phycore-som.dtsi
@@ -15,26 +15,18 @@ memory@a0000000 {
 		reg = <0xa0000000 0x08000000>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
+	reg_3v3: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
 
-		reg_3v3: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "3V3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-		};
-
-		reg_5v0: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "5V0";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-		};
+	reg_5v0: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "5V0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
 	};
 
 	usbphy {
-- 
2.34.1

