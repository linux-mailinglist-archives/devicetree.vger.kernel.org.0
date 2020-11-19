Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D4132B8C31
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 08:23:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726198AbgKSHVP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 02:21:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725964AbgKSHVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 02:21:15 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1D0FC0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:21:13 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id t37so3339506pga.7
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iWSYP1PNIxO+/eIWALLl7wPHrla/Qw92RPC7PN7A0b0=;
        b=K1MBZE4KBe8YCoNzW6OEjBpfSa4wOFhlGrPviyXsNOPDoqO5w31BrqIB6owuEtrK4i
         raba4z2cuN1nztqz8qv+rVEOSiGOiu4CT6Yr9QHSWmwmg329SXaId0DODXcmUvkchv2C
         8er9q1uRO9HO8Pw1gCLl7OywPKj1+Rx2JixuF2cghy4sLM9WE6CA/lvCx/m3xy9XSKX0
         RNC9Kh8YkVl7Y2iGlVjmx4QGmwlvP6IuGdOUbD/qFfePChvWW9MX5tZfZbHJRHIPWhNP
         q6j95q73C8NKsymKJTXnSnb6pwb+Kj0iLCEUlmtIKtoOARE4AkQIaLIK5ZBDxOo/y3KO
         RNwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=iWSYP1PNIxO+/eIWALLl7wPHrla/Qw92RPC7PN7A0b0=;
        b=k4R+0RLY0YzaOf+GikKTDEHHXk9F4ppG9RfLoSoiWS2gZHdUZutxg0DNw0mVY14qOj
         fUUr+tdIYph/WP9ZASCmtSQI+fQQXmdGonnsPEFdCljBDvvdCHIXtVtZJ/vFo4Bf1onw
         kPevUPW9pCJzllsojM6V2WxmgyiT6PQ4bBqqOI4nR3h7LT69JxD4goJTnU/+Wokl7Uyi
         gnMYmQpCmYyXeCjzKqot2G1Yhje0sDRiRE7zsFAQZH2m5IGxOjrD5xGi0AwP6vLJ6Y7+
         EKaPGw8FPp52d6xi/S82Se7WYuXJy2oPQk5l2zO6GNZ3nKNnqIW9Ng91FYYlwY17yXPG
         mGEw==
X-Gm-Message-State: AOAM531+igF9wEPEkabA8j8zv48bqXmgagqfYunSKwI7aUm9cf3QQSnT
        iEfvt3hSqRFHMtwDo3m/fR8=
X-Google-Smtp-Source: ABdhPJxHGcUUnh9fjpVIqgvVMuc8JnnQSnTGXOmL4m/mKhz3ztgyuXKHFzCE0fiqfNrV4UIYLiGp2A==
X-Received: by 2002:a63:9d8d:: with SMTP id i135mr11996553pgd.213.1605770473195;
        Wed, 18 Nov 2020 23:21:13 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.19])
        by smtp.gmail.com with ESMTPSA id s145sm28067565pfs.187.2020.11.18.23.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 23:21:12 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>
Cc:     Lancelot Kao <lancelot.kao@fii-usa.com>,
        Fran Hsu <Fran.Hsu@quantatw.com>,
        Fran Hsu <franhsutw@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] ARM: dts: nuvoton: Add Quanta GSJ BMC
Date:   Thu, 19 Nov 2020 17:50:36 +1030
Message-Id: <20201119072038.123046-4-joel@jms.id.au>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201119072038.123046-1-joel@jms.id.au>
References: <20201119072038.123046-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fran Hsu <franhsutw@gmail.com>

The Quanta GSJ BMC uses the Nuvoton NPCM730 SoC.

Included features:

 1. Image partitions
 2. PWM fan controller
 3. USB device
 4. Serial port
 5. FIU
 6. LEDs and GPIOs

Signed-off-by: Fran Hsu <Fran.Hsu@quantatw.com>
Reviewed-by: Benjamin Fair <benjaminfair@google.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/Makefile                |   3 +-
 arch/arm/boot/dts/nuvoton-npcm730-gsj.dts | 490 ++++++++++++++++++++++
 2 files changed, 492 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm730-gsj.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index ce66ffd5a1bb..30bf4b007513 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -339,7 +339,8 @@ dtb-$(CONFIG_ARCH_LPC32XX) += \
 	lpc3250-ea3250.dtb \
 	lpc3250-phy3250.dtb
 dtb-$(CONFIG_ARCH_NPCM7XX) += \
-	nuvoton-npcm750-evb.dtb
+	nuvoton-npcm750-evb.dtb \
+	nuvoton-npcm730-gsj.dtb
 dtb-$(CONFIG_MACH_MESON6) += \
 	meson6-atv1200.dtb
 dtb-$(CONFIG_MACH_MESON8) += \
