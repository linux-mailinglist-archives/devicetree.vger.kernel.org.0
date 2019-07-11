Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D6424661C9
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2019 00:35:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728529AbfGKWfW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Jul 2019 18:35:22 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:37349 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726207AbfGKWfW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Jul 2019 18:35:22 -0400
Received: by mail-pl1-f193.google.com with SMTP id b3so3758371plr.4
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2019 15:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Dz0KnHgWpyKz8NfSR138KX/PtrwhvrlzsrqJp04ekYY=;
        b=lka+F9IslSN3mtvNCCSePgEMXyqpd/Ck10y50EErd3zK1yLIYMicqvXvZV+663GQZL
         TR/2+07Fy8SK4hLNzWAn6hhgBzRyFPFuyOVpXek/mVIx9QNlsy4akPcHjVJyGC2cM8oI
         mc06eXt5qv3rJO+RtwS9xWIrDWGmqIsrIwByQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Dz0KnHgWpyKz8NfSR138KX/PtrwhvrlzsrqJp04ekYY=;
        b=BnfDR6xQ3ZDhqn5ygt47T3l88fgnGahmmpBdSebZ/ywZLQT51UpkaOVCHkH/ageM7s
         GbY2yc2H1IaBgExIpULV4LnHXOL9yZa4oaZ7rYAd6r8NjeXSsV8D32O+iASSGarmZZzo
         JpetmByuDC5fXCNTZJP9G0Ln3Y25zWwxFub3ynI7XUpJcQep1iTyAQi23VhhWQWgpHW2
         I7DauY0LqLv+NdNSM0dliip0tEOm4aoE1FE5nhzhZEKAnTVY/YPp1A6kwVyBtfpZY3Ht
         Pc5t8lnNj1DkzJ5dFjOLNjFlEWjyB4jXY1lMKWMXKzE5qT49hbUAz6lkDxKQb7v9hMOH
         P+Jg==
X-Gm-Message-State: APjAAAWUhcYNKSxLAONQPCo2qBaPJ/E7J3CiGK/SXjuJe5GeA+rkneJ/
        iAnPZcMFXSdK3Mxs6WgqQG8d/qPGD3Y=
X-Google-Smtp-Source: APXvYqywkD2qW/nNSCx42LT9JWEmpwfeT9s7L6iB8oof9B5AyJgOsF2cBXbEwe3JRA5ZnKZ4oKSYjA==
X-Received: by 2002:a17:902:7781:: with SMTP id o1mr7320713pll.205.1562884521192;
        Thu, 11 Jul 2019 15:35:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id i14sm12003623pfk.0.2019.07.11.15.35.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jul 2019 15:35:20 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 2/2] ARM: dts: rockchip: consolidate veyron panel and backlight settings
Date:   Thu, 11 Jul 2019 15:34:55 -0700
Message-Id: <20190711223455.12210-2-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190711223455.12210-1-mka@chromium.org>
References: <20190711223455.12210-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

veyron jaq, jerry, minnie and speedy have mostly redundant regulator
and pinctrl configurations for the panel/backlight. Consolidate these
pieces in the eDP .dtsi.

Also change the default power supply for the panel to
'panel_regulator', instead of overriding it in all the board files.
pinky is the only device that uses 'vcc33_lcd' (the prior default),
so overwrite it in this case. pinky doesn't have a complete display
configuration, to keep things as they were delete the common nodes
that didn't exist previously in pinky's board file.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- rebased on v5.4-armsoc/dts32 (0d19541e3b45)
---
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi   | 51 ++++++++++++++++++-
 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 55 --------------------
 arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 58 ----------------------
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 51 -------------------
 arch/arm/boot/dts/rk3288-veyron-pinky.dts  | 17 +++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts | 58 ----------------------
 6 files changed, 67 insertions(+), 223 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
