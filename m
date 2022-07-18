Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8ADE5782F6
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 15:01:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234760AbiGRNBU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 09:01:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235172AbiGRNBD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 09:01:03 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2044F26AEA
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:00:49 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id z22so5524581lfu.7
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uICas2Qj7bPn552YuGzWSCwL7+qyPpffHKwWCwHJ5Dc=;
        b=yHqe26RezMmO2NtGU5Crw40PGvV/cF1GKXaMyZZ+QwI7ZeI5bd6LzfT1EHBtbXvSnr
         K4H52Y2LVnuEh9AtDwZDSee12mqEYPrhYzUHpll3o+Ka47M2fitciNGsKQbHa89ejXc7
         ac3Oz3lIp7WiglZZJO76fiS07oNQZhxVmXlPBKae/K8CBcs4ZVgrRJ3W44YRU9OUV8CP
         3PQ8YSVS4UqWqT3zelfyYjAX1RQMTAHVgz2pvfnDkZ3vgJzStttbiqQtsRnomFMPb2pr
         a/OD9RpHn935ZMF19t7H2iREgI0v23Pp8T4bmo4CBPvAgEqeICf19epbMpd3X2gdQtam
         WFjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uICas2Qj7bPn552YuGzWSCwL7+qyPpffHKwWCwHJ5Dc=;
        b=WEMb6Zw/ypSfEb47wAqwyiSl+jg/e4H5T6KQemNxpXv0pCX9H9yvFNmEK2eWyxlw0j
         5cXPVmeGDdSGjc9QSDbrdrKNheNmKY4buw1Wsb6A9s08p1QvWvA9BHtn7j6Qruo1M654
         n8BlBfEKTh9NhfDkBrx+xHGvMiyDw3RrUKE0jktwuZAbIEUFKkPX2PvCAUJIlGRb3NkN
         WwakPxPbFrzDnVtaPkISUKjgqro6wnS9ELnEabLlwOwMmTxA4K7rHq9AOX2DGFyefOx7
         IwqGNh5qg20sEqg9cYXoC07/TPJvnA63aJUqi/z74qtQ6SBFrw2wHJ+I9HCcmTMXNFmo
         AYBg==
X-Gm-Message-State: AJIora/8XPSHZZCAZR5gNZKKz4Db9BLNJuoMgWGQjG7/yYJQyJkzH2Ke
        fenXidl8O8stUKzwnyt+n3gnoA==
X-Google-Smtp-Source: AGRyM1u7Xpx1HR+XqvcBayrFPRUXytDwHTJHTsYb/AcqrR5v90/n4LVLAHJQvujYPSx/Cnu45yBdNw==
X-Received: by 2002:a05:6512:1598:b0:48a:4808:b3c6 with SMTP id bp24-20020a056512159800b0048a4808b3c6mr1239068lfb.465.1658149245654;
        Mon, 18 Jul 2022 06:00:45 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id u27-20020ac243db000000b00489d6460831sm2576011lfl.266.2022.07.18.06.00.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 06:00:45 -0700 (PDT)
Message-ID: <bdaa01d4-4d0d-5c22-4918-637225177140@linaro.org>
Date:   Mon, 18 Jul 2022 15:00:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH RESEND v3 3/3] arm64: dts: imx: add imx8dxl support
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
 <20220715231241.346778-4-shenwei.wang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220715231241.346778-4-shenwei.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/07/2022 01:12, Shenwei Wang wrote:
> i.MX8DXL is a device targeting the automotive and industrial market
> segments. The chip is designed to achieve both high performance and
> low power consumption. It has a dual (2x) Cortex-A35 processor.
> 
> This patch adds the imx8dxl soc and EVK board support.

I saw this patch and I was already commenting it:
https://lore.kernel.org/all/20220404134609.2676793-2-abel.vesa@nxp.com/

Doing things twice, reviewing twice is waste of time. I actually spotted
this duplication after I perform a review, but this patch should be
abandoned and Abel's patches should rather go.

> 

(...)

