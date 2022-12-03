Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 102EE6417B0
	for <lists+devicetree@lfdr.de>; Sat,  3 Dec 2022 17:14:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229633AbiLCQOz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Dec 2022 11:14:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbiLCQOy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Dec 2022 11:14:54 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B2391FCD2
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 08:14:52 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id x6so8652582lji.10
        for <devicetree@vger.kernel.org>; Sat, 03 Dec 2022 08:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rfsJo6STA5bI63DmyIqqsN+VCqbIbh5uXxrN/vGDhME=;
        b=NjcHqpxNfyq6/WeyWaJ7A3j6oUAeE6tk4tSWWJkvd6NvNhMYaYGauRJBGYrvJUfwVt
         G8zjN9Hnft1bOI9y8pgXpUX6fDIafqQt66XhPyerxIQQP2mF1LZcAan5NA4qIM1JwhVv
         YabRbQC/VLdxylW2Xwpv/+EgiyduPP9v75dqfDXyJoaY0YEL95TD9/wY9175dCfoq6Oo
         djHInghUqutbyleWBRyNZKWgyhYSftFgtTqOOWQ2XySDNxQUMMhpTYVv1t1B9egrZhO4
         Pa+TykpIkuDYM5YejyxlROSJFeY3kVruZMlZ3gt0QdmWUQ0L3tINGJNswFbnF79KCFdu
         IsdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rfsJo6STA5bI63DmyIqqsN+VCqbIbh5uXxrN/vGDhME=;
        b=dOmWTKDqSV3kDNNfKQXCbHqkKMQhJ8iS+jEnXwmyhC9m/V4wAk21yUI0ANDienHc7I
         n5IPv1/3C3cCk50WeRClMWFuVJkvzKfE1KHuMtiJParjNl6waaDNgOqL4YDolmiltH2x
         ASaqm3zzupj6aCDIFTyxFf5a7yeWiiFdKHdEuSnBj9jkfMq6RNrUGKaaKcbpkYDVox78
         v6pFtxu0ztr+/+XYMrlAq7UjtCAG/FS3awf0is0610IT6YYCDYgIxmESg8bMxcKJ0xH9
         gqHG/oHUczCs2Nu5jLp6Qm+EHzsGTzrsGwetAdBtyvlC6h4Ry/WAPc2XNfUQ210CQeMA
         NAwQ==
X-Gm-Message-State: ANoB5pk0U2hSTFDptriCt9vv2orsRkr3YWP8s1ojEc5KYECyRVlnEO/8
        47U11Bx+YCLKVuIOssiH9NhJ1w==
X-Google-Smtp-Source: AA0mqf4yc9mGc/Zw0EENvAAIq1pe6Y0lIvP/2geMqpivTAejRjWSVn0hbxVcbSg/OWf4j5bhtNUGpA==
X-Received: by 2002:a2e:88d8:0:b0:279:eb19:7027 with SMTP id a24-20020a2e88d8000000b00279eb197027mr812631ljk.390.1670084090918;
        Sat, 03 Dec 2022 08:14:50 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s3-20020a056512202300b004b55ca70844sm382163lfs.175.2022.12.03.08.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Dec 2022 08:14:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sc7180-trogdor: use generic node names
Date:   Sat,  3 Dec 2022 17:14:43 +0100
Message-Id: <20221203161443.97656-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to Devicetree specification, the node names should be somewhat
generic.  Use "amplifier" for max98360a and "-regulator" for fixed
regulators.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi     | 8 ++++----
 arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland.dtsi      | 6 +++---
 .../arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi | 2 +-
 .../arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi | 4 ++--
 arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi  | 6 +++---
 5 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
index 70e52fdb606a..d3cf64c16dcd 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
@@ -10,22 +10,22 @@
 / {
 	/* BOARD-SPECIFIC TOP LEVEL NODES */
 
-	max98360a_1: max98360a_1 {
+	max98360a_1: amplifier-1 {
 		compatible = "maxim,max98360a";
 		#sound-dai-cells = <0>;
 	};
 
-	max98360a_2: max98360a_2 {
+	max98360a_2: amplifier-2 {
 		compatible = "maxim,max98360a";
 		#sound-dai-cells = <0>;
 	};
 
-	max98360a_3: max98360a_3 {
+	max98360a_3: amplifier-3 {
 		compatible = "maxim,max98360a";
 		#sound-dai-cells = <0>;
 	};
 
-	pp3300_touch: pp3300-touch {
+	pp3300_touch: pp3300-touch-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pp3300_touch";
 
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland.dtsi
index 5e563655baec..ed12ee35f06b 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-mrbland.dtsi
@@ -13,7 +13,7 @@
 /delete-node/ &usb_c1;
 
 / {
-	avdd_lcd: avdd-lcd {
+	avdd_lcd: avdd-lcd-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "avdd_lcd";
 
@@ -25,7 +25,7 @@ avdd_lcd: avdd-lcd {
 		vin-supply = <&pp5000_a>;
 	};
 
-	avee_lcd: avee-lcd {
+	avee_lcd: avee-lcd-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "avee_lcd";
 
@@ -37,7 +37,7 @@ avee_lcd: avee-lcd {
 		vin-supply = <&pp5000_a>;
 	};
 
-	v1p8_mipi: v1p8-mipi {
+	v1p8_mipi: v1p8-mipi-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "v1p8_mipi";
 
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
index 070b3acb7baa..ebd6765e2afa 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-parade-ps8640.dtsi
@@ -8,7 +8,7 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	pp3300_brij_ps8640: pp3300-brij-ps8640 {
+	pp3300_brij_ps8640: pp3300-brij-ps8640-regulator {
 		compatible = "regulator-fixed";
 		status = "okay";
 		regulator-name = "pp3300_brij_ps8640";
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
index c1367999eafb..cb41ccdaccfd 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-quackingstick.dtsi
@@ -13,7 +13,7 @@
 /delete-node/ &usb_c1;
 
 / {
-	ppvar_lcd: ppvar-lcd {
+	ppvar_lcd: ppvar-lcd-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "ppvar_lcd";
 
@@ -25,7 +25,7 @@ ppvar_lcd: ppvar-lcd {
 		vin-supply = <&pp5000_a>;
 	};
 
-	v1p8_disp: v1p8-disp {
+	v1p8_disp: v1p8-disp-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "v1p8_disp";
 
diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
index 123989ba97e1..9832e752da35 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi
@@ -10,7 +10,7 @@
 #include "sc7180-trogdor.dtsi"
 
 / {
-	avdd_lcd: avdd-lcd {
+	avdd_lcd: avdd-lcd-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "avdd_lcd";
 
@@ -22,7 +22,7 @@ avdd_lcd: avdd-lcd {
 		vin-supply = <&pp5000_a>;
 	};
 
-	avee_lcd: avee-lcd {
+	avee_lcd: avee-lcd-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "avee_lcd";
 
@@ -35,7 +35,7 @@ avee_lcd: avee-lcd {
 	};
 
 	pp1800_ts:
-	v1p8_mipi: v1p8-mipi {
+	v1p8_mipi: v1p8-mipi-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "v1p8_mipi";
 
-- 
2.34.1

