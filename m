Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9316562486F
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 18:37:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbiKJRhJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 12:37:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiKJRhI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 12:37:08 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81F541A05A
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 09:37:06 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.71]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MzQXu-1pFN2s36aO-00vOM6; Thu, 10 Nov 2022 18:31:34 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V3 1/2] ARM: dts: bcm283x: Fix underscores in node names
Date:   Thu, 10 Nov 2022 18:31:04 +0100
Message-Id: <20221110173105.6633-2-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221110173105.6633-1-stefan.wahren@i2se.com>
References: <20221110173105.6633-1-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:qSh/FWPFdsDSa3G93nGXCs989kA9SFLdP+I1qem/eVV+venYHyp
 ZxlY/8UiA6f5/2apMhlykz2FTiLZnpiUfmVYOAiXluneYh+7ZQkxbKMHa2CyWCSWzY5X7wQ
 R0xRg7M2QBf8qETmsv6RWrL/8fZ4LdfaQqUN3oVmlgQyHVjffcDXHzTVTm7SLJsWgA2BQdf
 8qQEsyDk2qDqniK/+hEtg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:drzph9NGQXQ=:XHqCpiwysegV9lromE/BHe
 4gHQ1Dywl3AVmocUQTsTJN76eyuuocZ6oL3a8JsXpJ7Lv7xsCuCZ5G6vLO6ZhI2g2YlGWNJdk
 nwxRQO5Qjjs4ggwwtuN00Jsh3creEmsQTXDWNoqmP4X3VrNSlmoiFE+kIlCROtFYMSa2uyVbZ
 05YL0gmNs0Bp9Zrx3RE9oD7m6tjn8iuZbSWDu0Do4pKVpqzlVn4kN4e1LYIxFYWn7QkL4Ek4c
 vTBU4WNNxCsCgmD+aGlxYFcr9k/1BztJFvadPfVcNUONF0iyyrQDqHqrzny3SZG2ZE8v5ku82
 3UCinSbwaoOEcA1MQWXN9OhxQqOssbvNszBcaRqtMinCBJuFhOHIPpDUXFCYOhXFmVPElIXsD
 Tsh3Tl1w/6pCNQ4kS9hnKy5FLZ7omg2OdWTokztye0zLepFE7YYIsFCMPTuoC/2zuI6p0ePR0
 DDhrvZ7v3dGXOI/iTS4aqUiPAO9ei/0dQfOsPQybL1QFH3b5CIUb+JW14ae9VquMMP7jcm86V
 A0w78NrtSt+5bzdYfJzHL9rLZuNQKM/d8q1MubTIBA3/eELayTsrlvks9NDlhX1nVKfcMSnKP
 HihcC7vJXRr/Q5sCPCwa8DPDfP2oRMLKUuhgNXDyvDzlQ9Rlz6Sz8wYIzRjn+uXAllhWmTOP0
 5H8kKUJOBu7AxdcQ6XYwb0r0IHAWbdiM6h+WP50OJwAjLiIPZcG1wB8wUDsy+H1tyvoDmbKZ9
 ZPXpSb3ggdOBSp7ydkcWJSGniXTYTIz00SuWKqZPuwmQgttNgMhZDbH6RBC4TGSdYUeGFnexf
 oI/LTS1CAcGg1uwBbVSlBpeFaoVQg==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A lot pinctrl node names, regulators and local_intc do not follow the
node name convention to avoid underscore. So fix this by using hyphen
or a proper node name.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts  |  4 +-
 arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi |  4 +-
 arch/arm/boot/dts/bcm2711.dtsi         | 94 +++++++++++++-------------
 arch/arm/boot/dts/bcm2835-common.dtsi  | 18 ++---
 arch/arm/boot/dts/bcm2836.dtsi         |  2 +-
 arch/arm/boot/dts/bcm283x.dtsi         | 70 +++++++++----------
 6 files changed, 96 insertions(+), 96 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 4432412044de..aaad9b7ec630 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -27,7 +27,7 @@ led-pwr {
 		};
 	};
 
