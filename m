Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AC00310564
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 08:03:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231283AbhBEHCj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 02:02:39 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:41743 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231199AbhBEHCf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 02:02:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612509740; x=1644045740;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NxkrMnisgB5Y7CCjo51izxzf/ZM8UZEu9H+xpU97oZI=;
  b=pak7sUO5A8UKCFHddw64w3nn/M3oK24NYNIWDsYj6S2jFlNRVCmC63Qj
   kNCnlXLmNcy/QyRX8CPiWX8szdtUr57q5tOipMHT6hZKN1Awt+LAmysyf
   AqfpUXUqNHI3hvGmT1Jk3Ek3JAatN87amqg/LZ/W+JVbA/eXV6JGte3FV
   Zwj0OUJfcK9KxdMp5dXaBFbja/8EB9eD/kMAm0ME9N3HmAZ9qVbUPg8Ys
   3ytN4MU3G5d68/tYgG5ShcjZmyoiMTR1uNJ7u/ZKEeP1t4bu5qj9tG9dN
   YHKPoYAIvgR3vAiH3Fm3r/uIvEVR6A3q1NqxW9lofjXDaPkKAZI0dK36/
   g==;
IronPort-SDR: frNkhrYPZ0lov9lXq01kYUCUMUOV01i7Ddw5mhLhh/4HkACGF6BsCYg6lZwN0Y4CYnUufX50+5
 +MeFHwmSLb5cSyfe+6nGi3ck41cVSfY5L2UlIMzWLiwSsW2MAtHo1fFkvKpARCRfR+uG5hGQyl
 +a0D01Ia3aXl/B7Dw4svd+0jmc9dL/ETpZ5h1XxIdNEDjgsFO0u6MhM83Pfk5QuxxjBDt7Oy8z
 uMUrwzNGp/g608lA9J2X/E3VbcZhSXi+jtccNPN4U/GSYG7sLuv7Qo+7/QDwTKUs1Zn9DOdBjy
 UYQ=
X-IronPort-AV: E=Sophos;i="5.81,154,1610380800"; 
   d="scan'208";a="263312096"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 05 Feb 2021 15:16:49 +0800
IronPort-SDR: 3gJTK+9OS3hEEF4DzOVbHFQJT1xkk4eFVZk7l/vCrZoWHCG3vzHNNQAWlydXGuEdD35K4hHNRo
 wWBj+8/S03BghRPHVrqkTHF7WtWwL4S0mjq0Yf4r26rNWxExDvWKXYmvomRTjsxPew/Ai/SDKS
 dFsELeqrfutkNA2AFkrpAjtQTPWi+vNY4bCi3NFaXm7ywxlIhZ1KDKYy/19SfQs5mK7P7o4vXz
 520pIy5EDBXFheMCNxSGjGPtlGhwyMEIzEbI2SpGSUQJgp7e8VUmTZ0YzAObsP0EKaVcb8/JM6
 jJVbGMx22jYPRctPicmkkQya
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 22:40:58 -0800
IronPort-SDR: ZkRKmDBpSYyGZjxEX3twwinUkESwujwP1G8Pk3DBcmaws/EHvUR/6CXejYTTR5V/5RHc4WzjGu
 oc8sj/OiNpCbjH7SCYXJaY8qVXnh6frTDU5nKgxOEuYNpoO98IwmonemJ17laFY3tDVL8a/zi/
 IDTbD9MpsdvD6DORQIWCtWAgju2AWLsq4/oyuMWxHJKBKQhLxhge7wvF+VqRQPgl+VMxqjWWgE
 k0kTO7odmH/O3fH14rj9tFH1U2wD7AFmrxVJuflsWjJHAFhr3QW4UTgvx3zQpbw5LS3UZqUfYh
 92k=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 04 Feb 2021 22:58:55 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v16 13/16] riscv: Add SiPeed MAIXDUINO board device tree
