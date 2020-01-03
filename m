Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1364C12FA3D
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2020 17:22:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727999AbgACQWm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jan 2020 11:22:42 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:33689 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727998AbgACQWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jan 2020 11:22:42 -0500
Received: by mail-wm1-f66.google.com with SMTP id d139so7265173wmd.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2020 08:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FQLJ9OizfUxRuG8vC2z3UsjEtNMOshKf1UlN4PKyJ3k=;
        b=Dq1mI+Tqu1zI5p1qwG/EkMd4vPLLy2egAaJJZpg+7IF15vDW2QPRbvKCrpZ2GLppDG
         pXxots67BKpMy3irx8820UXd+bUre07jrVYrTEs1Kh/0KpePosI2OflZyUhlhU27Hos5
         vpv/x9cOER8qPtakaP6meZo0xR1ynUdbo5sHlaFqQAZsDjfNbJ/bzKZPCqtqdzSssYte
         zGHmzlJJl5ZESIdt8/1BqNCyBxsNFOMdTX0Wg0/KW20N7OBWihtRqGnShXTtsc+0/2FY
         FYyfTGIUQYy5ipr/GkITwyiGeyRilD8IRt4VxR15piaUjuzAMsyb2JAm/pTqJHCf3214
         7W/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FQLJ9OizfUxRuG8vC2z3UsjEtNMOshKf1UlN4PKyJ3k=;
        b=OY7cEzvTjQBCxhMSvPu0QBasTSJqQLqZ/XVrWgVpIlXSn5sKgsHy0VC2Xbs95YEFiL
         Z/16uNxEBqR72DZzSMVPlpg9aaDfgDtGHTsnGSP7VkqwbFdbuF3Nc5LZG/XnBCocJFdi
         CcT9jBPTTLD4hdVHfD4kAWMOEDK3QfqVgxtJ+LHnN/q/nbvO+lDkwwLr61GDgwTm0EK7
         2tBZXD4mdFfmGxDRHkrBeEeJKUxCJDfwoKh6QX29ISImpuS2OiylvCR+kaSKL/8ZZmqW
         vS3+l7EN7qq3JwXZ5hpVD05MCBHB1Z4ttrOh4EnIU1WMj/HhztziC+ib20M47wFObbS/
         A2Rg==
X-Gm-Message-State: APjAAAU8txNJuF/sbtCpCYEM8ftAW3z4wD2t9uPCQUWrb+hh17zkJ8by
        +tuCNaWlm2g97Ws7mhjy2NE87A==
X-Google-Smtp-Source: APXvYqyi2z7Mcpv9wz55oR+FKwiiLHws6D5ifHjMikY3w8y7I4nSDlqDBPqP/ezl2E+sT9s1gNxWfA==
X-Received: by 2002:a1c:6707:: with SMTP id b7mr21272293wmc.54.1578068560676;
        Fri, 03 Jan 2020 08:22:40 -0800 (PST)
Received: from radium.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id b16sm62280577wrj.23.2020.01.03.08.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2020 08:22:40 -0800 (PST)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH v2 2/2] arm64: dts: mediatek: add pumpkin board dts
Date:   Fri,  3 Jan 2020 17:22:34 +0100
Message-Id: <20200103162234.103094-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.25.0.rc0
In-Reply-To: <20200103162234.103094-1-fparent@baylibre.com>
References: <20200103162234.103094-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pumpkin board is  made by Gossamer Engineering and is using
a MediaTek SoC. The board currently comes in two available version:
MT8516 SoC and MT8167 SoC.
The board provides the following IOs: eMMC, NAND, SD card, USB type-A,
Ethernet, Wi-Fi, Bluetooth, Audio (jack out, 2 PDM port, 1 analog in),
serial over USB, and an expansion header.

Additionally there is a HDMI port, DSI port, and camera port only
on the MT8167 version of the board.

The board can be powered by battery and/or via a USB Type-C port and
is using a PMIC MT6392.

The eMMC and NAND are sharing pins and cannot be used together.

This commit is adding a basic DTS for the MT8516 flavor.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---

V2:
	* Remove dependency on PMIC MT6392 to make it easier to merge the DTS
	until the PMIC code is merged.
	* Rename a bunch of label to make them more straighforward
	* Use names for keycode instead of magic values
	* Add chosen for serial port

---
 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 .../boot/dts/mediatek/mt8516-pumpkin.dts      |  19 ++
 .../boot/dts/mediatek/pumpkin-common.dtsi     | 188 ++++++++++++++++++
 3 files changed, 208 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 458bbc422a94..2f8967cb8717 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -8,3 +8,4 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8516-pumpkin.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts b/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
