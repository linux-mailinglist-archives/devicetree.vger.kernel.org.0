Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C91828C4F9
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 00:52:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390773AbgJLWwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 18:52:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390759AbgJLWwc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 18:52:32 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FCC3C0613DA
        for <devicetree@vger.kernel.org>; Mon, 12 Oct 2020 15:52:32 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id u21so25507267eja.2
        for <devicetree@vger.kernel.org>; Mon, 12 Oct 2020 15:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Jp7+HVSZCxta9BVJJxgYIYahvXrT9cStdlew1CeGc/Y=;
        b=lKgLGgz8y3dS1sLvZVMZDHRUcITYlcUDDSYZ20IKxY+Wa4DCw6ai9p4cicVWv0A8Xd
         2ERkXT0i+3lvojwbxal73Z2P8tPqIejHFYe03KqQnD3eFqWixZq7kThWPRgZga4olnnE
         6pRRJdMir4qlxOkL6mP7hOaQUAlvXnTTd+9XKl1hcqyovyS0lHPeltp2qI93DKiF/8Ao
         ICZAsoFQFe/gy8IK0DZjY4PqC8kPhhFriaBt0U59ngNqliwfBdAc8fVuYMwpRxAGRbTM
         7y90JHEWo4bl6y19vAHIq9FUeaui/gmEzBqugFwpBllVBG6kgLFbqTID5mMhAk6EBltL
         vx0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Jp7+HVSZCxta9BVJJxgYIYahvXrT9cStdlew1CeGc/Y=;
        b=i4vE7ob8l5dwz6sMJ5FusTPZB3n12JMWuYTSCpjd2qDPu2UbMCH0dWGBKHdo4tSFWW
         kL1EOiN+qbBkm/K/Isf9r1jxXlJyqkaenhbJsdXZZrljsUNP8CRDAa2LmBAH0pX8fj/R
         zVX3ozciifO9DJ0J00gkO1AFKnYOBcJyRcuWd+FC8NS3ObMRX4TPQLzfmuRLkN1LPkZl
         oTPU0Dub4FQ+LylDo1SaxQMgAuyqIBWINQkL3YjwpAkMSA+6ZHj59f8v4tp2dnzzEQ4c
         rw+jsPtnMrJtEev8+BJ9OgpjZTr08V79/h5q8A1lzGPRHXFv4P6OaMYZtXdxvmtxNAl8
         74DA==
X-Gm-Message-State: AOAM533k5nTeKqZ+16RI/SkMuvw4JB851nRESLjZFHQMtdMkMeXG76BI
        JWkJVfHq/PQUcBl3bHUJ7ak=
X-Google-Smtp-Source: ABdhPJxbzGSMw6C7DkbqDOtpYHQewf3l2aN0gkjDfJRtHb8IqW9i5y5tcnVkwr1YH3jHaUCWEfEisA==
X-Received: by 2002:a17:906:3b93:: with SMTP id u19mr1700609ejf.290.1602543150986;
        Mon, 12 Oct 2020 15:52:30 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id i4sm3835636ejz.62.2020.10.12.15.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 15:52:30 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add basic support for
 Kobol's Helios64
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Aditya Prayoga <aditya@kobol.io>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
References: <20201012204317.1581752-1-uwe@kleine-koenig.org>
 <20201012204317.1581752-3-uwe@kleine-koenig.org>
From:   Johan Jonker <jbx6244@gmail.com>
Message-ID: <a9265110-fc8d-50c9-f433-26f508bd686e@gmail.com>
Date:   Tue, 13 Oct 2020 00:52:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201012204317.1581752-3-uwe@kleine-koenig.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Uwe,

Include all mail lists.
linux-kernel

On 10/12/20 10:43 PM, Uwe Kleine-König wrote:
> The hardware is described in detail on Kobol's wiki at
> https://wiki.kobol.io/helios64/intro/.
> 
> Up to now the following peripherals are working:
> 
>  - UART
>  - Micro-SD card
>  - eMMC
>  - ethernet port 1
>  - status LED
>  - temperature sensor on i2c bus 2
> 
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3399-kobol-helios64.dts    | 382 ++++++++++++++++++
>  2 files changed, 383 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index b87b1f773083..ddf07c5e5f7c 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -24,6 +24,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-hugsun-x99.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-captain.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-v.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-kobol-helios64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-leez-p710.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> new file mode 100644
> index 000000000000..65d50b3ac595
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> @@ -0,0 +1,382 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2020 Aditya Prayoga <aditya@kobol.io>
> + */
> +
> +/*
> + * The Kobol Helios64 is a board designed to operate as a NAS and optionally
> + * ships with an enclosing that can host five 2.5" hard disks.
> + *
> + * See https://wiki.kobol.io/helios64/intro/ for further details.
> + */
> +
> +/dts-v1/;
> +#include "rk3399.dtsi"
> +#include "rk3399-opp.dtsi"
> +
> +/ {
> +	model = "Kobol Helios64";
> +	compatible = "kobol,helios64", "rockchip,rk3399";
> +
> +	clkin_gmac: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "clkin_gmac";
> +		#clock-cells = <0>;
> +	};
> +
> +	vcc12v_dcin: vcc12v-dcin {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc12v_dcin";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	vcc12v_dcin_bkup: vcc12v-dcin-bkup {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc12v_dcin_bkup";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		vin-supply = <&vcc12v_dcin>;
> +	};
> +
> +	vcc1v8_sys_s0: vcc1v8-sys-s0 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc1v8_sys_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc1v8_sys_s3>;
> +	};
> +

