Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63D7B5F6405
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 11:58:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231579AbiJFJ6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 05:58:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231536AbiJFJ6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 05:58:09 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A3A68992B
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 02:58:04 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id y23-20020a1c4b17000000b003bd336914f9so594389wma.4
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 02:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=BpfK+aYBbv4gDS/7Ac2bO0jkqdp5ST+NBdNkX62pzaE=;
        b=PrIsSIcUz1mU0b7hDwQittYp6HOD6E4MFbijdMnQLur8hhc2e4k8wMhR9c+t8taLdz
         hrlhqyPPVLR+bhYnTfgN3aqBt4qFAWT957cLpT8otV0uXaXlUv3SmvONuIvmRb8+j/46
         zeM80V4QPqHyrKVFioK6QrD+Z97DefkEHeJ1VnU87kMavS/BFjHOmO8uljJ3RvroEmZQ
         TyRY/ejBAlsJKuroTJYLSU1WZE1oLg2GmxiW5WJh3GQXNlHNKOfmKbZyaZZOQnlHFpfz
         hb3KzyI7ZcukkryrW0a8hK4k0QIqTnRht11yIJk41DTavs4gquT6PFcuEdDlN6A/A0OT
         3oGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=BpfK+aYBbv4gDS/7Ac2bO0jkqdp5ST+NBdNkX62pzaE=;
        b=T7wroP0Weq0eAQGaWHoIJw1TwJSWi8C4eXD4QtWNNoP+a9EhEbkK1e7yF1nMOP0+7O
         RarMxSvmKH5bhXTHgPnHvn4EMe28XIx9+Mc3XslbPEsnYalMJkoxO9E5rWa4YNLzOYTA
         2P9YxpLSyinVJiPp7opz7gWQa2nYsbe1k17OLfZzNrJA+fxqM/hxpnTVbrMj88v7sbhL
         CbFgnOTaOdWxy7WQfuZTSbp5cNR0vX/VzZL5uOYYleQzLKMM7kO/O6zLVDE5I7e91E+t
         HRQaEPxAcPLkx1t3vaEgW/Iw9TPT+PH9C3I0ngh+w6LGIUnWCxGBMuZkG08roqkEfKzq
         sd8w==
X-Gm-Message-State: ACrzQf3JBi4S53u5Ju2V8OzFZM0UdpUFxuDGK4srQ6+nwdMbw56uTfXY
        a40CnopiZi3WzgEzJImKEka6xg==
X-Google-Smtp-Source: AMsMyM5RTjsigY8+7Yv5tBXsb6CROwlImdqSBT1Tf+5wQ/FqAqU6HDjTBorUW8x8Vq7rRLfRkSJfHw==
X-Received: by 2002:a7b:c858:0:b0:3b5:7315:3c0d with SMTP id c24-20020a7bc858000000b003b573153c0dmr2596062wml.38.1665050282477;
        Thu, 06 Oct 2022 02:58:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id q11-20020adf9dcb000000b0022ac672654dsm17935603wre.58.2022.10.06.02.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 02:58:01 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Thu, 06 Oct 2022 09:57:59 +0000
Subject: [PATCH 2/6] arm: dts: qcom: mdm9615: fix pinctrl subnodes
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221005-mdm9615-pinctrl-yaml-v1-2-0cbc006e2a30@linaro.org>
References: <20221005-mdm9615-pinctrl-yaml-v1-0-0cbc006e2a30@linaro.org>
In-Reply-To: <20221005-mdm9615-pinctrl-yaml-v1-0-0cbc006e2a30@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>, Lee Jones <lee@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     linux-gpio@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the MDM9615 DT to the expected subnodes namings.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts  |  8 ++++----
 arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi         | 22 +++++++++++-----------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts b/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
index 4e53b3d70195..30a110984597 100644
--- a/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
+++ b/arch/arm/boot/dts/qcom-mdm9615-wp8548-mangoh-green.dts
@@ -45,8 +45,8 @@ &msmgpio {
 	 * - 42: IOT0_GPIO1 and SD Card Detect
 	 */
 
-	gpioext1_pins: gpioext1_pins {
-		pins {
+	gpioext1_pins: gpioext1-state {
+		gpioext1-pins {
 			pins = "gpio2";
 			function = "gpio";
 			input-enable;
@@ -54,8 +54,8 @@ pins {
 		};
 	};
 
-	sdc_cd_pins: sdc_cd_pins {
-		pins {
+	sdc_cd_pins: sdc-cd-state {
+		sdc-cd-pins {
 			pins = "gpio42";
 			function = "gpio";
 			drive-strength = <2>;
diff --git a/arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi b/arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi
index 2fe8693dc3cd..92c8003dac25 100644
--- a/arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615-wp8548.dtsi
@@ -22,8 +22,8 @@ &msmgpio {
 	pinctrl-0 = <&reset_out_pins>;
 	pinctrl-names = "default";
 
-	gsbi3_pins: gsbi3_pins {
-		mux {
+	gsbi3_pins: gsbi3-state {
+		gsbi3-pins {
 			pins = "gpio8", "gpio9", "gpio10", "gpio11";
 			function = "gsbi3";
 			drive-strength = <8>;
@@ -31,8 +31,8 @@ mux {
 		};
 	};
 
-	gsbi4_pins: gsbi4_pins {
-		mux {
+	gsbi4_pins: gsbi4-state {
+		gsbi4-pins {
 			pins = "gpio12", "gpio13", "gpio14", "gpio15";
 			function = "gsbi4";
 			drive-strength = <8>;
@@ -40,15 +40,15 @@ mux {
 		};
 	};
 
-	gsbi5_i2c_pins: gsbi5_i2c_pins {
-		pin16 {
+	gsbi5_i2c_pins: gsbi5-i2c-state {
+		sda-pins {
 			pins = "gpio16";
 			function = "gsbi5_i2c";
 			drive-strength = <8>;
 			bias-disable;
 		};
 
-		pin17 {
+		scl-pins {
 			pins = "gpio17";
 			function = "gsbi5_i2c";
 			drive-strength = <2>;
@@ -56,8 +56,8 @@ pin17 {
 		};
 	};
 
-	gsbi5_uart_pins: gsbi5_uart_pins {
-		mux {
+	gsbi5_uart_pins: gsbi5-uart-state {
+		gsbi5-uart-pins {
 			pins = "gpio18", "gpio19";
 			function = "gsbi5_uart";
 			drive-strength = <8>;
@@ -65,8 +65,8 @@ mux {
 		};
 	};
 
-	reset_out_pins: reset_out_pins {
-		pins {
+	reset_out_pins: reset-out-state {
+		reset-out-pins {
 			pins = "gpio66";
 			function = "gpio";
 			drive-strength = <2>;

-- 
b4 0.10.1