new file mode 100644
index 000000000000..d8e283245fbe
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8516-pumpkin.dts
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 BayLibre, SAS.
+ * Author: Fabien Parent <fparent@baylibre.com>
+ */
+
+/dts-v1/;
+
+#include "pumpkin-common.dtsi"
+
+/ {
+	model = "Pumpkin MT8516";
+	compatible = "pumpkin,mt8516", "mediatek,mt8516";
+
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0 0x40000000 0 0x40000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
new file mode 100644
index 000000000000..d143cf33cfff
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/pumpkin-common.dtsi
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 BayLibre, SAS.
+ * Author: Fabien Parent <fparent@baylibre.com>
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/linux-event-codes.h>
+
+#include "mt8516.dtsi"
+
+/ {
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:921600n8";
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		input-name = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&gpio_keys_pins>;
+
+		volume-up {
+			gpios = <&pio 42 GPIO_ACTIVE_LOW>;
+			label = "volume_up";
+			linux,code = <KEY_VOLUMEUP>;
+			wakeup-source;
+			debounce-interval = <15>;
+		};
+
+		volume-down {
+			gpios = <&pio 43 GPIO_ACTIVE_LOW>;
+			label = "volume_down";
+			linux,code = <KEY_VOLUMEDOWN>;
+			wakeup-source;
+			debounce-interval = <15>;
+		};
+	};
+};
+
+&i2c0 {
+	clock-div = <2>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c0_pins>;
+	status = "okay";
+
+	tca6416: gpio@20 {
+		compatible = "ti,tca6416";
+		reg = <0x20>;
+		rst-gpio = <&pio 65 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&tca6416_pins>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
+		eint20_mux_sel0 {
+			gpio-hog;
+			gpios = <0 0>;
+			input;
+			line-name = "eint20_mux_sel0";
+		};
+
+		expcon_mux_sel1 {
+			gpio-hog;
+			gpios = <1 0>;
+			input;
+			line-name = "expcon_mux_sel1";
+		};
+
+		mrg_di_mux_sel2 {
+			gpio-hog;
+			gpios = <2 0>;
+			input;
+			line-name = "mrg_di_mux_sel2";
+		};
+
+		sd_sdio_mux_sel3 {
+			gpio-hog;
+			gpios = <3 0>;
+			input;
+			line-name = "sd_sdio_mux_sel3";
+		};
+
+		sd_sdio_mux_ctrl7 {
+			gpio-hog;
+			gpios = <7 0>;
+			output-low;
+			line-name = "sd_sdio_mux_ctrl7";
+		};
+
+		hw_id0 {
+			gpio-hog;
+			gpios = <8 0>;
+			input;
+			line-name = "hw_id0";
+		};
+
+		hw_id1 {
+			gpio-hog;
+			gpios = <9 0>;
+			input;
+			line-name = "hw_id1";
+		};
+
+		hw_id2 {
+			gpio-hog;
+			gpios = <10 0>;
+			input;
+			line-name = "hw_id2";
+		};
+
+		fg_int_n {
+			gpio-hog;
+			gpios = <11 0>;
+			input;
+			line-name = "fg_int_n";
+		};
+
+		usba_pwr_en {
+			gpio-hog;
+			gpios = <12 0>;
+			output-high;
+			line-name = "usba_pwr_en";
+		};
+
+		wifi_3v3_pg {
+			gpio-hog;
+			gpios = <13 0>;
+			input;
+			line-name = "wifi_3v3_pg";
+		};
+
+		cam_rst {
+			gpio-hog;
+			gpios = <14 0>;
+			output-low;
+			line-name = "cam_rst";
+		};
+
+		cam_pwdn {
+			gpio-hog;
+			gpios = <15 0>;
+			output-low;
+			line-name = "cam_pwdn";
+		};
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&pio {
+	gpio_keys_pins: gpiokeys{
+		pins_gpio {
+			pinmux = <MT8516_PIN_42_KPCOL0__FUNC_GPIO42>,
+				 <MT8516_PIN_43_KPCOL1__FUNC_GPIO43>;
+			bias-pull-up;
+			input-enable;
+		};
+	};
+
+	i2c0_pins: i2c0 {
+		pins_i2c {
+			pinmux = <MT8516_PIN_58_SDA0__FUNC_SDA0_0>,
+				 <MT8516_PIN_59_SCL0__FUNC_SCL0_0>;
+			bias-disable;
+		};
+	};
+
+	tca6416_pins: tca6416 {
+		pin_gpio_mux_rst_n {
+			pinmux = <MT8516_PIN_65_UTXD1__FUNC_GPIO65>;
+			output-high;
+		};
+
+		pin_gpio_mux_int_n {
+			pinmux = <MT8516_PIN_64_URXD1__FUNC_GPIO64>;
+			input-enable;
+			bias-pull-up;
+		};
+	};
+};
-- 
2.25.0.rc0

