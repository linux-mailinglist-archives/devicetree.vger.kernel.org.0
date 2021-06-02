Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE5D93992CD
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 20:48:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbhFBSty (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 14:49:54 -0400
Received: from egress-ip4b.ess.de.barracuda.com ([18.185.115.208]:37770 "EHLO
        egress-ip4b.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229468AbhFBStx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 14:49:53 -0400
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69]) by mx-outbound42-157.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 02 Jun 2021 18:48:08 +0000
Received: by mail-oo1-f69.google.com with SMTP id u3-20020a4ad0c30000b02901fef88716cfso2014277oor.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 11:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tWGWYcEs3a0drlszOD9YSueln3lFfeY4GI5WRJlmgkc=;
        b=YwMOFbVXA+3jTGxgkpSdfbwl6004Q7DnPheaH6R3DbBiJvPMYdFtJNtfQ22vLacaBZ
         TJb75/L8/a+WGQ9zI+ixdul361KiK2mrc9LjnNcywul1aCOr+K+65n4qX24Sm/HBgmHM
         usUXNDxN5tjBL42PmFboOQO+ZyQbIS/vB1yV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tWGWYcEs3a0drlszOD9YSueln3lFfeY4GI5WRJlmgkc=;
        b=kAponwvXZa1+HCuJrAK/1WZ8vWyCkfDuZ27UdnBGXXt7forxGvdQzXdJX+iRhEsYON
         KK8Ksd/OW+5edNfloQiu92XOxDncf/b6gz+9VlpBHP3OMv5tQzmiKxL+I85hojVY1kV4
         wniZsl3Fy/GSh3GWMxJEqUWI/1Nvtw6CgzRNILPm/4CJlV8YGM51NI6CFndF9718Zlx+
         JhxXtrO5YbzLfWSvao1unHSIunZfHpKAxjrr1XXKAvzZ5lDIx+5htt33Wi1Qj47aRf9j
         n5Lw0HDblH6WHQhIWldnOzg0asDHKbs442/QDjD/wTIgEzaLhJcvqSCp2SO3SQVd94A8
         Lazg==
X-Gm-Message-State: AOAM53025ZjMNbZYPpOf+ASDkluHAtL4FQ1QkTunTK1RPSeucIAPxTVL
        8EzaFCmv6TII8aq/OnJorrZ5ouQMY8Eahhar2nWjRII+YEWreTZ9xIgGehLS9tUERuXqpQr7O54
        rJLlugbWqqrbZ5Y3CIM+Ux1fAC+ODqak3tb49uZn4xE1hAI3oJ6YTGE9nNw==
X-Received: by 2002:a17:90b:4c0d:: with SMTP id na13mr31848805pjb.8.1622658177219;
        Wed, 02 Jun 2021 11:22:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwqzLIsGpPxy+QX610Ep2giopDrvSIP4TJxENFJPcoXA3kzZ1NWAxzPxsP65H8ttsqQnPdZcA==
X-Received: by 2002:a17:90b:4c0d:: with SMTP id na13mr31848780pjb.8.1622658176883;
        Wed, 02 Jun 2021 11:22:56 -0700 (PDT)
Received: from localhost.localdomain ([49.207.197.28])
        by smtp.gmail.com with ESMTPSA id 14sm290904pfj.25.2021.06.02.11.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 11:22:56 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: [2/2] arm64: dts: ti: Add support for J721E EAIK
