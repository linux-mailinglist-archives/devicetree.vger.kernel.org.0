Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 221FA298CD3
	for <lists+devicetree@lfdr.de>; Mon, 26 Oct 2020 13:24:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1775048AbgJZMYM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Oct 2020 08:24:12 -0400
Received: from mail-ej1-f66.google.com ([209.85.218.66]:34533 "EHLO
        mail-ej1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1775049AbgJZMYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Oct 2020 08:24:11 -0400
Received: by mail-ej1-f66.google.com with SMTP id gs25so13174301ejb.1
        for <devicetree@vger.kernel.org>; Mon, 26 Oct 2020 05:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eGby+2zJZQt+xl1Ks+/fOh3kPBu1tezKXvK1QRyMfQU=;
        b=arBhpAtkyaHsOjcwLgR2QA3gEoCULDZausMIXPC4PCxeDGo6bLHwWdszLCdzSXkc+7
         jcjqNImXVui56DwPfXLjehl3MbIuKxNm8vHJSSJQWYom7GCz9So08w+ctrmKbq34h5nv
         xBQ1dAp49FUhI28ixIEKtfzNECSm0xhSCFj0Bc9+4buYn3uZbcwlbjNVbedj43EwXYsS
         UNgGdDdXeQem+eReD6OTMWOzzg9xuWnBsu/ZUK3W+zcxVjcvooyXsuzW4o8/C4pkhz6M
         SnjUCqYR4vrOhXXk24OupfHkxYw1oPJGiPswY5ZqicWz6kdI2vtkbpOjb+4zlPUAf0v/
         y5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eGby+2zJZQt+xl1Ks+/fOh3kPBu1tezKXvK1QRyMfQU=;
        b=if1uDKxkCfPlfClnJEf/uRqxGiPkf9i8UUwy8FBEhScvH8d3xZCWTijePFH7POk6V3
         S/vNQRQs/im2zs9t+E9Y9ROeD0CpKH8G+PNi8a7wFDCcTIbWSdW7CNMrTjKNRPA840fW
         nbooX688M6iGtfZw/VyFclAXG3gSi886eL4bYyu2w6JJmTj4SUq4CLfCR+99SGKFDevy
         zz1n2hJPnWmVANRoP/UA8YDE3bIPkRFVmmS8bGBd7jCRz7Z89d/7OZfpbfA4qrgMq0jl
         /9Mz1QwlUkP+hEqC/EMT0Gfx3JeXzcBFPLK2C9NL06KPQmJfD8hhmN/POVDaBSatJZxU
         d8vQ==
X-Gm-Message-State: AOAM533pahhNfgf1uw5xz5zfh7121KpGoZ0NaBbc5UWbUu4zf2nbKUFc
        QYUdeQGK5hyDpNSTEGHFvR3cF1wrIVCYKzv+DnaDlrVm76RdMkmnd0ntDybzaksGGO553PIsJHI
        O5QISosNKLQII51KdtpjRL4WtrEpCvXYMLnF1xorMElJJao56XPYuYTy2EjT++wP39pscMXqLXq
        KlhhM=
X-Google-Smtp-Source: ABdhPJwPMz4Mi9A5FZ+cDa3fdsZuXdu1YoG+/C5EoFnka+m4H3ERlmyzvNuIAF8+2HqNlUuSci8iBQ==
X-Received: by 2002:a17:906:b055:: with SMTP id bj21mr15136065ejb.334.1603715047367;
        Mon, 26 Oct 2020 05:24:07 -0700 (PDT)
Received: from localhost.localdomain (cm-2252.cable.globalnet.hr. [213.149.62.253])
        by smtp.gmail.com with ESMTPSA id r11sm5058094edi.91.2020.10.26.05.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 05:24:06 -0700 (PDT)
From:   Vladimir Vid <vladimir.vid@sartura.hr>
To:     devicetree@vger.kernel.org
Cc:     pali@kernel.org, a.heider@gmail.com, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, tmn505@gmail.com,
        sebastian.hesselbarth@gmail.com, gregory.clement@bootlin.com,
        andrew@lunn.ch, jason@lakedaemon.net, robh+dt@kernel.org,
        Vladimir Vid <vladimir.vid@sartura.hr>
Subject: [PATCH v4] arm64: dts: marvell: add DT for ESPRESSObin-Ultra
Date:   Mon, 26 Oct 2020 13:41:32 +0100
Message-Id: <20201026124131.84086-1-vladimir.vid@sartura.hr>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds support for ESPRESSObin-Ultra from Globalscale.

Specifications are similar to the base ESPRESSObin board, with main
difference being being WAN port with PoE capability and 2 additional ethernet ports.

Full specifications:

1x Marvell 64 bit Dual Core ARM A53 Armada 3700 SOC clocked up to 1.2Ghz
1x Topaz 6341 Networking Switch
1GB DDR4
8GB eMMC
1x WAN with 30W POE
4x Gb LAN
1x RTC Clock and battery
1x DC Jack
1x USB 3.0 Type A
1x USB 2.0 Type A
1x SIM NanoSIM card Slot
1x Power Button
4x LED
1x Reset button
1x microUSB for UART
1x M.2 2280 slot for memory
1x 2x2 802.11ac Wi-Fi
1x MiniPCIE slot for Wi-Fi (PCIe interface)

Signed-off-by: Vladimir Vid <vladimir.vid@sartura.hr>
---

v4:
-fix aliases order

---
 arch/arm64/boot/dts/marvell/Makefile          |   1 +
 .../marvell/armada-3720-espressobin-ultra.dts | 165 ++++++++++++++++++
 2 files changed, 166 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts

diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
index 3e5f2e7a040c..094f451fdd1d 100644
--- a/arch/arm64/boot/dts/marvell/Makefile
+++ b/arch/arm64/boot/dts/marvell/Makefile
@@ -3,6 +3,7 @@
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-db.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-emmc.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-ultra.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-v7.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-v7-emmc.dtb
 dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-turris-mox.dtb
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
new file mode 100644
index 000000000000..14ae74415360
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -0,0 +1,165 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for ESPRESSObin-Ultra board.
+ * Copyright (C) 2019 Globalscale technologies, Inc.
+ *
+ * Jason Hung <jhung@globalscaletechnologies.com>
+ */
+
+/dts-v1/;
+
+#include "armada-3720-espressobin.dtsi"
+
+/ {
+	model = "Globalscale Marvell ESPRESSOBin Ultra Board";
+	compatible = "globalscale,espressobin-ultra", "marvell,armada3720",
+		     "marvell,armada3710";
+
+	aliases {
+		/* ethernet1 is WAN port */
+		ethernet1 = &switch0port5;
+		ethernet2 = &switch0port1;
+		ethernet3 = &switch0port2;
+		ethernet4 = &switch0port3;
+		ethernet5 = &switch0port4;
+	};
+
+	reg_usb3_vbus: usb3-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb3-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpionb 19 GPIO_ACTIVE_HIGH>;
+	};
+
+	usb3_phy: usb3-phy {
+		compatible = "usb-nop-xceiv";
+		vcc-supply = <&reg_usb3_vbus>;
+	};
+
+	gpio-leds {
+		pinctrl-names = "default";
+		compatible = "gpio-leds";
+		/* No assigned functions to the LEDs by default */
+		led1 {
+			label = "ebin-ultra:blue:led1";
+			gpios = <&gpionb 11 GPIO_ACTIVE_LOW>;
+		};
+		led2 {
+			label = "ebin-ultra:green:led2";
+			gpios = <&gpionb 12 GPIO_ACTIVE_LOW>;
+		};
+		led3 {
+			label = "ebin-ultra:red:led3";
+			gpios = <&gpionb 13 GPIO_ACTIVE_LOW>;
+		};
+		led4 {
+			label = "ebin-ultra:yellow:led4";
+			gpios = <&gpionb 14 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&sdhci0 {
+	status = "okay";
+};
+
+&sdhci1 {
+	status = "disabled";
+};
+
+&spi0 {
+	flash@0 {
+		spi-max-frequency = <108000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "firmware";
+				reg = <0x0 0x3e0000>;
+			};
+			partition@3e0000 {
+				label = "hw-info";
+				reg = <0x3e0000 0x10000>;
+				read-only;
+			};
+			partition@3f0000 {
+				label = "u-boot-env";
+				reg = <0x3f0000 0x10000>;
+			};
+		};
+	};
+};
+
+&i2c0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1_pins>;
+
+	clock-frequency = <100000>;
+
+	rtc@51 {
+		compatible = "nxp,pcf8563";
+		reg = <0x51>;
+	};
+};
+
+&usb3 {
+	usb-phy = <&usb3_phy>;
+	status = "disabled";
+};
+
+&mdio {
+	extphy: ethernet-phy@0 {
+		reg = <1>;
+	};
+};
+
+&switch0 {
+	reg = <3>;
+
+	ports {
+		switch0port1: port@1 {
+			reg = <1>;
+			label = "lan0";
+			phy-handle = <&switch0phy0>;
+		};
+
+		switch0port2: port@2 {
+			reg = <2>;
+			label = "lan1";
+			phy-handle = <&switch0phy1>;
+		};
+
+		switch0port3: port@3 {
+			reg = <3>;
+			label = "lan2";
+			phy-handle = <&switch0phy2>;
+		};
+
+		switch0port4: port@4 {
+			reg = <4>;
+			label = "lan3";
+			phy-handle = <&switch0phy3>;
+		};
+
+		switch0port5: port@5 {
+			reg = <5>;
+			label = "wan";
+			phy-handle = <&extphy>;
+			phy-mode = "sgmii";
+		};
+	};
+
+	mdio {
+		switch0phy3: switch0phy3@14 {
+			reg = <0x14>;
+		};
+	};
+};
-- 
2.27.0

