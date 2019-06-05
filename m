Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9E7E5365D6
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2019 22:44:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726649AbfFEUna (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 16:43:30 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:46744 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726541AbfFEUna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 16:43:30 -0400
Received: by mail-pf1-f193.google.com with SMTP id y11so8898pfm.13
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2019 13:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kH2tvIwU2ls26BfCFJz74j+s6XjNGAPd9Rh4Z1dVjH4=;
        b=H9iXWx2ocx/JtgZ2RjHGQbIVmSNEa7cxsw6UErWXT0TOBExrTfBF6U72DuqHf09MY9
         n5/x6/Dc8g24zwg+oHwI2shjlytkslSvy1HtXb5Q12OLaUA4zCD7+uD5KnQjEf2q+yVA
         i8w/jYS9u8jc8S0ju/tFv9Dq4Pil8x2v98YNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kH2tvIwU2ls26BfCFJz74j+s6XjNGAPd9Rh4Z1dVjH4=;
        b=qmsK5avWDOLEJz0TIxAistUbe8lTQewrVKrepl6wOJIIuuBt9XP5f4mh/Lky6k8XuD
         KnaGjrdoprnYLhqjRkfXQWlc/uw3hnJWeAOuZc2MOQDS+wQ2t57ipGyVbGit7yac6ThR
         R20ylloBduUcssKWU2hdvCE9CZeZfDqs/yzrGCP6cO8uckerXem70o0fn+Ob/k0wtxfp
         C8TtmFxK57zcHNH+Vb54V/uK5nNs5p1dKIpd4V0JK6Ku4xYz3WXK2yfK7CeLAG/P/G27
         OC1JL8COihRAgl9rUhQs5E1D38Ze7CKHYs/saG1q0V2AYlivPiqnHtmxEiy1Xk2te1NS
         q5zA==
X-Gm-Message-State: APjAAAXZFQWPfo1vGusV++QFui0Qgdd/vnnn4YGqHDY5y/9mKVrFlg53
        3NoJFJcib7Kfs+QE+mEiaZayaA==
X-Google-Smtp-Source: APXvYqw0RtPjrjAddCvG5oorCNxx7MTwisOIJy/yGXAtys5TX4LlNbhepwgGAhKlQk4LV0+c+hIIRg==
X-Received: by 2002:aa7:8491:: with SMTP id u17mr36195165pfn.93.1559767409871;
        Wed, 05 Jun 2019 13:43:29 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id j20sm22313321pfi.138.2019.06.05.13.43.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Jun 2019 13:43:29 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Brian Norris <briannorris@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH 1/2] ARM: dts: rockchip: Split GPIO keys for veyron into multiple devices
Date:   Wed,  5 Jun 2019 13:43:19 -0700
Message-Id: <20190605204320.22343-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

With a single device DT overrides can become messy, especially when
keys are added or removed. Multiple devices also allow to
enable/disable wakeup per key/group.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 26 +++++++------
 arch/arm/boot/dts/rk3288-veyron-minnie.dts    | 38 ++++++++++---------
 arch/arm/boot/dts/rk3288-veyron-pinky.dts     |  2 +-
 arch/arm/boot/dts/rk3288-veyron.dtsi          |  4 +-
 4 files changed, 37 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
index fbef34578100..c5f71af84a40 100644
--- a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
@@ -70,6 +70,20 @@
 		pinctrl-0 = <&ac_present_ap>;
 	};
 
+	lid_switch: lid-switch {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&ap_lid_int_l>;
+		lid {
+			label = "Lid";
+			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
+			wakeup-source;
+			linux,code = <0>; /* SW_LID */
+			linux,input-type = <5>; /* EV_SW */
+			debounce-interval = <1>;
+		};
+	};
+
 	panel: panel {
 		compatible ="innolux,n116bge", "simple-panel";
 		status = "okay";
@@ -149,18 +163,6 @@
 	status = "okay";
 };
 
-&gpio_keys {
-	pinctrl-0 = <&pwr_key_l &ap_lid_int_l>;
-	lid {
-		label = "Lid";
-		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
-		wakeup-source;
-		linux,code = <0>; /* SW_LID */
-		linux,input-type = <5>; /* EV_SW */
-		debounce-interval = <1>;
-	};
-};
-
 &pwm0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index a65099b4aef1..b2cc70a08554 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -48,6 +48,26 @@
 		regulator-boot-on;
 		vin-supply = <&vcc18_wl>;
 	};
+
+	volume_buttons: volume-buttons {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&volum_down_l &volum_up_l>;
+
+		volum_down {
+			label = "Volum_down";
+			gpios = <&gpio5 RK_PB3 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEDOWN>;
+			debounce-interval = <100>;
+		};
+
+		volum_up {
+			label = "Volum_up";
+			gpios = <&gpio5 RK_PB2 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_VOLUMEUP>;
+			debounce-interval = <100>;
+		};
+	};
 };
 
 &backlight {
@@ -90,24 +110,6 @@
 	pwm-off-delay-ms = <200>;
 };
 
-&gpio_keys {
-	pinctrl-0 = <&pwr_key_l &ap_lid_int_l &volum_down_l &volum_up_l>;
-
-	volum_down {
-		label = "Volum_down";
-		gpios = <&gpio5 RK_PB3 GPIO_ACTIVE_LOW>;
-		linux,code = <KEY_VOLUMEDOWN>;
-		debounce-interval = <100>;
-	};
-
-	volum_up {
-		label = "Volum_up";
-		gpios = <&gpio5 RK_PB2 GPIO_ACTIVE_LOW>;
-		linux,code = <KEY_VOLUMEUP>;
-		debounce-interval = <100>;
-	};
-};
-
 &i2c_tunnel {
 	battery: bq27500@55 {
 		compatible = "ti,bq27500";
diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
index 9645be7b3d8c..9b6f4d9b03b6 100644
--- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
@@ -35,7 +35,7 @@
 	force-hpd;
 };
 
-&gpio_keys {
+&lid_switch {
 	pinctrl-0 = <&pwr_key_h &ap_lid_int_l>;
 
 	power {
diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index 90c8312d01ff..cc4c3595f145 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -23,11 +23,11 @@
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
 
-	gpio_keys: gpio-keys {
+	power_button: power-button {
 		compatible = "gpio-keys";
-
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwr_key_l>;
+
 		power {
 			label = "Power";
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

