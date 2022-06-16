Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C1E154D6A3
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:58:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349320AbiFPAyK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:54:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349311AbiFPAyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:54:06 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CFC056748
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:05 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id h192so12918545pgc.4
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NYl7yU1ssVY0Vfpt/Py3PewLqdiiGecx6/cVKRT0JHY=;
        b=dm5nbwkxZllaRsb/zScP9QnPI/5s6DTndDzWLHFVX63/hAfYmPaCQGPKrqnY5wB3Uz
         F4ss39OA/2/JpsrlPsRQC7paCL03+iDH5KieRHvmiT09oKkpsrmZK0lvefR84CA2DeI1
         jUqRUDzzmiPdVxjhOX72ZC7/HJRMUCDagXRgDAHwUKuHkeFDPPnOTqFsnJKAIP15xrYC
         wKAr8agxtf4bYDLydGLQkd37yisL1YWd5t93yx+HB6M4JNaMSumvIt03TqTAuTgr7te3
         jQ7qhF6nz0+7oey8MYvzDWzZpmnX06noEW6e1QBUv4zT1Di21OLJZpIUDy7T24XfSvZ4
         bAew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NYl7yU1ssVY0Vfpt/Py3PewLqdiiGecx6/cVKRT0JHY=;
        b=W9CLJ3AVqwsATl+oFhhEb0bbQMasjcrg+at66FOKQA6LzELp3QKrqg6XmzELefttht
         FasGt0CxCQ4x/LEO3LBc4RSEhKq1D2DahN+CI6bo0G544Wc704hKp5edlO3Tw96lZX3i
         jgjPFjPrakasgs2XshQ/5RKpXnj5C0L3mnt9o4+ntBVaZ7iOayESq6S2jU6GHoSkKmNV
         fM3O38Q86GXBVeSVtq9fsoipMH9uAP2Ooiq84DshszVM+nbCBY/uUnvMeo4VjFe5I2OZ
         t2MHVLGo2weVtgFQj1fVAjGqj1u1aBEDnS1hjxUcfHB11rdv8DOcorNW7R+6TfqB0diJ
         25Bg==
X-Gm-Message-State: AJIora8JQnyX5SLCqJpPKrU8pnHP7WpxIteAaAj3RwAzCjt6UV1O9yG7
        +WlGsbDHEHpRt8/ZyeH1GNpjaA==
X-Google-Smtp-Source: AGRyM1tzDpIHFKCISOtxqgR7W0ZG/z3oO72AWo6nlr7LRUFRzCuzaNfOWw4e4mTf61SXfjZX/N2m+Q==
X-Received: by 2002:a05:6a00:2447:b0:520:6b82:6dfd with SMTP id d7-20020a056a00244700b005206b826dfdmr2274408pfj.39.1655340844654;
        Wed, 15 Jun 2022 17:54:04 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     arm@kernel.org, soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 07/40] arm64: dts: freescale: align gpio-key node names with dtschema
Date:   Wed, 15 Jun 2022 17:53:00 -0700
Message-Id: <20220616005333.18491-7-krzysztof.kozlowski@linaro.org>
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

