Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D923C5F2DAE
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 11:30:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230260AbiJCJaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 05:30:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230525AbiJCJ3B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 05:29:01 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0DDA4B4A8
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 02:27:16 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id d6so1577983lfs.10
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 02:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=sTPZsIY8cpcbOJrrK7RT0O81upxDZy/Gy8D5ir0wg9c=;
        b=JA0TcEvpJmlG8D5Dx8gOKhrnUp8Af90sJB0CrYAcqSQ/+0u9Kidm1OjzG4buICYPEH
         MLsNKQtJZkXhhVLOP/qFl0+VXcdS4O9lynfXEwR3SMZ+pOZmq+ULFdFbH6skgY+FHHk4
         EzWnjPhwbr5o2C/PqpoGMUutWR9Rods+C7mmiMfqRiesWL6PJqu4BNyRvruWJ2deW2p5
         WSgws++7mL8GYr7BlTFt/x42IpbEksgq+3MFDKFVbLKUGinf20hRAtHvyGUaTOYExMDl
         DYiWurDl+DTFTcK6zyB9hMebRg4sr0ILoPWSVsnhAoM8D0DBQHpIEa1ja/Bpl3L8tD9z
         1woA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=sTPZsIY8cpcbOJrrK7RT0O81upxDZy/Gy8D5ir0wg9c=;
        b=1VQxoLuCmz28BzVQa1YyBJeNcFJN+9oV8y859MAY+RM6CpyZV6V4A+nAIvrkDWJnHD
         ItTDepL+l0SDxRGRLy6vQ7aOpkzTxDQ6UwTJwQSicp9zjal5wrUCmdhX9YNQIC7KwSmp
         gO5NRJ6OHZVkRY7BFkx9EKox2S2ElN5pmyf2famXfBY0pnljloSQU843RgWdNM9DSEby
         XrWG5TC+yX3cTOUKfI6REcGgqcNB4gRqm6TE9OJK4nxU4bP+1Dod+/N3i3xkarLY0j7d
         Gpmut162ufuhj/e2BJy4GKcLY8qttKtHhq8vXsP+tC5uF1jicibnq/bD7zd9o4jQ+3bm
         pX8A==
X-Gm-Message-State: ACrzQf0nnmiBnEW5FEPleo0+nOt5JkdcUxifjBtFbpnG5sV0/WgIwO1A
        jUWLFn5ctiA9BU9NDGk7B0WB2Q==
X-Google-Smtp-Source: AMsMyM5oLUUfTixQFBLxUIv8J3f8XjE7bohW0buigrPindlnYsws01w7gpjgUJFUxdXGn0RiagtGeg==
X-Received: by 2002:ac2:5451:0:b0:49e:bc93:3395 with SMTP id d17-20020ac25451000000b0049ebc933395mr7766099lfn.392.1664789216648;
        Mon, 03 Oct 2022 02:26:56 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m14-20020a056512114e00b00494706193adsm1383418lfg.208.2022.10.03.02.26.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 02:26:56 -0700 (PDT)
Message-ID: <152eb491-ddff-9639-a72b-968e3fc5949c@linaro.org>
Date:   Mon, 3 Oct 2022 11:26:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 3/3] arm64: dts: Add device tree for the Debix Model A
 Board
To:     Daniel Scally <dan.scally@ideasonboard.com>,
        Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        laurent.pinchart@ideasonboard.com, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net
References: <20221003083705.22495-1-dan.scally@ideasonboard.com>
 <20221003083705.22495-4-dan.scally@ideasonboard.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221003083705.22495-4-dan.scally@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 10:37, Daniel Scally wrote:
> Add a device tree file describing the Debix Model A board from
> Polyhex Technology Co.
> 
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../dts/freescale/imx8mp-debix-model-a.dts    | 550 ++++++++++++++++++
>  2 files changed, 551 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 238a83e5b8c6..f26e802cef82 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -79,6 +79,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-tqma8mqnl-mba8mx.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-var-som-symphony.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-phyboard-pollux-rdk.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> new file mode 100644
> index 000000000000..6d0fa3930d0b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-debix-model-a.dts
> @@ -0,0 +1,550 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2019 NXP
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/usb/pd.h>
> +
> +#include "imx8mp.dtsi"
> +
> +/ {
> +	model = "Polyhex Debix Model A (2GB) i.MX8MPlus board";
> +	compatible = "polyhex,imx8mp-debix-modela2gb", "fsl,imx8mp";
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_gpio_led>;
> +
> +		status-led {
> +			function = LED_FUNCTION_POWER;
> +			color = <LED_COLOR_ID_RED>;
> +			gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +		};
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&A53_0 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_1 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_2 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&A53_3 {
> +	cpu-supply = <&buck2>;
> +};
> +
> +&eqos {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_eqos>;
> +	phy-connection-type = "rgmii-id";
> +	phy-handle = <&ethphy0>;
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
> +			reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <20>;
> +			reset-deassert-us = <200000>;
> +		};
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec>;
> +	phy-connection-type = "rgmii-id";
> +	phy-handle = <&ethphy1>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy1: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +			reset-gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10>;
> +			reset-deassert-us = <150>;
> +		};
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	pmic@25 {
> +		reg = <0x25>;
> +		compatible = "nxp,pca9450c";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 GPIO_ACTIVE_LOW>;

Nope, wrong flag. This is a hint for us that you based your DTS on
something ancient (e.g. broken downstream stuff). Please start from
*scratch* and write your DTS based on a board taken from mainline.

There is no point for us to repeat review for all the things  we already
fixed in mainline.


> +
> +		regulators {
> +			buck1: BUCK1 {
> +				regulator-name = "BUCK1";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +			};
> +
> +			buck2: BUCK2 {
> +				regulator-name = "BUCK2";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <2187500>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <3125>;
> +				nxp,dvs-run-voltage = <950000>;
> +				nxp,dvs-standby-voltage = <850000>;
> +			};
> +
> +			buck4: BUCK4{
> +				regulator-name = "BUCK4";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5: BUCK5{
> +				regulator-name = "BUCK5";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6: BUCK6 {
> +				regulator-name = "BUCK6";
> +				regulator-min-microvolt = <600000>;
> +				regulator-max-microvolt = <3400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1: LDO1 {
> +				regulator-name = "LDO1";
> +				regulator-min-microvolt = <1600000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2: LDO2 {
> +				regulator-name = "LDO2";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1150000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3: LDO3 {
> +				regulator-name = "LDO3";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4: LDO4 {
> +				regulator-name = "LDO4";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo5: LDO5 {
> +				regulator-name = "LDO5";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c4>;
> +	status = "okay";
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c02";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +	};
> +
> +	hym8563@51 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation



Best regards,
Krzysztof

