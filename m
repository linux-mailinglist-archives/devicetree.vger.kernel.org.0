Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B06C30BC39
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 11:41:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbhBBKkF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 05:40:05 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:35924 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229739AbhBBKkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 05:40:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612262404; x=1643798404;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cLJLy/HsfaKJnI40HMcMyu6lTnD7VmKbWkTSB5pV0yE=;
  b=M+XorlgoHg+gKHp21RxH3740ssJ8YnA+SntDEe7tQfvHgaLv6F0oKL30
   nep/b6azeUqyFxtknMFs1CDreBmkm9gtqGtsg8GLYaXbt68G6vd2KTdnf
   /6My7xN+kBGcZ149DzbnF06nwUMv6Gt8dTFCzF3uGcHkvJ/mnWMvo5+4J
   ZXEOCMOBBJHRgMMa6ztPBe1dRBCE8lL7sOsWBwl5f+x2iBE5lNfFg+nlq
   NPdqRS/RCFneOptfrqQxHWN9ChzX7thwlUMVZ/XUMUeBauTqeyWzVJ7IU
   OZFos0KEvHE1aNMfdJgLIyfSUaIyUazU2Z/hcSE3P/psP8Hrs3+brldCo
   Q==;
IronPort-SDR: iLMugdTX5qx8CCQ65ww/b77VCJq4555Zj3Z2y68Bw0c/NgU9xowOcizeQToQcVq630LsDo6D7Z
 t5JsrpStCEdicfjGwxNBkpEikMLQ7E7tBsnQQQm0YLcGDgFwiiBrZsOJP0VLUtxG7CMIj6PM0+
 giV4vDv/40VSzcSF4r6EQ0uRwvMGBCHhn8hCgKnkhrheaJIrnVJyG7QhGqvJdqDdH10z83sDKm
 hClGRDc+FYGf54FtgPw2d3eoKjVdRJ1KN6S8DfHzFdzFyiGfqqPpkn0u1AhhvAySnnVnIMLgoH
 wVI=
X-IronPort-AV: E=Sophos;i="5.79,394,1602518400"; 
   d="scan'208";a="160092509"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 02 Feb 2021 18:37:01 +0800
IronPort-SDR: dwJg3A3S1s0IYi69YgM51yfut3wPLWiH0Gdy9veignFr2RvOzW8U+jvkE2SDFxbSq+YCG0EcJK
 +ePXWSgwTnbIxDwxb9/YF4GdVueVIH+xOFvp4JrTRDxPNh8hxAVg7Ejh1Anb5CuNPO6E7BlBrG
 Z4+Cag7M5fKJaWU7mTX+94nb/PfyQEwGrMT8GufvjQp9myQDevA7fAFljP1aXGGzasiBZE0v5d
 yKgMZoN7fYKaAQOD1Ep0/9gtar9YwA40JlgeprYBL53rrtKxxTdYKATo6pyEFnvkuSgB+yznpI
 LcipZInFmBueGzff3JQ/o7d7
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Feb 2021 02:21:09 -0800
IronPort-SDR: TW99pnynSmKzfCapy8fz3D2hFWzwBUnQTx8Jw8v+9Ox7fvMivi4FsLwwednUMb8XEOKRIASBQI
 7eU8TegkjpGUiJoHndJ2+vTaWyFn3hM5hD/Je5WnUfmwpDbRw4e1QHMjRsiMWBrfKu9ULEH9Ax
 T3YoBBfhWxSzQy7g2vb6AodNj7dCO3ehGAPe/5COBT53+PV7FyLlNNAuQXoIXcfwLvZNHXXeY0
 oe6IpdXLVICuRW7Pyoiv4mVPvZBmNGtg1YBnR8LIZSTftE7v3Zo3v6/N7Kla8D5w9ARdB8NlUR
 RGc=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 02 Feb 2021 02:37:00 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v14 11/16] riscv: Add SiPeed MAIX DOCK board device tree
Date:   Tue,  2 Feb 2021 19:36:18 +0900
Message-Id: <20210202103623.200809-12-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210202103623.200809-1-damien.lemoal@wdc.com>
References: <20210202103623.200809-1-damien.lemoal@wdc.com>
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
 .../boot/dts/canaan/sipeed_maix_dock.dts      | 236 ++++++++++++++++++
 1 file changed, 236 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts

diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
new file mode 100644
index 000000000000..fae0149a8740
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts
@@ -0,0 +1,236 @@
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

