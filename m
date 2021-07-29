Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81FB53DAF4F
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 00:45:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbhG2Wpi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 18:45:38 -0400
Received: from mail-io1-f47.google.com ([209.85.166.47]:45847 "EHLO
        mail-io1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229749AbhG2Wpd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 18:45:33 -0400
Received: by mail-io1-f47.google.com with SMTP id l126so9105227ioa.12
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 15:45:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=d2y5+3U/eRktvqdSWk5VmUGeYmg8URj7vdwxaB2jvX4=;
        b=Z4lX2rvMK12l4GRX6CaDCz2Q4GaAcj0IiuKkOD4CAa8BO7bCbTdecmnB+64JhM20ay
         GvDj3e+Eb5O3RW76FetrNvZegGrqvhVdaXZtor3vrwvkuz4Aot7hoBCc8BMz8WcO/Njp
         8FlyykY6d8vgGzhqIBShhfmLsu89V/wjvFGtSjabrthzcY98rwKcoYtqgoiJoYHGTHiG
         G7ZVWCS5Dr0hwbaJI6z0odjSAj/5E++qr3DWJ3TIIve7VSh7Ijj9Fx/PUsVf1WuPDbQt
         ByKsv38CnjhMIGz4qpJw6IeinPfYAJYgOYswcfeGCGlVxx5FdQUwp9Wp78UYHpwvrQ6g
         +rDA==
X-Gm-Message-State: AOAM531m410h7SIdqb9WkK54gexoadqnKqzgtFxioY1gnEr0q/aqJJDB
        8+zbCE/crxtObkFzi/H47DlR1s0Sqg==
X-Google-Smtp-Source: ABdhPJxPTsHaR+pmOWRu+NB8wgDh+Zmpv9mz5EeAf3k4LTOHGlE8rUSlq2pR7TEiv5iYfdHuYNE2rA==
X-Received: by 2002:a05:6638:144e:: with SMTP id l14mr6412971jad.69.1627598728103;
        Thu, 29 Jul 2021 15:45:28 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h13sm2218882ila.44.2021.07.29.15.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 15:45:27 -0700 (PDT)
Received: (nullmailer pid 1044170 invoked by uid 1000);
        Thu, 29 Jul 2021 22:45:25 -0000
Date:   Thu, 29 Jul 2021 16:45:25 -0600
From:   Rob Herring <robh@kernel.org>
To:     Mathew McBride <matt@traverse.com.au>
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/5] arm64: dts: add device tree for Traverse Ten64
 (LS1088A)
Message-ID: <YQMvhc374A4g6FWY@robh.at.kernel.org>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210726071216.22711-1-matt@traverse.com.au>
 <20210726071216.22711-6-matt@traverse.com.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210726071216.22711-6-matt@traverse.com.au>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 07:12:16AM +0000, Mathew McBride wrote:
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
> Reviewed-by: Ioana Ciornei <ioana.ciornei@nxp.com> # for the MAC/PHY
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/fsl-ls1088a-ten64.dts  | 377 ++++++++++++++++++
>  2 files changed, 378 insertions(+)
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
> index 000000000000..59fa344a8854
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
> @@ -0,0 +1,377 @@
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
> +
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
> +	sfp_xg0: dpmac2-sfp {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfplower_i2c>;
> +		tx-fault-gpios = <&sfpgpio 0 GPIO_ACTIVE_HIGH>;
> +		tx-disable-gpios = <&sfpgpio 1 GPIO_ACTIVE_HIGH>;
> +		mod-def0-gpios = <&sfpgpio 2 GPIO_ACTIVE_LOW>;
> +		los-gpios = <&sfpgpio 3 GPIO_ACTIVE_HIGH>;
> +		maximum-power-milliwatt = <2000>;
> +	};
> +
> +	sfp_xg1: dpmac1-sfp {
> +		compatible = "sff,sfp";
> +		i2c-bus = <&sfpupper_i2c>;
> +		tx-fault-gpios = <&sfpgpio 4 GPIO_ACTIVE_HIGH>;
> +		tx-disable-gpios = <&sfpgpio 5 GPIO_ACTIVE_HIGH>;
> +		mod-def0-gpios = <&sfpgpio 6 GPIO_ACTIVE_LOW>;
> +		los-gpios = <&sfpgpio 7 GPIO_ACTIVE_HIGH>;
> +		maximum-power-milliwatt = <2000>;
> +	};
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
> +&duart0 {
> +	status = "okay";
> +};
> +
> +&duart1 {
> +	status = "okay";
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
> +&esdhc {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	sfpgpio: gpio@76 {
> +		compatible = "ti,tca9539";
> +		reg = <0x76>;
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
> +	at97sc: tpm@29 {
> +		compatible = "atmel,at97sc3204t";
> +		reg = <0x29>;
> +	};
> +};
> +
> +&i2c2 {
> +	status = "okay";
> +
> +	rx8035: rtc@32 {
> +		compatible = "epson,rx8035";
> +		reg = <0x32>;
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
> +		reg = <0x70>;
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
> +		reg = <0>;
> +		spi-max-frequency = <20000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <4>;
> +
> +		partition@0 {

New users should put all the partitions under a 'partitions' node.

> +			label = "bl2";
> +			reg = <0 0x100000>;
> +		};
> +
> +		partition@100000 {
> +			label = "bl3";
> +			reg = <0x100000 0x200000>;
> +		};
> +
> +		partition@300000 {
> +			label = "mcfirmware";
> +			reg = <0x300000 0x200000>;
> +		};
> +
> +		partition@500000 {
> +			label = "ubootenv";
> +			reg = <0x500000 0x80000>;
> +		};
> +
> +		partition@580000 {
> +			label = "dpl";
> +			reg = <0x580000 0x40000>;
> +		};
> +
> +		partition@5C0000 {
> +			label = "dpc";
> +			reg = <0x5C0000 0x40000>;
> +		};
> +
> +		partition@600000 {
> +			label = "devicetree";
> +			reg = <0x600000 0x40000>;
> +		};
> +	};
> +
> +	nand: flash@1 {
> +		compatible = "spi-nand";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		reg = <1>;
> +		spi-max-frequency = <20000000>;
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
> +
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
> 
