Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D4554D6A2
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351337AbiFPAzQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:55:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350715AbiFPAyl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:54:41 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3E4A57980
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:28 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id h1so1559plf.11
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AlVYTGpdyD/4RoZufqMfUAtnxIkgzdNZQq9JlVcPm2M=;
        b=cY0VSx2ynxjdY8z+E6cCzS3l8zxPG1fWd74Jb4Jr/0GWbnKM4qNz0HCiiG533beJOM
         LEedo4/FvmUlX0+ZeZEjwn4ZzPjkJQqOBVsm8ZrcHRPYOM6nWeIuYfhO1d9fXrvZneHV
         u7187RhJmfWAXV7sJCdskcE++bBoSi1sCSIXfPef79i5WudcTOz6UmoZ98ARJ70p1SoO
         bzIHIa9np3dzrY0vSYJhZ0bDnac9rTyoQXpuGyP4qQ2G/7J65fWG56WygIYQ6m83rwi4
         WHevtoMGQNcaeSbfMVjqFQw2jLTt1hVj05U1GWN/H07516LmvsnB/TnfiBEL8G5YNyYu
         hpOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AlVYTGpdyD/4RoZufqMfUAtnxIkgzdNZQq9JlVcPm2M=;
        b=rfcAktLoI0CvXIvWRZ30l0VRKjKB7zCMidmWZZEaR7krklcl3EQGXBTvIguhEGcMhJ
         EdHyiuwtpnhE3FuhRSVrEn2b2yirOZYhnyPjdPKFOpQGspu3KCqT5J0LaJqTjqpdW6I4
         3SARF3Y1fGcNOO9wcRBjDFj1gu6e9CnPMgzRN9/ZSdMzZbCQ03wHpKA4caGGvT+RCXot
         1Fx+eB1tWCjCrQHyA21meQ2nwVJqf0AwZBFZxqtOB2pWid/p2lepExhMB6HzSTo1G120
         8SlWPYewWnEgci3Lu3lkHHthmD7kfEKA+Jf2BVVQmH+tIMWJxhdMrtutjBy1KZkXBTqL
         uHpw==
X-Gm-Message-State: AJIora8JMbeCeKtmbDr6chnlkj+YKt0BNj1Zvjq0Mz+SFMr/Lh3qMXrf
        8tECjyh6Drwu6Z+aV+eY3vwpTqWWQgOnMg==
X-Google-Smtp-Source: AGRyM1tGtiIX6Q330qWJmOieQKnEfWXRHpC3+9vuAQgGbl6oEmdtl2Gv4l/SWKlCK3ZvaZjiBWTNtw==
X-Received: by 2002:a17:902:f652:b0:156:701b:9a2a with SMTP id m18-20020a170902f65200b00156701b9a2amr2202537plg.14.1655340867906;
        Wed, 15 Jun 2022 17:54:27 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 22/40] arm64: dts: qcom: correct gpio-keys properties
Date:   Wed, 15 Jun 2022 17:53:15 -0700
Message-Id: <20220616005333.18491-22-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts               |  4 +---
 arch/arm64/boot/dts/qcom/apq8096-db820c.dts            |  4 +---
 arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts      |  4 +---
 .../boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi    | 10 ++++------
 arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts        |  2 --
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi  |  2 --
 .../boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts  |  2 --
 7 files changed, 7 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
index 7c1eab605c15..21242919fe18 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
@@ -92,14 +92,12 @@ hdmi_con: endpoint {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		autorepeat;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&msm_key_volp_n_default>;
 
-		button@0 {
+		button {
 			label = "Volume Up";
 			linux,code = <KEY_VOLUMEUP>;
 			gpios = <&msmgpio 107 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
index 1dbfedd5711c..ba76d4620224 100644
--- a/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
+++ b/arch/arm64/boot/dts/qcom/apq8096-db820c.dts
@@ -84,14 +84,12 @@ div1_mclk: divclk1 {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		autorepeat;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&volume_up_gpio>;
 
-		button@0 {
+		button {
 			label = "Volume Up";
 			linux,code = <KEY_VOLUMEUP>;
 			gpios = <&pm8994_gpios 2 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
index cdb2dfe02e56..04887182bca3 100644
--- a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
+++ b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
@@ -53,11 +53,9 @@ framebuffer0: framebuffer@3400000 {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		autorepeat;
 
-		button@0 {
+		button {
 			label = "Volume Up";
 			gpios = <&pm8994_gpios 3 GPIO_ACTIVE_LOW>;
 			linux,input-type = <1>;
diff --git a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
index 0fb12db47d6e..f430d797196f 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
@@ -29,11 +29,9 @@ / {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		autorepeat;
 
-		button@0 {
+		button-0 {
 			label = "Volume Down";
 			gpios = <&pm8994_gpios 2 GPIO_ACTIVE_LOW>;
 			linux,input-type = <1>;
@@ -42,7 +40,7 @@ button@0 {
 			debounce-interval = <15>;
 		};
 
-		button@1 {
+		button-1 {
 			label = "Volume Up";
 			gpios = <&pm8994_gpios 3 GPIO_ACTIVE_LOW>;
 			linux,input-type = <1>;
@@ -51,7 +49,7 @@ button@1 {
 			debounce-interval = <15>;
 		};
 
-		button@2 {
+		button-2 {
 			label = "Camera Snapshot";
 			gpios = <&pm8994_gpios 4 GPIO_ACTIVE_LOW>;
 			linux,input-type = <1>;
@@ -60,7 +58,7 @@ button@2 {
 			debounce-interval = <15>;
 		};
 
-		button@3 {
+		button-3 {
 			label = "Camera Focus";
 			gpios = <&pm8994_gpios 5 GPIO_ACTIVE_LOW>;
 			linux,input-type = <1>;
diff --git a/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts b/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
index 1ffe72b47f67..6a200f37c035 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
@@ -101,8 +101,6 @@ key-alt {
 	gpio-keys {
 		compatible = "gpio-keys";
 		label = "Side buttons";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vol_up_pin_a>, <&cam_focus_pin_a>,
 			    <&cam_snapshot_pin_a>;
diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index bc06b485897c..42e89f41eb7d 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -90,8 +90,6 @@ cam_vana_rear_vreg: cam_vana_rear_vreg {
 	gpio-keys {
 		status = "okay";
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		key-camera-focus {
 			label = "Camera Focus";
diff --git a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
index f933b6c4f763..c9f195649954 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
@@ -42,8 +42,6 @@ extcon_usb: extcon-usb {
 	gpio-keys {
 		status = "okay";
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		autorepeat;
 
 		key-vol-dn {
-- 
2.34.1

