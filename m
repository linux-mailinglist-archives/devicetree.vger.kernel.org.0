Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 349E96A91C1
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 08:34:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229590AbjCCHed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 02:34:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjCCHec (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 02:34:32 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E19F72D48
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 23:34:29 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id x3so6648785edb.10
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 23:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677828868;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UtLehwg5KDa7N4pB/sbs4iJ7uEHe3f8LbRc3nhEFtZI=;
        b=IXJj2hp42RoqlsNXky4+MPn0qGYdDQPAhVYrM3SCm0z9JZSIDGDZSfX1S3IVqKxJKc
         6B6xv5kGnQAsqu7QoFP+QVwHCgyD7kYJvHwwqh3lXT34uppqZQAtJhuv9opAU6RixFTZ
         OrzpUb/IkPBzGEu7adNPI7TLeBY/AcUXJuAf8bnvsg4XxuDBXkJ4LQhyI9WK7cIC9k1M
         BfS/vGCn/+xYshCXnbbILief9WqaP6Ya/Mg023VTsNOcWvyIsATSepUnV1AP3Fg33BDh
         c5aQ3HBR1MTyasgDf4nlajbmQzgLQBOmtAPT6GjdM0aeLCxuYda9DKifTCEiLAGq9xdr
         a/sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677828868;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UtLehwg5KDa7N4pB/sbs4iJ7uEHe3f8LbRc3nhEFtZI=;
        b=M+/JIZJVYGKTO0rVqqgYwuQjQ3/y9JuV2sBeRK61oJD8PHxs4jx1vnIA6r1LeF2Eqj
         tpWQswCKAyeZMos5yDxhV35P9xFDZAb462xE8CC1VlxnJpaVyvwF5hPxsfDv/KXcGU70
         5wEzT/Asvmx7NNcjhxac4Iu2fP1mXbVXg9RFOABG8WGQt6Pa7Gr67J4ZKyOVWsi3BRU5
         fsfUCifWYyTQvzt/iQgKVTYTKA/Dyr5Z4/mt75tYFHdUjjdASHwmXPDbGE/+8sI/B409
         P1ZCEoLIP+Vmw2i0L2WoThNqDWrJQf3OsJWuhbkEpmmNT8Yrw82pbIROocMHz0P71CAa
         Y4vg==
X-Gm-Message-State: AO0yUKWsxJDoeuglanreI0Rr+rkx00vgGGCWiFSw/08DCw9h9HJPyfVl
        aoPWVCEtZUzVXUq+r7RH4UFP/g==
X-Google-Smtp-Source: AK7set+gKAO0idE33ZsRyuISfWXTl21UMWQiMMZxYTWZ+KTWHvPWk20v/ALFP3ome61H+6YlMj5wvw==
X-Received: by 2002:a17:906:4bcd:b0:8b1:812f:2578 with SMTP id x13-20020a1709064bcd00b008b1812f2578mr721189ejv.45.1677828868400;
        Thu, 02 Mar 2023 23:34:28 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x20-20020a50d614000000b004aeeb476c5bsm163802edi.24.2023.03.02.23.34.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 23:34:27 -0800 (PST)
Message-ID: <5bfc3879-085b-080e-7bf1-e698a35375d2@linaro.org>
Date:   Fri, 3 Mar 2023 08:34:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] arm64: dts: imx8mp: Add support for DH electronics
 i.MX8M Plus DHCOM and PDK3
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org
References: <20230302231626.159984-1-marex@denx.de>
 <20230302231626.159984-2-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230302231626.159984-2-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2023 00:16, Marek Vasut wrote:
