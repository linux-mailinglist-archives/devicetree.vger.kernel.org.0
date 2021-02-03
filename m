Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBE7830DA8D
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 14:04:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231451AbhBCNES (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 08:04:18 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14157 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229500AbhBCNEJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 08:04:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612358105; x=1643894105;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=erQkoUoJHQkUbVUUwo09FB5YSDo2S5ieIxnSa2c2jvQ=;
  b=FR+0+RrsUaNRoctfu73DFQTpk+COC513a9KeVideAhdN6tLz/gI5RcuC
   dy2u/+KnE6FYGUWkBlNhvrUWhiNoy71ae/hozq3A9xSwjYwq4s05Hj63N
   2sVxoYjMUVlvzOBJyYnIZl6y8dMykR3WBuCC3x15dZ8EAJX8UitQjJKgs
   kbiUCRwHDd59eAZfrNsWmjDu+7TTOzF5Z7xmHAcU17Yt4tSTG1DSLibNO
   gDewXg9UqfpsgxNu+X8As/91smovGwUKxwRfPUULKTQD/rimXqhiXBANR
   Vlo2UdfL4U0tpL6C/MlCmuFKEWkZgjBWQKWILB7LDmcabkuLhajn10lac
   Q==;
IronPort-SDR: LFq6MAzO1U6rnyxSyXjRPjLAzTsWrrEd2YwGNbpbPZSt14Yo5dSnSISfeQ9RA3m+vUkEAqnUvS
 dCyC3NwXP8F/EMjaXHRBPZt3MmL9oJ3Q5njcIzNn6NTAR0fDHrN+Y5CtNdvd/ZwdgNRbR9IQwD
 0AMdtV3zC1+50D3jAnmaHEvYbCB9q1cbolyU5cuyi/5Crfd48sZTLbM3MH+45lVDG41urkg768
 VwKt5lYWi5pmg9GK1cCE9Rr7YpLQBsJD4Xa9W0n6cRoogJDl7et4jYhP04gBq/KeUcpiIcE2G9
 mgc=
X-IronPort-AV: E=Sophos;i="5.79,398,1602518400"; 
   d="scan'208";a="263106965"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 21:08:58 +0800
IronPort-SDR: sJ8wbIeTgubOmahi2EH1T3f2XfNGCi66ERwJ2uZpOSucea3JW2LwpW+2PmRaKbmhuGztk2EtnJ
 qTlZnDzYqcoyx8FraRBeZlBrdUvEMAj/m2yEzhtm46wgHecTX0PNQMBGsocumzhkU1Wzl5hl4l
 DT4gzp13ae0KRIoqvOpU6SKwqtwcfLmrFIgMgH7vfz7e0ZHqrFxBexFM3XJYuUBWRG3rbP1wM2
 8JMKkSs+uRpSjP8Fi8oJLu1pBAAQ86IvaqjIzVAyTk4A8yXhOuiQOnxoYWx0c2TVo7eDvCHeum
 lG4tlSfIybYU0jFUY5Bvz9DE
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 04:44:04 -0800
IronPort-SDR: aLRO7uKyGFW3xKSrg9Xlo7aDrQWNjYGCSxGvhuBsMokTTtAhfL4NIVEnH+4oHgopgSr9x73tEq
 PpNbcJmHu1qppQh1b9kzy/HtX2SHa9qYyOgW1gZ8BKoMlxsSBQ7nK7Er0tTYL3LsyFUptWAZax
 IpE0NkOuS3fSptLgB6EFIa1SGTNegaE7Ow8Upao0v2TzEwWOoSLYAT8RA1o8q7y1Uv4ZCTECVp
 mEzgyzNuRy4xgkESPVpTkPBfMrXG9B6oATQVRhNadt0tKIiLv2B+L1Ke6GAQgwB3ImAU0PLl4b
 lQY=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 03 Feb 2021 05:00:01 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v15 14/16] riscv: Add Kendryte KD233 board device tree
Date:   Wed,  3 Feb 2021 21:59:11 +0900
Message-Id: <20210203125913.390949-15-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203125913.390949-1-damien.lemoal@wdc.com>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
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
 arch/riscv/boot/dts/canaan/canaan_kd233.dts | 177 ++++++++++++++++++++
 1 file changed, 177 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/canaan_kd233.dts

diff --git a/arch/riscv/boot/dts/canaan/canaan_kd233.dts b/arch/riscv/boot/dts/canaan/canaan_kd233.dts
new file mode 100644
index 000000000000..d9af66144938
--- /dev/null
+++ b/arch/riscv/boot/dts/canaan/canaan_kd233.dts
@@ -0,0 +1,177 @@
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

