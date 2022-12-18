Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23FEF650465
	for <lists+devicetree@lfdr.de>; Sun, 18 Dec 2022 19:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbiLRSm2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Dec 2022 13:42:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbiLRSm1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Dec 2022 13:42:27 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A03E93893
        for <devicetree@vger.kernel.org>; Sun, 18 Dec 2022 10:42:25 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id c1so10771943lfi.7
        for <devicetree@vger.kernel.org>; Sun, 18 Dec 2022 10:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+agFvIpw1AyPz/b80qh9FbY1bWBFnqitRzpSRPrRS24=;
        b=iRFeWKuHAGZDLQBj8wKPvyqm8Dre9gOMZz4k0TAbinao5JxUTeM50QHYUnQFuSFBpf
         MYO1//5f0XMzrlm9YuqubulNC3qtumiW0FABIO3mAmWmXoQyGnaGqkaXfxe2dU+1dn/Q
         Kswl5mnMtizPuf/WJWuJJFNECh7PFW3lNzxbQIdwfaqziaUcRgMpfy62igtTYMo2iMo5
         YKMUn8by4X8xuIMASlElXiaGt+peL8W0EFdWbmZZ9Y/iKgsOfKzOkNqMzuUf1ouU9v4n
         rw289Vh1OBbCQPlhoIrEfWslDcouKhiY791sVJJTKxtBoEScnZLbVNn4ON9pnAebS7nO
         FB3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+agFvIpw1AyPz/b80qh9FbY1bWBFnqitRzpSRPrRS24=;
        b=dIZsbwiDRkneouT3W4WQj7P3oQY/23rWcrb/ojW44xEirGsngRMyiYfhHqN+jhWWy4
         mXeKELduiIX4stfVZATqfwO29s87gd0rC/q6kJ9lS7KxSUD12TsboaYNCMzjunT6UScF
         BSrL38aOu8eIXCnhpKRvuzWkiSnvGgXf7WOAyP5ZEWVgbUi7tRnfsHcu86Ixh9lvSf4u
         u9pX/eZMi8IEKDDXsSmx1ru6gyALkVKzzSHOWAOxDukPfs2c+ii7ug7WBrmekAq/XpqK
         0Y8EB9u1esARTdd5i2/u67FQp70eLugFxQqDcSHwciw9iyjuib5ZtbOxVu99cn68Qq1L
         rhrg==
X-Gm-Message-State: ANoB5pkgbsNf2Nim7qnYqTIIVH38mtGleFdbg+NKXcVdH2K7e764rkJv
        z7y8071HXRnkFeItrbzQ9h8uhg==
X-Google-Smtp-Source: AA0mqf4tvcyd9aNP0DzCQOpMufm4ZQAVo9HezsyQK48pwUjnipumIOekUNNyRFQ7Ds1K9FtYSqACRQ==
X-Received: by 2002:a19:5e5e:0:b0:4b5:6042:d136 with SMTP id z30-20020a195e5e000000b004b56042d136mr9104520lfi.22.1671388944002;
        Sun, 18 Dec 2022 10:42:24 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id r16-20020ac24d10000000b004b4e4671212sm872696lfi.232.2022.12.18.10.42.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Dec 2022 10:42:23 -0800 (PST)
Message-ID: <c5b8c9d1-6391-fb76-c380-6f0fdb3cc878@linaro.org>
Date:   Sun, 18 Dec 2022 19:42:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH V2 2/2] arm64: dts: imx: Introduce imx8mp-beacon-kit
To:     Adam Ford <aford173@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     aford@beaconembedded.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221217234340.819752-1-aford173@gmail.com>
 <20221217234340.819752-2-aford173@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221217234340.819752-2-aford173@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/12/2022 00:43, Adam Ford wrote:
> Beacon Embedded has an i.MX8M Plus development kit which consists
> of a SOM + baseboard.  The SOM includes Bluetooth, WiFi, QSPI, eMMC,
> and one Ethernet PHY. The baseboard includes audio, HDMI, USB-C Dual
> Role port, USB Hub with five ports, a PCIe slot, and a second Ethernet
> PHY.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2:  Fix whitespace, remove dead nodes, and fix some node and
> parameter names to address errors in 'make dt_binding_check'

You still cannot check/test/build this DTS without Makefile.

> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts b/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
> new file mode 100644
> index 000000000000..70399f2419cf
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
> @@ -0,0 +1,549 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright 2022 Logic PD, Inc dba Beacon EmbeddedWorks
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/usb/pd.h>
> +#include <dt-bindings/phy/phy-imx8-pcie.h>
> +#include "imx8mp.dtsi"
> +#include "imx8mp-beacon-som.dtsi"
> +
> +/ {
> +	model = "Beacon EmbeddedWorks i.MX8MPlus Development kit";
> +	compatible = "beacon,imx8mp-beacon-kit", "fsl,imx8mp";
> +
> +	aliases {
> +		ethernet0 = &eqos;
> +		ethernet1 = &fec;
> +	};
> +
> +	chosen {
> +		stdout-path = &uart2;
> +	};
> +
> +	connector-1 {
> +		compatible = "usb-c-connector";
> +		label = "USB-C";
> +		data-role = "dual";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			port@0 {
> +				reg = <0>;
> +				hs_ep: endpoint {
> +					remote-endpoint = <&usb3_hs_ep>;
> +				};
> +			};
> +			port@1 {
> +				reg = <1>;
> +				ss_ep: endpoint {
> +					remote-endpoint = <&hd3ss3220_in_ep>;
> +				};
> +			};
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +
> +		button-0 {
> +			label = "btn0";
> +			linux,code = <BTN_0>;
> +			gpios = <&pca6416_1 12 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			wakeup-source;
> +		};
> +
> +		button-1 {
> +			label = "btn1";
> +			linux,code = <BTN_1>;
> +			gpios = <&pca6416_1 13 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			wakeup-source;
> +		};
> +
> +		button-2 {
> +			label = "btn2";
> +			linux,code = <BTN_2>;
> +			gpios = <&pca6416_1 14 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			wakeup-source;
> +		};
> +
> +		button-3 {
> +			label = "btn3";
> +			linux,code = <BTN_3>;
> +			gpios = <&pca6416_1 15 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>;
> +			wakeup-source;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led0 {

No improvements here.

> +			label = "gen_led0";
> +			gpios = <&pca6416_1 4 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		led1 {
> +			label = "gen_led1";
> +			gpios = <&pca6416_1 5 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		led2 {
> +			label = "gen_led2";
> +			gpios = <&pca6416_1 6 GPIO_ACTIVE_HIGH>;
> +			default-state = "off";
> +		};
> +
> +		led3 {
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&pinctrl_led3>;
> +			label = "heartbeat";
> +			gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	pcie0_refclk: pcie0-refclk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <100000000>;
> +	};
> +
> +	reg_usdhc2_vmmc: regulator-usdhc2 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VSD_3V3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		startup-delay-us = <100>;
> +		off-on-delay-us = <20000>;
> +	};
> +
> +	reg_usb1_host_vbus: regulator-usb1-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb1_host_vbus";
> +		regulator-max-microvolt = <5000000>;
> +		regulator-min-microvolt = <5000000>;
> +		gpio = <&pca6416_1 0 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&ecspi2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2>;
> +	cs-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +
> +	tpm: tpm@0 {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_tpm>;
> +		compatible = "infineon,slb9670";
> +		reg = <0>;
> +		reset-gpios = <&gpio4 0 GPIO_ACTIVE_LOW>;
> +		spi-max-frequency = <18500000>;
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&ethphy1>;
> +	phy-reset-gpios = <&gpio4 18 GPIO_ACTIVE_LOW>;
> +	phy-reset-post-delay = <150>;
> +	phy-reset-duration = <10>;
> +	fsl,magic-packet;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy1: ethernet1-phy@3 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <3>;
> +		};
> +	};
> +};
> +
> +&flexcan1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	status = "okay";
> +};
> +
> +
> +&i2c2 {
> +	clock-frequency = <384000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	pca6416_3: gpio-i2c2@20 {

No improvements.

> +		compatible = "nxp,pcal6416";
> +		reg = <0x20>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +	};
> +};
> +
> +&i2c3 {
> +	/* Connected to USB Hub */
> +	ptn5110: ptn5110@52 {

No improvements ... I'll stop reviewing. No point if you do not intend
to apply the comments.


Best regards,
Krzysztof

