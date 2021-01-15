Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CA972F7DAD
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:06:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731599AbhAOOGH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:06:07 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:3606 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732480AbhAOOGH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:06:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610720774; x=1642256774;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NxkrMnisgB5Y7CCjo51izxzf/ZM8UZEu9H+xpU97oZI=;
  b=BSmKVlyiTv2PG/LyhHEO7dx/Benb3mTu0LYy++aRYy1jn4bJREf4564W
   E2X/pbz6CI0b5fnSZZNVUerBl+PRWjL+ID8Lqmkma8EQrrcJEr9GmPbm1
   yhwlJUJlYBFuzGhC8N9xOLi6xXqn4YkW278iqBRg8sQP6ENSpJEchTYvd
   U6FYUOEbByOJ/LWj6wbmqRUMOVWh7uc7th3OkumOr9SkROpeaOSnl2U6U
   5qhd5n0aEdrz+B9JqghBhduRtfKQFBsfif7F2u3nvGhuukua/1I8hapYY
   WH0N/44RqYzl4AF3BFDJIM9rw8fWJkOpM6TMqW/oJ83qVglTS2vQ2tIs2
   Q==;
IronPort-SDR: /qquXFNoqL6L75CCQ/6rC93A9x1sewrozm0clYL0JIBE+vYsuZ3DGUlR8eQyniCUSk/DpwAyD4
 wvMJOp8LIt/BuRXLWBcIW1QhOriEl0SHnMLCNna9ijG7cb85ELVr5zt1G+GwtkGma1nxjgRzW2
 ciX6hUapVBejD/qpkmvfWq6uH4A//AICLd+IyJqzmN5zx8WJLKZiLj+hhjOZKCE4RLSPuE2+q8
 ikzhMnIZkWDyJbEYEkVrkQFsQQ9KNdHVNMjmE+rv8v6M5sCdudjz5Y97VYzTjfUb1nPWeRFTnh
 S3A=
X-IronPort-AV: E=Sophos;i="5.79,349,1602518400"; 
   d="scan'208";a="261448302"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Jan 2021 22:24:35 +0800
IronPort-SDR: daDsbCHIf8mJm7FzotHENAVNN+UYfIYh3rpS1tNP5rZAF+LOrzvB0LKFtwTV4uRuxayLCKnfBc
 MVfqwUOHiLRdRcIGHEKHSEYtyzxGVG6DGFEJnmkihVDNhsGhgWPl9+Ia6Go3yV/0RVR/flrc8t
 IIVgUIK8YaE5lh3PU23MsCZYqFGzYFwvZqzmHlt/0GgiUjeIEV0ubxhsNVpd64hrQYZ7VdgOcT
 4ist208jtYAW1NK9PHlpALiQvVVGP1yk5LJLhQWaPHt6WtWFMfojAZyKBSUHMTI3X4ZP3qCiCf
 RtSvGTbNRiPOvJEzYg6ohl4a
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 05:49:42 -0800
IronPort-SDR: n3Rdfel2COOrEbZXLoumpK0y/zIuL/YGkT6bjVYwVBhc/4YTzCX8mEoUZp4AGlPzeIWe8Cx1hs
 ILli/YtFX/kvwVT11FoDh5HpOelgakUe/Squ02RvovbLhMOk6z0b540qdXBtzpBbSyGeK/ziPm
 u9yX+oB834LGzPSMb1J20qggZNBjNHQWLA4ZSkKTBl9/tWnjYvIFrpvv0D+U6Bds6WxCx/ClJi
 QSv+z6fzBrc6Xq0NdWjqVL+6j4RRHSjzLK6A0V1SDPToyfk4f3zix2GRV+puFWvDlWifk73jdn
 NvY=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.70.177])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 06:05:00 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH v12 14/17] riscv: Add SiPeed MAIXDUINO board device tree
Date:   Fri, 15 Jan 2021 23:03:49 +0900
Message-Id: <20210115140352.146941-15-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115140352.146941-1-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
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

