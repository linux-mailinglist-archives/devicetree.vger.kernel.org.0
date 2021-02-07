Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2497E31281C
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 00:17:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbhBGXRA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 18:17:00 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:64368 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229564AbhBGXQ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 18:16:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612739879; x=1644275879;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ZVJszlCUeT8A82U+e6McWWtmRXvcdjQ3DcRByG4VQwg=;
  b=nnNTiMUp2U1wuhdnu6EzZ1pf8E0RINADV+7xINg6Ll1XWHkNWe7sDZBi
   snDMIbQlGu6gQGpoOKiMH/brMEOkV028C2UyjnMQXdd5Za33Bumq1ldIR
   +bKcK0g2q2BxRxWXFQRP2fwI7G9iFHt97IfzJEfmM8dyiuL0H4VRQw4+j
   O9y3m7rrBYieRS7OJryKEZEJJshLjFSbpvzhQRZuNR21sNqundd1cZSec
   X0Wjq3dcC702PySOa47Jf3t+z/ZmK3yy1qaNy31PB02hNXQb40lDoW2gt
   Qz8coSfF5QFT4bUJ65aQH8W25Mxm6kcWdI4YHWFRae70j5NOHk8YQ2aGu
   w==;
IronPort-SDR: kypZfN9NkAm52zbF2dw8qq76TvuLYud7v8rm8Q5h6Q+543GZWV7LHLhdnuGUOYetxrhUx3LrvK
 rQQQN2alYRIHYCoAsbOoKzfc2sdscJu1TfIjg3WljSzTrE5btVhCmbMAnhqjwEA9w7dFzP/BPk
 OudmFq8m+A9LmcVzu/u8vgnsv4QYp1KOufqFnUK7NC0u8GZLTtKGb5xlXWsLT2D88Y44/M/LhV
 YGnSOKBAOf/c44Xxcw34DKmSK0p/Cywg3s8A0dGjsxixZvtLaFxE3OFPwPFWfg85c8QhB43XZ9
 EJ8=
X-IronPort-AV: E=Sophos;i="5.81,160,1610380800"; 
   d="scan'208";a="263503266"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Feb 2021 07:32:46 +0800
IronPort-SDR: fI15NvEd8dU3SiVo80NWtfrwIqthur3OTCOlSPYyA3m7hghTHWcxTcAHfg7CIDxTh74raQgwN/
 qQoilEbKTTvv9FrRvDQpVAFfKm/jkV5piNVG3aBqbLJjhUoKPLZepEsSDEIDYRB973m60xJ2CL
 njgNVzmcnSPPYuHtPxT0xrXmpGRdpLnsPAc2k3Zo/fA7p7oeCoM7+lXDgkrZb+uMoXuPoSl6SI
 TllQCTo8O3cbqNF6kpRJGcKURH5Hi90ao5RoeSYGiCJEWHHDO628rAkigXi7tNXDrcpDDo0fKI
 yzAiglVhqP2/linSY/zmAiD0
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 14:57:11 -0800
IronPort-SDR: 95DfHCdYc5OhvBfbKAXj9rH1PXyzovPR9FaRroYvtADsCoICcoreVzLODZOSsUTFy6N2+FbrsQ
 +oyID/onHEGxuzUSXjywCTp1y683tYUlIAu86wUVBSpI9bOuY4xf8J/MKPxVK7/KiLnbAKHVDw
 ACOzEmppAc7NuiuhvgnjjrmDu/+lKspSjF6mmWjEnvqSsrdalxWyEvm9Cieuct3EPwZugaWRH7
 8rLQTSWsFMv9Tw+pFIhaJp8awYVqB6I1/fidfr/sl7OtwfJrMmhYTyBhM9+32MBXSwz/CQ/GS1
 6vo=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip02.wdc.com with ESMTP; 07 Feb 2021 15:13:17 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v17 10/16] riscv: Add SiPeed MAIX BiT board device tree
Date:   Mon,  8 Feb 2021 08:12:50 +0900
Message-Id: <20210207231256.115130-11-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210207231256.115130-1-damien.lemoal@wdc.com>
References: <20210207231256.115130-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the device tree sipeed_maix_bit.dts for the SiPeed MAIX BiT and
MAIX BiTm boards. This device tree enables LEDs, gpio, i2c and spi/mmc
SD card devices.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../riscv/boot/dts/canaan/sipeed_maix_bit.dts | 234 ++++++++++++++++++
 1 file changed, 234 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts

diff --git a/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
new file mode 100644
index 000000000000..11e491410f00
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts
@@ -0,0 +1,234 @@
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
+	model = "SiPeed MAIX BiT";
+	compatible = "sipeed,maix-bit", "sipeed,maix-bitm",
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
+		led0 {
+			color = <LED_COLOR_ID_GREEN>;
+			label = "green";
+			gpios = <&gpio1_0 4 GPIO_ACTIVE_LOW>;
+		};
+
+		led1 {
+			color = <LED_COLOR_ID_RED>;
+			label = "red";
+			gpios = <&gpio1_0 5 GPIO_ACTIVE_LOW>;
+		};
+
+		led2 {
+			color = <LED_COLOR_ID_BLUE>;
+			label = "blue";
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
+	pinctrl-names = "default";
+	pinctrl-0 = <&jtag_pinctrl>;
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
+			 <K210_FPIOA(9, K210_PCF_GPIO1)>,
+			 <K210_FPIOA(10, K210_PCF_GPIO2)>,
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
+		pinmux = <K210_FPIOA(30, K210_PCF_I2C1_SCLK)>,
+			 <K210_FPIOA(31, K210_PCF_I2C1_SDA)>;
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
+		dc-gpios = <&gpio0 22 GPIO_ACTIVE_HIGH>;
+		spi-max-frequency = <15000000>;
+		spi-cs-high;
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

