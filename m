Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF5374B3341
	for <lists+devicetree@lfdr.de>; Sat, 12 Feb 2022 06:43:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230186AbiBLFnp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 00:43:45 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229593AbiBLFno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 00:43:44 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05C4128E1F
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 21:43:40 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 197BD60A5F
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 05:43:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB560C340E7;
        Sat, 12 Feb 2022 05:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644644619;
        bh=+G8vuqF2vXP9f/RJHmbDT0vDhEca4rAFdXULtvb0xiI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Xx8J4RX3vGlOvQFuIdqYaF8rTgM5j0hAcWRulfUrAQc65BhKmLbmMlba80/A68Kxw
         q1ce1CJ2sRKeU3Flil0B9u1Kd7xsrTKo6vPCrBjFYospkeASLKgWRDgXIYM7cqOsXS
         uvHPttXa7U2OnKOgyk8kSTXatWtEEbZkbtb64UmilipURLzoYOIa45z/QJemxWzSTK
         FcTYgmdnRZA+N/3Nfa8XHnOcyPfw2Urd3jyrtLeoVhva163dkuyX30zR/lM/EspqmB
         KLf0vz4cnvB56cx8dOZNZ7chKp6c9Tme14eZpDuQdOT57AdvxKZGxYyihKlj/oetut
         6nEl+N6dSjkKQ==
Date:   Sat, 12 Feb 2022 13:43:32 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Andrej Picej <andrej.picej@norik.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, kernel@pengutronix.de, leoyang.li@nxp.com,
        krzysztof.kozlowski@canonical.com, festevam@gmail.com,
        linux@rempel-privat.de, arnd@arndb.de, linux-imx@nxp.com,
        y.bas@phytec.de
Subject: Re: [PATCH RESEND 2/4] ARM: dts: imx6ull: Add support for PHYTEC
 phyGATE-Tauri-S with i.MX 6ULL
Message-ID: <20220212054331.GY4909@dragon>
References: <20220131080526.1171072-1-andrej.picej@norik.com>
 <20220131080526.1171072-3-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220131080526.1171072-3-andrej.picej@norik.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 31, 2022 at 09:05:24AM +0100, Andrej Picej wrote:
> From: Alexander Bauer <a.bauer@phytec.de>
> 
> Add support for the PHYTEC phyGATE-Tauri-S with i.MX 6ULL with eMMC or
> NAND.
> 
> Supported features:
>         * eMMC/NAND
>         * i2c RTC
>         * i2c TEMP
>         * PMIC
>         * PWM
>         * debug UART
>         * CAN
>         * SD card
>         * 2x 1Gbit Ethernet
>         * RS232/RS485
>         * USB 2.0 Host
>         * TPM
>         * SPI-NOR
> 
> Signed-off-by: Alexander Bauer <a.bauer@phytec.de>
> Signed-off-by: Jens Lang <j.lang@phytec.de>
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
>  arch/arm/boot/dts/Makefile                    |   2 +
>  .../boot/dts/imx6ull-phytec-tauri-emmc.dts    |  20 +
>  .../boot/dts/imx6ull-phytec-tauri-nand.dts    |  20 +
>  arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi   | 605 ++++++++++++++++++
>  4 files changed, 647 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri-emmc.dts
>  create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri-nand.dts
>  create mode 100644 arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 235ad559acb2..f50270b9965a 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -704,6 +704,8 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>  	imx6ull-phytec-segin-ff-rdk-nand.dtb \
>  	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
>  	imx6ull-phytec-segin-lc-rdk-nand.dtb \
> +	imx6ull-phytec-tauri-nand.dtb \
> +	imx6ull-phytec-tauri-emmc.dtb \

Keep them sort alphabetically.