> +
> +/ {
> +	model = "Freescale i.MX8DXL EVK";
> +	compatible = "fsl,imx8dxl-evk", "fsl,imx8dxl";
> +
> +	chosen {
> +		stdout-path = &lpuart0;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x80000000 0 0x40000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		/*
> +		 *Memory reserved for optee usage. Please do not use.
> +		 *This will be automaticky added to dtb if OP-TEE is installed.
> +		 *optee@96000000 {
> +		 *	reg = <0 0x96000000 0 0x2000000>;
> +		 *     no-map;
> +		 *};
> +		 */

Now it is not a proper Linux coding style comment. See Coding Style.

> +
> +		/* global autoconfigured region for contiguous allocations */
> +		linux,cma {
> +			compatible = "shared-dma-pool";
> +			reusable;
> +			size = <0 0x14000000>;
> +			alloc-ranges = <0 0x98000000 0 0x14000000>;
> +			linux,cma-default;
> +		};
> +	};
> +
> +	mux3_en: regulator-0 {
> +		compatible = "regulator-fixed";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "mux3_en";
> +		gpio = <&pca6416_2 8 GPIO_ACTIVE_LOW>;
> +		regulator-always-on;
> +	};
> +
> +	reg_fec1_sel: regulator-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fec1_supply";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&pca6416_1 11 GPIO_ACTIVE_HIGH>;
> +		regulator-always-on;
> +		status = "disabled";
> +	};
> +
> +	reg_fec1_io: regulator-2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fec1_io_supply";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		gpio = <&max7322 0 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +		status = "disabled";
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "SD1_SPWR";
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +		gpio = <&lsio_gpio4 30 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		off-on-delay-us = <3480>;
> +	};
> +};
> +
> +&eqos {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_eqos>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy0>;
> +	nvmem-cells = <&fec_mac1>;
> +	nvmem-cell-names = "mac-address";
> +	snps,reset-gpios = <&pca6416_1 2 GPIO_ACTIVE_LOW>;
> +	snps,reset-delays-us = <10 20 200000>;
> +	status = "okay";
> +
> +	mdio {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +			eee-broken-1000t;
> +			qca,disable-smarteee;
> +			vddio-supply = <&vddio0>;
> +
> +			vddio0: vddio-regulator {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +		};
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1>;
> +	phy-mode = "rgmii-txid";
> +	phy-handle = <&ethphy1>;
> +	fsl,magic-packet;
> +	rx-internal-delay-ps = <2000>;
> +	nvmem-cells = <&fec_mac0>;
> +	nvmem-cell-names = "mac-address";
> +	phy-reset-gpios = <&pca6416_1 0 GPIO_ACTIVE_LOW>;
> +	phy-reset-duration = <10>;
> +	phy-reset-post-delay = <150>;
> +	status = "disabled";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy1: ethernet-phy@1 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <1>;
> +			qca,disable-smarteee;
> +			vddio-supply = <&vddio1>;
> +
> +			vddio1: vddio-regulator {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +			};
> +		};
> +	};
> +};
> +
> +&flexspi0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexspi0>;
> +	nxp,fspi-dll-slvdly = <4>;
> +	status = "okay";
> +
> +	mt35xu512aba0: flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		spi-max-frequency = <133000000>;
> +		spi-tx-bus-width = <8>;
> +		spi-rx-bus-width = <8>;
> +	};
> +};
> +
> +&i2c2 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	pca6416_1: gpio@20 {
> +		compatible = "ti,tca6416";
> +		reg = <0x20>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
> +
> +	pca6416_2: gpio@21 {
> +		compatible = "ti,tca6416";
> +		reg = <0x21>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +	};
> +
> +	pca9548_1: gpio@70 {
> +		compatible = "nxp,pca9548";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +
> +		i2c@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x0>;
> +
> +			max7322: gpio@68 {
> +				compatible = "maxim,max7322";
> +				reg = <0x68>;
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +				status = "disabled";
> +			};
> +		};
> +
> +		i2c@4 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x4>;
> +		};
> +
> +		i2c@5 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x5>;
> +		};
> +
> +		i2c@6 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x6>;
> +		};
> +	};
> +};
> +
> +&i2c3 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +
> +	pca6416_3: gpio@20 {
> +		compatible = "ti,tca6416";
> +		reg = <0x20>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&lsio_gpio2>;
> +		interrupts = <5 IRQ_TYPE_EDGE_RISING>;
> +	};
> +
> +	pca9548_2: gpio@70 {
> +		compatible = "nxp,pca9548";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x70>;
> +
> +		i2c@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x0>;
> +		};
> +
> +		i2c@1 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x1>;
> +		};
> +
> +		i2c@2 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x2>;
> +		};
> +
> +		i2c@3 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x3>;
> +		};
> +
> +		i2c@4 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x4>;
> +		};
> +	};
> +};
> +
> +&lpuart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_lpuart0>;
> +	status = "okay";
> +};
> +
> +&lsio_gpio4 {
> +	status = "okay";
> +};
> +
> +&lsio_gpio5 {
> +	status = "okay";
> +};
> +
> +&thermal_zones {
> +	pmic-thermal0 {
> +		polling-delay-passive = <250>;
> +		polling-delay = <2000>;
> +		thermal-sensors = <&tsens IMX_SC_R_PMIC_0>;
> +
> +		trips {
> +			pmic_alert0: trip0 {
> +				temperature = <110000>;
> +				hysteresis = <2000>;
> +				type = "passive";
> +			};
> +			pmic_crit0: trip1 {
> +				temperature = <125000>;
> +				hysteresis = <2000>;
> +				type = "critical";
> +			};
> +		};
> +
> +		cooling-maps {
> +			map0 {
> +				trip = <&pmic_alert0>;
> +				cooling-device =
> +					<&A35_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +					<&A35_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +			};
> +		};
> +	};
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
> +	bus-width = <8>;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
> +	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
> +	bus-width = <4>;
> +	vmmc-supply = <&reg_usdhc2_vmmc>;
> +	cd-gpios = <&lsio_gpio5 1 GPIO_ACTIVE_LOW>;
> +	wp-gpios = <&lsio_gpio5 0 GPIO_ACTIVE_HIGH>;
> +	max-frequency = <100000000>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHB_PAD	0x000514a0
> +			IMX8DXL_COMP_CTL_GPIO_1V8_3V3_GPIORHK_PAD	0x000014a0
> +			IMX8DXL_SPI3_CS0_ADMA_ACM_MCLK_OUT1		0x0600004c
> +			IMX8DXL_SNVS_TAMPER_OUT1_LSIO_GPIO2_IO05_IN	0x0600004c
> +		>;
> +	};
> +
> +	pinctrl_usbotg1: otg1 {

All pinctrl groups must end with "grp". Just open the bindings for
several iMX pin controllers.

I pointed it out and you still did not fix it.


> +		fsl,pins = <
> +			IMX8DXL_USB_SS3_TC0_CONN_USB_OTG1_PWR		0x00000021
> +		>;
> +	};
> +
> +	pinctrl_usbotg2: otg2 {
> +		fsl,pins = <
> +			IMX8DXL_USB_SS3_TC1_CONN_USB_OTG2_PWR		0x00000021
> +		>;
> +	};