> Add support for DH electronics i.MX8M Plus DHCOM SoM on PDK3 carrier board.
> Currently supported are serial console, EQoS and FEC ethernets, eMMC, SD,
> SPI NOR, CAN, M.2 E-Key or M.2 M-Key PCIe, USB .
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Frieder Schrempf <frieder.schrempf@kontron.de>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Li Yang <leoyang.li@nxp.com>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Marek Vasut <marex@denx.de>
> Cc: Matthias Schiffer <matthias.schiffer@tq-group.com>
> Cc: Max Krummenacher <max.krummenacher@toradex.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Stefan Wahren <stefan.wahren@i2se.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm64/boot/dts/freescale/Makefile        |   1 +
>  .../boot/dts/freescale/imx8mp-dhcom-pdk3.dts  | 321 ++++++++++++++++++
>  2 files changed, 322 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> 
> diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> index 198fff3731ae4..f90b126afbaad 100644
> --- a/arch/arm64/boot/dts/freescale/Makefile
> +++ b/arch/arm64/boot/dts/freescale/Makefile
> @@ -91,6 +91,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mn-venice-gw7902.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-beacon-kit.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-debix-model-a.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk2.dtb
> +dtb-$(CONFIG_ARCH_MXC) += imx8mp-dhcom-pdk3.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-evk.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-icore-mx8mp-edimm2.2.dtb
>  dtb-$(CONFIG_ARCH_MXC) += imx8mp-msc-sm2s-ep1.dtb
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> new file mode 100644
> index 0000000000000..c5f0607f43bcc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dts
> @@ -0,0 +1,321 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2023 Marek Vasut <marex@denx.de>

Isn't having personal copyrights with a company/work email a bit
contradicting itself?

