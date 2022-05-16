Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F6BB52847A
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 14:49:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242808AbiEPMtM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 08:49:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240412AbiEPMsz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 08:48:55 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2988438BDF
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 05:48:53 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id n23so3206101edy.0
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 05:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D7C5uzUHHfl6rKtlamwbl/0lHSz5U+9PiU+PKzNlits=;
        b=yftXmY3VDFD+szad8K3jpvoLf3G2MobJnxn+XoR+eGlKVx40aHkcLOcsaxlpmwhbcn
         O2uJdAg5kcVZAUGDvjNI3oBI2dwagNbtr13bnwG/rtOfqq5sHbUKoEdJCzQku+sqYZdo
         VBkSAhWXt28jWo7C1K+efEtnS+pF4NnKA6oFOb09raGJ+Un6gnvptVJHeEy/tPo+tupL
         Yfgc19B7rjp7U2I4GW2729qMAUdnyp3ZLVY8g0URsJ0Bewccss4kIWRvA4w8CCghFp41
         OKphOHNa8yjpNlg3RY8cjuDkW6uHFlQZH5PEF4NIBa+QOkKVwE30GgM689zeO0R6JSY4
         uWjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D7C5uzUHHfl6rKtlamwbl/0lHSz5U+9PiU+PKzNlits=;
        b=yRTAV7a0reRpM3YoDmoRDWZvX6O1wuHJPgboy2Q1OJvGXZQ6wi0yxx3B0XT9MzYQqv
         t/M8zgnxV5yV1/hv+pNfqSmeRKQjx+0fOno8wmj4AO95x9GA49R6GZQw28s5BBh9j/zA
         iwuzRpUh+LQpcU2QAkTQm2NQ1+GJi1QyHsS/s/pjB6k4R8KNolRSkd9eKuRBExyG8p99
         SKOFyg11/Zh0qJtgQsvZ1NNc6SVM5BcwEr45TQdsLmN37cW6vPVnTZwIdtvWuLYBOTC/
         vA4RILq9x8fI80FgslJk7UXbLCjkJQIJMqmejnEZya3BqHNM8MI7PGqY8+osPOC3600W
         rcDQ==
X-Gm-Message-State: AOAM5330xKDjgPsp6RvSWxUYxVDykEdU+sjjdcIxEakb0NUcLSYXNWbp
        9tXesJnSX8Mn61uEL/y2X51SzA==
X-Google-Smtp-Source: ABdhPJwUPmdQRiZLRbbOL5SezpxWSF4lrkx42B+cYKpxneOzkq0DHh6BuZVnh3Ftvc8fU3J+YZIsdA==
X-Received: by 2002:aa7:c306:0:b0:428:414d:e216 with SMTP id l6-20020aa7c306000000b00428414de216mr13097383edq.394.1652705329400;
        Mon, 16 May 2022 05:48:49 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-105.xnet.hr. [88.207.98.105])
        by smtp.googlemail.com with ESMTPSA id e10-20020a056402330a00b0042617ba6386sm5093331eda.16.2022.05.16.05.48.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 May 2022 05:48:49 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 08/10] arm64: dts: marvell: split Methode uDPU DTS
Date:   Mon, 16 May 2022 14:48:26 +0200
Message-Id: <20220516124828.45144-8-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220516124828.45144-1-robert.marko@sartura.hr>
References: <20220516124828.45144-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Split the Methode uDPU DTS into a common DTSI as preparation for adding
support for Methode eDPU which is based on the uDPU to avoid duplication.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/marvell/armada-3720-uDPU.dts     | 150 +---------------
 .../boot/dts/marvell/armada-3720-uDPU.dtsi    | 160 ++++++++++++++++++
 2 files changed, 161 insertions(+), 149 deletions(-)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index f21a855fc608..a75734d88a4f 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -1,66 +1,13 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
-/*
- * Device tree for the uDPU board.
- * Based on Marvell Armada 3720 development board (DB-88F3720-DDR3)
- * Copyright (C) 2016 Marvell
- * Copyright (C) 2019 Methode Electronics
- * Copyright (C) 2019 Telus
- *
- * Vladimir Vid <vladimir.vid@sartura.hr>
- */
 
 /dts-v1/;
 
