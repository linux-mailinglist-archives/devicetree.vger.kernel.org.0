Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE4384D6585
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 16:59:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345734AbiCKQAg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 11:00:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234523AbiCKQAe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 11:00:34 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CD8D1C7EBB
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:59:29 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 12FAB3FE02
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 15:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647014365;
        bh=lPm9jwOYOFlJ8elmrhzEjelMI2QP1/2SH+4lp969su0=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=lq9RUjHTE3xtjSUv+IXJiV4Gu+IYENGJSMW0vMQ/MVpP+/wuxm94XVvV0yl3RoW/0
         DenDdgm7pBABDYfiUgE0yhtY1Ca0rzelBCGDOuDwSHuUnQidoVatS2gjUcdeHV5CIg
         GbjsHCKkv5d2ZfS1jhcKlc8xrPrdIvIlZm2Mbklgmtr7cjsX/NyzA54JcYTdiBsbaT
         YGGodg/9lMlDS6KSZmf+DyOeIDc7CIK+06XQtVLpZZntYF3h9fR+PnpdC6dYFSu//3
         36vO0ES2RY/g8cGzUwzgZt9nd+Y34kR+gCT/dv64EIOOrXcNvUDprPgiMOqq0nK0kW
         6eArYXPQmn+oQ==
Received: by mail-ej1-f71.google.com with SMTP id m4-20020a170906160400b006be3f85906eso5156962ejd.23
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 07:59:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lPm9jwOYOFlJ8elmrhzEjelMI2QP1/2SH+4lp969su0=;
        b=cILu2l8nkb61EbbXPu4Y0DRyDyJCD98gPZSiZLyOcPBxVTqRrXaEcrHNGmPfDDq3a9
         YVUQctI2mdKtpHFLQy97kmTC2twwAnzBMWg8Z1R/bJrI3I1T4xMQXJBkKPQpTUdIrHAW
         H7o+jxIRQVh2duAVmEvkoMzFX5undzi+cUPz6+YxVZ7FaHP4WesAnoo38Ppmja6txs/0
         NzeYcpVeWi3RkEJgV8XbWMS7H4ySu3+yYpSZ3Hfr45PDQ9qsOMDe90sTvmiUSG6FbdCc
         IEnJIiOy7m03y/ZlLmWxaLFj4kXmYUL44VokqvYWRS+0G+7aCJfxsmOXEE7hBhQPrcX/
         5w0w==
X-Gm-Message-State: AOAM533poArR7I8oe+MqAfXe/hJWCZCqgyZc0Q2gumyvIwhwEh50jgpc
        qd4fgF1y6eN0Ipz+/0xSLpQJ2tOpZZfvcj12SziW36zTkEBvYZhZVZrdqL/1BJ9vQ/e/64B9guJ
        gFE/yqmGOB1MHIPj9VxYIeKg21lmotNLTcji4CmM=
X-Received: by 2002:a17:907:76f7:b0:6d6:e922:3cd with SMTP id kg23-20020a17090776f700b006d6e92203cdmr9646942ejc.386.1647014361178;
        Fri, 11 Mar 2022 07:59:21 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzvNF82uzq7NzGeiBnz07iTnnLy7yxQ069u9bUqCX5m1JCeYy3LNy5yv9/K99BYIoo6ETLmiA==
X-Received: by 2002:a17:907:76f7:b0:6d6:e922:3cd with SMTP id kg23-20020a17090776f700b006d6e92203cdmr9646917ejc.386.1647014360742;
        Fri, 11 Mar 2022 07:59:20 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id p24-20020a1709061b5800b006da6435cedcsm3063372ejg.132.2022.03.11.07.59.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 07:59:20 -0800 (PST)
Message-ID: <6316c45a-7104-9fd9-39f0-eb23cbf79d15@canonical.com>
Date:   Fri, 11 Mar 2022 16:59:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl: Add Variscite VAR-SOM-MX6 SoM
 support
Content-Language: en-US
To:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>
References: <20220311153614.2191584-1-gregory.clement@bootlin.com>
 <20220311153614.2191584-2-gregory.clement@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220311153614.2191584-2-gregory.clement@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/03/2022 16:36, Gregory CLEMENT wrote:
