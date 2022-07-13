Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6205C573EDC
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 23:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237401AbiGMVVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 17:21:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237434AbiGMVVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 17:21:22 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18F9CAE41
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 14:20:47 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-f2a4c51c45so128550fac.9
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 14:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jDIsFRxXwtCqxyONdxF5c1K9paBtFr3+08L7z2qU5vA=;
        b=j6cOJrctkCf7KseVBRdjSV7xlcfNt+7koxFBfEzD+TqfkyzpEbWiMDN5+d1JFAlUR1
         4UWAlA7Y7QVimCdgfMGCV5T5leqdGRaLoe8ws+Uj9fgqQwS4b8SOpsIZtuehvXuI+xQo
         UFJKWvgemXRzSTOEgy/A+jHJpgXoPOrnxi+IEalxaNKcrp0DgtDTmzaU9N6aQ+abSW1S
         IilnnvVXk0xNL9DD52vVgrih36f14uWbKP9rFimyB5zdAH32DVassCoYu35wrNoqLNi7
         lk9demUWCLl4bQ8ke7GM5ZQOmqIJbWNNbduoF8eLZRDgNLeyQB3Ohsx8x5GSTbEkfbnL
         uufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jDIsFRxXwtCqxyONdxF5c1K9paBtFr3+08L7z2qU5vA=;
        b=lrf89BXnFESZZ/d0NaZ+OP0HnN1T7611ZC3njeFHaAoUJQNk/PDgIovgnrttaEktLQ
         nJPlkhXqEyDSXT4LYoKyWBsSvcM6w2e1DY+NJkxsGuzLWRHwNJi7AaGedoUeuq9uHQMK
         z4fHiYZmHXBAAjtuqaK6bHT5obpEPy756RozK089IyhzQWVCXCK0l5Hq0K5BMnU2tS4s
         V61+AiwRbrf0qwrHJbjQpm3L6WcVtyHRaz0o/mhVvWNMh/GXegCGJ5E9fQ/4HICI8pZZ
         +MjJ3ToH+jeCHmYaGolqsT+h882zd4RXOJmsXT8Wfo/8aMmUYSCKSCbJfZUcVfy3eL37
         e/Gg==
X-Gm-Message-State: AJIora+X7GZw/uuH8m7ZnxZbEyiF/b+lZakWWXUB/WUiFftKajzuip4W
        rll7x0ga+YKQykTlXY4aRe+4tjlpRK1YKw==
X-Google-Smtp-Source: AGRyM1tJqqpZcbdmf0IjLs3JPzHYVSJn1XpT0FPSi1cB/Be9qVNnpyy+gRwJUYwTuBP+IukgYZYe8w==
X-Received: by 2002:a05:6870:41ca:b0:101:d588:6241 with SMTP id z10-20020a05687041ca00b00101d5886241mr5611485oac.175.1657747246489;
        Wed, 13 Jul 2022 14:20:46 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id i19-20020a056871029300b0010c17e6c699sm6647897oae.47.2022.07.13.14.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 14:20:45 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Luca Weiss <luca@z3ntu.xyz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: dts: qcom: msm8974-sony: Enable LPG
Date:   Wed, 13 Jul 2022 14:23:09 -0700
Message-Id: <20220713212309.130230-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220713212309.130230-1-bjorn.andersson@linaro.org>
References: <20220713212309.130230-1-bjorn.andersson@linaro.org>
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

Both Castor and Honami has RGB LEDs driven by the PM8941 LPG, define
these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
- Corrected unit addresses and sort order of channels

 .../dts/qcom-msm8974-sony-xperia-rhine.dtsi   | 30 +++++++++++++++++++
 ...-msm8974pro-sony-xperia-shinano-castor.dts | 30 +++++++++++++++++++
 2 files changed, 60 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-rhine.dtsi b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-rhine.dtsi
index d42b85bda33a..5a70683d9103 100644
--- a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-rhine.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-rhine.dtsi
@@ -3,6 +3,7 @@
 #include "qcom-pm8841.dtsi"
 #include "qcom-pm8941.dtsi"
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
 / {
@@ -172,6 +173,35 @@ gpio_keys_pin_a: gpio-keys-active-state {
 	};
 };
 
+&pm8941_lpg {
+	status = "okay";
+
+	qcom,power-source = <1>;
+
+	rgb-led {
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@5 {
+			reg = <5>;
+			color = <LED_COLOR_ID_BLUE>;
+		};
+
+		led@6 {
+			reg = <6>;
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led@7 {
+			reg = <7>;
+			color = <LED_COLOR_ID_RED>;
+		};
+	};
+};
+
 &pm8941_wled {
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts b/arch/arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts
index 9fc696a7399a..3f45f5c5d37b 100644
--- a/arch/arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts
+++ b/arch/arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts
@@ -3,6 +3,7 @@
 #include "qcom-pm8841.dtsi"
 #include "qcom-pm8941.dtsi"
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 
 / {
@@ -288,6 +289,35 @@ lcd_dcdc_en_pin_a: lcd-dcdc-en-active-state {
 
 };
 
+&pm8941_lpg {
+	status = "okay";
+
+	qcom,power-source = <1>;
+
+	rgb-led {
+		color = <LED_COLOR_ID_RGB>;
+		function = LED_FUNCTION_STATUS;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@5 {
+			reg = <5>;
+			color = <LED_COLOR_ID_BLUE>;
+		};
+
+		led@6 {
+			reg = <6>;
+			color = <LED_COLOR_ID_GREEN>;
+		};
+
+		led@7 {
+			reg = <7>;
+			color = <LED_COLOR_ID_RED>;
+		};
+	};
+};
+
 &rpm_requests {
 	pm8941-regulators {
 		compatible = "qcom,rpm-pm8941-regulators";
-- 
2.35.1

