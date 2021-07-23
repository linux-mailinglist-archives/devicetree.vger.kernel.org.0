Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ED9B3D3803
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 11:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231195AbhGWJFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 05:05:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:34468 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231302AbhGWJFn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 23 Jul 2021 05:05:43 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id F0BC960EC0;
        Fri, 23 Jul 2021 09:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627033577;
        bh=J09RQL3Cup9ZELNVXrOjP6qigtKTtQstj+tA7AqzG+Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=bVxWy/NAh0AdAxpxgnAI1njuJqPxI/9JgFQ2lu68pNT2HF8LNFdA4ee6wYA5O+QGO
         eZvTDVpr7V6efQg9v1dqdBQFXYVmARPpj74smGFolTwF+W4/XbillBN7dG6B6zPFAs
         8iIM8w/Hl8E9lEMAz3b0uMC6Erho/CIJWs7mlyr2mitbaU+ClFUdrIQqAYV6jxUX3K
         7vhW6xmx0lUg4uO+3kfcbxe+/645pASR0lMH0q8WiRNGdSIVH5UNnBHW9XlXkGae03
         H6r5Te4Om+ZHFH4iGnXWZmXLvyY2o1rn9DNpqLXg3qQ0Z3wKdhvuLAG0Vrj3nY/zJp
         UrlF+VPUKwqMg==
Date:   Fri, 23 Jul 2021 17:46:12 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Mathew McBride <matt@traverse.com.au>
Cc:     Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 5/5] arm64: dts: add device tree for Traverse Ten64
 (LS1088A)