The node names should be generic and DT schema expects certain pattern
(e.g. with key/button/switch).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts       | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi   | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts    | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts    | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts    | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi          | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts    | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi          | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts   | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi         | 4 ++--
 arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts         | 2 +-
 .../arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/mba8mx.dtsi                 | 6 +++---
 15 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index d3f03dcbb8c3..aa38f5379558 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -35,14 +35,14 @@ buttons {
 		 * external power off (e.g ATX Power Button)
 		 * asserted
 		 */
-		powerdn {
+		button-powerdn {
 			label = "External Power Down";
 			gpios = <&gpio1 17 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_POWER>;
 		};
 
 		/* Rear Panel 'ADMIN' button (GPIO_H) */
-		admin {
+		button-admin {
 			label = "ADMIN button";
 			gpios = <&gpio3 8 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_WPS_BUTTON>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index ac1fe1530ac7..d643381417f1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -36,19 +36,19 @@ reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		back {
+		key-back {
 			label = "Back";
 			gpios = <&pca9534 1 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_BACK>;
 		};
 
-		home {
+		key-home {
 			label = "Home";
 			gpios = <&pca9534 2 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_HOME>;
 		};
 
-		menu {
+		key-menu {
 			label = "Menu";
 			gpios = <&pca9534 3 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_MENU>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
index 8a496aa09072..66a0d103c90f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
@@ -16,13 +16,13 @@ memory@40000000 {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		user-pb {
+		key-user-pb {
 			label = "user_pb";
 			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
 			linux,code = <BTN_0>;
 		};
 
-		user-pb1x {
+		key-user-pb1x {
 			label = "user_pb1x";
 			linux,code = <BTN_1>;
 			interrupt-parent = <&gsc>;
@@ -36,14 +36,14 @@ key-erased {
 			interrupts = <1>;
 		};
 
-		eeprom-wp {
+		key-eeprom-wp {
 			label = "eeprom_wp";
 			linux,code = <BTN_3>;
 			interrupt-parent = <&gsc>;
 			interrupts = <2>;
 		};
 
-		tamper {
+		key-tamper {
 			label = "tamper";
 			linux,code = <BTN_4>;
 			interrupt-parent = <&gsc>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
index 24737e89038a..35fb929e7bcc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
@@ -38,13 +38,13 @@ memory@40000000 {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		user-pb {
+		key-user-pb {
 			label = "user_pb";
 			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
 			linux,code = <BTN_0>;
 		};
 
-		user-pb1x {
+		key-user-pb1x {
 			label = "user_pb1x";
 			linux,code = <BTN_1>;
 			interrupt-parent = <&gsc>;
@@ -58,14 +58,14 @@ key-erased {
 			interrupts = <1>;
 		};
 
-		eeprom-wp {
+		key-eeprom-wp {
 			label = "eeprom_wp";
 			linux,code = <BTN_3>;
 			interrupt-parent = <&gsc>;
 			interrupts = <2>;
 		};
 
-		tamper {
+		key-tamper {
 			label = "tamper";
 			linux,code = <BTN_4>;
 			interrupt-parent = <&gsc>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
index 407ab4592b4c..79107e287d92 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
@@ -42,13 +42,13 @@ can20m: can20m {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		user-pb {
+		key-user-pb {
 			label = "user_pb";
 			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
 			linux,code = <BTN_0>;
 		};
 
-		user-pb1x {
+		key-user-pb1x {
 			label = "user_pb1x";
 			linux,code = <BTN_1>;
 			interrupt-parent = <&gsc>;
@@ -62,14 +62,14 @@ key-erased {
 			interrupts = <1>;
 		};
 
-		eeprom-wp {
+		key-eeprom-wp {
 			label = "eeprom_wp";
 			linux,code = <BTN_3>;
 			interrupt-parent = <&gsc>;
 			interrupts = <2>;
 		};
 
-		tamper {
+		key-tamper {
 			label = "tamper";
 			linux,code = <BTN_4>;
 			interrupt-parent = <&gsc>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
index a7dae9bd4c11..a65761a53f23 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
@@ -33,13 +33,13 @@ memory@40000000 {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		user-pb {
+		key-user-pb {
 			label = "user_pb";
 			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
 			linux,code = <BTN_0>;
 		};
 
-		user-pb1x {
+		key-user-pb1x {
 			label = "user_pb1x";
 			linux,code = <BTN_1>;
 			interrupt-parent = <&gsc>;
@@ -53,7 +53,7 @@ key-erased {
 			interrupts = <1>;
 		};
 
-		eeprom-wp {
+		key-eeprom-wp {
 			label = "eeprom_wp";
 			linux,code = <BTN_3>;
 			interrupt-parent = <&gsc>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
index eafa88d980b3..a8c329cb4c28 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-verdin.dtsi
@@ -43,7 +43,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_keys>;
 
-		wakeup {
+		key-wakeup {
 			debounce-interval = <10>;
 			/* Verdin CTRL_WAKE1_MICO# (SODIMM 252) */
 			gpios = <&gpio4 28 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
index f61c48776cf3..3ed7021a487c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som-symphony.dts
@@ -26,19 +26,19 @@ reg_usdhc2_vmmc: regulator-usdhc2-vmmc {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		back {
+		key-back {
 			label = "Back";
 			gpios = <&pca9534 1 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_BACK>;
 		};
 
-		home {
+		key-home {
 			label = "Home";
 			gpios = <&pca9534 2 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_HOME>;
 		};
 
-		menu {
+		key-menu {
 			label = "Menu";
 			gpios = <&pca9534 3 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_MENU>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
index 367a232675aa..636f8602b979 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
@@ -39,13 +39,13 @@ can20m: can20m {
 	gpio-keys {
 		compatible = "gpio-keys";
 
-		user-pb {
+		key-user-pb {
 			label = "user_pb";
 			gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
 			linux,code = <BTN_0>;
 		};
 
-		user-pb1x {
+		key-user-pb1x {
 			label = "user_pb1x";
 			linux,code = <BTN_1>;
 			interrupt-parent = <&gsc>;
@@ -59,14 +59,14 @@ key-erased {
 			interrupts = <1>;
 		};
 
-		eeprom-wp {
+		key-eeprom-wp {
 			label = "eeprom_wp";
 			linux,code = <BTN_3>;
 			interrupt-parent = <&gsc>;
 			interrupts = <2>;
 		};
 
-		tamper {
+		key-tamper {
 			label = "tamper";
 			linux,code = <BTN_4>;
 			interrupt-parent = <&gsc>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index fb17e329cd37..8c38f89df0ad 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -49,7 +49,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_keys>;
 
-		wakeup {
+		button-wakeup {
 			debounce-interval = <10>;
 			/* Verdin CTRL_WAKE1_MICO# (SODIMM 252) */
 			gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index b86f188a440d..6445c6b90b5b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -36,21 +36,21 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_keys>;
 
-		btn1 {
+		button-1 {
 			label = "VOL_UP";
 			gpios = <&gpio4 21 GPIO_ACTIVE_LOW>;
 			wakeup-source;
 			linux,code = <KEY_VOLUMEUP>;
 		};
 
-		btn2 {
+		button-2 {
 			label = "VOL_DOWN";
 			gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
 			wakeup-source;
 			linux,code = <KEY_VOLUMEDOWN>;
 		};
 
-		wwan-wake {
+		button-3 {
 			label = "WWAN_WAKE";
 			gpios = <&gpio3 8 GPIO_ACTIVE_LOW>;
 			interrupt-parent = <&gpio3>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
index 587e55aaa57b..9eec8a7eecfc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
@@ -37,7 +37,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_keys>;
 
-		vol-down {
+		key-vol-down {
 			label = "VOL_DOWN";
 			gpios = <&gpio1 17 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_VOLUMEDOWN>;
@@ -45,7 +45,7 @@ vol-down {
 			wakeup-source;
 		};
 
-		vol-up {
+		key-vol-up {
 			label = "VOL_UP";
 			gpios = <&gpio1 16 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_VOLUMEUP>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
index a89546b39095..9dda2a1554c3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-nitrogen.dts
@@ -26,7 +26,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpio_keys>;
 
-		power {
+		button-power {
 			label = "Power Button";
 			gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_POWER>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi
index e3f161a10448..a08e70fb7c7a 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-colibri-eval-v3.dtsi
@@ -16,7 +16,7 @@ gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpiokeys>;
 
-		wakeup {
+		key-wakeup {
 			label = "Wake-Up";
 			gpios = <&lsio_gpio3 10 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_WAKEUP>;
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index c2f0f1a1566c..aab1aee49893 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -26,21 +26,21 @@ gpio-keys {
 		pinctrl-0 = <&pinctrl_gpiobutton>;
 		autorepeat;
 
-		switch1 {
+		switch-1 {
 			label = "switch1";
 			linux,code = <BTN_0>;
 			gpios = <&gpio1 5 GPIO_ACTIVE_LOW>;
 			wakeup-source;
 		};
 
-		btn2: switch2 {
+		btn2: switch-2 {
 			label = "switch2";
 			linux,code = <BTN_1>;
 			gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
 			wakeup-source;
 		};
 
-		switch3 {
+		switch-3 {
 			label = "switch3";
 			linux,code = <BTN_2>;
 			gpios = <&gpio1 7 GPIO_ACTIVE_LOW>;
-- 
2.34.1

