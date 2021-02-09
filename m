Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E75D3314EF9
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:34:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbhBIMep (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:34:45 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:39165 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229880AbhBIMen (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:34:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612874083; x=1644410083;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=O8Zb4MFoD14ZWUaz18hXV55N7UNmAe5OYeG7eeRqwL8=;
  b=lJXWjnbXpGfAEYd+jMf8oViD6k7X4ZPsrr0bIptK18E1xprOWRqCru8Q
   A05JqW+IwrXiME9iNMja9ma24ovDh3Ohs3Z6FEHc5ICz9ud9CRg2oncQW
   80f4rA2SxPVx4EZx5lhZt4UNo6FnEraSiWPcbzNq2qS0hzXfZTKrrFA9O
   rMn+OoA93uvVMNE9e7PcyhY+Te74+Nl5QQkg8rTC2GNq3i+8KB705BU5+
   +qzsbGh80nM2CfQktsvHUDdiGYpkyTeaAU27FCAQ1EkRNT+ea+R4FiNuQ
   X45HLhoEUBAG3oX0dYbsboglJyafW6A9tTWoM+M6aeVdviRWNCmhIkHR3
   g==;
IronPort-SDR: SIYjUgfRLLRe8FA1CmDDTG5awpsliPnXTXlTQU530LW2vWs42UgZbDeuXr3EkB4KoKOxv5N0uD
 OPFAXTk7vKlhFTPgUkRIsdR5D5FpX1iiCumfncIf7PB8w0spyUegGtLmeICRNrF8l84HLIxKt8
 94X73UiuNxnZTs8pozXnC3q0JV4XU6OO6LGGYxAlmj5m7aWfOaity0F9l639oa9EFA3CF4Popi
 +ApyqEg96KIg44USJtK0LwTaaw+txcqn3Cx+00ehEZ//Xh90KWrzoXMZ0aaLE9oHg7M/mnOKYW
 2hQ=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="163996829"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:30:40 +0800
IronPort-SDR: LhSRvyS05LL89+SvcZ1QAXAwR8IIhTve/ZETIqE4SCjf8CKNvKiOzhNZcaoOFvGUmvhr6H95s2
 +v5/DXVO6tpXKVV1N2WN87AmMNgF0dr/dAt5m8ysNHaOn7OOu09xWsVwM+uWI59mqVN1NckWqu
 aPhl5W+Fz5k+mrs1l4WibfIagIUTuOrX8HKee1C1xR0xD+KfaGO6aGYPm1KJdIioM9HozY6VNq
 94Uqj4pTzA0c93cbVbD1tUpVacpElkOEtZPPZ2wRoMNffG/juL+MW48OsVfilFxvxtwOafTZhp
 ZK+PaqUXAtNBWrpk7XtjpYoC
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:14:25 -0800
IronPort-SDR: XcVapXR+FTFouvMjtkXyNGtEZoQ4/OeYHut6QzkpCqn22A0aPMkglZhWJV0PrsS49PgrkbaXz8
 jgPRG6YOj1bfGOB10EUZFlLGi+qlwmLhX54n0G07BWbKY7lFkk1d++3hi81hq4PaBCjAtqtzW0
 iNsufaSonbmjoKQO0JG1YknsAGUQfmepa22CygyFuon2yZiJFGR/hpy2jr043cxfRierFgaPvL
 8J/+kSzZM7MeGiW8zonYaYJfGKhYD7iLRESSnnmSrP/SHNnFVmK1aVQoLw+CkYtlYS7w7JhPTG
 ccg=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:40 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 14/16] riscv: Add Kendryte KD233 board device tree
Date:   Tue,  9 Feb 2021 21:30:12 +0900
Message-Id: <20210209123014.165928-15-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the device tree canaan_kd233.dts for the Canaan Kendryte KD233
development board.  This device tree enables LEDs, some gpios and
spi/mmc SD card device. The WS2812B RGB LED and the 10 positions rotary
dip switch present on the board are left undefined.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/boot/dts/canaan/canaan_kd233.dts | 172 ++++++++++++++++++++
 1 file changed, 172 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/canaan_kd233.dts

diff --git a/arch/riscv/boot/dts/canaan/canaan_kd233.dts b/arch/riscv/boot/dts/canaan/canaan_kd233.dts
new file mode 100644
index 000000000000..193792868ef1
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/canaan_kd233.dts
@@ -0,0 +1,172 @@
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
+	model = "Kendryte KD233";
+	compatible = "canaan,kendryte-kd233", "canaan,kendryte-k210";
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
+			gpios = <&gpio0 8 GPIO_ACTIVE_LOW>;
+		};
+
+		led1 {
+			gpios = <&gpio0 9 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		key0 {
+			label = "KEY0";
+			linux,code = <BTN_0>;
+			gpios = <&gpio0 10 GPIO_ACTIVE_LOW>;
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
+	spi0_pinctrl: spi0-pinmux {
+		pinmux = <K210_FPIOA(6, K210_PCF_GPIOHS20)>,  /* cs */
+			 <K210_FPIOA(7, K210_PCF_SPI0_SCLK)>, /* wr */
+			 <K210_FPIOA(8, K210_PCF_GPIOHS21)>;  /* dc */
+	};
+
+	dvp_pinctrl: dvp-pinmux {
+		pinmux = <K210_FPIOA(9, K210_PCF_SCCB_SCLK)>,
+			 <K210_FPIOA(10, K210_PCF_SCCB_SDA)>,
+			 <K210_FPIOA(11, K210_PCF_DVP_RST)>,
+			 <K210_FPIOA(12, K210_PCF_DVP_VSYNC)>,
+			 <K210_FPIOA(13, K210_PCF_DVP_PWDN)>,
+			 <K210_FPIOA(14, K210_PCF_DVP_XCLK)>,
+			 <K210_FPIOA(15, K210_PCF_DVP_PCLK)>,
+			 <K210_FPIOA(17, K210_PCF_DVP_HSYNC)>;
+	};
+
+	gpiohs_pinctrl: gpiohs-pinmux {
+		pinmux = <K210_FPIOA(16, K210_PCF_GPIOHS0)>,
+			 <K210_FPIOA(20, K210_PCF_GPIOHS4)>, /* Rot. dip sw line 8 */
+			 <K210_FPIOA(21, K210_PCF_GPIOHS5)>, /* Rot. dip sw line 4 */
+			 <K210_FPIOA(22, K210_PCF_GPIOHS6)>, /* Rot. dip sw line 2 */
+			 <K210_FPIOA(23, K210_PCF_GPIOHS7)>, /* Rot. dip sw line 1 */
+			 <K210_FPIOA(24, K210_PCF_GPIOHS8)>,
+			 <K210_FPIOA(25, K210_PCF_GPIOHS9)>,
+			 <K210_FPIOA(26, K210_PCF_GPIOHS10)>;
+	};
+
+	spi1_pinctrl: spi1-pinmux {
+		pinmux = <K210_FPIOA(29, K210_PCF_SPI1_SCLK)>,
+			 <K210_FPIOA(30, K210_PCF_SPI1_D0)>,
+			 <K210_FPIOA(31, K210_PCF_SPI1_D1)>,
+			 <K210_FPIOA(32, K210_PCF_GPIOHS16)>; /* cs */
+	};
+
+	i2s0_pinctrl: i2s0-pinmux {
+		pinmux = <K210_FPIOA(33, K210_PCF_I2S0_IN_D0)>,
+			 <K210_FPIOA(34, K210_PCF_I2S0_WS)>,
+			 <K210_FPIOA(35, K210_PCF_I2S0_SCLK)>;
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
+&i2s0 {
+	#sound-dai-cells = <1>;
+	pinctrl-0 = <&i2s0_pinctrl>;
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
+		compatible = "ilitek,ili9341";
+		reg = <0>;
+		dc-gpios = <&gpio0 21 GPIO_ACTIVE_HIGH>;
+		spi-max-frequency = <15000000>;
+		status = "disabled";
+	};
+};
+
+&spi1 {
+	pinctrl-0 = <&spi1_pinctrl>;
+	pinctrl-names = "default";
+	num-cs = <1>;
+	cs-gpios = <&gpio0 16 GPIO_ACTIVE_LOW>;
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
-- 
2.29.2