-#include <dt-bindings/gpio/gpio.h>
-#include "armada-372x.dtsi"
+#include "armada-3720-uDPU.dtsi"
 
 / {
 	model = "Methode uDPU Board";
 	compatible = "methode,udpu", "marvell,armada3720", "marvell,armada3710";
 
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	memory@0 {
-		device_type = "memory";
-		reg = <0x00000000 0x00000000 0x00000000 0x20000000>;
-	};
-
-	leds {
-		compatible = "gpio-leds";
-
-		led-power1 {
-			label = "udpu:green:power";
-			gpios = <&gpionb 11 GPIO_ACTIVE_LOW>;
-		};
-
-		led-power2 {
-			label = "udpu:red:power";
-			gpios = <&gpionb 12 GPIO_ACTIVE_LOW>;
-		};
-
-		led-network1 {
-			label = "udpu:green:network";
-			gpios = <&gpionb 13 GPIO_ACTIVE_LOW>;
-		};
-
-		led-network2 {
-			label = "udpu:red:network";
-			gpios = <&gpionb 14 GPIO_ACTIVE_LOW>;
-		};
-
-		led-alarm1 {
-			label = "udpu:green:alarm";
-			gpios = <&gpionb 15 GPIO_ACTIVE_LOW>;
-		};
-
-		led-alarm2 {
-			label = "udpu:red:alarm";
-			gpios = <&gpionb 16 GPIO_ACTIVE_LOW>;
-		};
-	};
-
 	sfp_eth0: sfp-eth0 {
 		compatible = "sff,sfp";
 		i2c-bus = <&i2c0>;
@@ -70,55 +17,6 @@ sfp_eth0: sfp-eth0 {
 		tx-fault-gpio = <&gpiosb 5 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <3000>;
 	};
-
-	sfp_eth1: sfp-eth1 {
-		compatible = "sff,sfp";
-		i2c-bus = <&i2c1>;
-		los-gpio = <&gpiosb 7 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&gpiosb 8 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
-		maximum-power-milliwatt = <3000>;
-	};
-};
-
-&sdhci0 {
-	status = "okay";
-	bus-width = <8>;
-	mmc-ddr-1_8v;
-	mmc-hs400-1_8v;
-	marvell,pad-type = "fixed-1-8v";
-	non-removable;
-	no-sd;
-	no-sdio;
-};
-
-&spi0 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&spi_quad_pins>;
-
-	flash@0 {
-		compatible = "jedec,spi-nor";
-		reg = <0>;
-		spi-max-frequency = <54000000>;
-
-		partitions {
-			compatible = "fixed-partitions";
-			#address-cells = <1>;
-			#size-cells = <1>;
-
-			partition@0 {
-				label = "firmware";
-				reg = <0x0 0x180000>;
-			};
-
-			partition@180000 {
-				label = "u-boot-env";
-				reg = <0x180000 0x10000>;
-			};
-		};
-	};
 };
 
 &pinctrl_nb {
@@ -126,11 +24,6 @@ i2c1_recovery_pins: i2c1-recovery-pins {
 		groups = "i2c1";
 		function = "gpio";
 	};
-
-	i2c2_recovery_pins: i2c2-recovery-pins {
-		groups = "i2c2";
-		function = "gpio";
-	};
 };
 
 &i2c0 {
@@ -143,48 +36,7 @@ &i2c0 {
 	sda-gpios = <&gpionb 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 };
 
-&i2c1 {
-	status = "okay";
-	pinctrl-names = "default", "recovery";
-	pinctrl-0 = <&i2c2_pins>;
-	pinctrl-1 = <&i2c2_recovery_pins>;
-	/delete-property/mrvl,i2c-fast-mode;
-	scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-	sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
-
-	temp-sensor@48 {
-		compatible = "ti,tmp75c";
-		reg = <0x48>;
-	};
-
-	temp-sensor@49 {
-		compatible = "ti,tmp75c";
-		reg = <0x49>;
-	};
-};
-
 &eth0 {
 	phy-mode = "sgmii";
-	status = "okay";
-	managed = "in-band-status";
-	phys = <&comphy1 0>;
 	sfp = <&sfp_eth0>;
 };
-
-&eth1 {
-	phy-mode = "sgmii";
-	status = "okay";
-	managed = "in-band-status";
-	phys = <&comphy0 1>;
-	sfp = <&sfp_eth1>;
-};
-
-&usb3 {
-	status = "okay";
-	phys = <&usb2_utmi_otg_phy>;
-	phy-names = "usb2-utmi-otg-phy";
-};
-
-&uart0 {
-	status = "okay";
-};
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
new file mode 100644
index 000000000000..3f79923376fb
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
@@ -0,0 +1,160 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device tree for the uDPU board.
+ * Based on Marvell Armada 3720 development board (DB-88F3720-DDR3)
+ * Copyright (C) 2016 Marvell
+ * Copyright (C) 2019 Methode Electronics
+ * Copyright (C) 2019 Telus
+ *
+ * Vladimir Vid <vladimir.vid@sartura.hr>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include "armada-372x.dtsi"
+
+/ {
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x00000000 0x20000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-power1 {
+			label = "udpu:green:power";
+			gpios = <&gpionb 11 GPIO_ACTIVE_LOW>;
+		};
+
+		led-power2 {
+			label = "udpu:red:power";
+			gpios = <&gpionb 12 GPIO_ACTIVE_LOW>;
+		};
+
+		led-network1 {
+			label = "udpu:green:network";
+			gpios = <&gpionb 13 GPIO_ACTIVE_LOW>;
+		};
+
+		led-network2 {
+			label = "udpu:red:network";
+			gpios = <&gpionb 14 GPIO_ACTIVE_LOW>;
+		};
+
+		led-alarm1 {
+			label = "udpu:green:alarm";
+			gpios = <&gpionb 15 GPIO_ACTIVE_LOW>;
+		};
+
+		led-alarm2 {
+			label = "udpu:red:alarm";
+			gpios = <&gpionb 16 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	sfp_eth1: sfp-eth1 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c1>;
+		los-gpio = <&gpiosb 7 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpio = <&gpiosb 8 GPIO_ACTIVE_LOW>;
+		tx-disable-gpio = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpio = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
+		maximum-power-milliwatt = <3000>;
+	};
+};
+
+&sdhci0 {
+	status = "okay";
+	bus-width = <8>;
+	mmc-ddr-1_8v;
+	mmc-hs400-1_8v;
+	marvell,pad-type = "fixed-1-8v";
+	non-removable;
+	no-sd;
+	no-sdio;
+};
+
+&spi0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_quad_pins>;
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <54000000>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "firmware";
+				reg = <0x0 0x180000>;
+			};
+
+			partition@180000 {
+				label = "u-boot-env";
+				reg = <0x180000 0x10000>;
+			};
+		};
+	};
+};
+
+&pinctrl_nb {
+	i2c2_recovery_pins: i2c2-recovery-pins {
+		groups = "i2c2";
+		function = "gpio";
+	};
+};
+
+&i2c1 {
+	status = "okay";
+	pinctrl-names = "default", "recovery";
+	pinctrl-0 = <&i2c2_pins>;
+	pinctrl-1 = <&i2c2_recovery_pins>;
+	/delete-property/mrvl,i2c-fast-mode;
+	scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+
+	temp-sensor@48 {
+		compatible = "ti,tmp75c";
+		reg = <0x48>;
+	};
+
+	temp-sensor@49 {
+		compatible = "ti,tmp75c";
+		reg = <0x49>;
+	};
+};
+
+&eth0 {
+	status = "okay";
+	managed = "in-band-status";
+	phys = <&comphy1 0>;
+};
+
+&eth1 {
+	phy-mode = "sgmii";
+	status = "okay";
+	managed = "in-band-status";
+	phys = <&comphy0 1>;
+	sfp = <&sfp_eth1>;
+};
+
+&usb3 {
+	status = "okay";
+	phys = <&usb2_utmi_otg_phy>;
+	phy-names = "usb2-utmi-otg-phy";
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.36.1