diff --git a/arch/arm/boot/dts/nuvoton-npcm730-gsj.dts b/arch/arm/boot/dts/nuvoton-npcm730-gsj.dts
new file mode 100644
index 000000000000..d4ff49939a3d
--- /dev/null
+++ b/arch/arm/boot/dts/nuvoton-npcm730-gsj.dts
@@ -0,0 +1,490 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2019 Quanta Computer lnc. Fran.Hsu@quantatw.com
+
+/dts-v1/;
+#include "nuvoton-npcm730.dtsi"
+#include "nuvoton-npcm730-gsj-gpio.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+
+/ {
+	model = "Quanta GSJ Board (Device Tree v12)";
+	compatible = "nuvoton,npcm750";
+
+	aliases {
+		ethernet1 = &gmac0;
+		serial3 = &serial3;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c8 = &i2c8;
+		i2c9 = &i2c9;
+		i2c10 = &i2c10;
+		i2c11 = &i2c11;
+		i2c12 = &i2c12;
+		i2c15 = &i2c15;
+		fiu0 = &fiu0;
+	};
+
+	chosen {
+		stdout-path = &serial3;
+	};
+
+	memory {
+		reg = <0 0x40000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-bmc-live {
+			gpios = <&gpio4 15 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		LED_U2_0_LOCATE {
+			gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_1_LOCATE {
+			gpios = <&gpio0 1 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_2_LOCATE {
+			gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_3_LOCATE {
+			gpios = <&gpio0 3 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_4_LOCATE {
+			gpios = <&gpio0 10 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_5_LOCATE {
+			gpios = <&gpio0 11 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_BMC_TRAY_PWRGD {
+			gpios = <&gpio0 19 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_7_FAULT {
+			gpios = <&gpio6 8 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_6_LOCATE {
+			gpios = <&gpio0 24 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_7_LOCATE {
+			gpios = <&gpio0 25 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_0_FAULT {
+			gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_1_FAULT {
+			gpios = <&gpio2 21 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_2_FAULT {
+			gpios = <&gpio2 22 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_3_FAULT {
+			gpios = <&gpio2 23 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_4_FAULT {
+			gpios = <&gpio2 24 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_5_FAULT {
+			gpios = <&gpio2 25 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		LED_U2_6_FAULT {
+			gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+};
+
+&fiu0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi0cs1_pins>;
+	status = "okay";
+
+	spi-nor@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0>;
+		spi-rx-bus-width = <2>;
+
+		partitions@80000000 {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			bmc@0{
+				label = "bmc";
+				reg = <0x000000 0x2000000>;
+			};
+			u-boot@0 {
+				label = "u-boot";
+				reg = <0x0000000 0x80000>;
+				read-only;
+			};
+			u-boot-env@100000{
+				label = "u-boot-env";
+				reg = <0x00100000 0x40000>;
+			};
+			kernel@200000 {
+				label = "kernel";
+				reg = <0x0200000 0x600000>;
+			};
+			rofs@800000 {
+				label = "rofs";
+				reg = <0x800000 0x1400000>;
+			};
+			rwfs@1c00000 {
+				label = "rwfs";
+				reg = <0x1c00000 0x300000>;
+			};
+			reserved@1f00000 {
+				label = "reserved";
+				reg = <0x1f00000 0x100000>;
+			};
+		};
+	};
+};
+
+&gmac0 {
+	phy-mode = "rgmii-id";
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&watchdog1 {
+	status = "okay";
+};
+
+&rng {
+	status = "okay";
+};
+
+&serial0 {
+	status = "okay";
+};
+
+&serial1 {
+	status = "okay";
+};
+
+&serial2 {
+	status = "okay";
+};
+
+&serial3 {
+	status = "okay";
+};
+
+&adc {
+	status = "okay";
+};
+
+&i2c1 {
+	status = "okay";
+
+	lm75@5c {
+		compatible = "maxim,max31725";
+		reg = <0x5c>;
+		status = "okay";
+	};
+};
+
+&i2c2 {
+	status = "okay";
+
+	lm75@5c {
+		compatible = "maxim,max31725";
+		reg = <0x5c>;
+		status = "okay";
+	};
+};
+
+&i2c3 {
+	status = "okay";
+
+	lm75@5c {
+		compatible = "maxim,max31725";
+		reg = <0x5c>;
+	};
+};
+
+&i2c4 {
+	status = "okay";
+
+	lm75@5c {
+		compatible = "maxim,max31725";
+		reg = <0x5c>;
+	};
+};
+
+&i2c8 {
+	status = "okay";
+};
+
+&i2c9 {
+	status = "okay";
+
+	eeprom@55 {
+		compatible = "atmel,24c64";
+		reg = <0x55>;
+	};
+};
+
+&i2c10 {
+	status = "okay";
+
+	eeprom@55 {
+		compatible = "atmel,24c64";
+		reg = <0x55>;
+	};
+};
+
+&i2c11 {
+	status = "okay";
+
+	/* P12V Quarter Brick DC/DC Power Module Q54SH12050 @60 */
+	power-brick@36 {
+		compatible = "delta,dps800";
+		reg = <0x36>;
+	};
+
+	hotswap@15 {
+		compatible = "ti,lm5066i";
+		reg = <0x15>;
+	};
+};
+
+&i2c12 {
+	status = "okay";
+
+	ucd90160@6b {
+		compatible = "ti,ucd90160";
+		reg = <0x6b>;
+	};
+};
+
+&i2c15 {
+	status = "okay";
+
+	i2c-switch@75 {
+		compatible = "nxp,pca9548";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x75>;
+		i2c-mux-idle-disconnect;
+
+		i2c_u20: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		i2c_u21: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+
+		i2c_u22: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+		};
+
+		i2c_u23: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+		};
+
+		i2c_u24: i2c@4 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <4>;
+		};
+
+		i2c_u25: i2c@5 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <5>;
+		};
+
+		i2c_u26: i2c@6 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <6>;
+		};
+
+		i2c_u27: i2c@7 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <7>;
+		};
+	};
+};
+
+&pwm_fan {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0_pins &pwm1_pins &pwm2_pins
+			&fanin0_pins &fanin1_pins
+			&fanin2_pins &fanin3_pins
+			&fanin4_pins &fanin5_pins>;
+	status = "okay";
+
+	fan@0 {
+		reg = <0x00>;
+		fan-tach-ch = /bits/ 8 <0x00 0x01>;
+		cooling-levels = <127 255>;
+	};
+
+	fan@1 {
+		reg = <0x01>;
+		fan-tach-ch = /bits/ 8 <0x02 0x03>;
+		cooling-levels = /bits/ 8 <127 255>;
+	};
+
+	fan@2 {
+		reg = <0x02>;
+		fan-tach-ch = /bits/ 8 <0x04 0x05>;
+		cooling-levels = /bits/ 8 <127 255>;
+	};
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <
+			/* GPI pins*/
+			&gpio8_pins
+			&gpio9_pins
+			&gpio12_pins
+			&gpio13_pins
+			&gpio14_pins
+			&gpio60_pins
+			&gpio83_pins
+			&gpio91_pins
+			&gpio92_pins
+			&gpio95_pins
+			&gpio136_pins
+			&gpio137_pins
+			&gpio141_pins
+			&gpio144_pins
+			&gpio145_pins
+			&gpio146_pins
+			&gpio147_pins
+			&gpio148_pins
+			&gpio149_pins
+			&gpio150_pins
+			&gpio151_pins
+			&gpio152_pins
+			&gpio153_pins
+			&gpio154_pins
+			&gpio155_pins
+			&gpio156_pins
+			&gpio157_pins
+			&gpio158_pins
+			&gpio159_pins
+			&gpio161_pins
+			&gpio162_pins
+			&gpio163_pins
+			&gpio164_pins
+			&gpio165_pins
+			&gpio166_pins
+			&gpio167_pins
+			&gpio168_pins
+			&gpio169_pins
+			&gpio170_pins
+			&gpio177_pins
+			&gpio191_pins
+			&gpio192_pins
+			&gpio203_pins
+			/* GPO pins*/
+			&gpio0pp_pins
+			&gpio1pp_pins
+			&gpio2pp_pins
+			&gpio3pp_pins
+			&gpio4pp_pins
+			&gpio5pp_pins
+			&gpio6pp_pins
+			&gpio7pp_pins
+			&gpio10pp_pins
+			&gpio11pp_pins
+			&gpio15od_pins
+			&gpio17pp_pins
+			&gpio18pp_pins
+			&gpio19pp_pins
+			&gpio24pp_pins
+			&gpio25pp_pins
+			&gpio37od_pins
+			&gpio59pp_pins
+			&gpio72od_pins
+			&gpio73od_pins
+			&gpio74od_pins
+			&gpio75od_pins
+			&gpio76od_pins
+			&gpio77od_pins
+			&gpio78od_pins
+			&gpio79od_pins
+			&gpio84pp_pins
+			&gpio85pp_pins
+			&gpio86pp_pins
+			&gpio87pp_pins
+			&gpio88pp_pins
+			&gpio89pp_pins
+			&gpio90pp_pins
+			&gpio93pp_pins
+			&gpio94pp_pins
+			&gpio125pp_pins
+			&gpio126od_pins
+			&gpio127od_pins
+			&gpio142od_pins
+			&gpio143ol_pins
+			&gpio175od_pins
+			&gpio176od_pins
+			&gpio190od_pins
+			&gpio194pp_pins
+			&gpio195od_pins
+			&gpio196od_pins
+			&gpio197od_pins
+			&gpio198od_pins
+			&gpio199od_pins
+			&gpio200pp_pins
+			&gpio202od_pins
+			>;
+};
-- 
2.29.2

