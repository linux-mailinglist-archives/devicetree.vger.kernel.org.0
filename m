Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4236789A6C
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 03:01:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230091AbjH0BAJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 21:00:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230096AbjH0A7q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 20:59:46 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AFCECDC
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 17:59:43 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-500760b296aso2534258e87.0
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 17:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693097982; x=1693702782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UDHR/qTLZAAlEyQL6qHwxIGFzk6+uGKbaVZYZcIFL9s=;
        b=okItZ230mOOzGOPhBpDDPkcsOWiaGaw7rPyXQCSiXJ9aXkco03v3Wovz6V0NIyzN9Y
         TRUJS54AoqGZEhwbvCOPyF06zxzaGxYQw9DjKK0NP0UpTpy34Ff+Bt2yKMynzzE7D4uT
         099RFhc7eIUV7bF+CdmJ4sZV2Fcnhlzc/1CLDRFXBBVw0XBLrDMeAYLJpuxiSrzynatt
         i0E2VZ9/9yE//kkMkqkPfjuyPjJ6NoXBA2AmIfcHr9i11uG3Xsex4XOqzC4uH0RMoDRk
         fDV/HKybq741qVrCe1/nPf7EjnwnizVVfhZW+3171jD3+2E+riACA7Qsma+nC8wutZmt
         y8ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693097982; x=1693702782;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UDHR/qTLZAAlEyQL6qHwxIGFzk6+uGKbaVZYZcIFL9s=;
        b=dYwyKQGdw+9KB6HInSdVhvT5VCx3vIxcIbZpXZ6wePq7ssTGl2RnOhSh7qUfHM9v9A
         sdoBpNKSqd3ET5iAAXOH8bfse4lPt2/RoZ8+ffsWIZNjXPeRIfgZJZmK4s3JAZyqFX3I
         sIe0X4rRLeZ3aY9p+OF523/6DI01wU8cMVsXrnu2wr4a8CTJmlwXzuUZYMDNCluock6e
         1ESBHCQW4YAhLUhKA7cB9fCQoE6Rtpf4NM/byg7cFh92Hs8lYGKPhkFjIWtmbj6VwJ4i
         VsXJNqX4ycvuwnAKKm22eg4z5JPK2PichGSY4oxTZJKkI09OES7mkLNLEgNejTfWTNk/
         lqqw==
X-Gm-Message-State: AOJu0YzfmigbTp97a3o3AZZG+BryLkx7eAyVSJnmH5Pilk9AKG9GJw2d
        BMb1mIVlOU3ftxOlc47dNylJ0Qv/3w9BUT0r6o0=
X-Google-Smtp-Source: AGHT+IGjnds9h1OmUDxQozW/P0ogScd6J724TF03qI8/rDjMC4zVBCpInn/tCU2m9g48AeaqRhMpPg==
X-Received: by 2002:a05:6512:1053:b0:500:a1e4:fc45 with SMTP id c19-20020a056512105300b00500a1e4fc45mr3087675lfb.21.1693097981797;
        Sat, 26 Aug 2023 17:59:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p18-20020ac246d2000000b00500a08e42e7sm917729lfo.124.2023.08.26.17.59.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Aug 2023 17:59:40 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        linux-input@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
        linux-leds@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 20/38] ARM: dts: qcom: mdm9615: split PMIC to separate dtsi files
Date:   Sun, 27 Aug 2023 03:59:02 +0300
Message-Id: <20230827005920.898719-21-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230827005920.898719-1-dmitry.baryshkov@linaro.org>
References: <20230827005920.898719-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PMIC is not a part of the SoC, so move PMIC to a separate file and
include it from the board files.

Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8018.dtsi            | 57 +++++++++++++++++++
 .../boot/dts/qcom/qcom-mdm9615-wp8548.dtsi    |  1 +
 arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi      | 48 +---------------
 3 files changed, 59 insertions(+), 47 deletions(-)
 create mode 100644 arch/arm/boot/dts/qcom/pm8018.dtsi

