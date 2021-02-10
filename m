Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9CE5315E93
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:07:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbhBJFGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:06:01 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20614 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbhBJFFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:05:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933553; x=1644469553;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xTAvJyEEVSfpdorhPl1k1ou8mFV/SXaVVbUyBuCbTbk=;
  b=RCUB9xzYL89yeJ0JSWCcHY3zQ9+/0B3Awgdp/jWohXVF6iLQAr7smwRH
   2V7bYkh0WpOR5JnAH5KnVGEZjZQ2wH4uJP4wfCmcnd36kw4Ew0QwnH6St
   AdbPmLsYHmhmeEp70v/14NxDqWXY+AA3eCpDKvBxgFSAL42W2iEQQR88F
   rcIhmwuB1u5aZ48awwuIxLa4siXgbgHzrvbwwGP6XkgVzbi0d54WCllIC
   enKD6JYLAeP8lbqOVrBctHIKqvflbmlYO7L6GYquP/p7w+AW8Q0IYyAFH
   kRDm1qpmpjd1/9FqEhuJgKj5GsiUZHY9E9L9sJxG65gE+cQULW4kJYCGa
   w==;
IronPort-SDR: fGqyfyj9axCobpcqEQOcj0PBLS2FGc97Ua2BwTd4bGZnJqQior5/mN3LFX/8fJ2nYTvk5zo4DY
 /veWGhB1fd2yLGjUIBV0w9ClkCmpt6uS/opvL03MF/q8FUl9TBjSLaeSthXnHJcm1sF0+50842
 zac+cY6jMLNdcAvCf/d+k4xhHm3jlw7+TfeBvAhCZrGitR3CeznzQYJOLQsrcIzIdJ+EvRrV43
 mT40Y1w+GyFNW5nNxkEaZz276W2V0Ec4q07WSukIffkfXhPPRJFfexnl5Ghy811MVrdf/CFxRS
 GzU=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775827"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:59 +0800
IronPort-SDR: g3iv004ow8axFi9kp4upugjU9+8iO+IzFBPdKtiT1OdgVB3shWmj7UT1j3HKTkuPH2d431ENRz
 vOoT5K5l/JZPjN9oEkpUSWxB6xf1BmvYos3oZyD1OYVpij7NFWW+IxYZyABdOmlQr3mzPL/xhV
 htpaQ9WBVYx0w792jOGCVC58kGO7UfcY/oOezxzwX3b/WHObDgCGr+y+xW+fknhAtUA/Yr2yXB
 MYkXxLS5fc7vOUOyv/3w27Y+Ot8Dtf0WfNvgptJxtrQfFfVKFNg+v6Sw03NSPmKHnWqO32FJQP
 iRs/mo2vpHpj8qBHPkhBTSwj
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:50 -0800
IronPort-SDR: P/f0jSucZsa4YLE9HkRrz1z/xlH4nqjSyvnU47XnKkZ6bWHbFOZo4AvCLpkb0PLLHmsfpHKWKS
 Bwv3wxLuw4QmCzrCgFza0m2cMJmo5MMgvb0XjEGLVRWGHh0pzZNh72py0yg5BD0CuQ8sIVyfPw
 xESq5wdA1oPEFDObG9BFT1cpYybL+CToWlMaC0cScffHT1xZyOhTj4FQi2FLmfG/mAkwHgvaMm
 fJxoe1Mogpf9Df9riaj4WTTwDDRJbzRTtnRrlDflcGiZejp1z/sNCqg0uYo2OHntL/GNxPqM9l
 Jss=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:57 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 12/17] riscv: Add SiPeed MAIX DOCK board device tree
Date:   Wed, 10 Feb 2021 14:02:25 +0900
Message-Id: <20210210050230.131281-13-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the device tree sipeed_maix_dock.dts for the SiPeed MAIX DOCK m1
and m1w boards. This device tree enables LEDs, gpio, i2c and spi/mmc
SD card devices.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../boot/dts/canaan/sipeed_maix_dock.dts      | 231 ++++++++++++++++++
 1 file changed, 231 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts

diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
new file mode 100644
index 000000000000..72c995a321ee
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
@@ -0,0 +1,231 @@
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
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "SiPeed MAIX Dock";
+	compatible = "sipeed,maix-dock-m1", "sipeed,maix-dock-m1w",
+		     "canaan,kendryte-k210";
+
+	chosen {
+		bootargs = "earlycon console=ttySIF0";
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		/*
+		 * Note: the board wiring drawing documents green on
+		 * gpio #4, red on gpio #5 and blue on gpio #6. However,
+		 * the board is actually wired differently as defined here.
+		 */
+		led0 {
+			color = <LED_COLOR_ID_BLUE>;
+			label = "blue";
+			gpios = <&gpio1_0 4 GPIO_ACTIVE_LOW>;
+		};
+
+		led1 {
+			color = <LED_COLOR_ID_GREEN>;
+			label = "green";
+			gpios = <&gpio1_0 5 GPIO_ACTIVE_LOW>;
+		};
+
+		led2 {
+			color = <LED_COLOR_ID_RED>;
+			label = "red";
+			gpios = <&gpio1_0 6 GPIO_ACTIVE_LOW>;
+		};
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
+};
+
+&fpioa {
+	pinctrl-0 = <&jtag_pinctrl>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	jtag_pinctrl: jtag-pinmux {
+		pinmux = <K210_FPIOA(0, K210_PCF_JTAG_TCLK)>,
+			 <K210_FPIOA(1, K210_PCF_JTAG_TDI)>,
+			 <K210_FPIOA(2, K210_PCF_JTAG_TMS)>,
+			 <K210_FPIOA(3, K210_PCF_JTAG_TDO)>;
+	};
+
+	uarths_pinctrl: uarths-pinmux {
+		pinmux = <K210_FPIOA(4, K210_PCF_UARTHS_RX)>,
+			 <K210_FPIOA(5, K210_PCF_UARTHS_TX)>;
+	};
+
+	gpio_pinctrl: gpio-pinmux {
+		pinmux = <K210_FPIOA(8, K210_PCF_GPIO0)>,
+			 <K210_FPIOA(11, K210_PCF_GPIO3)>,
+			 <K210_FPIOA(12, K210_PCF_GPIO4)>,
+			 <K210_FPIOA(13, K210_PCF_GPIO5)>,
+			 <K210_FPIOA(14, K210_PCF_GPIO6)>,
+			 <K210_FPIOA(15, K210_PCF_GPIO7)>;
+	};
+
+	gpiohs_pinctrl: gpiohs-pinmux {
+		pinmux = <K210_FPIOA(16, K210_PCF_GPIOHS0)>,
+			 <K210_FPIOA(17, K210_PCF_GPIOHS1)>,
+			 <K210_FPIOA(21, K210_PCF_GPIOHS5)>,
+			 <K210_FPIOA(22, K210_PCF_GPIOHS6)>,
+			 <K210_FPIOA(23, K210_PCF_GPIOHS7)>,
+			 <K210_FPIOA(24, K210_PCF_GPIOHS8)>,
+			 <K210_FPIOA(25, K210_PCF_GPIOHS9)>,
+			 <K210_FPIOA(32, K210_PCF_GPIOHS16)>,
+			 <K210_FPIOA(33, K210_PCF_GPIOHS17)>,
+			 <K210_FPIOA(34, K210_PCF_GPIOHS18)>,
+			 <K210_FPIOA(35, K210_PCF_GPIOHS19)>;
+	};
+
+	i2s0_pinctrl: i2s0-pinmux {
+		pinmux = <K210_FPIOA(18, K210_PCF_I2S0_SCLK)>,
+			 <K210_FPIOA(19, K210_PCF_I2S0_WS)>,
+			 <K210_FPIOA(20, K210_PCF_I2S0_IN_D0)>;
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
+
+	spi0_pinctrl: spi0-pinmux {
+		pinmux = <K210_FPIOA(36, K210_PCF_GPIOHS20)>,  /* cs */
+			 <K210_FPIOA(37, K210_PCF_GPIOHS21)>,  /* rst */
+			 <K210_FPIOA(38, K210_PCF_GPIOHS22)>,  /* dc */
+			 <K210_FPIOA(39, K210_PCF_SPI0_SCLK)>; /* wr */
+	};
+
+	spi1_pinctrl: spi1-pinmux {
+		pinmux = <K210_FPIOA(26, K210_PCF_SPI1_D1)>,
+			 <K210_FPIOA(27, K210_PCF_SPI1_SCLK)>,
+			 <K210_FPIOA(28, K210_PCF_SPI1_D0)>,
+			 <K210_FPIOA(29, K210_PCF_GPIOHS13)>; /* cs */
+	};
+
+	i2c1_pinctrl: i2c1-pinmux {
+		pinmux = <K210_FPIOA(9, K210_PCF_I2C1_SCLK)>,
+			 <K210_FPIOA(10, K210_PCF_I2C1_SDA)>;
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
+		status = "disabled";
+	};
+};
+
+&spi1 {
+	pinctrl-0 = <&spi1_pinctrl>;
+	pinctrl-names = "default";
+	num-cs = <1>;
+	cs-gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
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