> +	avdd_1v8_s0: avdd-1v8-s0 {

sort?

> +		compatible = "regulator-fixed";
> +		regulator-name = "avdd_1v8_s0";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys_s3>;
> +	};
> +
> +	vcc3v3_sys_s3: vcc_lan: vcc3v3-sys-s3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_sys_s3";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};
> +	};
> +
> +	vcc3v0_sd: vcc3v0-sd {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v0_sd";
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +		vin-supply = <&vcc3v3_sys_s3>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc12v_dcin_bkup>;
> +
> +		regulator-state-mem {
> +			regulator-on-in-suspend;
> +		};
> +	};
> +

> +	gpio-leds {

leds
sort nodename, move below clkin_gmac
Keep the nodename the same as in pinctrl.

> +		status = "okay";

remove
A new node is already okay.

> +		compatible = "gpio-leds";

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&system_led>;

sort

> +

> +		status-led {
sort nodenames
use consistant nodename with pinctrl

fault_led: fault-led {}
status_led: status-led {}

  # The first form is preferred, but fall back to just 'led' anywhere in the
  # node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":

> +			label = "helios64::status";

color?

> +			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;

> +			linux,default-trigger = "none";

none is not in the list off approved options, see below

> +			default-state = "on";

> +			mode = <0x23>;

recheck led common.yaml

> +		};
> +
> +		fault-led {
> +			label = "helios64:red:fault";
> +			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;

> +			linux,default-trigger = "panic";

panic is a costum trigger
use standard trigger only
or use function property

  linux,default-trigger:
    description:
      This parameter, if present, is a string defining the trigger
assigned to
      the LED.
    $ref: /schemas/types.yaml#definitions/string

    enum:
      - backlight
      - default-on
      - heartbeat
      - disk-activity
      - ide-disk
      - timer
      - pattern

> +			default-state = "keep";

> +			mode = <0x23>;

recheck led common.yaml

> +		};
> +	};
> +};
> +
> +/*
> + * The system doesn't run stable with cpu freq enabled, so disallow the lower
> + * frequencies until this problem is resolved.
> + */
> +&cluster0_opp {
> +        /delete-node/ opp00;
> +        /delete-node/ opp01;
> +        /delete-node/ opp02;
> +        /delete-node/ opp03;
> +        /delete-node/ opp04;
> +};
> +&cluster1_opp {
> +        /delete-node/ opp00;
> +        /delete-node/ opp01;
> +        /delete-node/ opp02;
> +        /delete-node/ opp03;
> +        /delete-node/ opp04;
> +        /delete-node/ opp05;
> +        /delete-node/ opp06;
> +};
> +
> +&cpu_l0 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l1 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l2 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +
> +&cpu_l3 {
> +	cpu-supply = <&vdd_cpu_l>;
> +};
> +

> +&cpu_b0 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};
> +
> +&cpu_b1 {
> +	cpu-supply = <&vdd_cpu_b>;
> +};

sort nodenames