Date:   Fri,  5 Feb 2021 15:58:24 +0900
Message-Id: <20210205065827.577285-14-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205065827.577285-1-damien.lemoal@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the device tree sipeed_maixduino.dts for the SiPeed MAIXDUINO board.
This device tree enables LEDs and spi/mmc SD card device. Additionally,
gpios and i2c are also enabled and mapped to the board header pins as
indicated on the board itself.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../boot/dts/canaan/sipeed_maixduino.dts      | 209 ++++++++++++++++++
 1 file changed, 209 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/sipeed_maixduino.dts

diff --git a/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
new file mode 100644
index 000000000000..804edc45eeeb
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/sipeed_maixduino.dts
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019-20 Sean Anderson <seanga2@gmail.com>
+ * Copyright (C) 2020 Western Digital Corporation or its affiliates.
+ */
+
+/dts-v1/;
+
+#include "k210.dtsi"
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "SiPeed MAIXDUINO";
+	compatible = "sipeed,maixduino", "canaan,kendryte-k210";
+
+	chosen {
+		bootargs = "earlycon console=ttySIF0";
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		boot {
+			label = "BOOT";
+			linux,code = <BTN_0>;
+			gpios = <&gpio0 0 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		status = "disabled";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0 0>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&mic>;
+		};
+	};
+
+	mic: mic {
+		#sound-dai-cells = <0>;
+		compatible = "memsensing,msm261s4030h0";
+		status = "disabled";
+	};
+
+	vcc_3v3: regulator-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+};
+
+&fpioa {
+	status = "okay";
+
+	uarths_pinctrl: uarths-pinmux {
+		pinmux = <K210_FPIOA(4, K210_PCF_UARTHS_RX)>, /* Header "0" */
+			 <K210_FPIOA(5, K210_PCF_UARTHS_TX)>; /* Header "1" */
+	};
+
+	gpio_pinctrl: gpio-pinmux {
+		pinmux = <K210_FPIOA(8, K210_PCF_GPIO0)>,
+			 <K210_FPIOA(9, K210_PCF_GPIO1)>;
+	};
+
+	gpiohs_pinctrl: gpiohs-pinmux {
+		pinmux = <K210_FPIOA(16, K210_PCF_GPIOHS0)>,  /* BOOT */
+			 <K210_FPIOA(21, K210_PCF_GPIOHS2)>,  /* Header "2" */
+			 <K210_FPIOA(22, K210_PCF_GPIOHS3)>,  /* Header "3" */
+			 <K210_FPIOA(23, K210_PCF_GPIOHS4)>,  /* Header "4" */
+			 <K210_FPIOA(24, K210_PCF_GPIOHS5)>,  /* Header "5" */
+			 <K210_FPIOA(32, K210_PCF_GPIOHS6)>,  /* Header "6" */
+			 <K210_FPIOA(15, K210_PCF_GPIOHS7)>,  /* Header "7" */
+			 <K210_FPIOA(14, K210_PCF_GPIOHS8)>,  /* Header "8" */
+			 <K210_FPIOA(13, K210_PCF_GPIOHS9)>,  /* Header "9" */
+			 <K210_FPIOA(12, K210_PCF_GPIOHS10)>, /* Header "10" */
+			 <K210_FPIOA(11, K210_PCF_GPIOHS11)>, /* Header "11" */
+			 <K210_FPIOA(10, K210_PCF_GPIOHS12)>, /* Header "12" */
+			 <K210_FPIOA(3,  K210_PCF_GPIOHS13)>; /* Header "13" */
+	};
+
+	i2s0_pinctrl: i2s0-pinmux {
+		pinmux = <K210_FPIOA(18, K210_PCF_I2S0_SCLK)>,
+			 <K210_FPIOA(19, K210_PCF_I2S0_WS)>,
+			 <K210_FPIOA(20, K210_PCF_I2S0_IN_D0)>;
+	};
+
+	spi1_pinctrl: spi1-pinmux {
+		pinmux = <K210_FPIOA(26, K210_PCF_SPI1_D1)>,
+			 <K210_FPIOA(27, K210_PCF_SPI1_SCLK)>,
+			 <K210_FPIOA(28, K210_PCF_SPI1_D0)>,
+			 <K210_FPIOA(29, K210_PCF_GPIO2)>; /* cs */
+	};
+
+	i2c1_pinctrl: i2c1-pinmux {
+		pinmux = <K210_FPIOA(30, K210_PCF_I2C1_SCLK)>, /* Header "scl" */
+			 <K210_FPIOA(31, K210_PCF_I2C1_SDA)>;  /* Header "sda" */
+	};
+
+	i2s1_pinctrl: i2s1-pinmux {
+		pinmux = <K210_FPIOA(33, K210_PCF_I2S1_WS)>,
+			 <K210_FPIOA(34, K210_PCF_I2S1_IN_D0)>,
+			 <K210_FPIOA(35, K210_PCF_I2S1_SCLK)>;
+	};
+
+	spi0_pinctrl: spi0-pinmux {
+		pinmux = <K210_FPIOA(36, K210_PCF_GPIOHS20)>,  /* cs */
+			 <K210_FPIOA(37, K210_PCF_GPIOHS21)>,  /* rst */
+			 <K210_FPIOA(38, K210_PCF_GPIOHS22)>,  /* dc */
+			 <K210_FPIOA(39, K210_PCF_SPI0_SCLK)>; /* wr */
+	};
+
+	dvp_pinctrl: dvp-pinmux {
+		pinmux = <K210_FPIOA(40, K210_PCF_SCCB_SDA)>,
+			 <K210_FPIOA(41, K210_PCF_SCCB_SCLK)>,
+			 <K210_FPIOA(42, K210_PCF_DVP_RST)>,
+			 <K210_FPIOA(43, K210_PCF_DVP_VSYNC)>,
+			 <K210_FPIOA(44, K210_PCF_DVP_PWDN)>,
+			 <K210_FPIOA(45, K210_PCF_DVP_HSYNC)>,
+			 <K210_FPIOA(46, K210_PCF_DVP_XCLK)>,
+			 <K210_FPIOA(47, K210_PCF_DVP_PCLK)>;
+	};
+};
+
+&uarths0 {
+	pinctrl-0 = <&uarths_pinctrl>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&gpio0 {
+	pinctrl-0 = <&gpiohs_pinctrl>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&gpio1 {
+	pinctrl-0 = <&gpio_pinctrl>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&i2s0 {
+	#sound-dai-cells = <1>;
+	pinctrl-0 = <&i2s0_pinctrl>;
+	pinctrl-names = "default";
+};
+
+&i2c1 {
+	pinctrl-0 = <&i2c1_pinctrl>;
+	pinctrl-names = "default";
+	clock-frequency = <400000>;
+	status = "okay";
+};
+
+&dvp0 {
+	pinctrl-0 = <&dvp_pinctrl>;
+	pinctrl-names = "default";
+};
+
+&spi0 {
+	pinctrl-0 = <&spi0_pinctrl>;
+	pinctrl-names = "default";
+	num-cs = <1>;
+	cs-gpios = <&gpio0 20 GPIO_ACTIVE_HIGH>;
+
+	panel@0 {
+		compatible = "sitronix,st7789v";
+		reg = <0>;
+		reset-gpios = <&gpio0 21 GPIO_ACTIVE_LOW>;
+		dc-gpios = <&gpio0 22 0>;
+		spi-max-frequency = <15000000>;
+		power-supply = <&vcc_3v3>;
+	};
+};
+
+&spi1 {
+	pinctrl-0 = <&spi1_pinctrl>;
+	pinctrl-names = "default";
+	num-cs = <1>;
+	cs-gpios = <&gpio1_0 2 GPIO_ACTIVE_LOW>;
+	status = "okay";
+
+	slot@0 {
+		compatible = "mmc-spi-slot";
+		reg = <0>;
+		voltage-ranges = <3300 3300>;
+		spi-max-frequency = <25000000>;
+		broken-cd;
+	};
+};
+
+&spi3 {
+	spi-flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		m25p,fast-read;
+		broken-flash-reset;
+	};
+};
-- 
2.29.2