diff --git a/arch/arm/boot/dts/qcom/pm8018.dtsi b/arch/arm/boot/dts/qcom/pm8018.dtsi
new file mode 100644
index 000000000000..c602544900b2
--- /dev/null
+++ b/arch/arm/boot/dts/qcom/pm8018.dtsi
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Device Tree Source for Qualcomm PM8018
+ *
+ * Copyright (C) 2016 BayLibre, SAS.
+ * Author : Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+&ssbi {
+	pm8018: pmic {
+		compatible = "qcom,pm8018", "qcom,pm8921";
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		pwrkey@1c {
+			compatible = "qcom,pm8018-pwrkey",
+				     "qcom,pm8921-pwrkey";
+			reg = <0x1c>;
+			interrupt-parent = <&pm8018>;
+			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
+				     <51 IRQ_TYPE_EDGE_RISING>;
+			debounce = <15625>;
+			pull-up;
+		};
+
+		pm8018_mpps: mpps@50 {
+			compatible = "qcom,pm8018-mpp", "qcom,ssbi-mpp";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			reg = <0x50>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&pm8018_mpps 0 0 6>;
+		};
+
+		rtc@11d {
+			compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
+			interrupt-parent = <&pm8018>;
+			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
+			reg = <0x11d>;
+			allow-set-time;
+		};
+
+		pm8018_gpio: gpio@150 {
+			compatible = "qcom,pm8058-gpio",
+				     "qcom,ssbi-gpio";
+			reg = <0x150>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			gpio-controller;
+			gpio-ranges = <&pm8018_gpio 0 0 6>;
+			#gpio-cells = <2>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
index b782ff0d16cd..27c3d92d9452 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
@@ -7,6 +7,7 @@
  */
 
 #include "qcom-mdm9615.dtsi"
+#include "pm8018.dtsi"
 
 / {
 	model = "Sierra Wireless WP8548 Module";
diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
index 373d9425b8bd..e23ca6c42683 100644
--- a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
@@ -258,56 +258,10 @@ gsbi5_serial: serial@16440000 {
 			};
 		};
 
-		qcom,ssbi@500000 {
+		ssbi: qcom,ssbi@500000 {
 			compatible = "qcom,ssbi";
 			reg = <0x500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
-
-			pm8018: pmic {
-				compatible = "qcom,pm8018", "qcom,pm8921";
-				#interrupt-cells = <2>;
-				interrupt-controller;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				pwrkey@1c {
-					compatible = "qcom,pm8018-pwrkey", "qcom,pm8921-pwrkey";
-					reg = <0x1c>;
-					interrupt-parent = <&pm8018>;
-					interrupts = <50 IRQ_TYPE_EDGE_RISING>,
-						     <51 IRQ_TYPE_EDGE_RISING>;
-					debounce = <15625>;
-					pull-up;
-				};
-
-				pm8018_mpps: mpps@50 {
-					compatible = "qcom,pm8018-mpp", "qcom,ssbi-mpp";
-					interrupt-controller;
-					#interrupt-cells = <2>;
-					reg = <0x50>;
-					gpio-controller;
-					#gpio-cells = <2>;
-					gpio-ranges = <&pm8018_mpps 0 0 6>;
-				};
-
-				rtc@11d {
-					compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
-					interrupt-parent = <&pm8018>;
-					interrupts = <39 IRQ_TYPE_EDGE_RISING>;
-					reg = <0x11d>;
-					allow-set-time;
-				};
-
-				pm8018_gpio: gpio@150 {
-					compatible = "qcom,pm8018-gpio", "qcom,ssbi-gpio";
-					reg = <0x150>;
-					interrupt-controller;
-					#interrupt-cells = <2>;
-					gpio-controller;
-					gpio-ranges = <&pm8018_gpio 0 0 6>;
-					#gpio-cells = <2>;
-				};
-			};
 		};
 
 		sdcc1bam: dma-controller@12182000 {
-- 
2.39.2