> +
> +&emmc_phy {
> +	status = "okay";
> +};
> +
> +&gmac {
> +	assigned-clocks = <&cru SCLK_RMII_SRC>;
> +	assigned-clock-parents = <&clkin_gmac>;
> +	clock_in_out = "input";

> +	phy-supply = <&vcc_lan>;
> +	phy-mode = "rgmii";

sort

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmii_pins &rgmii_phy_reset>;

sort pinctrl-names below pinctrl-0 in rest of this dts as well

> +	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 10000 50000>;

> +	tx_delay = <0x28>;
> +	rx_delay = <0x20>;

sort

> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	clock-frequency = <400000>;

> +	i2c-scl-rising-time-ns = <168>;
> +	i2c-scl-falling-time-ns = <4>;

sort

> +	status = "okay";
> +
> +	rk808: pmic@1b {
> +		compatible = "rockchip,rk808";
> +		reg = <0x1b>;

> +		#clock-cells = <1>;

move things that start with # down the list


> +		clock-output-names = "xin32k", "rk808-clkout2";

sort order is:
compatible
reg
interrupts
the rest
things that start with #

> +		interrupt-parent = <&gpio0>;
> +		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pmic_int_l>;

sort

> +		rockchip,system-power-controller;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc5v0_sys>;
> +		vcc2-supply = <&vcc5v0_sys>;
> +		vcc3-supply = <&vcc5v0_sys>;
> +		vcc4-supply = <&vcc5v0_sys>;
> +		vcc6-supply = <&vcc5v0_sys>;
> +		vcc7-supply = <&vcc5v0_sys>;
> +		vcc8-supply = <&vcc3v3_sys_s3>;
> +		vcc9-supply = <&vcc5v0_sys>;
> +		vcc10-supply = <&vcc5v0_sys>;
> +		vcc11-supply = <&vcc5v0_sys>;
> +		vcc12-supply = <&vcc3v3_sys_s3>;
> +		vddio-supply = <&vcc3v0_s3>;
> +
> +		regulators {
> +			vdd_cpu_l: DCDC_REG2 {
> +				regulator-name = "vdd_cpu_l";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <750000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-ramp-delay = <6001>;
> +
> +				regulator-state-mem {
> +					regulator-off-in-suspend;
> +				};
> +			};
> +
> +			vcc1v8_sys_s3: DCDC_REG4 {
> +				regulator-name = "vcc1v8_sys_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <1800000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <1800000>;
> +				};
> +			};
> +
> +			vcc_sdio_s0: LDO_REG4 {
> +				regulator-name = "vcc_sdio_s0";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3000000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +
> +			vcc3v0_s3: LDO_REG8 {
> +				regulator-name = "vcc3v0_s3";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3000000>;
> +
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-microvolt = <3000000>;
> +				};
> +			};
> +		};
> +	};
> +
> +	vdd_cpu_b: regulator@40 {
> +		compatible = "silergy,syr827";
> +		reg = <0x40>;
> +		fcs,suspend-voltage-selector = <1>;

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vsel1_gpio>;

sort

> +		regulator-name = "vdd_cpu_b";
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1500000>;
> +		regulator-ramp-delay = <1000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <400000>;

> +	i2c-scl-rising-time-ns = <160>;
> +	i2c-scl-falling-time-ns = <30>;

sort

> +	status = "okay";
> +
> +	temp@4c {
> +		compatible = "national,lm75";
> +		reg = <0x4c>;
> +	};
> +};
> +
> +&io_domains {

> +	status = "okay";

status below

> +	bt656-supply = <&vcc1v8_sys_s0>;
> +	audio-supply = <&vcc1v8_sys_s0>;
> +	sdmmc-supply = <&vcc_sdio_s0>;
> +	gpio1830-supply = <&vcc3v0_s3>;

sort

> +};
> +
> +&pinctrl {
> +	gmac {
> +		rgmii_phy_reset: rgmii-phy-reset {
> +			rockchip,pins =
> +				<3 RK_PB7 RK_FUNC_GPIO &pcfg_output_low>;
> +		};
> +	};
> +
> +	leds {

> +		system_led: sys-led {
> +			rockchip,pins =
> +				<0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>,
> +				<0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};

split led pins
add consistant nodename

fault_led_pin: fault-led-pin {}
status_led_pin: status-led-pin {}

> +	};
> +
> +	pmic {
> +		pmic_int_l: pmic-int-l {
> +			rockchip,pins =
> +				<0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		vsel1_gpio: vsel1-gpio {
> +			rockchip,pins =
> +				<1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +
> +		vsel2_gpio: vsel2-gpio {
> +			rockchip,pins =
> +				<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +};
> +
> +&pmu_io_domains {
> +	pmu1830-supply = <&vcc3v0_s3>;
> +	status = "okay";
> +};
> +
> +&sdhci {
> +	bus-width = <8>;
> +	mmc-hs200-1_8v;

> +	supports-emmc;

recheck mmc-controller.yaml and remove

> +	non-removable;

> +	disable-wp;

Not used in combination with eMMC or SDIO!

> +	vqmmc-supply = <&vcc1v8_sys_s0>;
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
> +	disable-wp;

> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_bus4>;

sort

> +	vmmc-supply = <&vcc3v0_sd>;
> +	vqmmc-supply = <&vcc_sdio_s0>;
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> 