Date:   Wed,  2 Jun 2021 23:52:37 +0530
Message-Id: <20210602182237.12632-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602182237.12632-1-sinthu.raja@ti.com>
References: <20210602182237.12632-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1622659688-310909-5427-60907-1
X-BESS-VER: 2019.1_20210527.1616
X-BESS-Apparent-Source-IP: 209.85.161.69
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.232668 [from 
        cloudscan13-100.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
for TI’s J721E SoC. TI’s J721E SoC comprises of dual core A72, high
performance vision accelerators, video codec accelerators, latest C71x
and C66x DSP, high bandwidth real-time IPs for capture and display, GPU,
dedicated safety island and security accelerators. The SoC is power
optimized to provide best in class performance for perception, sensor
fusion, localization, path planning tasks in robotics, industrial and
automotive applications.

J721E EAIK supports the following interfaces:
* 4 GB LPDDR4 RAM
* x1 Gigabit Ethernet interface
* x1 USB 3.0 Type-C port
* x3 USB 3.0 Type-A ports
* x1 UHS-1 capable µSD card slot
* x1 PCIe M.2 E Key with x1 USB2.0, x1 MCASP, x1 MMC, x1 UART
* x1 PCIe M.2 M Key
* 512 Mbit OSPI flash
* x4 UART through UART-USB bridge
* x4 CAN-FD interface
* x1 DP interface
* x1 HDMI interface
* x2 CSI2 Camera interface (RPi and TI Camera connector)
* 40-pin Raspberry Pi compatible GPIO header
* Compact TI 20-Pin connector for JTAG debug
* Interface for remote automation. Includes:
   * power measurement and reset control
   * boot mode change

Add basic support for J721E-EAIK.

Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
 arch/arm64/boot/dts/ti/Makefile          |   2 +
 arch/arm64/boot/dts/ti/k3-j721e-eaik.dts | 343 +++++++++++++++++++++++
 2 files changed, 345 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-eaik.dts

diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
index d56c742f5a10..00eb2077616e 100644
--- a/arch/arm64/boot/dts/ti/Makefile
+++ b/arch/arm64/boot/dts/ti/Makefile
@@ -12,6 +12,8 @@ dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced.dtb
 
 dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
 
+dtb-$(CONFIG_ARCH_K3) += k3-j721e-eaik.dtb
+
 dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
 
 dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-eaik.dts b/arch/arm64/boot/dts/ti/k3-j721e-eaik.dts
new file mode 100644
index 000000000000..66a9fe19df4f
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j721e-eaik.dts
@@ -0,0 +1,343 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
+ */
+
+/dts-v1/;
+
+#include "k3-j721e.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/net/ti-dp83867.h>
+
+/ {
+	compatible = "ti,j721e-eaik", "ti,j721e";
+	model = "Texas Instruments J721E EAIK";
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* 4G RAM */
+		reg = <0x00000000 0x80000000 0x00000000 0x80000000>,
+		      <0x00000008 0x80000000 0x00000000 0x80000000>;
+	};
+
+	reserved_memory: reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure_ddr: optee@9e800000 {
+			reg = <0x00 0x9e800000 0x00 0x01800000>;
+			alignment = <0x1000>;
+			no-map;
+		};
+	};
+
+	vusb_main: fixedregulator-vusb-main5v0 {
+		/* USB MAIN INPUT 5V DC */
+		compatible = "regulator-fixed";
+		regulator-name = "vusb-main5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vsys_3v3: fixedregulator-vsys3v3 {
+		/* Output of LM5141 */
+		compatible = "regulator-fixed";
+		regulator-name = "vsys_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vusb_main>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vdd_mmc1: fixedregulator-sd {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vdd_mmc1_en_pins_default>;
+		regulator-name = "vdd_mmc1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		enable-active-high;
+		vin-supply = <&vsys_3v3>;
+		gpio = <&wkup_gpio0 8 GPIO_ACTIVE_HIGH>;
+	};
+
+	vdd_sd_dv_alt: gpio-regulator-tps659411 {
+		compatible = "regulator-gpio";
+		pinctrl-names = "default";
+		pinctrl-0 = <&vdd_sd_dv_alt_pins_default>;
+		regulator-name = "tps659411";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		vin-supply = <&vsys_3v3>;
+		gpios = <&wkup_gpio0 9 GPIO_ACTIVE_HIGH>;
+		states = <1800000 0x0>,
+			 <3300000 0x1>;
+	};
+};
+
+&main_pmx0 {
+	main_mmc1_pins_default: main-mmc1-pins-default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x254, PIN_INPUT, 0) /* (R29) MMC1_CMD */
+			J721E_IOPAD(0x250, PIN_INPUT, 0) /* (P25) MMC1_CLK */
+			J721E_IOPAD(0x2ac, PIN_INPUT, 0) /* (P25) MMC1_CLKLB */
+			J721E_IOPAD(0x24c, PIN_INPUT, 0) /* (R24) MMC1_DAT0 */
+			J721E_IOPAD(0x248, PIN_INPUT, 0) /* (P24) MMC1_DAT1 */
+			J721E_IOPAD(0x244, PIN_INPUT, 0) /* (R25) MMC1_DAT2 */
+			J721E_IOPAD(0x240, PIN_INPUT, 0) /* (R26) MMC1_DAT3 */
+			J721E_IOPAD(0x258, PIN_INPUT, 0) /* (P23) MMC1_SDCD */
+		>;
+	};
+
+	main_uart0_pins_default: main-uart0-pins-default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x1f0, PIN_INPUT, 0) /* (AC2) UART0_CTSn */
+			J721E_IOPAD(0x1f4, PIN_OUTPUT, 0) /* (AB1) UART0_RTSn */
+			J721E_IOPAD(0x1e8, PIN_INPUT, 0) /* (AB2) UART0_RXD */
+			J721E_IOPAD(0x1ec, PIN_OUTPUT, 0) /* (AB3) UART0_TXD */
+		>;
+	};
+
+	main_i2c0_pins_default: main-i2c0-pins-default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x220, PIN_INPUT_PULLUP, 0) /* (AC5) I2C0_SCL */
+			J721E_IOPAD(0x224, PIN_INPUT_PULLUP, 0) /* (AA5) I2C0_SDA */
+		>;
+	};
+
+	main_i2c1_pins_default: main-i2c1-pins-default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x228, PIN_INPUT_PULLUP, 0) /* (Y6) I2C1_SCL */
+			J721E_IOPAD(0x22c, PIN_INPUT_PULLUP, 0) /* (AA6) I2C1_SDA */
+		>;
+	};
+
+	main_i2c3_pins_default: main-i2c3-pins-default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x270, PIN_INPUT_PULLUP, 4) /* (T26) MMC2_CLK.I2C3_SCL */
+			J721E_IOPAD(0x274, PIN_INPUT_PULLUP, 4) /* (T25) MMC2_CMD.I2C3_SDA */
+		>;
+	};
+};
+
+&wkup_pmx0 {
+	mcu_fss0_ospi0_pins_default: mcu-fss0-ospi0-pins-default {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0x0, PIN_OUTPUT, 0) /* (E20) MCU_OSPI0_CLK */
+			J721E_WKUP_IOPAD(0x2c, PIN_OUTPUT, 0) /* (F19) MCU_OSPI0_CSn0 */
+			J721E_WKUP_IOPAD(0xc, PIN_INPUT, 0) /* (D20) MCU_OSPI0_D0 */
+			J721E_WKUP_IOPAD(0x10, PIN_INPUT, 0) /* (G19) MCU_OSPI0_D1 */
+			J721E_WKUP_IOPAD(0x14, PIN_INPUT, 0) /* (G20) MCU_OSPI0_D2 */
+			J721E_WKUP_IOPAD(0x18, PIN_INPUT, 0) /* (F20) MCU_OSPI0_D3 */
+			J721E_WKUP_IOPAD(0x1c, PIN_INPUT, 0) /* (F21) MCU_OSPI0_D4 */
+			J721E_WKUP_IOPAD(0x20, PIN_INPUT, 0) /* (E21) MCU_OSPI0_D5 */
+			J721E_WKUP_IOPAD(0x24, PIN_INPUT, 0) /* (B22) MCU_OSPI0_D6 */
+			J721E_WKUP_IOPAD(0x28, PIN_INPUT, 0) /* (G21) MCU_OSPI0_D7 */
+			J721E_WKUP_IOPAD(0x8, PIN_INPUT, 0) /* (D21) MCU_OSPI0_DQS */
+		>;
+	};
+
+	vdd_mmc1_en_pins_default: vdd-mmc1-en-pins-default {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0xd0, PIN_OUTPUT, 7) /* (G27) WKUP_GPIO0_8 */
+		>;
+	};
+
+	vdd_sd_dv_alt_pins_default: vdd-sd-dv-alt-pins-default {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0xd4, PIN_OUTPUT, 7) /* (G26) WKUP_GPIO0_9 */
+		>;
+	};
+
+	wkup_i2c0_pins_default: wkup-i2c0-pins-default {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0xf8, PIN_INPUT_PULLUP, 0) /* (J25) WKUP_I2C0_SCL */
+			J721E_WKUP_IOPAD(0xfc, PIN_INPUT_PULLUP, 0) /* (H24) WKUP_I2C0_SDA */
+		>;
+	};
+};
+
+&wkup_uart0 {
+	/* Wakeup UART is used by System firmware */
+	status = "reserved";
+};
+
+&main_uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_uart0_pins_default>;
+	/* Shared with ATF on this platform */
+	power-domains = <&k3_pds 146 TI_SCI_PD_SHARED>;
+};
+
+&main_uart2 {
+	/* Brought out on RPi header */
+	status = "disabled";
+};
+
+&main_uart3 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart5 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart6 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart7 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart8 {
+	/* UART not brought out */
+	status = "disabled";
+};
+
+&main_uart9 {
+	/* Brought out on M.2 E Key */
+	status = "disabled";
+};
+
+&main_sdhci0 {
+	/* Unused */
+	status = "disabled";
+};
+
+&main_sdhci1 {
+	/* SD Card */
+	vmmc-supply = <&vdd_mmc1>;
+	vqmmc-supply = <&vdd_sd_dv_alt>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_mmc1_pins_default>;
+	ti,driver-strength-ohm = <50>;
+	disable-wp;
+};
+
+&main_sdhci2 {
+	/* Unused */
+	status = "disabled";
+};
+
+&ospi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_fss0_ospi0_pins_default>;
+
+	flash@0{
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-tx-bus-width = <8>;
+		spi-rx-bus-width = <8>;
+		spi-max-frequency = <25000000>;
+		cdns,tshsl-ns = <60>;
+		cdns,tsd2d-ns = <60>;
+		cdns,tchsh-ns = <60>;
+		cdns,tslch-ns = <60>;
+		cdns,read-delay = <4>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		partition@3fc0000 {
+			label = "ospi.phypattern";
+			reg = <0x3fc0000 0x40000>;
+			u-boot,dm-spl;
+		};
+	};
+};
+
+&ospi1 {
+	/* Unused */
+	status = "disabled";
+};
+
+&main_i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c0_pins_default>;
+	clock-frequency = <400000>;
+
+	i2c-switch@71 {
+		compatible = "nxp,pca9543";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x71>;
+
+		/* PCIe1 M.2 M Key I2C */
+		pcie1_m2_i2c: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		/* PCIe0 M.2 E Key I2C */
+		pcie0_m2_i2c: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+	};
+};
+
+&main_i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c1_pins_default>;
+	clock-frequency = <400000>;
+};
+
+&main_i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&main_i2c3_pins_default>;
+	clock-frequency = <400000>;
+
+	i2c-switch@70 {
+		compatible = "nxp,pca9543";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x70>;
+
+		/* CAM0 I2C */
+		ti_cam0_i2c: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+		};
+
+		/* CAM1 I2C */
+		rpi_cam0_i2c: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+		};
+	};
+};
+
+&main_i2c4 {
+	/* Unused */
+	status = "disabled";
+};
+
+&main_i2c5 {
+	/* Brought out on RPi Header */
+	status = "disabled";
+};
+
+&main_i2c6 {
+	/* Unused */
+	status = "disabled";
+};
+
-- 
2.31.1

