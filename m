Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A79B7305854
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 11:26:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S314226AbhAZXBC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 18:01:02 -0500
Received: from fllv0016.ext.ti.com ([198.47.19.142]:41964 "HELO
        fllv0016.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with SMTP id S2395296AbhAZTTX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 14:19:23 -0500
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10QGoQuE093237;
        Tue, 26 Jan 2021 10:50:26 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1611679826;
        bh=XlrINLazaYAPu4lZ5Qj+UJss2EcgVR4yQJD7m3PDJAE=;
        h=Subject:To:CC:References:From:Date:In-Reply-To;
        b=R0nLRt/ia2zEIqxQlrddBoTsSxlbiRR3acb5tZ5a6NlXSZKARwSy4dHwBkt+sSMuR
         ezcTgLoIvy/vfDKIB33GRIK1XG32h4O+dS6vOouiFh0F93UnG54c4XOH4BJUFwCgvD
         6LlOqr+FE0LIgWUgWWMl7C8KAtZChcQ8RzlFPRt8=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10QGoQ0n082362
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 26 Jan 2021 10:50:26 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 26
 Jan 2021 10:50:26 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 26 Jan 2021 10:50:26 -0600
Received: from [10.250.35.71] (ileax41-snat.itg.ti.com [10.172.224.153])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10QGoQbp025225;
        Tue, 26 Jan 2021 10:50:26 -0600
Subject: Re: [PATCH 2/2] arm64: dts: ti: Add support for AM642 SK
To:     Nishanth Menon <nm@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>
CC:     Rob Herring <robh+dt@kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Sekhar Nori <nsekhar@ti.com>, Vignesh R <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>
References: <20210121143924.26213-1-lokeshvutla@ti.com>
 <20210121143924.26213-3-lokeshvutla@ti.com>
 <20210121153622.bqgvaxnrqaibu2ka@curve>
From:   Suman Anna <s-anna@ti.com>
Message-ID: <e7097efe-6e9c-3bf9-0b1c-e34c6c14cbf1@ti.com>
Date:   Tue, 26 Jan 2021 10:50:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210121153622.bqgvaxnrqaibu2ka@curve>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by fllv0016.ext.ti.com id 10QGoQuE093237
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lokesh,

On 1/21/21 9:36 AM, Nishanth Menon wrote:
> On 20:09-20210121, Lokesh Vutla wrote:
>> AM642 StarterKit (SK) board is a low cost, small form factor board
>> designed for TI=E2=80=99s AM642 SoC. It supports the following interfa=
ces:
>> * 2 GB LPDDR4 RAM
>> * x2 Gigabit Ethernet interfaces capable of working in switch and MAC =
mode
>> * x1 USB 3.0 Type-A port
>> * x1 UHS-1 capable =C2=B5SD card slot
>> * 2.4/5 GHz WLAN + Bluetooth 4.2 through WL1837
>> * 512 Mbit OSPI flash
>> * x2 UART through UART-USB bridge
>> * XDS110 for onboard JTAG debug using USB
>> * Temperature sensors, user push buttons and LEDs
>> * 40-pin Raspberry Pi compatible GPIO header
>> * 24-pin header for peripherals in MCU island (I2C, UART, SPI, IO)
>> * 54-pin header for Programmable Realtime Unit (PRU) IO pins
>> * Interface for remote automation (power and reset, boot mode change)
>=20
> might be nice to state "power measurement and reset control"
>=20
>>
>> Add basic support for AM642 SK.
>>
>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
>> Signed-off-by: Sekhar Nori <nsekhar@ti.com>
>> ---
>>  arch/arm64/boot/dts/ti/Makefile        |   3 +-
>>  arch/arm64/boot/dts/ti/k3-am642-sk.dts | 145 ++++++++++++++++++++++++=
+
>>  2 files changed, 147 insertions(+), 1 deletion(-)
>>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-sk.dts
>>
>> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/=
Makefile
>> index c687739e2bca..6aa642eb56d4 100644
>> --- a/arch/arm64/boot/dts/ti/Makefile
>> +++ b/arch/arm64/boot/dts/ti/Makefile
>> @@ -12,4 +12,5 @@ dtb-$(CONFIG_ARCH_K3) +=3D k3-j721e-common-proc-boar=
d.dtb
>> =20
>>  dtb-$(CONFIG_ARCH_K3) +=3D k3-j7200-common-proc-board.dtb
>> =20
>> -dtb-$(CONFIG_ARCH_K3) +=3D k3-am642-evm.dtb
>> +dtb-$(CONFIG_ARCH_K3) +=3D k3-am642-evm.dtb \
>> +			 k3-am642-sk.dtb
>=20
> no please. Just:
> +dtb-$(CONFIG_ARCH_K3) +=3D k3-am642-sk.dtb
>=20
> See arch/arm64/boot/dts/nvidia/Makefile for example.
>=20
>> diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/=
dts/ti/k3-am642-sk.dts
>> new file mode 100644
>> index 000000000000..5b473aaa225d
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
>> @@ -0,0 +1,145 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti=
.com/
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include "k3-am642.dtsi"
>> +
>> +/ {
>> +	compatible =3D  "ti,am642-evm", "ti,am642";

Looks like a copy-paste error. As per patch 1, you should be using ti,am6=
42-sk
and not ti,am642-evm.

>> +	model =3D "Texas Instruments AM642 SK";
>> +
>> +	chosen {
>> +		stdout-path =3D "serial2:115200n8";
>> +		bootargs =3D "console=3DttyS2,115200n8 earlycon=3Dns16550a,mmio32,0=
x02800000";
>> +	};
>> +
>> +	memory@80000000 {
>> +		device_type =3D "memory";
>> +		/* 2G RAM */
>> +		reg =3D <0x00000000 0x80000000 0x00000000 0x80000000>;
>> +
>> +	};
>> +
>> +	reserved-memory {
>> +		#address-cells =3D <2>;
>> +		#size-cells =3D <2>;
>> +		ranges;
>> +
>> +		secure_ddr: optee@9e800000 {
>> +			reg =3D <0x00 0x9e800000 0x00 0x01800000>; /* for OP-TEE */
>> +			alignment =3D <0x1000>;
>> +			no-map;
>> +		};
>> +	};
>> +
>> +	vusb_main: fixed-regulator-vusb-main5v0 {
>> +		/* USB MAIN INPUT 5V DC */
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "vusb_main5v0";
>> +		regulator-min-microvolt =3D <5000000>;
>> +		regulator-max-microvolt =3D <5000000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +	};
>> +
>> +	vcc_3v3_sys: fixedregulator-vcc-3v3-sys {
>> +		/* output of LP8733xx */
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "vcc_3v3_sys";
>> +		regulator-min-microvolt =3D <3300000>;
>> +		regulator-max-microvolt =3D <3300000>;
>> +		vin-supply =3D <&vusb_main>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +	};
>> +
>> +	vdd_mmc1: fixed-regulator-sd {
>> +		/* TPS2051BD */
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "vdd_mmc1";
>> +		regulator-min-microvolt =3D <3300000>;
>> +		regulator-max-microvolt =3D <3300000>;
>> +		regulator-boot-on;
>> +		enable-active-high;
>> +		vin-supply =3D <&vcc_3v3_sys>;
>> +		gpio =3D <&exp1 3 GPIO_ACTIVE_HIGH>;
>> +	};
>> +};
>> +
>> +&main_pmx0 {
>> +	main_mmc1_pins_default: main-mmc1-pins-default {
>> +		pinctrl-single,pins =3D <
>> +			AM64X_IOPAD(0x0294, PIN_INPUT, 0) /* (J19) MMC1_CMD */
>> +			AM64X_IOPAD(0x0290, PIN_INPUT, 0) /* (#N/A) MMC1_CLKLB */
>> +			AM64X_IOPAD(0x028c, PIN_INPUT, 0) /* (L20) MMC1_CLK */
>> +			AM64X_IOPAD(0x0288, PIN_INPUT, 0) /* (K21) MMC1_DAT0 */
>> +			AM64X_IOPAD(0x0284, PIN_INPUT, 0) /* (L21) MMC1_DAT1 */
>> +			AM64X_IOPAD(0x0280, PIN_INPUT, 0) /* (K19) MMC1_DAT2 */
>> +			AM64X_IOPAD(0x027c, PIN_INPUT, 0) /* (K18) MMC1_DAT3 */
>> +			AM64X_IOPAD(0x0298, PIN_INPUT, 0) /* (D19) MMC1_SDCD */
>> +		>;
>> +	};
>> +
>> +	main_i2c1_pins_default: main-i2c1-pins-default {
>> +		pinctrl-single,pins =3D <
>> +			AM64X_IOPAD(0x0268, PIN_INPUT_PULLUP, 0) /* (C18) I2C1_SCL */
>> +			AM64X_IOPAD(0x026c, PIN_INPUT_PULLUP, 0) /* (B19) I2C1_SDA */
>> +		>;
>> +	};
>> +};
>> +
>> +&main_uart1 {
>> +	/* main_uart1 is reserved for firmware usage */
>> +	status =3D "reserved";
>> +};
>> +
>> +&main_uart2 {
>> +	status =3D "disabled";
>> +};
>> +
>> +&main_uart3 {
>> +	status =3D "disabled";
>> +};
>> +
>> +&main_uart4 {
>> +	status =3D "disabled";
>> +};
>> +
>> +&main_uart5 {
>> +	status =3D "disabled";
>> +};
>> +
>> +&main_uart6 {
>> +	status =3D "disabled";
>> +};
>=20
> I think disabling &mcu_uart0 and &mcu_uart1 might also be a good idea?
>> +
>> +&main_i2c1 {
>> +	pinctrl-names =3D "default";
>> +	pinctrl-0 =3D <&main_i2c1_pins_default>;
>> +	clock-frequency =3D <400000>;
>> +
>> +	exp1: gpio@70 {
>> +		compatible =3D "nxp,pca9538";
>> +		reg =3D <0x70>;
>> +		gpio-controller;
>> +		#gpio-cells =3D <2>;
>> +		gpio-line-names =3D "GPIO_CPSW2_RST", "GPIO_CPSW1_RST",
>> +				  "PRU_DETECT", "MMC1_SD_EN",
>> +				  "VPP_LDO_EN", "RPI_PS_3V3_En",
>> +				  "RPI_PS_5V0_En", "RPI_HAT_DETECT";
>> +	};
>> +};
>=20
> Disable main_i2c0, spi nodes, sdhci0 or are those nodes being used for
> something else that will be fixedup in a follow on series?

+1

regards
Suman

>=20
>> +
>> +&sdhci1 {
>> +	/* SD/MMC */
>> +	vmmc-supply =3D <&vdd_mmc1>;
>> +	pinctrl-names =3D "default";
>> +	bus-width =3D <4>;
>> +	pinctrl-0 =3D <&main_mmc1_pins_default>;
>> +	ti,driver-strength-ohm =3D <50>;
>> +	disable-wp;
>> +};
>> --=20
>> 2.30.0
>>
>=20