>  	imx6ulz-14x14-evk.dtb \
>  	imx6ulz-bsh-smm-m2.dtb
>  dtb-$(CONFIG_SOC_IMX7D) += \
> diff --git a/arch/arm/boot/dts/imx6ull-phytec-tauri-emmc.dts b/arch/arm/boot/dts/imx6ull-phytec-tauri-emmc.dts
> new file mode 100644
> index 000000000000..14adb87da911
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-phytec-tauri-emmc.dts
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2021 PHYTEC Messtechnik GmbH
> + * Author: Alexander Bauer <a.bauer@phytec.de>
> + */
> +
> +/dts-v1/;
> +#include "imx6ull-phytec-tauri.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyGate-Tauri i.MX6 UltraLite";
> +	compatible = "phytec,imx6ull-phygate-tauri",
> +		     "phytec,imx6ull-phygate-tauri-emmc",
> +		     "phytec,imx6ull-pcl063", "fsl,imx6ull";
> +};
> +
> +/* EMMC-Version */
> +&usdhc2 {
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx6ull-phytec-tauri-nand.dts b/arch/arm/boot/dts/imx6ull-phytec-tauri-nand.dts
> new file mode 100644
> index 000000000000..ae396ac63443
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-phytec-tauri-nand.dts
> @@ -0,0 +1,20 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2021 PHYTEC Messtechnik GmbH
> + * Author: Alexander Bauer <a.bauer@phytec.de>
> + */
> +
> +/dts-v1/;
> +#include "imx6ull-phytec-tauri.dtsi"
> +
> +/ {
> +	model = "PHYTEC phyGate-Tauri i.MX6 UltraLite";
> +	compatible = "phytec,imx6ull-phygate-tauri",
> +		     "phytec,imx6ull-phygate-tauri-nand",
> +		     "phytec,imx6ull-pcl063", "fsl,imx6ull";
> +};
> +
> +/* NAND-Version */
> +&gpmi {
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi b/arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi
> new file mode 100644
> index 000000000000..62a70d80c009
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6ull-phytec-tauri.dtsi
> @@ -0,0 +1,605 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2021 PHYTEC Messtechnik GmbH
> + * Author: Alexander Bauer <a.bauer@phytec.de>
> + */
> +
> +/dts-v1/;
> +#include "imx6ull.dtsi"
> +#include "imx6ull-phytec-phycore-som.dtsi"
> +
> +/ {
> +
> +	model = "PHYTEC phyGate-Tauri i.MX6 UltraLite";
> +	compatible = "phytec,imx6ull-phygate-tauri",
> +		     "phytec,imx6ull-pcl063", "fsl,imx6ull";
> +
> +	aliases {
> +		rtc0 = &i2c_rtc;
> +		rtc1 = &snvs_rtc;
> +	};
> +
> +	gpio_keys: gpio-keys {
> +		compatible = "gpio-key";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_keys>;
> +
> +		key {
> +			label = "KEY-A";
> +			gpios = <&gpio1 18 GPIO_ACTIVE_LOW>;
> +			linux,code = <30>;

Use define in include/dt-bindings/input/linux-event-codes.h

> +			wakeup-source;
> +		};
> +	};
> +
> +	reg_adc1_vref_3v3: regulator-vref-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vref-3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	reg_s25fl064_hold: regulator-s25fl064-hold {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_s25fl064_hold>;
> +		compatible = "regulator-fixed";
> +		regulator-name = "s25fl064_hold";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio3 17 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	reg_usb_hub_vbus: regulator-hub-otg1-vbus {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usbhubpwr>;
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_hub_vbus";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio5 5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_usbotg1pwr>;
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb_otg1_vbus";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	user_leds: user-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_user_leds>,
> +			    <&pinctrl_user_leds_snvs>;
> +
> +		user-led1 {
> +			label = "yellow";
> +			gpios = <&gpio1 3 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "off";
> +		};
> +
> +		user-led2 {
> +			label = "red";
> +			gpios = <&gpio5 9 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "off";
> +		};
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	status = "okay";
> +};
> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +	status = "okay";
> +};
> +
> +&ecspi1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	fsl,spi-num-chipselects = <3>;

The property is no longer supported.

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>,
> +		    <&pinctrl_ecspi1_cs>;
> +	cs-gpios = <&gpio3 26 GPIO_ACTIVE_LOW>,
> +		   <&gpio3 10 GPIO_ACTIVE_LOW>,
> +		   <&gpio3 11 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +
> +	spi_dev0: spi@0 {
> +		compatible = "linux,spidev";

Not supported.

> +		spi-max-frequency = <57600000>;
> +		reg = <0>;
> +	};
> +
> +	tpm_tis: tpm@1 {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_tpm>;
> +		compatible = "tcg,tpm_tis-spi";
> +		reg = <1>;
> +		spi-max-frequency = <20000000>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
> +		status = "okay";

We generally use okay status to flip a disabled device.  You can save it
if that's not the case.

> +	};
> +
> +/* S25FL064P */

Not sure this comment is so useful.  If you need a comment, as least
indent it properly.

> +	s25fl064: flash@2 {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = " jedec,spi-nor";
> +		reg = <2>;
> +		spi-max-frequency = <40000000>;
> +		m25p,fast-read;
> +		status = "disabled";
> +	};
> +};
> +
> +&ecspi3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi3>;
> +	cs-gpios = <&gpio1 20 GPIO_ACTIVE_LOW>;
> +	dmas = <&sdma 7 8 0>,
> +	       <&sdma 8 8 0>;
> +	dma-names = "rx", "tx";
> +	status = "okay";
> +
> +	spi_dev1: spi@0 {
> +		compatible = "linux,spidev";
> +		spi-max-frequency = <57600000>;
> +		reg = <0>;
> +	};
> +};
> +
> +&ethphy1 {
> +	status = "okay";
> +};
> +
> +&fec1 {
> +	status = "okay";
> +};
> +
> +&fec2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet2>;
> +	phy-mode = "rmii";
> +	phy-handle = <&ethphy2>;
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +
> +	i2c_rtc: rtc@68 {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_rtc_int>;
> +		compatible = "microcrystal,rv4162";
> +		reg = <0x68>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <1 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	tmp102: tmp@49 {

Sort the nodes in order of unit-address.

> +		compatible = "ti,tmp102";
> +		reg = <0x49>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_tempsense>;
> +		interrupt-parent = <&gpio5>;
> +		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +		#thermal-sensor-cells = <1>;
> +	};
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	pinctrl-1 = <&pinctrl_i2c2_gpio>;
> +	sda-gpios = <&gpio1 1 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	scl-gpios = <&gpio1 0 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	pinctrl-1 = <&pinctrl_i2c3_gpio>;
> +	sda-gpios = <&gpio3 5 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	scl-gpios = <&gpio3 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	pinctrl-names = "default", "gpio";
> +	pinctrl-0 = <&pinctrl_i2c4>;
> +	pinctrl-1 = <&pinctrl_i2c4_gpio>;
> +	sda-gpios = <&gpio3 7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	scl-gpios = <&gpio3 8 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +	status = "okay";
> +};
> +
> +&mdio {
> +	ethphy2: ethernet-phy@2 {
> +		reg = <2>;
> +		micrel,led-mode = <1>;
> +		clocks = <&clks IMX6UL_CLK_ENET2_REF>;
> +		clock-names = "rmii-ref";
> +		status = "okay";
> +	};
> +};
> +
> +&pwm3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm3>;
> +	status = "okay";
> +};
> +
> +&pwm6 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm6>;
> +	status = "okay";
> +};
> +
> +&pwm7 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm7>;
> +	status = "okay";
> +};
> +
> +&pwm8 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm8>;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	status = "okay";
> +};
> +
> +/* UART4 * RS485  */
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart4>;
> +	rts-gpios = <&gpio3 2 GPIO_ACTIVE_HIGH>;
> +	rs485-rts-active-high;
> +	linux,rs485-enabled-at-boot-time;
> +	status = "okay";
> +};
> +
> +/* UART5 * RS232  */
> +&uart5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart5>;
> +	uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&uart7 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart7>;
> +	status = "okay";
> +};
> +
> +/* USB */
> +&usbotg1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usb_otg1>;
> +	vbus-supply = <&reg_usb_otg1_vbus>;
> +	dr_mode = "host";
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +&usbotg2 {
> +	vbus-supply = <&reg_usb_hub_vbus>;
> +	disable-over-current;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
> +	cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
> +	no-1-8-v;
> +	keep-power-in-suspend;
> +	wakeup-source;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	status = "disabled";
> +};
> +
> +&iomuxc_snvs {
> +

Drop this newline.

> +	pinctrl_rtc_int: rtcintgrp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER1__GPIO5_IO01	0x17059
> +		>;
> +	};
> +
> +	pinctrl_stmpe: stmpegrp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x17059
> +		>;
> +	};
> +
> +	pinctrl_tempsense: tempsensegrp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x17059
> +		>;
> +	};
> +
> +	pinctrl_tpm: tpmgrp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x17059
> +		>;
> +	};
> +
> +	pinctrl_usbhubpwr: usbhubpwrgrp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x17059
> +		>;
> +	};
> +
> +	pinctrl_user_leds_snvs: user_ledsgrp {
> +		fsl,pins = <
> +			MX6ULL_PAD_SNVS_TAMPER9__GPIO5_IO09	0x79
> +		>;
> +	};
> +};
> +
> +&iomuxc {
> +

Drop this newline.

> +	pinctrl_gpio: gpio_gpiogrp {

Could you name these pinctrl nodes more consistently.  If you really
need some delimiter in node name, hyphen rather than underscore is
recommended.

Shawn

> +		fsl,pins = <
> +			MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x17059  /* nUART_MUX_RS232 */
> +			MX6UL_PAD_CSI_DATA04__GPIO4_IO25	0x17059  /* nUART_MUX_DUAL_RX_TX */
> +		>;
> +	};
> +
> +	pinctrl_gpio_keys: gpio_keysgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x79
> +		>;
> +	};
> +
> +	pinctrl_ecspi3: ecspi3grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART2_RX_DATA__ECSPI3_SCLK	0x100b1
> +			MX6UL_PAD_UART2_RTS_B__ECSPI3_MISO	0x100b1
> +			MX6UL_PAD_UART2_CTS_B__ECSPI3_MOSI	0x100b1
> +			MX6UL_PAD_UART2_TX_DATA__GPIO1_IO20	0x10b0
> +		>;
> +	};
> +
> +	pinctrl_ecspi1: ecspi1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA20__ECSPI1_SCLK	0x100b1
> +			MX6UL_PAD_LCD_DATA23__ECSPI1_MISO	0x100b1
> +			MX6UL_PAD_LCD_DATA22__ECSPI1_MOSI	0x100b1
> +		>;
> +	};
> +
> +	pinctrl_ecspi1_cs: ecspi1csgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA21__GPIO3_IO26	0x10b0
> +			MX6UL_PAD_LCD_DATA05__GPIO3_IO10	0x10b0
> +			MX6UL_PAD_LCD_DATA06__GPIO3_IO11	0x10b0
> +		>;
> +	};
> +
> +
> +	pinctrl_enet2: enet2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_ENET2_RX_EN__ENET2_RX_EN	0x1b0b0
> +			MX6UL_PAD_ENET2_RX_ER__ENET2_RX_ER	0x1b0b0
> +			MX6UL_PAD_ENET2_RX_DATA0__ENET2_RDATA00	0x1b0b0
> +			MX6UL_PAD_ENET2_RX_DATA1__ENET2_RDATA01	0x1b0b0
> +			MX6UL_PAD_ENET2_TX_EN__ENET2_TX_EN	0x1b010
> +			MX6UL_PAD_ENET2_TX_DATA0__ENET2_TDATA00	0x1b010
> +			MX6UL_PAD_ENET2_TX_DATA1__ENET2_TDATA01	0x1b010
> +			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b010
> +		>;
> +	};
> +
> +	pinctrl_flexcan1: flexcan1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART3_CTS_B__FLEXCAN1_TX	0x0b0b0
> +			MX6UL_PAD_UART3_RTS_B__FLEXCAN1_RX	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_flexcan2: flexcan2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA10__FLEXCAN2_TX	0x0b0b0
> +			MX6UL_PAD_LCD_DATA11__FLEXCAN2_RX	0x0b0b0
> +		>;
> +	};
> +
> +	princtrl_flexcan2_en: flexcan2engrp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART1_CTS_B__GPIO1_IO18	0x17059
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO00__I2C2_SCL	0xb0
> +			MX6UL_PAD_GPIO1_IO01__I2C2_SDA	0xb0
> +		>;
> +	};
> +
> +	pinctrl_i2c2_gpio: i2c2gpiogrp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO00__GPIO1_IO00	0xb0
> +			MX6UL_PAD_GPIO1_IO01__GPIO1_IO01	0xb0
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA01__I2C3_SCL	0xb0
> +			MX6UL_PAD_LCD_DATA00__I2C3_SDA	0xb0
> +		>;
> +	};
> +
> +	pinctrl_i2c3_gpio: i2c3gpiogrp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA01__GPIO3_IO06	0xb0
> +			MX6UL_PAD_LCD_DATA00__GPIO3_IO05	0xb0
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA03__I2C4_SCL	0xb0
> +			MX6UL_PAD_LCD_DATA02__I2C4_SDA	0xb0
> +		>;
> +	};
> +
> +	pinctrl_i2c4_gpio: i2c4gpiogrp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA03__GPIO3_IO08	0xb0
> +			MX6UL_PAD_LCD_DATA02__GPIO3_IO07	0xb0
> +		>;
> +	};
> +
> +	pinctrl_pwm3: pwm3grp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO04__PWM3_OUT	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm6: pwm6grp {
> +		fsl,pins = <
> +			MX6UL_PAD_JTAG_TDI__PWM6_OUT	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm7: pwm7grp {
> +		fsl,pins = <
> +			MX6UL_PAD_JTAG_TCK__PWM7_OUT	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm8: pwm8grp {
> +		fsl,pins = <
> +			MX6UL_PAD_JTAG_TRST_B__PWM8_OUT	0x0b0b0
> +		>;
> +	};
> +
> +	pinctrl_s25fl064_hold: s25fl064_holdgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA12__GPIO3_IO17	0x100b1
> +		>;
> +	};
> +
> +	pinctrl_sai2: sai2grp {
> +		fsl,pins = <
> +			MX6UL_PAD_JTAG_TDI__SAI2_TX_BCLK	0x17088
> +			MX6UL_PAD_JTAG_TDO__SAI2_TX_SYNC	0x17088
> +			MX6UL_PAD_JTAG_TRST_B__SAI2_TX_DATA	0x11088
> +			MX6UL_PAD_JTAG_TCK__SAI2_RX_DATA	0x11088
> +			MX6UL_PAD_JTAG_TMS__SAI2_MCLK		0x17088
> +		>;
> +	};
> +
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART3_TX_DATA__UART3_DCE_TX	0x1b0b1
> +			MX6UL_PAD_UART3_RX_DATA__UART3_DCE_RX	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart4: uart4grp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_CLK__UART4_DCE_TX		0x1b0b1
> +			MX6UL_PAD_LCD_ENABLE__UART4_DCE_RX	0x1b0b1
> +			MX6UL_PAD_LCD_HSYNC__GPIO3_IO02	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart5: uart5grp {
> +		fsl,pins = <
> +			MX6UL_PAD_UART5_TX_DATA__UART5_DCE_TX	0x1b0b1
> +			MX6UL_PAD_UART5_RX_DATA__UART5_DCE_RX	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart7: uart7grp {
> +		fsl,pins = <
> +			MX6UL_PAD_LCD_DATA16__UART7_DCE_TX	0x1b0b1
> +			MX6UL_PAD_LCD_DATA17__UART7_DCE_RX	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usb_otg1: usbotg1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_CSI_DATA06__GPIO4_IO27	0x80
> +		>;
> +	};
> +
> +	pinctrl_usbotg1pwr: usbotg1pwrgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_CSI_DATA07__GPIO4_IO28	0x17059
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x17059
> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x10059
> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x17059
> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x17059
> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x17059
> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x17059
> +			MX6UL_PAD_UART1_RTS_B__GPIO1_IO19	0x17059
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_100mhz: usdhc1100mhzgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x170b9
> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x100b9
> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x170b9
> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x170b9
> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x170b9
> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x170b9
> +		>;
> +	};
> +
> +	pinctrl_usdhc1_200mhz: usdhc1200mhzgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x170f9
> +			MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x100f9
> +			MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x170f9
> +			MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x170f9
> +			MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x170f9
> +			MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x170f9
> +		>;
> +	};
> +
> +	pinctrl_user_leds: user_ledsgrp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO03__GPIO1_IO03	0x79
> +		>;
> +	};
> +};
> -- 
> 2.25.1
> 