-	sd_io_1v8_reg: sd_io_1v8_reg {
+	sd_io_1v8_reg: regulator-sd-io-1v8 {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-sd-io";
 		regulator-min-microvolt = <1800000>;
@@ -41,7 +41,7 @@ sd_io_1v8_reg: sd_io_1v8_reg {
 		status = "okay";
 	};
 
-	sd_vcc_reg: sd_vcc_reg {
+	sd_vcc_reg: regulator-sd-vcc {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc-sd";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi b/arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi
index a2954d466a73..48e63ab7848c 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi
+++ b/arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi
@@ -12,7 +12,7 @@ chosen {
 		stdout-path = "serial1:115200n8";
 	};
 
-	sd_io_1v8_reg: sd_io_1v8_reg {
+	sd_io_1v8_reg: regulator-sd-io-1v8 {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-sd-io";
 		regulator-min-microvolt = <1800000>;
@@ -26,7 +26,7 @@ sd_io_1v8_reg: sd_io_1v8_reg {
 		status = "okay";
 	};
 
-	sd_vcc_reg: sd_vcc_reg {
+	sd_vcc_reg: regulator-sd-vcc {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc-sd";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 941c4d16791b..0f65a813bd44 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -48,7 +48,7 @@ soc {
 		 * This node is the provider for the enable-method for
 		 * bringing up secondary cores.
 		 */
-		local_intc: local_intc@40000000 {
+		local_intc: interrupt-controller@40000000 {
 			compatible = "brcm,bcm2836-l1-intc";
 			reg = <0x40000000 0x100>;
 		};
@@ -647,21 +647,21 @@ &gpio {
 
 	gpio-ranges = <&gpio 0 0 58>;
 
-	gpclk0_gpio49: gpclk0_gpio49 {
+	gpclk0_gpio49: gpclk0-gpio49 {
 		pin-gpclk {
 			pins = "gpio49";
 			function = "alt1";
 			bias-disable;
 		};
 	};
-	gpclk1_gpio50: gpclk1_gpio50 {
+	gpclk1_gpio50: gpclk1-gpio50 {
 		pin-gpclk {
 			pins = "gpio50";
 			function = "alt1";
 			bias-disable;
 		};
 	};
-	gpclk2_gpio51: gpclk2_gpio51 {
+	gpclk2_gpio51: gpclk2-gpio51 {
 		pin-gpclk {
 			pins = "gpio51";
 			function = "alt1";
@@ -669,7 +669,7 @@ pin-gpclk {
 		};
 	};
 
-	i2c0_gpio46: i2c0_gpio46 {
+	i2c0_gpio46: i2c0-gpio46 {
 		pin-sda {
 			function = "alt0";
 			pins = "gpio46";
@@ -681,7 +681,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c1_gpio46: i2c1_gpio46 {
+	i2c1_gpio46: i2c1-gpio46 {
 		pin-sda {
 			function = "alt1";
 			pins = "gpio46";
@@ -693,7 +693,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c3_gpio2: i2c3_gpio2 {
+	i2c3_gpio2: i2c3-gpio2 {
 		pin-sda {
 			function = "alt5";
 			pins = "gpio2";
@@ -705,7 +705,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c3_gpio4: i2c3_gpio4 {
+	i2c3_gpio4: i2c3-gpio4 {
 		pin-sda {
 			function = "alt5";
 			pins = "gpio4";
@@ -717,7 +717,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c4_gpio6: i2c4_gpio6 {
+	i2c4_gpio6: i2c4-gpio6 {
 		pin-sda {
 			function = "alt5";
 			pins = "gpio6";
@@ -729,7 +729,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c4_gpio8: i2c4_gpio8 {
+	i2c4_gpio8: i2c4-gpio8 {
 		pin-sda {
 			function = "alt5";
 			pins = "gpio8";
@@ -741,7 +741,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c5_gpio10: i2c5_gpio10 {
+	i2c5_gpio10: i2c5-gpio10 {
 		pin-sda {
 			function = "alt5";
 			pins = "gpio10";
@@ -753,7 +753,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c5_gpio12: i2c5_gpio12 {
+	i2c5_gpio12: i2c5-gpio12 {
 		pin-sda {
 			function = "alt5";
 			pins = "gpio12";
@@ -765,7 +765,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c6_gpio0: i2c6_gpio0 {
+	i2c6_gpio0: i2c6-gpio0 {
 		pin-sda {
 			function = "alt5";
 			pins = "gpio0";
@@ -777,7 +777,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c6_gpio22: i2c6_gpio22 {
+	i2c6_gpio22: i2c6-gpio22 {
 		pin-sda {
 			function = "alt5";
 			pins = "gpio22";
@@ -789,7 +789,7 @@ pin-scl {
 			bias-disable;
 		};
 	};
-	i2c_slave_gpio8: i2c_slave_gpio8 {
+	i2c_slave_gpio8: i2c-slave-gpio8 {
 		pins-i2c-slave {
 			pins = "gpio8",
 			       "gpio9",
@@ -799,7 +799,7 @@ pins-i2c-slave {
 		};
 	};
 
-	jtag_gpio48: jtag_gpio48 {
+	jtag_gpio48: jtag-gpio48 {
 		pins-jtag {
 			pins = "gpio48",
 			       "gpio49",
@@ -811,7 +811,7 @@ pins-jtag {
 		};
 	};
 
-	mii_gpio28: mii_gpio28 {
+	mii_gpio28: mii-gpio28 {
 		pins-mii {
 			pins = "gpio28",
 			       "gpio29",
@@ -820,7 +820,7 @@ pins-mii {
 			function = "alt4";
 		};
 	};
-	mii_gpio36: mii_gpio36 {
+	mii_gpio36: mii-gpio36 {
 		pins-mii {
 			pins = "gpio36",
 			       "gpio37",
@@ -830,7 +830,7 @@ pins-mii {
 		};
 	};
 
-	pcm_gpio50: pcm_gpio50 {
+	pcm_gpio50: pcm-gpio50 {
 		pins-pcm {
 			pins = "gpio50",
 			       "gpio51",
@@ -840,63 +840,63 @@ pins-pcm {
 		};
 	};
 
-	pwm0_0_gpio12: pwm0_0_gpio12 {
+	pwm0_0_gpio12: pwm0-0-gpio12 {
 		pin-pwm {
 			pins = "gpio12";
 			function = "alt0";
 			bias-disable;
 		};
 	};
-	pwm0_0_gpio18: pwm0_0_gpio18 {
+	pwm0_0_gpio18: pwm0-0-gpio18 {
 		pin-pwm {
 			pins = "gpio18";
 			function = "alt5";
 			bias-disable;
 		};
 	};
-	pwm1_0_gpio40: pwm1_0_gpio40 {
+	pwm1_0_gpio40: pwm1-0-gpio40 {
 		pin-pwm {
 			pins = "gpio40";
 			function = "alt0";
 			bias-disable;
 		};
 	};
-	pwm0_1_gpio13: pwm0_1_gpio13 {
+	pwm0_1_gpio13: pwm0-1-gpio13 {
 		pin-pwm {
 			pins = "gpio13";
 			function = "alt0";
 			bias-disable;
 		};
 	};
-	pwm0_1_gpio19: pwm0_1_gpio19 {
+	pwm0_1_gpio19: pwm0-1-gpio19 {
 		pin-pwm {
 			pins = "gpio19";
 			function = "alt5";
 			bias-disable;
 		};
 	};
-	pwm1_1_gpio41: pwm1_1_gpio41 {
+	pwm1_1_gpio41: pwm1-1-gpio41 {
 		pin-pwm {
 			pins = "gpio41";
 			function = "alt0";
 			bias-disable;
 		};
 	};
-	pwm0_1_gpio45: pwm0_1_gpio45 {
+	pwm0_1_gpio45: pwm0-1-gpio45 {
 		pin-pwm {
 			pins = "gpio45";
 			function = "alt0";
 			bias-disable;
 		};
 	};
-	pwm0_0_gpio52: pwm0_0_gpio52 {
+	pwm0_0_gpio52: pwm0-0-gpio52 {
 		pin-pwm {
 			pins = "gpio52";
 			function = "alt1";
 			bias-disable;
 		};
 	};
-	pwm0_1_gpio53: pwm0_1_gpio53 {
+	pwm0_1_gpio53: pwm0-1-gpio53 {
 		pin-pwm {
 			pins = "gpio53";
 			function = "alt1";
@@ -904,7 +904,7 @@ pin-pwm {
 		};
 	};
 
-	rgmii_gpio35: rgmii_gpio35 {
+	rgmii_gpio35: rgmii-gpio35 {
 		pin-start-stop {
 			pins = "gpio35";
 			function = "alt4";
@@ -914,26 +914,26 @@ pin-rx-ok {
 			function = "alt4";
 		};
 	};
-	rgmii_irq_gpio34: rgmii_irq_gpio34 {
+	rgmii_irq_gpio34: rgmii-irq-gpio34 {
 		pin-irq {
 			pins = "gpio34";
 			function = "alt5";
 		};
 	};
-	rgmii_irq_gpio39: rgmii_irq_gpio39 {
+	rgmii_irq_gpio39: rgmii-irq-gpio39 {
 		pin-irq {
 			pins = "gpio39";
 			function = "alt4";
 		};
 	};
-	rgmii_mdio_gpio28: rgmii_mdio_gpio28 {
+	rgmii_mdio_gpio28: rgmii-mdio-gpio28 {
 		pins-mdio {
 			pins = "gpio28",
 			       "gpio29";
 			function = "alt5";
 		};
 	};
-	rgmii_mdio_gpio37: rgmii_mdio_gpio37 {
+	rgmii_mdio_gpio37: rgmii-mdio-gpio37 {
 		pins-mdio {
 			pins = "gpio37",
 			       "gpio38";
@@ -941,7 +941,7 @@ pins-mdio {
 		};
 	};
 
-	spi0_gpio46: spi0_gpio46 {
+	spi0_gpio46: spi0-gpio46 {
 		pins-spi {
 			pins = "gpio46",
 			       "gpio47",
@@ -950,7 +950,7 @@ pins-spi {
 			function = "alt2";
 		};
 	};
-	spi2_gpio46: spi2_gpio46 {
+	spi2_gpio46: spi2-gpio46 {
 		pins-spi {
 			pins = "gpio46",
 			       "gpio47",
@@ -960,7 +960,7 @@ pins-spi {
 			function = "alt5";
 		};
 	};
-	spi3_gpio0: spi3_gpio0 {
+	spi3_gpio0: spi3-gpio0 {
 		pins-spi {
 			pins = "gpio0",
 			       "gpio1",
@@ -969,7 +969,7 @@ pins-spi {
 			function = "alt3";
 		};
 	};
-	spi4_gpio4: spi4_gpio4 {
+	spi4_gpio4: spi4-gpio4 {
 		pins-spi {
 			pins = "gpio4",
 			       "gpio5",
@@ -978,7 +978,7 @@ pins-spi {
 			function = "alt3";
 		};
 	};
-	spi5_gpio12: spi5_gpio12 {
+	spi5_gpio12: spi5-gpio12 {
 		pins-spi {
 			pins = "gpio12",
 			       "gpio13",
@@ -987,7 +987,7 @@ pins-spi {
 			function = "alt3";
 		};
 	};
-	spi6_gpio18: spi6_gpio18 {
+	spi6_gpio18: spi6-gpio18 {
 		pins-spi {
 			pins = "gpio18",
 			       "gpio19",
@@ -997,7 +997,7 @@ pins-spi {
 		};
 	};
 
-	uart2_gpio0: uart2_gpio0 {
+	uart2_gpio0: uart2-gpio0 {
 		pin-tx {
 			pins = "gpio0";
 			function = "alt4";
@@ -1009,7 +1009,7 @@ pin-rx {
 			bias-pull-up;
 		};
 	};
-	uart2_ctsrts_gpio2: uart2_ctsrts_gpio2 {
+	uart2_ctsrts_gpio2: uart2-ctsrts-gpio2 {
 		pin-cts {
 			pins = "gpio2";
 			function = "alt4";
@@ -1021,7 +1021,7 @@ pin-rts {
 			bias-disable;
 		};
 	};
-	uart3_gpio4: uart3_gpio4 {
+	uart3_gpio4: uart3-gpio4 {
 		pin-tx {
 			pins = "gpio4";
 			function = "alt4";
@@ -1033,7 +1033,7 @@ pin-rx {
 			bias-pull-up;
 		};
 	};
-	uart3_ctsrts_gpio6: uart3_ctsrts_gpio6 {
+	uart3_ctsrts_gpio6: uart3-ctsrts-gpio6 {
 		pin-cts {
 			pins = "gpio6";
 			function = "alt4";
@@ -1045,7 +1045,7 @@ pin-rts {
 			bias-disable;
 		};
 	};
-	uart4_gpio8: uart4_gpio8 {
+	uart4_gpio8: uart4-gpio8 {
 		pin-tx {
 			pins = "gpio8";
 			function = "alt4";
@@ -1057,7 +1057,7 @@ pin-rx {
 			bias-pull-up;
 		};
 	};
-	uart4_ctsrts_gpio10: uart4_ctsrts_gpio10 {
+	uart4_ctsrts_gpio10: uart4-ctsrts-gpio10 {
 		pin-cts {
 			pins = "gpio10";
 			function = "alt4";
@@ -1069,7 +1069,7 @@ pin-rts {
 			bias-disable;
 		};
 	};
-	uart5_gpio12: uart5_gpio12 {
+	uart5_gpio12: uart5-gpio12 {
 		pin-tx {
 			pins = "gpio12";
 			function = "alt4";
@@ -1081,7 +1081,7 @@ pin-rx {
 			bias-pull-up;
 		};
 	};
-	uart5_ctsrts_gpio14: uart5_ctsrts_gpio14 {
+	uart5_ctsrts_gpio14: uart5-ctsrts-gpio14 {
 		pin-cts {
 			pins = "gpio14";
 			function = "alt4";
diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
index a037d2bc5b11..bb7e8f7facaf 100644
--- a/arch/arm/boot/dts/bcm2835-common.dtsi
+++ b/arch/arm/boot/dts/bcm2835-common.dtsi
@@ -152,41 +152,41 @@ &cpu_thermal {
 };
 
 &gpio {
-	i2c_slave_gpio18: i2c_slave_gpio18 {
+	i2c_slave_gpio18: i2c-slave-gpio18 {
 		brcm,pins = <18 19 20 21>;
 		brcm,function = <BCM2835_FSEL_ALT3>;
 	};
 
-	jtag_gpio4: jtag_gpio4 {
+	jtag_gpio4: jtag-gpio4 {
 		brcm,pins = <4 5 6 12 13>;
 		brcm,function = <BCM2835_FSEL_ALT5>;
 	};
 
-	pwm0_gpio12: pwm0_gpio12 {
+	pwm0_gpio12: pwm0-gpio12 {
 		brcm,pins = <12>;
 		brcm,function = <BCM2835_FSEL_ALT0>;
 	};
-	pwm0_gpio18: pwm0_gpio18 {
+	pwm0_gpio18: pwm0-gpio18 {
 		brcm,pins = <18>;
 		brcm,function = <BCM2835_FSEL_ALT5>;
 	};
-	pwm0_gpio40: pwm0_gpio40 {
+	pwm0_gpio40: pwm0-gpio40 {
 		brcm,pins = <40>;
 		brcm,function = <BCM2835_FSEL_ALT0>;
 	};
-	pwm1_gpio13: pwm1_gpio13 {
+	pwm1_gpio13: pwm1-gpio13 {
 		brcm,pins = <13>;
 		brcm,function = <BCM2835_FSEL_ALT0>;
 	};
-	pwm1_gpio19: pwm1_gpio19 {
+	pwm1_gpio19: pwm1-gpio19 {
 		brcm,pins = <19>;
 		brcm,function = <BCM2835_FSEL_ALT5>;
 	};
-	pwm1_gpio41: pwm1_gpio41 {
+	pwm1_gpio41: pwm1-gpio41 {
 		brcm,pins = <41>;
 		brcm,function = <BCM2835_FSEL_ALT0>;
 	};
-	pwm1_gpio45: pwm1_gpio45 {
+	pwm1_gpio45: pwm1-gpio45 {
 		brcm,pins = <45>;
 		brcm,function = <BCM2835_FSEL_ALT0>;
 	};
diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
index db56a3443a4a..50aee663ddfc 100644
--- a/arch/arm/boot/dts/bcm2836.dtsi
+++ b/arch/arm/boot/dts/bcm2836.dtsi
@@ -10,7 +10,7 @@ soc {
 			 <0x40000000 0x40000000 0x00001000>;
 		dma-ranges = <0xc0000000 0x00000000 0x3f000000>;
 
-		local_intc: local_intc@40000000 {
+		local_intc: interrupt-controller@40000000 {
 			compatible = "brcm,bcm2836-l1-intc";
 			reg = <0x40000000 0x100>;
 			interrupt-controller;
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index d2d9c6e67f39..c9c52a19ef3b 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -135,17 +135,17 @@ gpio: gpio@7e200000 {
 			 * groups only make sense to switch to a
 			 * particular function together.
 			 */
-			dpi_gpio0: dpi_gpio0 {
+			dpi_gpio0: dpi-gpio0 {
 				brcm,pins = <0 1 2 3 4 5 6 7 8 9 10 11
 					     12 13 14 15 16 17 18 19
 					     20 21 22 23 24 25 26 27>;
 				brcm,function = <BCM2835_FSEL_ALT2>;
 			};
-			emmc_gpio22: emmc_gpio22 {
+			emmc_gpio22: emmc-gpio22 {
 				brcm,pins = <22 23 24 25 26 27>;
 				brcm,function = <BCM2835_FSEL_ALT3>;
 			};
-			emmc_gpio34: emmc_gpio34 {
+			emmc_gpio34: emmc-gpio34 {
 				brcm,pins = <34 35 36 37 38 39>;
 				brcm,function = <BCM2835_FSEL_ALT3>;
 				brcm,pull = <BCM2835_PUD_OFF
@@ -155,95 +155,95 @@ BCM2835_PUD_UP
 					     BCM2835_PUD_UP
 					     BCM2835_PUD_UP>;
 			};
-			emmc_gpio48: emmc_gpio48 {
+			emmc_gpio48: emmc-gpio48 {
 				brcm,pins = <48 49 50 51 52 53>;
 				brcm,function = <BCM2835_FSEL_ALT3>;
 			};
 
-			gpclk0_gpio4: gpclk0_gpio4 {
+			gpclk0_gpio4: gpclk0-gpio4 {
 				brcm,pins = <4>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			gpclk1_gpio5: gpclk1_gpio5 {
+			gpclk1_gpio5: gpclk1-gpio5 {
 				brcm,pins = <5>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			gpclk1_gpio42: gpclk1_gpio42 {
+			gpclk1_gpio42: gpclk1-gpio42 {
 				brcm,pins = <42>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			gpclk1_gpio44: gpclk1_gpio44 {
+			gpclk1_gpio44: gpclk1-gpio44 {
 				brcm,pins = <44>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			gpclk2_gpio6: gpclk2_gpio6 {
+			gpclk2_gpio6: gpclk2-gpio6 {
 				brcm,pins = <6>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			gpclk2_gpio43: gpclk2_gpio43 {
+			gpclk2_gpio43: gpclk2-gpio43 {
 				brcm,pins = <43>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 				brcm,pull = <BCM2835_PUD_OFF>;
 			};
 
-			i2c0_gpio0: i2c0_gpio0 {
+			i2c0_gpio0: i2c0-gpio0 {
 				brcm,pins = <0 1>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			i2c0_gpio28: i2c0_gpio28 {
+			i2c0_gpio28: i2c0-gpio28 {
 				brcm,pins = <28 29>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			i2c0_gpio44: i2c0_gpio44 {
+			i2c0_gpio44: i2c0-gpio44 {
 				brcm,pins = <44 45>;
 				brcm,function = <BCM2835_FSEL_ALT1>;
 			};
-			i2c1_gpio2: i2c1_gpio2 {
+			i2c1_gpio2: i2c1-gpio2 {
 				brcm,pins = <2 3>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			i2c1_gpio44: i2c1_gpio44 {
+			i2c1_gpio44: i2c1-gpio44 {
 				brcm,pins = <44 45>;
 				brcm,function = <BCM2835_FSEL_ALT2>;
 			};
 
-			jtag_gpio22: jtag_gpio22 {
+			jtag_gpio22: jtag-gpio22 {
 				brcm,pins = <22 23 24 25 26 27>;
 				brcm,function = <BCM2835_FSEL_ALT4>;
 			};
 
-			pcm_gpio18: pcm_gpio18 {
+			pcm_gpio18: pcm-gpio18 {
 				brcm,pins = <18 19 20 21>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			pcm_gpio28: pcm_gpio28 {
+			pcm_gpio28: pcm-gpio28 {
 				brcm,pins = <28 29 30 31>;
 				brcm,function = <BCM2835_FSEL_ALT2>;
 			};
 
-			sdhost_gpio48: sdhost_gpio48 {
+			sdhost_gpio48: sdhost-gpio48 {
 				brcm,pins = <48 49 50 51 52 53>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
 
-			spi0_gpio7: spi0_gpio7 {
+			spi0_gpio7: spi0-gpio7 {
 				brcm,pins = <7 8 9 10 11>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			spi0_gpio35: spi0_gpio35 {
+			spi0_gpio35: spi0-gpio35 {
 				brcm,pins = <35 36 37 38 39>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
-			spi1_gpio16: spi1_gpio16 {
+			spi1_gpio16: spi1-gpio16 {
 				brcm,pins = <16 17 18 19 20 21>;
 				brcm,function = <BCM2835_FSEL_ALT4>;
 			};
-			spi2_gpio40: spi2_gpio40 {
+			spi2_gpio40: spi2-gpio40 {
 				brcm,pins = <40 41 42 43 44 45>;
 				brcm,function = <BCM2835_FSEL_ALT4>;
 			};
 
-			uart0_gpio14: uart0_gpio14 {
+			uart0_gpio14: uart0-gpio14 {
 				brcm,pins = <14 15>;
 				brcm,function = <BCM2835_FSEL_ALT0>;
 			};
@@ -252,50 +252,50 @@ uart0_gpio14: uart0_gpio14 {
 			 * people often run uart0 on the two pins
 			 * without flow control.
 			 */
-			uart0_ctsrts_gpio16: uart0_ctsrts_gpio16 {
+			uart0_ctsrts_gpio16: uart0-ctsrts-gpio16 {
 				brcm,pins = <16 17>;
 				brcm,function = <BCM2835_FSEL_ALT3>;
 			};
-			uart0_ctsrts_gpio30: uart0_ctsrts_gpio30 {
+			uart0_ctsrts_gpio30: uart0-ctsrts-gpio30 {
 				brcm,pins = <30 31>;
 				brcm,function = <BCM2835_FSEL_ALT3>;
 				brcm,pull = <BCM2835_PUD_UP BCM2835_PUD_OFF>;
 			};
-			uart0_gpio32: uart0_gpio32 {
+			uart0_gpio32: uart0-gpio32 {
 				brcm,pins = <32 33>;
 				brcm,function = <BCM2835_FSEL_ALT3>;
 				brcm,pull = <BCM2835_PUD_OFF BCM2835_PUD_UP>;
 			};
-			uart0_gpio36: uart0_gpio36 {
+			uart0_gpio36: uart0-gpio36 {
 				brcm,pins = <36 37>;
 				brcm,function = <BCM2835_FSEL_ALT2>;
 			};
-			uart0_ctsrts_gpio38: uart0_ctsrts_gpio38 {
+			uart0_ctsrts_gpio38: uart0-ctsrts-gpio38 {
 				brcm,pins = <38 39>;
 				brcm,function = <BCM2835_FSEL_ALT2>;
 			};
 
-			uart1_gpio14: uart1_gpio14 {
+			uart1_gpio14: uart1-gpio14 {
 				brcm,pins = <14 15>;
 				brcm,function = <BCM2835_FSEL_ALT5>;
 			};
-			uart1_ctsrts_gpio16: uart1_ctsrts_gpio16 {
+			uart1_ctsrts_gpio16: uart1-ctsrts-gpio16 {
 				brcm,pins = <16 17>;
 				brcm,function = <BCM2835_FSEL_ALT5>;
 			};
-			uart1_gpio32: uart1_gpio32 {
+			uart1_gpio32: uart1-gpio32 {
 				brcm,pins = <32 33>;
 				brcm,function = <BCM2835_FSEL_ALT5>;
 			};
-			uart1_ctsrts_gpio30: uart1_ctsrts_gpio30 {
+			uart1_ctsrts_gpio30: uart1-ctsrts-gpio30 {
 				brcm,pins = <30 31>;
 				brcm,function = <BCM2835_FSEL_ALT5>;
 			};
-			uart1_gpio40: uart1_gpio40 {
+			uart1_gpio40: uart1-gpio40 {
 				brcm,pins = <40 41>;
 				brcm,function = <BCM2835_FSEL_ALT5>;
 			};
-			uart1_ctsrts_gpio42: uart1_ctsrts_gpio42 {
+			uart1_ctsrts_gpio42: uart1-ctsrts-gpio42 {
 				brcm,pins = <42 43>;
 				brcm,function = <BCM2835_FSEL_ALT5>;
 			};
-- 
2.34.1