(...)

> diff --git a/arch/arm64/boot/dts/freescale/imx8dxl.dtsi b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> new file mode 100644
> index 0000000000000..2de56dfa16d6b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8dxl.dtsi
> @@ -0,0 +1,245 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2019~2020 NXP
> + */
> +
> +#include <dt-bindings/clock/imx8-clock.h>
> +#include <dt-bindings/firmware/imx/rsrc.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/pads-imx8dxl.h>
> +#include <dt-bindings/thermal/thermal.h>
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	aliases {
> +		ethernet0 = &fec1;
> +		ethernet1 = &eqos;
> +		gpio0 = &lsio_gpio0;
> +		gpio1 = &lsio_gpio1;
> +		gpio2 = &lsio_gpio2;
> +		gpio3 = &lsio_gpio3;
> +		gpio4 = &lsio_gpio4;
> +		gpio5 = &lsio_gpio5;
> +		gpio6 = &lsio_gpio6;
> +		gpio7 = &lsio_gpio7;
> +		i2c2 = &i2c2;
> +		i2c3 = &i2c3;

Still not a SoC aliases but rather board.

> +		mmc0 = &usdhc1;
> +		mmc1 = &usdhc2;
> +		mu1 = &lsio_mu1;
> +		serial0 = &lpuart0;
> +		serial1 = &lpuart1;
> +		serial2 = &lpuart2;
> +		serial3 = &lpuart3;
> +	};

(...)

> +
> +	xtal32k: clock-xtal32k {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <32768>;
> +		clock-output-names = "xtal_32KHz";
> +	};
> +
> +	xtal24m: clock-xtal24m {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;


Didn't you ignore (again) comments?

So let me again clarify - either you implement the comment or you keep
discussion going.

You keep not implementing the comments and you decided not discussing
them, so it's still a NAK.


Best regards,
Krzysztof