> This patch adds support for the Variscite VAR_SOM-MX6 SoM with :
> - i.MX6 Quad or Dual Lite SoC
> - 256 – 4096 MB DDR3
> - 4-64 GB eMMC
> - 128 – 1024 MB SLC NAND
> - Camera Interface
> - HDMI+CEC interface
> - LVDS / DSI / Parallel RGB interfaces
> - Ethernet RGMII interface
> - On-SoM Wi-Fi/Bluetooth with WiLink wl183x SDIO Module
> - SD/MMC/SDIO interface
> - USB Host + USB OTG interface
> - I2C interfaces
> - SPI interfaces
> - PCI-Express 2.0 interface
> - on-SoM Audio Codec with HP/Line-In interfaces + DMIC interface
> - Digital Audio interface
> - S/PDIF interface
> 
> Product website : https://www.variscite.com/product/system-on-module-som/cortex-a9/var-som-mx6-cpu-freescale-imx6/
> 
> Support is handled with a SoM-centric dtsi exporting the default interfaces
> along the default pinmuxing to be enabled by the board dts file.
> 
> This file is based on the one provided by Variscite on their own
> kernel, but adapted for mainline.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  arch/arm/boot/dts/imx6qdl-var-som.dtsi | 543 +++++++++++++++++++++++++
>  1 file changed, 543 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6qdl-var-som.dtsi
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-var-som.dtsi b/arch/arm/boot/dts/imx6qdl-var-som.dtsi
> new file mode 100644
> index 000000000000..2ba47a370841
> --- /dev/null
> +++ b/arch/arm/boot/dts/imx6qdl-var-som.dtsi
> @@ -0,0 +1,543 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +//
> +// Copyright 2011 Linaro Ltd.
> +// Copyright 2012 Freescale Semiconductor, Inc.
> +// Copyright (C) 2014-2016 Variscite, Ltd. All Rights Reserved,
> +//   Donio Ron: ron.d@variscite.com
> +// Copyright 2022 Bootlin
> +
> +/dts-v1/;
> +
> +#include "imx6q.dtsi"
> +#include <dt-bindings/clock/imx6qdl-clock.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/sound/fsl-imx-audmux.h>
> +
> +/ {
> +	model = "Variscite i.MX6 QUAD/DUAL VAR-SOM-MX6";
> +	compatible = "fsl,imx6q-var-som", "fsl,imx6q";
> +
> +	chosen {
> +		stdout-path = &uart1;
> +	};
> +
> +	memory: memory {
> +		reg = <0x10000000 0x40000000>;
> +	};
> +
> +	regulators {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		reg_audio: regulator-audio {
> +			compatible = "regulator-fixed";
> +			regulator-name = "tlv320aic3x-supply";
> +			enable-active-high;
> +		};
> +
> +		reg_3p3v: regulator-3p3v {
> +			compatible = "regulator-fixed";
> +			regulator-name = "3P3V";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +			regulator-always-on;

Why do you need this regulator? It controls nothing (no GPIO) and core
will provide you a dummy.

> +		};
> +
> +		touch_3v3_regulator: touch_3v3_regulator {

Mixed up node naming style. Please use consistently, so everywhere
regulator at beginning or end, hyphens instead of underscores.

Same question why dummy cannot be used.

> +			compatible = "regulator-fixed";
> +			regulator-name = "touch_3v3_supply";
> +			regulator-always-on;
> +			status = "okay";
> +		};
> +	};
> +
> +	wlan_en_reg: fixedregulator@2 {

So this is not a regulator since it is not under regulators? This one is
named fixed, so others are not fixed?

> +		compatible = "regulator-fixed";
> +		regulator-name = "wlan-en-regulator";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		gpio = <&gpio7 8 GPIO_ACTIVE_HIGH>;
> +		/* WLAN card specific delay */
> +		startup-delay-us = <70000>;
> +		enable-active-high;
> +	};
> +
> +	sound: sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "var-som-audio";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,bitclock-master = <&sound_codec>;
> +		simple-audio-card,frame-master = <&sound_codec>;
> +		simple-audio-card,widgets = "Headphone", "Headphone Jack",
> +					    "Line", "Line In", "Microphone", "Mic Jack";
> +		simple-audio-card,routing = "Headphone Jack", "HPLOUT",
> +					    "Headphone Jack", "HPROUT",
> +					    "LINE1L", "Line In",
> +					    "LINE1R", "Line In";
> +
> +		sound_cpu: simple-audio-card,cpu {
> +			sound-dai = <&ssi2>;
> +		};
> +
> +		sound_codec: simple-audio-card,codec {
> +			sound-dai = <&codec>;
> +			clocks = <&clks IMX6QDL_CLK_CKO>;
> +		};
> +	};
> +
> +	wlan_bt_rfkill {

hyphens and generic name

> +		compatible = "net,rfkill-gpio";
> +		name = "wlan_bt_rfkill";
> +		type = <2>;     /* bluetooth */
> +		gpios = <&gpio6 18 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&cpu0 {
> +	operating-points = <
> +		/* kHz    uV */
> +		1200000 1350000
> +		996000  1250000
> +		852000  1250000
> +		792000  1175000
> +		396000  1175000
> +	>;
> +
> +	fsl,soc-operating-points = <
> +		/* ARM kHz  SOC-PU uV */
> +		1200000 1275000
> +		996000	1250000
> +		852000	1250000
> +		792000	1250000
> +		396000	1250000
> +	>;
> +};
> +
> +&audmux {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_audmux_2>;
> +	status = "okay";
> +
> +	ssi2 {
> +		fsl,audmux-port = <1>;
> +		fsl,port-config = <
> +			(IMX_AUDMUX_V2_PTCR_SYN |
> +			IMX_AUDMUX_V2_PTCR_TFSDIR |
> +			IMX_AUDMUX_V2_PTCR_TFSEL(2) |
> +			IMX_AUDMUX_V2_PTCR_TCLKDIR |
> +			IMX_AUDMUX_V2_PTCR_TCSEL(2))
> +			IMX_AUDMUX_V2_PDCR_RXDSEL(2)
> +		>;
> +	};
> +
> +	aud3 {
> +		fsl,audmux-port = <2>;
> +		fsl,port-config = <
> +			IMX_AUDMUX_V2_PTCR_SYN
> +			IMX_AUDMUX_V2_PDCR_RXDSEL(1)
> +		>;
> +	};
> +};
> +
> +&ecspi3 {
> +	fsl,spi-num-chipselects = <1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi3_1>;
> +	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet_4>;
> +	phy-mode = "rgmii";
> +	phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
> +	fsl,magic-packet;
> +	status = "okay";
> +};
> +
> +&gpc {
> +	fsl,ldo-bypass = <1>;
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2_2>;
> +	status = "okay";
> +
> +	pmic: pfuze100@8 {

Generic node names. This looks like pmic.

> +		compatible = "fsl,pfuze100";
> +		reg = <0x8>;
> +		status = "okay";

Why do you need status okay?

> +		regulators {
> +			sw1a_reg: sw1ab {
> +				regulator-min-microvolt = <300000>;
> +				regulator-max-microvolt = <1875000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <6250>;
> +			};
> +
> +			sw1c_reg: sw1c {
> +				regulator-min-microvolt = <300000>;
> +				regulator-max-microvolt = <1875000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <6250>;
> +			};
> +
> +			sw2_reg: sw2 {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			sw3a_reg: sw3a {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3950000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			sw3b_reg: sw3b {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3950000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			sw4_reg: sw4 {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <3950000>;
> +			};
> +
> +			snvs_reg: vsnvs {
> +				regulator-min-microvolt = <1200000>;
> +				regulator-max-microvolt = <3000000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			vref_reg: vrefddr {
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			vgen1_reg: vgen1 {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1550000>;
> +			};
> +
> +			vgen2_reg: vgen2 {
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1550000>;
> +			};
> +
> +			vgen3_reg: vgen3 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			vgen4_reg: vgen4 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			vgen5_reg: vgen5 {
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +
> +			vgen6_reg: vgen6 {
> +				regulator-min-microvolt = <2800000>;
> +				regulator-max-microvolt = <2800000>;
> +				regulator-always-on;
> +				regulator-boot-on;
> +			};
> +		};
> +	};
> +
> +	codec: tlv320aic3x@1b {

Generic node names.

> +		compatible = "ti,tlv320aic3106";
> +		reg = <0x1b>;
> +		#sound-dai-cells = <0>;
> +		DRVDD-supply = <&reg_3p3v>;
> +		AVDD-supply = <&reg_3p3v>;
> +		IOVDD-supply = <&reg_3p3v>;
> +		DVDD-supply = <&reg_3p3v>;
> +		ai3x-ocmv = <0>;
> +		reset-gpios = <&gpio4 5 GPIO_ACTIVE_LOW>;
> +		ai3x-gpio-func = <
> +			0 /* AIC3X_GPIO1_FUNC_DISABLED */
> +			5 /* AIC3X_GPIO2_FUNC_DIGITAL_MIC_INPUT */
> +		>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	imx6qdl-var-som-mx6 {
> +

Blank line not needed.

> +		pinctrl_hog: hoggrp {
> +			fsl,pins = <
> +				/* CTW6120 IRQ */
> +				MX6QDL_PAD_EIM_DA7__GPIO3_IO07 		0x80000000
> +				/* for Bluetooth/wifi enable */
> +				MX6QDL_PAD_SD3_DAT6__GPIO6_IO18		0x1b0b1
> +				/* SDMMC2 CD/WP */
> +				MX6QDL_PAD_KEY_COL4__GPIO4_IO14		0x80000000
> +				MX6QDL_PAD_KEY_ROW4__GPIO4_IO15		0x80000000
> +				/* PMIC INT */
> +				MX6QDL_PAD_GPIO_17__GPIO7_IO12		0x80000000
> +				/* Wifi Slow Clock */
> +				MX6QDL_PAD_ENET_RXD0__OSC32K_32K_OUT	0x000b0
> +				/* Audio Clock */
> +				MX6QDL_PAD_GPIO_0__CCM_CLKO1		0x130b0
> +			>;
> +		};
> +
> +		pinctrl_audmux_2: audmux {

All groups should end with "grp" suffix. Required by newer bindings.

> +			fsl,pins = <
> +				MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
> +				MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> +				MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> +				MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> +			>;
> +		};
> +
> +		pinctrl_enet_4: enetgrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x1b0b0
> +				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x1b0b0
> +				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x1b0b0
> +				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x1b0b0
> +				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x1b0b0
> +				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x1b0b0
> +				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x1b0b0
> +				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x1b0b0
> +				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x1b0b0
> +				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b0b0
> +				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b0b0
> +				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b0b0
> +				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b0b0
> +				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b0b0
> +				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_enet_irq: enetirqgrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_6__ENET_IRQ		0x000b1
> +			>;
> +		};
> +
> +
> +
> +		pinctrl_i2c1_2: i2c1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
> +				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_i2c2_2: i2c2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
> +				MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_i2c3_3: i2c3grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
> +				MX6QDL_PAD_GPIO_16__I2C3_SDA		0x4001b8b1
> +			>;
> +		};
> +
> +
> +		pinctrl_pwm2_1: pwm2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_DISP0_DAT9__PWM2_OUT		0x1b0b1
> +			>;
> +		};
> +		/* Linux Console */
> +		pinctrl_uart1_1: uart1grp-1 { /* RX/TX only */

Align node name with schema. Same in other places.

> +			fsl,pins = <
> +				MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
> +			>;
> +		};
> +
> +		/* Variscite Bluetooth */
> +		pinctrl_uart2_3: uart2grp-3 { /* RTS/CTS only mode */
> +			fsl,pins = <
> +				MX6QDL_PAD_SD3_DAT4__UART2_RX_DATA	0x1b0b1
> +				MX6QDL_PAD_SD3_DAT5__UART2_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D28__UART2_CTS_B		0x1b0b1
> +				MX6QDL_PAD_EIM_D29__UART2_RTS_B		0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_usdhc3_2: usdhc3grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD3_CMD__SD3_CMD    		0x17069
> +				MX6QDL_PAD_SD3_CLK__SD3_CLK    		0x10069
> +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0 		0x17069
> +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1 		0x17069
> +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2 		0x17069
> +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3 		0x17069
> +                                MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 	0x13059   /* Reserve two pins from sd1 for wl8 gpio, this is pulled low at reset for WL_EN */
> +                                MX6QDL_PAD_SD3_RST__GPIO7_IO08  	0x13059   /* this is for wl_irq which driver will configure as an input with a pull down */
> +			>;

The last entries have weird indentation and comment exceeding any
reasonable limit. Same in other places.


> +		};
> +
> +		pinctrl_usdhc3_2_100mhz: usdhc3grp-100mhz {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170B9
> +				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100B9
> +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170B9
> +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170B9
> +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170B9
> +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170B9
> +                                MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 	0x130B9   /* reserve two pins from sd1 for wl8 gpio, this is pulled low at reset for WL_EN */
> +                                MX6QDL_PAD_SD3_RST__GPIO7_IO08  	0x130B9   /* this is for wl_irq which driver will configure as an input with a pull down */
> +			>;
> +		};
> +
> +		pinctrl_usdhc3_2_200mhz: usdhc3grp-200mhz {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x170F9
> +				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x100F9
> +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x170F9
> +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x170F9
> +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x170F9
> +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x170F9
> +                                MX6QDL_PAD_SD3_DAT7__GPIO6_IO17 	0x130F9   /* reserve two pins from sd1 for wl8 gpio, this is pulled low at reset for WL_EN */
> +                                MX6QDL_PAD_SD3_RST__GPIO7_IO08  	0x130F9   /* this is for wl_irq which driver will configure as an input with a pull down */
> +			>;
> +		};
> +
> +		pinctrl_gpmi_nand_v1: gpmi-nand-1 {
> +			fsl,pins = <
> +				MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
> +				MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
> +				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
> +				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
> +				MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb0b1
> +				MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
> +				MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
> +				MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
> +				MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
> +				MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
> +				MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
> +				MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
> +				MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
> +				MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
> +				MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
> +				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
> +			>;
> +		};
> +
> +		pinctrl_ecspi3_1: ecspi3grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
> +				MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
> +				MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
> +			>;
> +		};
> +	};
> +};
> +
> +&pwm2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm2_1>;
> +	status = "okay";
> +};
> +
> +

No need for two line breaks.
> +&ssi2 {
> +	fsl,mode = "i2s-slave";
> +	status = "okay";
> +};
> +
> +/* Console Uart */
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1_1>;
> +	status = "okay";
> +};
> +
> +&snvs_poweroff {

Ordering mess. ssi2, then uart1, then snvs, then uart2. Please order all
node-overrides like in most of IMX files, so by label name with iomux at
the end.

> +	status = "okay";
> +};
> +
> +/* Bluetooth Uart */
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2_3>;
> +	fsl,uart-has-rtscts;
> +	status = "okay";
> +};
> +
> +&gpmi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_gpmi_nand_v1>;
> +	status = "okay";
> +};
> +
> +&usdhc3 {	/* uSDHC3, TiWi wl1271 7 Wilink8 WL18xx*/
> +	pinctrl-names = "default", "state_100mhz", "state_200mhz";
> +	pinctrl-0 = <&pinctrl_usdhc3_2>;
> +	pinctrl-1 = <&pinctrl_usdhc3_2_100mhz>;
> +	pinctrl-2 = <&pinctrl_usdhc3_2_200mhz>;
> +	keep-power-in-suspend;
> +	vmmc-supply = <&wlan_en_reg>;
> +	bus-width = <4>;
> +	non-removable;
> +	cap-power-off-card;
> +	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	wlcore: wlcore@0 {
> +		compatible = "ti,wl1835";
> +		reg = <2>;

This is confusing a bit. dtc W=1 did not complain?

> +
> +		interrupt-parent = <&gpio6>;
> +		interrupts = <17 IRQ_TYPE_EDGE_RISING>;
> +
> +		/* if a 12xx card is there, configure the clock to WL12XX_REFCLOCK_38_XTAL */
> +		board-ref-clock = <4>;
> +	};
> +};
> +
> +&reg_arm {
> +	vin-supply = <&sw1a_reg>;
> +};
> +
> +&reg_pu {
> +	vin-supply = <&sw1c_reg>;
> +};
> +
> +&reg_soc {
> +	vin-supply = <&sw1c_reg>;
> +};
> +
> +&reg_vdd1p1 {
> +	vin-supply = <&vgen5_reg>;
> +};
> +
> +&reg_vdd2p5 {
> +	vin-supply = <&vgen5_reg>;
> +};


Best regards,
Krzysztof