index 5d812e9e78aa..39f56d36a701 100644
--- a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
@@ -6,6 +6,40 @@
  */
 
 / {
+	backlight_regulator: backlight-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bl_pwr_en>;
+		regulator-name = "backlight_regulator";
+		vin-supply = <&vcc33_sys>;
+		startup-delay-us = <15000>;
+	};
+
+	panel_regulator: panel-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_enable_h>;
+		regulator-name = "panel_regulator";
+		startup-delay-us = <100000>;
+		vin-supply = <&vcc33_sys>;
+	};
+
+	vcc18_lcd: vcc18-lcd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&avdd_1v8_disp_en>;
+		regulator-name = "vcc18_lcd";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc18_wl>;
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		brightness-levels = <
@@ -48,12 +82,13 @@
 		pwms = <&pwm0 0 1000000 0>;
 		post-pwm-on-delay-ms = <10>;
 		pwm-off-delay-ms = <10>;
+		power-supply = <&backlight_regulator>;
 	};
 
 	panel: panel {
 		compatible ="innolux,n116bge", "simple-panel";
 		status = "okay";
-		power-supply = <&vcc33_lcd>;
+		power-supply = <&panel_regulator>;
 		backlight = <&backlight>;
 
 		panel-timing {
@@ -105,10 +140,24 @@
 
 &pinctrl {
 	backlight {
+		bl_pwr_en: bl_pwr_en {
+			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		bl_en: bl-en {
 			rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	lcd {
+		lcd_enable_h: lcd-en {
+			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		avdd_1v8_disp_en: avdd-1v8-disp-en {
+			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm0 {
diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index fcd119168cb6..80386203e85b 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -16,40 +16,6 @@
 		     "google,veyron-jaq-rev3", "google,veyron-jaq-rev2",
 		     "google,veyron-jaq-rev1", "google,veyron-jaq",
 		     "google,veyron", "rockchip,rk3288";
-
-	panel_regulator: panel-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&lcd_enable_h>;
-		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
-		vin-supply = <&vcc33_sys>;
-	};
-
-	vcc18_lcd: vcc18-lcd {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&avdd_1v8_disp_en>;
-		regulator-name = "vcc18_lcd";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc18_wl>;
-	};
-
-	backlight_regulator: backlight-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_pwr_en>;
-		regulator-name = "backlight_regulator";
-		vin-supply = <&vcc33_sys>;
-		startup-delay-us = <15000>;
-	};
 };
 
 &backlight {
@@ -87,11 +53,6 @@
 		232 233 234 235 236 237 238 239
 		240 241 242 243 244 245 246 247
 		248 249 250 251 252 253 254 255>;
-	power-supply = <&backlight_regulator>;
-};
-
-&panel {
-	power-supply = <&panel_regulator>;
 };
 
 &rk808 {
@@ -343,12 +304,6 @@
 };
 
 &pinctrl {
-	backlight {
-		bl_pwr_en: bl_pwr_en {
-			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -361,16 +316,6 @@
 		};
 	};
 
-	lcd {
-		lcd_enable_h: lcd-en {
-			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		avdd_1v8_disp_en: avdd-1v8-disp-en {
-			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pmic {
 		dvs_1: dvs-1 {
 			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
index 164561f04c1d..a8f55aec09ee 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
@@ -18,48 +18,6 @@
 		     "google,veyron-jerry-rev5", "google,veyron-jerry-rev4",
 		     "google,veyron-jerry-rev3", "google,veyron-jerry",
 		     "google,veyron", "rockchip,rk3288";
-
-	panel_regulator: panel-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&lcd_enable_h>;
-		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
-		vin-supply = <&vcc33_sys>;
-	};
-
-	vcc18_lcd: vcc18-lcd {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&avdd_1v8_disp_en>;
-		regulator-name = "vcc18_lcd";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc18_wl>;
-	};
-
-	backlight_regulator: backlight-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_pwr_en>;
-		regulator-name = "backlight_regulator";
-		vin-supply = <&vcc33_sys>;
-		startup-delay-us = <15000>;
-	};
-};
-
-&backlight {
-	power-supply = <&backlight_regulator>;
-};
-
-&panel {
-	power-supply= <&panel_regulator>;
 };
 
 &rk808 {
@@ -311,12 +269,6 @@
 };
 
 &pinctrl {
-	backlight {
-		bl_pwr_en: bl_pwr_en {
-			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -329,16 +281,6 @@
 		};
 	};
 
-	lcd {
-		lcd_enable_h: lcd-en {
-			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		avdd_1v8_disp_en: avdd-1v8-disp-en {
-			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pmic {
 		dvs_1: dvs-1 {
 			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 4cc7d3659484..2b0801a539c9 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -15,40 +15,6 @@
 		     "google,veyron-minnie-rev0", "google,veyron-minnie",
 		     "google,veyron", "rockchip,rk3288";
 
-	backlight_regulator: backlight-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_pwr_en>;
-		regulator-name = "backlight_regulator";
-		vin-supply = <&vcc33_sys>;
-		startup-delay-us = <15000>;
-	};
-
-	panel_regulator: panel-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&lcd_enable_h>;
-		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
-		vin-supply = <&vcc33_sys>;
-	};
-
-	vcc18_lcd: vcc18-lcd {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&avdd_1v8_disp_en>;
-		regulator-name = "vcc18_lcd";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc18_wl>;
-	};
-
 	volume_buttons: volume-buttons {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -137,7 +103,6 @@
 
 &panel {
 	compatible = "auo,b101ean01", "simple-panel";
-	power-supply= <&panel_regulator>;
 
 	/delete-node/ panel-timing;
 
@@ -411,12 +376,6 @@
 };
 
 &pinctrl {
-	backlight {
-		bl_pwr_en: bl_pwr_en {
-			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -439,16 +398,6 @@
 		};
 	};
 
-	lcd {
-		lcd_enable_h: lcd-en {
-			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		avdd_1v8_disp_en: avdd-1v8-disp-en {
-			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pmic {
 		dvs_1: dvs-1 {
 			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
index 9b6f4d9b03b6..06af58e37a4b 100644
--- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
@@ -14,7 +14,14 @@
 	compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
 		     "google,veyron", "rockchip,rk3288";
 
+	/delete-node/backlight-regulator;
+	/delete-node/panel-regulator;
 	/delete-node/emmc-pwrseq;
+	/delete-node/vcc18-lcd;
+};
+
+&backlight {
+	/delete-property/power-supply;
 };
 
 &emmc {
@@ -52,7 +59,17 @@
 	i2c-scl-rising-time-ns = <300>;
 };
 
+&panel {
+	power-supply= <&vcc33_lcd>;
+};
+
 &pinctrl {
+	/delete-node/ lcd;
+
+	backlight {
+		/delete-node/ bl_pwr_en;
+	};
+
 	buttons {
 		pwr_key_h: pwr-key-h {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index 9b140db04456..2f2989bc3f9c 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -16,44 +16,6 @@
 		     "google,veyron-speedy-rev5", "google,veyron-speedy-rev4",
 		     "google,veyron-speedy-rev3", "google,veyron-speedy-rev2",
 		     "google,veyron-speedy", "google,veyron", "rockchip,rk3288";
-
-	panel_regulator: panel-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&lcd_enable_h>;
-		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
-		vin-supply = <&vcc33_sys>;
-	};
-
-	vcc18_lcd: vcc18-lcd {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&avdd_1v8_disp_en>;
-		regulator-name = "vcc18_lcd";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc18_wl>;
-	};
-
-	backlight_regulator: backlight-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_pwr_en>;
-		regulator-name = "backlight_regulator";
-		vin-supply = <&vcc33_sys>;
-		startup-delay-us = <15000>;
-	};
-};
-
-&backlight {
-	power-supply = <&backlight_regulator>;
 };
 
 &cpu_alert0 {
@@ -83,10 +45,6 @@
 	temperature = <90000>;
 };
 
-&panel {
-	power-supply= <&panel_regulator>;
-};
-
 &rk808 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pmic_int_l>;
@@ -321,12 +279,6 @@
 };
 
 &pinctrl {
-	backlight {
-		bl_pwr_en: bl_pwr_en {
-			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -339,16 +291,6 @@
 		};
 	};
 
-	lcd {
-		lcd_enable_h: lcd-en {
-			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		avdd_1v8_disp_en: avdd-1v8-disp-en {
-			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pmic {
 		dvs_1: dvs-1 {
 			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
-- 
2.22.0.410.gd8fdbe21b5-goog

