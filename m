Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B621E607A9B
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 17:29:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230097AbiJUP27 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 11:28:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230435AbiJUP2c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 11:28:32 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAA2027A32A
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 08:27:58 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id f11so4987631wrm.6
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 08:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E6w6wyU+dRkLa1kli5D9X2hxBFzXMiHiBuCpH2iVcFY=;
        b=TW7tZXzMYsOrzlDZU+eD3UvAx/Vpnu5IvPFUtFRmaQBJXY0ftWaNOCt9iyTsM8Jljm
         D4pPpaZD9KnL5bczM/mORkzCEE1Za4lQ6BLWfJvTh9dQOA5gCMGfJRrqOhfZR0l7ewf6
         BBUFVKHO/qiFhqweiwCwbXgBcZGmkonSmENez3a8a6hnWpB7o48m5e4DJyCVsD8iB/fS
         j2MzFT0GrO8t5rBZiDGiMToFSXtPFLjRXl5/PpJn6ttb9ZwQR7Y7/ZvTAlYjZy1rpYsX
         buTArDeQG2SpUMfwwsNwMFsQ43Y5FXkUpwqSaVDKXtbPw/8JK2p0QAY1GWnqYqDkxkBE
         WD3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E6w6wyU+dRkLa1kli5D9X2hxBFzXMiHiBuCpH2iVcFY=;
        b=wt8ihUNhFENTP6AsAxBXniyXGg++r36A6S6pFDcQ6sskh2wp2YKKLag8KC4BR5sPDl
         eLIz385c8c0KMf4k/f9cW3wn2r4gIq1rM9jH3ezSFD8uGRWHki/rIJYlcOpBx7V9POvt
         bBly1vut48fnr9BlkFN+zk+L97JRCMQCBZbGWYXyvZsi9eOZEeHxrxr4MkJgS0tSJWoQ
         hoDtQPHK9BAM9J1jjLL61H3spfbitUeTbbPNzmCydCw0heDZtpmaIAHmEZF3iQVVaH7T
         /OdnwNIjX0q/A/5/itqdqWJqGtUATNPdBLIWJzug4AZ+/iQxkXsMnNbTxOOhNNu/2jWc
         aZig==
X-Gm-Message-State: ACrzQf2yVxBsvPMJwbMqOeAaWhqfgb5LFNKfRsH3YaSRruTkqdkkk4fz
        FOTHos/L3a4ApSbSv0EkJ+m9bQ==
X-Google-Smtp-Source: AMsMyM6Y/7sAFHf+r3nlLv9sFfKk5duwed5w1nBiBAqmdhdOtHPt4c7Vo/kAxlLlbazTJsHAg9NccQ==
X-Received: by 2002:a05:6000:904:b0:21a:3dca:4297 with SMTP id bz4-20020a056000090400b0021a3dca4297mr12644864wrb.487.1666366076549;
        Fri, 21 Oct 2022 08:27:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j8-20020a05600c1c0800b003c6b7f5567csm10706169wms.0.2022.10.21.08.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 08:27:56 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 21 Oct 2022 17:27:53 +0200
Subject: [PATCH v3 1/5] arm: dts: qcom: mdm9615: align pinctrl subnodes with
 dt-schema bindings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221005-mdm9615-pinctrl-yaml-v3-1-e5e045644971@linaro.org>
References: <20221005-mdm9615-pinctrl-yaml-v3-0-e5e045644971@linaro.org>
In-Reply-To: <20221005-mdm9615-pinctrl-yaml-v3-0-e5e045644971@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Align the MDM9615 DT to the expected subnodes namings in the dt-schema
bindings.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
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