Message-ID: <20210723094608.GK30773@dragon>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210722042450.11862-6-matt@traverse.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210722042450.11862-6-matt@traverse.com.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 22, 2021 at 04:24:50AM +0000, Mathew McBride wrote:
> The Traverse Technologies Ten64 is a Mini-ITX form factor
> networking board using the NXP LS1088A SoC.
> 
> This device tree only describes features which the mainline
> kernel currently has support for, such as some I2C-connected
> devices that are not described at present.
> 
> System documentation may be found at ten64doc.traverse.com.au
> 
> Signed-off-by: Mathew McBride <matt@traverse.com.au>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/fsl-ls1088a-ten64.dts  | 375 ++++++++++++++++++
>  2 files changed, 376 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 25806c4924cb..2b3ee42e4a2a 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -19,6 +19,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1046a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1046a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1088a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1088a-rdb.dtb
> +dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1088a-ten64.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls2080a-qds.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls2080a-rdb.dtb
>  dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls2080a-simu.dtb
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
> new file mode 100644
> index 000000000000..7f1584f378fe
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
> @@ -0,0 +1,375 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Travese Ten64 (LS1088) board
> + * Based on fsl-ls1088a-rdb.dts
> + * Copyright 2017-2020 NXP
> + * Copyright 2019-2021 Traverse Technologies
> + *
> + * Author: Mathew McBride <matt@traverse.com.au>
> + */
> +
> +/dts-v1/;
> +
> +#include "fsl-ls1088a.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model = "Traverse Ten64";
> +	compatible = "traverse,ten64", "fsl,ls1088a";
> +
> +	aliases {
> +		serial0 = &duart0;
> +		serial1 = &duart1;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	buttons {
> +		compatible = "gpio-keys";

Have a newline between property list and child node.

> +		/* Fired by system controller when
> +		 * external power off (e.g ATX Power Button)
> +		 * asserted
> +		 */
> +		powerdn {
> +			label = "External Power Down";
> +			gpios = <&gpio1 17 GPIO_ACTIVE_LOW>;
> +			interrupts = <&gpio1 17 IRQ_TYPE_EDGE_FALLING>;
> +			linux,code = <KEY_POWER>;
> +		};
> +
> +		/* Rear Panel 'ADMIN' button (GPIO_H) */
> +		admin {
> +			label = "ADMIN button";
> +			gpios = <&gpio3 8 GPIO_ACTIVE_HIGH>;
> +			interrupts = <&gpio3 8 IRQ_TYPE_EDGE_RISING>;
> +			linux,code = <KEY_WPS_BUTTON>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		sfp1down {
> +			label = "ten64:green:sfp1:down";
> +			gpios = <&gpio3 11 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		sfp2up {
> +			label = "ten64:green:sfp2:up";
> +			gpios = <&gpio3 12 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		admin {
> +			label = "ten64:admin";
> +			gpios = <&sfpgpio 12 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	sfp_xg0: dpmac2_sfp {

We generally use '-' instead of '_' in node name.  sfp-dpmac2 might be
better.

> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfplower_i2c>;
> +		tx-fault-gpios = <&sfpgpio 0 GPIO_ACTIVE_HIGH>;
> +		tx-disable-gpios = <&sfpgpio 1 GPIO_ACTIVE_HIGH>;
> +		mod-def0-gpios = <&sfpgpio 2 GPIO_ACTIVE_LOW>;
> +		los-gpios = <&sfpgpio 3 GPIO_ACTIVE_HIGH>;
> +		maximum-power-milliwatt = <2000>;
> +	};
> +
> +	sfp_xg1: dpmac1_sfp {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfpupper_i2c>;
> +		tx-fault-gpios = <&sfpgpio 4 GPIO_ACTIVE_HIGH>;
> +		tx-disable-gpios = <&sfpgpio 5 GPIO_ACTIVE_HIGH>;
> +		mod-def0-gpios = <&sfpgpio 6 GPIO_ACTIVE_LOW>;
> +		los-gpios = <&sfpgpio 7 GPIO_ACTIVE_HIGH>;
> +		maximum-power-milliwatt = <2000>;
> +	};
> +
> +};
> +
> +/* XG1 - Upper SFP */
> +&dpmac1 {
> +	sfp = <&sfp_xg1>;
> +	pcs-handle = <&pcs1>;
> +	phy-connection-type = "10gbase-r";
> +	managed = "in-band-status";
> +};
> +
> +/* XG0 - Lower SFP */
> +&dpmac2 {
> +	sfp = <&sfp_xg0>;
> +	pcs-handle = <&pcs2>;
> +	phy-connection-type = "10gbase-r";
> +	managed = "in-band-status";
> +};
> +
> +/* DPMAC3..6 is GE4 to GE8 */
> +&dpmac3 {
> +	phy-handle = <&mdio1_phy5>;
> +	phy-connection-type = "qsgmii";
> +	managed = "in-band-status";
> +	pcs-handle = <&pcs3_0>;
> +};
> +
> +&dpmac4 {
> +	phy-handle = <&mdio1_phy6>;
> +	phy-connection-type = "qsgmii";
> +	managed = "in-band-status";
> +	pcs-handle = <&pcs3_1>;
> +};
> +
> +&dpmac5 {
> +	phy-handle = <&mdio1_phy7>;
> +	phy-connection-type = "qsgmii";
> +	managed = "in-band-status";
> +	pcs-handle = <&pcs3_2>;
> +};
> +
> +&dpmac6 {
> +	phy-handle = <&mdio1_phy8>;
> +	phy-connection-type = "qsgmii";
> +	managed = "in-band-status";
> +	pcs-handle = <&pcs3_3>;
> +};
> +
> +/* DPMAC7..10 is GE0 to GE3 */
> +&dpmac7 {
> +	phy-handle = <&mdio1_phy1>;
> +	phy-connection-type = "qsgmii";
> +	managed = "in-band-status";
> +	pcs-handle = <&pcs7_0>;
> +};
> +
> +&dpmac8 {
> +	phy-handle = <&mdio1_phy2>;
> +	phy-connection-type = "qsgmii";
> +	managed = "in-band-status";
> +	pcs-handle = <&pcs7_1>;
> +};
> +
> +&dpmac9 {
> +	phy-handle = <&mdio1_phy3>;
> +	phy-connection-type = "qsgmii";
> +	managed = "in-band-status";
> +	pcs-handle = <&pcs7_2>;
> +};
> +
> +&dpmac10 {
> +	phy-handle = <&mdio1_phy4>;
> +	phy-connection-type = "qsgmii";
> +	managed = "in-band-status";
> +	pcs-handle = <&pcs7_3>;
> +};
> +
> +&emdio1 {
> +	status = "okay";
> +
> +	mdio1_phy5: ethernet-phy@c {
> +		reg = <0xc>;
> +	};
> +
> +	mdio1_phy6: ethernet-phy@d {
> +		reg = <0xd>;
> +	};
> +
> +	mdio1_phy7: ethernet-phy@e {
> +		reg = <0xe>;
> +	};
> +
> +	mdio1_phy8: ethernet-phy@f {
> +		reg = <0xf>;
> +	};
> +
> +	mdio1_phy1: ethernet-phy@1c {
> +		reg = <0x1c>;
> +	};
> +
> +	mdio1_phy2: ethernet-phy@1d {
> +		reg = <0x1d>;
> +	};
> +
> +	mdio1_phy3: ethernet-phy@1e {
> +		reg = <0x1e>;
> +	};
> +
> +	mdio1_phy4: ethernet-phy@1f {
> +		reg = <0x1f>;
> +	};
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	sfpgpio: gpio@76 {
> +		reg = <0x76>;
> +		compatible = "ti,tca9539";

We generally start property list with compatible.

> +		#gpio-cells = <2>;
> +		gpio-controller;
> +
> +		admin_led_lower {
> +			gpio-hog;
> +			gpios = <13 GPIO_ACTIVE_HIGH>;
> +			output-low;
> +		};
> +	};
> +
> +	tpm: at97sc@29 {
> +		reg = <0x29>;
> +		compatible = "atmel,at97sc3204t";

Ditto

> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +
> +	rtc: rx8035@32 {

Node name should be generic while label can be specific, so
'rx8035: rtc@32' should make more sense.

> +		reg = <0x32>;
> +		compatible = "epson,rx8035";
> +	};
> +};
> +
> +&i2c3 {
> +	status = "okay";
> +
> +	i2c-switch@70 {
> +		compatible = "nxp,pca9540";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70 >;
> +
> +		sfpupper_i2c: i2c@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0>;
> +		};
> +
> +		sfplower_i2c: i2c@1 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <1>;
> +		};
> +	};
> +};
> +
> +&duart0 {

Please try to sort these labeling nodes alphabetically.

> +	status = "okay";
> +};
> +
> +&duart1 {
> +	status = "okay";
> +};
> +
> +&esdhc {
> +	status = "okay";
> +};
> +
> +&pcs_mdio1 {
> +	status = "okay";
> +};
> +
> +&pcs_mdio2 {
> +	status = "okay";
> +};
> +
> +&pcs_mdio3 {
> +	status = "okay";
> +};
> +
> +&pcs_mdio7 {
> +	status = "okay";
> +};
> +
> +&qspi {
> +	status = "okay";
> +
> +	en25s64: flash@0 {
> +		compatible = "jedec,spi-nor";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +		reg = <0>;
> +
> +		bl2@0 {

Shouldn't the name be 'partition' just like nand flash below.

> +			label = "bl2";
> +			reg = <0 0x100000>;
> +		};
> +
> +		bl3@100000 {
> +			label = "bl3";
> +			reg = <0x100000 0x200000>;
> +		};
> +
> +		mcfirmware@300000 {
> +			label = "mcfirmware";
> +			reg = <0x300000 0x200000>;
> +		};
> +
> +		ubootenv@500000 {
> +			label = "ubootenv";
> +			reg = <0x500000 0x80000>;
> +		};

Missing newline.

> +		dpl@580000 {
> +			label = "dpl";
> +			reg = <0x580000 0x40000>;
> +		};
> +
> +		dpc@5C0000 {
> +			label = "dpc";
> +			reg = <0x5C0000 0x40000>;
> +		};
> +
> +		devicetree@600000 {
> +			label = "devicetree";
> +			reg = <0x600000 0x40000>;
> +		};
> +	};
> +
> +	nand: flash@1 {
> +		compatible = "spi-nand";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		spi-max-frequency = <20000000>;
> +		reg = <1>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +
> +		/* reserved for future boot direct from NAND flash
> +		 * (this would use the same layout as the 8MiB NOR flash)
> +		 */
> +		partition@0 {
> +			label = "nand-boot-reserved";
> +			reg = <0 0x800000>;
> +		};
> +
> +		/* recovery / install environment */
> +		partition@800000 {
> +			label = "recovery";
> +			reg = <0x800000 0x2000000>;
> +		};
> +
> +		/* ubia (first OpenWrt) - a/b names to prevent confusion with ubi0/1/etc. */
> +		partition@2800000 {
> +			label = "ubia";
> +			reg = <0x2800000 0x6C00000>;
> +		};

Have a newline.

Shawn

> +		/* ubib (second OpenWrt) */
> +		partition@9400000 {
> +			label = "ubib";
> +			reg = <0x9400000 0x6C00000>;
> +		};
> +	};
> +};
> +
> +&usb0 {
> +	status = "okay";
> +};
> +
> +&usb1 {
> +	status = "okay";
> +};
> -- 
> 2.30.1
> 
