Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A4002FEF29
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 16:42:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732702AbhAUPjF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:39:05 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:40540 "EHLO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733170AbhAUPiE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 10:38:04 -0500
Received: from fllv0034.itg.ti.com ([10.64.40.246])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10LFaMoP119840;
        Thu, 21 Jan 2021 09:36:22 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611243382;
        bh=RFhLS87K37qRcl7I2ZjAnjhZCQLkkZFTC0OUhBPzWbo=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=dXQVMvJJ+4KcKR2z4191B+ziNem3Ur+ZTLE3zDfptOi2XV7cZxS/5xF3SsMUA39q/
         KSBAB30b5uougEOjFeKQr7Cl4pguFY9odiZ2UGizQDzXd6TPg7ggLNs9THtwYyI96L
         jWqsuuO5rU4vkgZbzivejbAkr9bI8pR0RBPGi62o=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
        by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10LFaMEV011194
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 21 Jan 2021 09:36:22 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 21
 Jan 2021 09:36:22 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 21 Jan 2021 09:36:22 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
        by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10LFaM9U070850;
        Thu, 21 Jan 2021 09:36:22 -0600
Date:   Thu, 21 Jan 2021 09:36:22 -0600
From:   Nishanth Menon <nm@ti.com>
To:     Lokesh Vutla <lokeshvutla@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>
Subject: Re: [PATCH 2/2] arm64: dts: ti: Add support for AM642 SK
Message-ID: <20210121153622.bqgvaxnrqaibu2ka@curve>
References: <20210121143924.26213-1-lokeshvutla@ti.com>
 <20210121143924.26213-3-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210121143924.26213-3-lokeshvutla@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20:09-20210121, Lokesh Vutla wrote:
> AM642 StarterKit (SK) board is a low cost, small form factor board
> designed for TI’s AM642 SoC. It supports the following interfaces:
> * 2 GB LPDDR4 RAM
> * x2 Gigabit Ethernet interfaces capable of working in switch and MAC mode
> * x1 USB 3.0 Type-A port
> * x1 UHS-1 capable µSD card slot
> * 2.4/5 GHz WLAN + Bluetooth 4.2 through WL1837
> * 512 Mbit OSPI flash
> * x2 UART through UART-USB bridge
> * XDS110 for onboard JTAG debug using USB
> * Temperature sensors, user push buttons and LEDs
> * 40-pin Raspberry Pi compatible GPIO header
> * 24-pin header for peripherals in MCU island (I2C, UART, SPI, IO)
> * 54-pin header for Programmable Realtime Unit (PRU) IO pins
> * Interface for remote automation (power and reset, boot mode change)

might be nice to state "power measurement and reset control"

> 
> Add basic support for AM642 SK.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> Signed-off-by: Sekhar Nori <nsekhar@ti.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile        |   3 +-
>  arch/arm64/boot/dts/ti/k3-am642-sk.dts | 145 +++++++++++++++++++++++++
>  2 files changed, 147 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-sk.dts
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index c687739e2bca..6aa642eb56d4 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -12,4 +12,5 @@ dtb-$(CONFIG_ARCH_K3) += k3-j721e-common-proc-board.dtb
>  
>  dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
>  
> -dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb \
> +			 k3-am642-sk.dtb

no please. Just:
+dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb

See arch/arm64/boot/dts/nvidia/Makefile for example.

> diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
> new file mode 100644
> index 000000000000..5b473aaa225d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
> @@ -0,0 +1,145 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include "k3-am642.dtsi"
> +
> +/ {
> +	compatible =  "ti,am642-evm", "ti,am642";
> +	model = "Texas Instruments AM642 SK";
> +
> +	chosen {
> +		stdout-path = "serial2:115200n8";
> +		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		/* 2G RAM */
> +		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
> +
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		secure_ddr: optee@9e800000 {
> +			reg = <0x00 0x9e800000 0x00 0x01800000>; /* for OP-TEE */
> +			alignment = <0x1000>;
> +			no-map;
> +		};
> +	};
> +
> +	vusb_main: fixed-regulator-vusb-main5v0 {
> +		/* USB MAIN INPUT 5V DC */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vusb_main5v0";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vcc_3v3_sys: fixedregulator-vcc-3v3-sys {
> +		/* output of LP8733xx */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_sys";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vusb_main>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vdd_mmc1: fixed-regulator-sd {
> +		/* TPS2051BD */
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_mmc1";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		enable-active-high;
> +		vin-supply = <&vcc_3v3_sys>;
> +		gpio = <&exp1 3 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&main_pmx0 {
> +	main_mmc1_pins_default: main-mmc1-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0294, PIN_INPUT, 0) /* (J19) MMC1_CMD */
> +			AM64X_IOPAD(0x0290, PIN_INPUT, 0) /* (#N/A) MMC1_CLKLB */
> +			AM64X_IOPAD(0x028c, PIN_INPUT, 0) /* (L20) MMC1_CLK */
> +			AM64X_IOPAD(0x0288, PIN_INPUT, 0) /* (K21) MMC1_DAT0 */
> +			AM64X_IOPAD(0x0284, PIN_INPUT, 0) /* (L21) MMC1_DAT1 */
> +			AM64X_IOPAD(0x0280, PIN_INPUT, 0) /* (K19) MMC1_DAT2 */
> +			AM64X_IOPAD(0x027c, PIN_INPUT, 0) /* (K18) MMC1_DAT3 */
> +			AM64X_IOPAD(0x0298, PIN_INPUT, 0) /* (D19) MMC1_SDCD */
> +		>;
> +	};
> +
> +	main_i2c1_pins_default: main-i2c1-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0268, PIN_INPUT_PULLUP, 0) /* (C18) I2C1_SCL */
> +			AM64X_IOPAD(0x026c, PIN_INPUT_PULLUP, 0) /* (B19) I2C1_SDA */
> +		>;
> +	};
> +};
> +
> +&main_uart1 {
> +	/* main_uart1 is reserved for firmware usage */
> +	status = "reserved";
> +};
> +
> +&main_uart2 {
> +	status = "disabled";
> +};
> +
> +&main_uart3 {
> +	status = "disabled";
> +};
> +
> +&main_uart4 {
> +	status = "disabled";
> +};
> +
> +&main_uart5 {
> +	status = "disabled";
> +};
> +
> +&main_uart6 {
> +	status = "disabled";
> +};

I think disabling &mcu_uart0 and &mcu_uart1 might also be a good idea?
> +
> +&main_i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_i2c1_pins_default>;
> +	clock-frequency = <400000>;
> +
> +	exp1: gpio@70 {
> +		compatible = "nxp,pca9538";
> +		reg = <0x70>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		gpio-line-names = "GPIO_CPSW2_RST", "GPIO_CPSW1_RST",
> +				  "PRU_DETECT", "MMC1_SD_EN",
> +				  "VPP_LDO_EN", "RPI_PS_3V3_En",
> +				  "RPI_PS_5V0_En", "RPI_HAT_DETECT";
> +	};
> +};

Disable main_i2c0, spi nodes, sdhci0 or are those nodes being used for
something else that will be fixedup in a follow on series?

> +
> +&sdhci1 {
> +	/* SD/MMC */
> +	vmmc-supply = <&vdd_mmc1>;
> +	pinctrl-names = "default";
> +	bus-width = <4>;
> +	pinctrl-0 = <&main_mmc1_pins_default>;
> +	ti,driver-strength-ohm = <50>;
> +	disable-wp;
> +};
> -- 
> 2.30.0
> 

-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
