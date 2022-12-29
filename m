Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6899658BC0
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:33:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233403AbiL2Kcq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:32:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233142AbiL2KcX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:32:23 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 430829FE3
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:32:22 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id y25so26974395lfa.9
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:32:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qV1Dgv8O2EwayZTmXz48p2pGYrprzLa0BjSyB9KzJxM=;
        b=U8Gj7HaYspeN7GJvJ/rH1zkQtc+Q7dh1GWoieX1qHc3hXtgEGid9/a5nGmEleEwbZe
         o3/Za6L1CweNWY/FQ6Xzq4VRJAOsHQz40qYZKg2nCXo9gHfke0RfkHXao8bGMYfFXqNh
         w4CXUJWLw/iJ2SEYSyY/oVL0REmSOzvM6iveP0G7vbfWk6BQfZGUyFUv4mJ35YrzIhSy
         Gt5Q4qz3ZAfVedea/IU0PlO7SsX8tQWSi2NeAVt3xL2lzPjGkMaRlWOPiBY/W7RatjyK
         ZPfSczNElk76C0yPkVPcEVY+nO4E6WHmuqAkuc6HbeOx6FJHRlI9GbxB5+y22DmUku1B
         gwQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qV1Dgv8O2EwayZTmXz48p2pGYrprzLa0BjSyB9KzJxM=;
        b=wx7G+YEBTLeFwTJ/pUssjCSeHfxvJVluZSKOckI2hG9gXkVG9l8R31qltyRH8HqKXr
         lrftXj7FW94x6lypffJ+wT79/7IH7Nmd65pZhHmttNbbcAYFy6RswEcZbGFbBelVYAzO
         2636vkCXRGTDIZneh1fRIcZ4IVdUL7AT1kaAlT5iweXZZyuk0WHUl8z0D9buONj0lmQ6
         dBWoVHyijUkzbiQKNnfDb1ZGDtEBmwWptLR53zAVMaaBY/Pab4q37aD61sxi9DVO96ZW
         Pcfe2v2Hg81Oo3A0cNP7Jz7sE1Su07aLaOTLffTkqIvJbuqZawR4NyVgMQ05icu7f51p
         PGEQ==
X-Gm-Message-State: AFqh2kpdubXIKwJu0rpBOj5L0DKG8XeS1hpTAQIujJNURNso4gT2NmbH
        /E5lreE8XJ8/wAr9x61jnKogzw==
X-Google-Smtp-Source: AMrXdXsHLQYunNRIkzr/Gag3QcH+OooPrJ0zdEyYl/GoQgHzZtORusUc3lgCe+T3ybnhgBQcCajVsA==
X-Received: by 2002:a05:6512:2591:b0:4b5:7dd6:4df0 with SMTP id bf17-20020a056512259100b004b57dd64df0mr7992771lfb.32.1672309941792;
        Thu, 29 Dec 2022 02:32:21 -0800 (PST)
Received: from localhost.localdomain (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id m1-20020a056512114100b004a478c2f4desm2993526lfg.163.2022.12.29.02.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 02:32:21 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org, Vinod Koul <vkoul@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/7] arm64: dts: qcom: sm8450-nagara: Set up camera regulators
Date:   Thu, 29 Dec 2022 11:32:10 +0100
Message-Id: <20221229103212.984324-5-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221229103212.984324-1-konrad.dybcio@linaro.org>
References: <20221229103212.984324-1-konrad.dybcio@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set up gpio-controlled fixed regulators for camera on PDX223 and fix
up the existing ones in common and PDX224 trees.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v1 -> v2:
No changes

 .../qcom/sm8450-sony-xperia-nagara-pdx223.dts | 38 +++++++++++++++++++
 .../qcom/sm8450-sony-xperia-nagara-pdx224.dts | 15 +++++++-
 .../dts/qcom/sm8450-sony-xperia-nagara.dtsi   | 16 +++++++-
 3 files changed, 65 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts
index 561cd4f09ab7..daf2f91f356e 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx223.dts
@@ -11,6 +11,26 @@
 / {
 	model = "Sony Xperia 1 IV";
 	compatible = "sony,pdx223", "qcom,sm8450";
+
+	imx316_lvdd_regulator: imx316-lvdd-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "imx316_lvdd_regulator";
+		gpio = <&pm8350b_gpios 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&cam_pwr_ld_en>;
+	};
+
+	tcs3490_vdd_regulator: rgbcir-vdd-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "tcs3490_vdd_regulator";
+		gpio = <&pm8350c_gpios 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&rgbc_ir_pwr_en>;
+	};
 };
 
 &pm8350b_gpios {
@@ -22,6 +42,15 @@ &pm8350b_gpios {
 			  "CAM_PWR_LD_EN",
 			  "NC",
 			  "FOCUS_N";
+
+	cam_pwr_ld_en: cam-pwr-ld-en-state {
+		pins = "gpio6";
+		function = "normal";
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
+		power-source = <0>;
+		drive-push-pull;
+		output-low;
+	};
 };
 
 &pm8350c_gpios {
@@ -34,6 +63,15 @@ &pm8350c_gpios {
 			  "NC",
 			  "NC",
 			  "WIDEC_PWR_EN";
+
+	rgbc_ir_pwr_en: rgbc-ir-pwr-en-state {
+		pins = "gpio6";
+		function = "normal";
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
+		power-source = <1>;
+		drive-push-pull;
+		output-low;
+	};
 };
 
 &tlmm {
diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx224.dts b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx224.dts
index fc9d74d0f227..dc4de2d3fe48 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx224.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara-pdx224.dts
@@ -12,11 +12,14 @@ / {
 	model = "Sony Xperia 5 IV";
 	compatible = "sony,pdx224", "qcom,sm8450";
 
-	imx563_vdig_vreg: imx563-vdig-regulator {
+	imx563_vdig_regulator: imx563-vdig-regulator {
 		compatible = "regulator-fixed";
-		regulator-name = "imx563_vdig_vreg";
+		regulator-name = "imx563_vdig_regulator";
 		gpio = <&tlmm 22 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&uwidec_pwr_en>;
 	};
 };
 
@@ -254,4 +257,12 @@ &tlmm {
 			  "APPS_I2C_0_SCL",
 			  "CCI_I2C3_SDA",
 			  "CCI_I2C3_SCL";
+
+	uwidec_pwr_en: uwidec-pwr-en-state {
+		pins = "gpio22";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
index 0e139921b3e3..a8c4df2696e3 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2022, Konrad Dybcio <konrad.dybcio@somainline.org>
  */
 
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include "sm8450.dtsi"
 #include "pm8350.dtsi"
@@ -93,11 +94,14 @@ ramoops@ffc00000 {
 	};
 
 	/* Sadly, the voltages for these GPIO regulators are unknown. */
-	imx650_vana_vreg: imx650-vana-regulator {
+	imx650_vana_regulator: imx650-vana-regulator {
 		compatible = "regulator-fixed";
-		regulator-name = "imx650_vana_vreg";
+		regulator-name = "imx650_vana_regulator";
 		gpio = <&tlmm 23 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&telec_pwr_en>;
 	};
 
 	vph_pwr: vph-pwr-regulator {
@@ -703,6 +707,14 @@ ts_int_default: ts-int-default-state {
 		input-enable;
 	};
 
+	telec_pwr_en: telec-pwr-en-state {
+		pins = "gpio23";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-disable;
+		output-low;
+	};
+
 	sdc2_card_det_n: sd-card-det-n-state {
 		pins = "gpio92";
 		function = "gpio";
-- 
2.39.0