> + *
> + * DHCOM iMX8MP variant:
> + * DHCM-iMX8ML8-C160-R409-F1638-SPI16-GE-CAN2-SD-RTC-WBTA-ADC-T-RGB-CSI2-HS-I-01D2
> + * DHCOM PCB number: 660-100 or newer
> + * PDK3 PCB number: 669-100 or newer
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +#include "imx8mp-dhcom-som.dtsi"
> +
> +/ {
> +	model = "DH electronics i.MX8M Plus DHCOM Premium Developer Kit (3)";
> +	compatible = "dh,imx8mp-dhcom-pdk3", "dh,imx8mp-dhcom-som",
> +		     "fsl,imx8mp";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	clk_ext_audio_codec: clock-codec {
> +		#clock-cells = <0>;
> +		clock-frequency = <24000000>;
> +		compatible = "fixed-clock";
> +	};
> +
> +	clk_xtal25: clk-xtal25 {

Keep same prefix, so either clock or clk (preferably clock to match
further usage)

> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <25000000>;
> +	};
> +
> +	connector {
> +		compatible = "usb-c-connector";
> +		label = "USB-C";
> +		data-role = "dual";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				usb_c_0_hs_ep: endpoint {
> +					remote-endpoint = <&dwc3_0_hs_ep>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				usb_c_0_ss_ep: endpoint {
> +					remote-endpoint = <&ptn5150_in_ep>;
> +				};
> +			};
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		button-0 {
> +			gpios = <&gpio1 9 GPIO_ACTIVE_LOW>; /* GPIO A */
> +			label = "TA1-GPIO-A";
> +			linux,code = <KEY_A>;
> +			pinctrl-0 = <&pinctrl_dhcom_a>;
> +			pinctrl-names = "default";
> +			wakeup-source;
> +		};
> +
> +		button-1 {
> +			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>; /* GPIO B */
> +			label = "TA2-GPIO-B";
> +			linux,code = <KEY_B>;
> +			pinctrl-0 = <&pinctrl_dhcom_b>;
> +			pinctrl-names = "default";
> +			wakeup-source;
> +		};
> +
> +		button-2 {
> +			gpios = <&gpio5 2 GPIO_ACTIVE_LOW>; /* GPIO C */
> +			label = "TA3-GPIO-C";
> +			linux,code = <KEY_C>;
> +			pinctrl-0 = <&pinctrl_dhcom_c>;
> +			pinctrl-names = "default";
> +			wakeup-source;
> +		};
> +
> +		button-3 {
> +			gpios = <&gpio5 22 GPIO_ACTIVE_LOW>; /* GPIO E */
> +			label = "TA4-GPIO-E";
> +			linux,code = <KEY_E>;
> +			pinctrl-0 = <&pinctrl_dhcom_e>;
> +			pinctrl-names = "default";
> +			wakeup-source;
> +		};
> +	};
> +
> +	led {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "off";
> +			function = LED_FUNCTION_INDICATOR;
> +			function-enumerator = <0>;
> +			gpios = <&gpio4 27 GPIO_ACTIVE_HIGH>; /* GPIO D */
> +			pinctrl-0 = <&pinctrl_dhcom_d>;
> +			pinctrl-names = "default";
> +		};
> +
> +		led-1 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "off";
> +			function = LED_FUNCTION_INDICATOR;
> +			function-enumerator = <1>;
> +			gpios = <&gpio5 23 GPIO_ACTIVE_HIGH>; /* GPIO F */
> +			pinctrl-0 = <&pinctrl_dhcom_f>;
> +			pinctrl-names = "default";
> +		};
> +
> +		led-2 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "off";
> +			function = LED_FUNCTION_INDICATOR;
> +			function-enumerator = <2>;
> +			gpios = <&gpio1 0 GPIO_ACTIVE_HIGH>; /* GPIO G */
> +			pinctrl-0 = <&pinctrl_dhcom_g>;
> +			pinctrl-names = "default";
> +		};
> +
> +		led-3 {
> +			color = <LED_COLOR_ID_GREEN>;
> +			default-state = "off";
> +			function = LED_FUNCTION_INDICATOR;
> +			function-enumerator = <3>;
> +			gpios = <&gpio1 5 GPIO_ACTIVE_HIGH>; /* GPIO I */
> +			pinctrl-0 = <&pinctrl_dhcom_i>;
> +			pinctrl-names = "default";
> +		};
> +	};
> +
> +	reg_avdd: regulator-avdd {	/* AUDIO_VDD */
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "AUDIO_VDD";
> +	};
> +};
> +
> +&i2c5 {
> +	i2cmux@70 {

i2c-mux@

> +		compatible = "nxp,pca9540";
> +		reg = <0x70>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		i2cmuxed0: i2c@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0>;
> +
> +			typec@3d {
> +				compatible = "nxp,ptn5150";
> +				reg = <0x3d>;
> +				interrupt-parent = <&gpio4>;
> +				interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
> +				pinctrl-names = "default";
> +				pinctrl-0 = <&pinctrl_ptn5150>;
> +				status = "okay";

okay is by default for new nodes

> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						ptn5150_in_ep: endpoint {
> +							remote-endpoint = <&usb_c_0_ss_ep>;
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						ptn5150_out_ep: endpoint {
> +							remote-endpoint = <&dwc3_0_ss_ep>;
> +						};
> +					};
> +				};
> +			};
> +
> +			power-sensor@40 {
> +			    compatible = "ti,ina238";
> +			    reg = <0x40>;
> +			    shunt-resistor = <20000>;	/* 0.02 R */
> +			    ti,shunt-gain = <1>;	/* Drop cca. 40mV */
> +			};
> +
> +			eeprom_board: eeprom@54 {
> +				compatible = "atmel,24c04";
> +				pagesize = <16>;
> +				reg = <0x54>;
> +			};
> +
> +			pcieclk: clk@6b {

clock@

> +				compatible = "skyworks,si52144";
> +				reg = <0x6b>;
> +				clocks = <&clk_xtal25>;
> +				#clock-cells = <1>;
> +			};
> +		};
> +
> +		i2cmuxed1: i2c@1 {	/* HDMI DDC I2C */
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <1>;
> +		};
> +	};
> +};
> +
> +&ethphy0g {
> +	reg = <7>;
> +};
> +
> +&fec {	/* Second ethernet */
> +	pinctrl-0 = <&pinctrl_fec_rgmii>;
> +	phy-handle = <&ethphypdk>;
> +	phy-mode = "rgmii-id";
> +
> +	mdio {
> +		ethphypdk: ethernet-phy@7 { /* Micrel KSZ9131RNXI */
> +			compatible = "ethernet-phy-id0022.1642",
> +				     "ethernet-phy-ieee802.3-c22";
> +			interrupt-parent = <&gpio4>;
> +			interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
> +			pinctrl-0 = <&pinctrl_ethphy1>;
> +			pinctrl-names = "default";
> +			reg = <7>;
> +			reset-assert-us = <1000>;
> +			/* RESET_N signal rise time ~100ms */
> +			reset-deassert-us = <120000>;
> +			reset-gpios = <&gpio4 2 GPIO_ACTIVE_LOW>;
> +			status = "okay";

okay is by default for new nodes

> +		};
> +	};
> +};
> +
> +&flexcan1 {
> +	status = "okay";
> +};


Best regards,
Krzysztof

