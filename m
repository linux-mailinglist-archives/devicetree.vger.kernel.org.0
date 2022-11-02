Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24E236165BF
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 16:07:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbiKBPHD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 11:07:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230231AbiKBPHA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 11:07:00 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 620446580
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 08:06:56 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id f8so11900134qkg.3
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 08:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ATbTde5iilW6dPN51EYdUK9YNV67d0b3mUBAA/5u/uw=;
        b=ZyHF0up2YfM3m1SLY4KJJDhXG/VBwwcqkBh3r+ybvVx7bgXfOQh4BHeCBJVuD4t/NH
         o51FQzD3CY5k4jNn1jC8jHaxees2MB2eOL5xilX1VJJoo6uKP25AvjGAPRPU+E89+wma
         teVkg9oAkohfW/2EEnpf3+qCjoy9GCpIwPEUhE1J5nnAppO4jPLP01IeMRePGLGNJYmh
         RUDkt/z4AEk2utenJZyP0lEacx/BQqq9BwMOvuP+4ZJ0oPKqXlrAP521YVfDsEJxuLvN
         zLomCaEjUG2g7O+mRxqrnLziy3LbEnJj6sVQJg7Rveoz0mmz3Zrl41KhexjMLV84DMeF
         LXRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ATbTde5iilW6dPN51EYdUK9YNV67d0b3mUBAA/5u/uw=;
        b=c7TEDZH/qJkC1SaUVuo3ujU12xE2dWN8I5NMfP1IniZRa4yZXLA1aZ5eBctQGgrSt0
         ZHDW5nqsjrglwo0+tHF81Ub0u2iB33Tea3xcZbRCMEwMwvoF8JtJnBLhWx4RZrCWLD8N
         PxDtTzUi02epttJhP1YQtY3x8MY3ZfICvyzyVbmxi7DzrEkYYZCPUOija/4fYh42Ki26
         af/1dQ/r+t1jFDL+YR0tA/2uE4oHODH72JVS7TcF7UHKm99RRnTpScX5h3T0VZ9f2Jl6
         BFxZPugId26p+C65gd5QYc9m1gufvTRNT9egMqlFgUTtfhFwePNLobTBFJpUe4dI97hJ
         ybOA==
X-Gm-Message-State: ACrzQf3RBYwAocvQx23aC+OtW9VaPUWfzx7Jhm4392w4pC89oexIhLiv
        K7qb/Nb7Rss3W/okraMIO1hEIA==
X-Google-Smtp-Source: AMsMyM4QS/k92yJcNdhSWNISmf750o3TA3XRyLI3eiiCc79SRnRekTpGq+A2p0FFB/TaZa5N/zOclw==
X-Received: by 2002:a37:bec7:0:b0:6f9:d795:3073 with SMTP id o190-20020a37bec7000000b006f9d7953073mr17486713qkf.599.1667401615472;
        Wed, 02 Nov 2022 08:06:55 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id j4-20020ac84c84000000b0039cc665d60fsm6683503qtv.64.2022.11.02.08.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 08:06:54 -0700 (PDT)
Message-ID: <b2e160dc-44ec-0863-55c6-2a6ad0b86a1a@linaro.org>
Date:   Wed, 2 Nov 2022 11:06:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 2/2] arm64: dts: Add support for phyBOARD-Electra-AM642
Content-Language: en-US
To:     Wadim Egorov <w.egorov@phytec.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20221102134923.3438022-1-w.egorov@phytec.de>
 <20221102134923.3438022-2-w.egorov@phytec.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102134923.3438022-2-w.egorov@phytec.de>
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

On 02/11/2022 09:49, Wadim Egorov wrote:
> Add basic support for phyBOARD-Electra-AM642.
> 
> Supported features:
>   * Debug UART
>   * Heartbeat LED
>   * GPIO buttons & LEDs
>   * SPI NOR flash
>   * SPI TPM Chip
>   * eMMC
>   * CAN
>   * Ethernet
>   * Micro SD card
>   * I2C EEPROM
>   * I2C RTC
>   * LED Dimmer
>   * USB
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  arch/arm64/boot/dts/ti/Makefile               |   1 +
>  .../boot/dts/ti/k3-am64-phycore-som.dtsi      | 379 ++++++++++++++++++
>  .../dts/ti/k3-am642-phyboard-electra-rdk.dts  | 313 +++++++++++++++
>  3 files changed, 693 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index 4555a5be2257..79331f16cd4b 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -20,6 +20,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-j7200-common-proc-board.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-j721s2-common-proc-board.dtb
>  
>  dtb-$(CONFIG_ARCH_K3) += k3-am642-evm.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-am642-phyboard-electra-rdk.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am642-sk.dtb
>  
>  dtb-$(CONFIG_ARCH_K3) += k3-am625-sk.dtb
> diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> new file mode 100644
> index 000000000000..ecd0050a84e6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
> @@ -0,0 +1,379 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2021 PHYTEC America, LLC - https://www.phytec.com
> + * Author: Matt McKee <mmckee@phytec.com>
> + *
> + * Copyright (C) 2022 PHYTEC Messtechnik GmbH
> + * Author: Wadim Egorov <w.egorov@phytec.de>
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/net/ti-dp83867.h>
> +
> +/ {
> +	model = "PHYTEC phyCORE-AM64x";
> +	compatible = "phytec,am64-phycore-som";
> +
> +	aliases {
> +		mmc0 = &sdhci0;
> +		rtc0 = &rv3028;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x80000000 0x00000000 0x80000000>;
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		secure_ddr: optee@9e800000 {
> +			reg = <0x00 0x9e800000 0x00 0x01800000>; /* for OP-TEE */
> +			alignment = <0x1000>;
> +			no-map;
> +		};
> +
> +		main_r5fss0_core0_dma_memory_region: r5f-dma-memory@a0000000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa0000000 0x00 0x100000>;
> +			no-map;
> +		};
> +
> +		main_r5fss0_core0_memory_region: r5f-memory@a0100000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa0100000 0x00 0xf00000>;
> +			no-map;
> +		};
> +
> +		main_r5fss0_core1_dma_memory_region: r5f-dma-memory@a1000000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa1000000 0x00 0x100000>;
> +			no-map;
> +		};
> +
> +		main_r5fss0_core1_memory_region: r5f-memory@a1100000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa1100000 0x00 0xf00000>;
> +			no-map;
> +		};
> +
> +		main_r5fss1_core0_dma_memory_region: r5f-dma-memory@a2000000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa2000000 0x00 0x100000>;
> +			no-map;
> +		};
> +
> +		main_r5fss1_core0_memory_region: r5f-memory@a2100000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa2100000 0x00 0xf00000>;
> +			no-map;
> +		};
> +
> +		main_r5fss1_core1_dma_memory_region: r5f-dma-memory@a3000000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa3000000 0x00 0x100000>;
> +			no-map;
> +		};
> +
> +		main_r5fss1_core1_memory_region: r5f-memory@a3100000 {
> +			compatible = "shared-dma-pool";
> +			reg = <0x00 0xa3100000 0x00 0xf00000>;
> +			no-map;
> +		};
> +
> +		rtos_ipc_memory_region: ipc-memories@a5000000 {
> +			reg = <0x00 0xa5000000 0x00 0x00800000>;
> +			alignment = <0x1000>;
> +			no-map;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&leds_pins_default>;
> +
> +		led-green {
> +			function = LED_FUNCTION_HEARTBEAT;
> +			gpios = <&main_gpio0 12 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +			default-state = "on";
> +		};
> +	};
> +
> +	vcc_5v0_som: fixed-regulator-vcc-5v0-som {

Drop "fixed" in node name.


> +		/* VIN / VCC_5V0_SOM */
> +		compatible = "regulator-fixed";
> +		regulator-name = "VCC_5V0_SOM";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +};
> +
> +&main_pmx0 {
> +	cpsw_mdio_pins_default: cpsw-mdio-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x01f8, PIN_INPUT, 4)	/* (P5) PRG0_PRU1_GPO18.MDIO0_MDIO */
> +			AM64X_IOPAD(0x01fc, PIN_OUTPUT, 4)	/* (R2) PRG0_PRU1_GPO19.MDIO0_MDC */
> +			AM64X_IOPAD(0x0100, PIN_OUTPUT, 7)	/* (V7) PRG1_PRU0_GPO18.GPIO0_63 */
> +		>;
> +	};
> +
> +	cpsw_rgmii1_pins_default: cpsw-rgmii1-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0184, PIN_INPUT, 4)	/* (W6) PRG0_PRU0_GPO9.RGMII1_RX_CTL */
> +			AM64X_IOPAD(0x0188, PIN_INPUT, 4)	/* (AA5) PRG0_PRU0_GPO10.RGMII1_RXC */
> +			AM64X_IOPAD(0x00dc, PIN_OUTPUT, 4)	/* (U15) PRG1_PRU0_GPO9.RGMII1_TX_CTL */
> +			AM64X_IOPAD(0x00e0, PIN_OUTPUT, 4)	/* (U14) PRG1_PRU0_GPO10.RGMII1_TXC */
> +			AM64X_IOPAD(0x01cc, PIN_INPUT, 4)	/* (W5) PRG0_PRU1_GPO7.RGMII1_RD0 */
> +			AM64X_IOPAD(0x0124, PIN_OUTPUT, 4)	/* (V15) PRG1_PRU1_GPO7.RGMII1_TD0 */
> +			AM64X_IOPAD(0x01d4, PIN_INPUT, 4)	/* (Y5) PRG0_PRU1_GPO9.RGMII1_RD1 */
> +			AM64X_IOPAD(0x012c, PIN_OUTPUT, 4)	/* (V14) PRG1_PRU1_GPO9.RGMII1_TD1 */
> +			AM64X_IOPAD(0x01d8, PIN_INPUT, 4)	/* (V6) PRG0_PRU1_GPO10.RGMII1_RD2 */
> +			AM64X_IOPAD(0x0130, PIN_OUTPUT, 4)	/* (W14) PRG1_PRU1_GPO10.RGMII1_TD2 */
> +			AM64X_IOPAD(0x01f4, PIN_INPUT, 4)	/* (V5) PRG0_PRU1_GPO17.RGMII1_RD3 */
> +			AM64X_IOPAD(0x014c, PIN_OUTPUT, 4)	/* (AA14) PRG1_PRU1_GPO17.RGMII1_TD3 */
> +			AM64X_IOPAD(0x0154, PIN_INPUT, 7)	/* (V12) PRG1_PRU1_GPO19.GPIO0_84 */
> +		>;
> +	};
> +
> +	eeprom_wp_pins_default: eeprom-wp-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0208, PIN_OUTPUT, 7)	/* (D12) SPI0_CS0.GPIO1_42 */
> +		>;
> +	};
> +
> +	leds_pins_default: leds-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0030, PIN_OUTPUT, 7)	/* (L18) OSPI0_CSn1.GPIO0_12 */
> +		>;
> +	};
> +
> +	main_i2c0_pins_default: main-i2c0-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0260, PIN_INPUT, 0)	/* (A18) I2C0_SCL */
> +			AM64X_IOPAD(0x0264, PIN_INPUT, 0)	/* (B18) I2C0_SDA */
> +		>;
> +	};
> +
> +	ospi0_pins_default: ospi0-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0000, PIN_OUTPUT, 0)	/* (N20) OSPI0_CLK */
> +			AM64X_IOPAD(0x0008, PIN_INPUT, 0)	/* (N19) OSPI0_DQS */
> +			AM64X_IOPAD(0x000c, PIN_INPUT, 0)	/* (M19) OSPI0_D0 */
> +			AM64X_IOPAD(0x0010, PIN_INPUT, 0)	/* (M18) OSPI0_D1 */
> +			AM64X_IOPAD(0x0014, PIN_INPUT, 0)	/* (M20) OSPI0_D2 */
> +			AM64X_IOPAD(0x0018, PIN_INPUT, 0)	/* (M21) OSPI0_D3 */
> +			AM64X_IOPAD(0x001c, PIN_INPUT, 0)	/* (P21) OSPI0_D4 */
> +			AM64X_IOPAD(0x0020, PIN_INPUT, 0)	/* (P20) OSPI0_D5 */
> +			AM64X_IOPAD(0x0024, PIN_INPUT, 0)	/* (N18) OSPI0_D6 */
> +			AM64X_IOPAD(0x0028, PIN_INPUT, 0)	/* (M17) OSPI0_D7 */
> +			AM64X_IOPAD(0x002c, PIN_OUTPUT, 0)	/* (L19) OSPI0_CSn0 */
> +		>;
> +	};
> +};
> +
> +&cpsw3g {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&cpsw_rgmii1_pins_default>;
> +};
> +
> +&cpsw3g_mdio {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&cpsw_mdio_pins_default>;
> +
> +	cpsw3g_phy1: ethernet-phy@1 {
> +		compatible = "ethernet-phy-id2000.a231", "ethernet-phy-ieee802.3-c22";
> +		reg = <1>;
> +		interrupt-parent = <&main_gpio0>;
> +		interrupts = <84 IRQ_TYPE_EDGE_FALLING>;
> +		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
> +		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
> +		reset-gpios = <&main_gpio0 63 GPIO_ACTIVE_LOW>;
> +		reset-assert-us = <1000>;
> +		reset-deassert-us = <1000>;
> +	};
> +};
> +
> +&cpsw_port1 {
> +	phy-mode = "rgmii-rxid";
> +	phy-handle = <&cpsw3g_phy1>;
> +};
> +
> +&cpsw_port2 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster2 {
> +	mbox_main_r5fss0_core0: mbox-main-r5fss0-core0 {
> +		ti,mbox-rx = <0 0 2>;
> +		ti,mbox-tx = <1 0 2>;
> +	};
> +
> +	mbox_main_r5fss0_core1: mbox-main-r5fss0-core1 {
> +		ti,mbox-rx = <2 0 2>;
> +		ti,mbox-tx = <3 0 2>;
> +	};
> +};
> +
> +&mailbox0_cluster3 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster4 {
> +	mbox_main_r5fss1_core0: mbox-main-r5fss1-core0 {
> +		ti,mbox-rx = <0 0 2>;
> +		ti,mbox-tx = <1 0 2>;
> +	};
> +
> +	mbox_main_r5fss1_core1: mbox-main-r5fss1-core1 {
> +		ti,mbox-rx = <2 0 2>;
> +		ti,mbox-tx = <3 0 2>;
> +	};
> +};
> +
> +&mailbox0_cluster5 {
> +	status = "disabled";
> +};
> +
> +&mailbox0_cluster6 {
> +	mbox_m4_0: mbox-m4-0 {
> +		ti,mbox-rx = <0 0 2>;
> +		ti,mbox-tx = <1 0 2>;
> +	};
> +};
> +
> +&mailbox0_cluster7 {
> +	status = "disabled";
> +};
> +
> +&main_i2c0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_i2c0_pins_default>;
> +	clock-frequency = <400000>;
> +
> +	eeprom@50 {
> +		compatible = "atmel,24c32";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&eeprom_wp_pins_default>;
> +		pagesize = <32>;
> +		reg = <0x50>;
> +	};
> +
> +	rv3028: rtc@52 {
> +		compatible = "microcrystal,rv3028";
> +		reg = <0x52>;
> +		trickle-resistor-ohms = <3000>;
> +	};
> +
> +	lp8733: lp8733@61 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

It looks like "pmic"


> +		compatible = "ti,lp8733";
> +		reg = <0x61>;
> +
> +		buck0-in-supply =<&vcc_5v0_som>;
> +		buck1-in-supply =<&vcc_5v0_som>;
> +		ldo0-in-supply =<&vdd_3v3>;
> +		ldo1-in-supply =<&vdd_3v3>;
> +

(...)

> +
> +	user-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&user_leds_pins_default>;
> +
> +		user-led0 {
> +			gpios = <&main_gpio0 15 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "gpio";
> +			default-state = "on";
> +		};
> +
> +		user-led1 {
> +			gpios = <&main_gpio0 16 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "gpio";
> +			default-state = "on";
> +		};
> +	};
> +
> +	vcc_3v3_mmc: fixed-regulator-sd {

Drop "fixed"

> +		/* TPS22963C */
> +		compatible = "regulator-fixed";
> +		regulator-name = "VCC_3V3_MMC";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +};
> +
> +&main_pmx0 {
> +	can_tc1_pins_default: can-tc1-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0084, PIN_OUTPUT, 7)	/* (P16) GPMC0_ADVn_ALE.GPIO0_32 */
> +		>;
> +	};
> +
> +	can_tc2_pins_default: can-tc2-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0090, PIN_OUTPUT, 7)	/* (P17) GPMC0_BE0n_CLE.GPIO0_35 */
> +		>;
> +	};
> +
> +	gpio_keys_pins_default: gpio-keys-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0044, PIN_INPUT, 7)	/* (T18) GPMC0_AD2.GPIO0_17 */
> +			AM64X_IOPAD(0x0054, PIN_INPUT, 7)	/* (V20) GPMC0_AD6.GPIO0_21 */
> +		>;
> +	};
> +
> +	main_i2c1_pins_default: main-i2c1-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0268, PIN_INPUT, 0)	/* (C18) I2C1_SCL */
> +			AM64X_IOPAD(0x026c, PIN_INPUT, 0)	/* (B19) I2C1_SDA */
> +		>;
> +	};
> +
> +	main_mcan0_pins_default: main-mcan0-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0250, PIN_OUTPUT, 0)	/* (A17) MCAN0_TX */
> +			AM64X_IOPAD(0x0254, PIN_INPUT, 0)	/* (B17) MCAN0_RX */
> +		>;
> +	};
> +
> +	main_mcan1_pins_default: main-mcan1-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0258, PIN_OUTPUT, 0)	/* (C17) MCAN1_TX */
> +			AM64X_IOPAD(0x025c, PIN_INPUT, 0)	/* (D17) MCAN1_RX */
> +		>;
> +	};
> +
> +	main_mmc1_pins_default: main-mmc1-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x027c, PIN_INPUT_PULLUP, 0)	/* (K18) MMC1_DAT3 */
> +			AM64X_IOPAD(0x0280, PIN_INPUT_PULLUP, 0)	/* (K19) MMC1_DAT2 */
> +			AM64X_IOPAD(0x0284, PIN_INPUT_PULLUP, 0)	/* (L21) MMC1_DAT1 */
> +			AM64X_IOPAD(0x0288, PIN_INPUT_PULLUP, 0)	/* (K21) MMC1_DAT0 */
> +			AM64X_IOPAD(0x028c, PIN_INPUT_PULLDOWN, 0)	/* (L20) MMC1_CLK */
> +			AM64X_IOPAD(0x0290, PIN_INPUT, 0)		/* MMC1_CLKLB */
> +			AM64X_IOPAD(0x0294, PIN_INPUT_PULLUP, 0)	/* (J19) MMC1_CMD */
> +			AM64X_IOPAD(0x0298, PIN_INPUT_PULLUP, 0)	/* (D19) MMC1_SDCD */
> +		>;
> +	};
> +
> +	main_spi0_pins_default: main-spi0-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x020c, PIN_OUTPUT, 7)	/* (C13) SPI0_CS1.GPIO1_43 */
> +			AM64X_IOPAD(0x0210, PIN_INPUT, 0)	/* (D13) SPI0_CLK */
> +			AM64X_IOPAD(0x0214, PIN_OUTPUT, 0)	/* (A13) SPI0_D0 */
> +			AM64X_IOPAD(0x0218, PIN_INPUT, 0)	/* (A14) SPI0_D1 */
> +		>;
> +	};
> +
> +	main_uart0_pins_default: main-uart0-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0230, PIN_INPUT, 0)	/* (D15) UART0_RXD */
> +			AM64X_IOPAD(0x0234, PIN_OUTPUT, 0)	/* (C16) UART0_TXD */
> +		>;
> +	};
> +
> +	main_uart1_pins_default: main-uart1-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0248, PIN_INPUT, 0)	/* (D16) UART1_CTSn */
> +			AM64X_IOPAD(0x024C, PIN_OUTPUT, 0)	/* (E16) UART1_RTSn */
> +			AM64X_IOPAD(0x0240, PIN_INPUT, 0)	/* (E15) UART1_RXD */
> +			AM64X_IOPAD(0x0244, PIN_OUTPUT, 0)	/* (E14) UART1_TXD */
> +		>;
> +	};
> +
> +	main_usb0_pins_default: main-usb0-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x02a8, PIN_OUTPUT, 0)	/* (E19) USB0_DRVVBUS */
> +		>;
> +	};
> +
> +	pcie_usb_sel_pins_default: pcie-usb-sel-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x017c, PIN_OUTPUT, 7)	/* (T1) PRG0_PRU0_GPO7.GPIO1_7 */
> +		>;
> +	};
> +
> +	pcie0_pins_default: pcie0-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x0098, PIN_OUTPUT, 7)	/* (W19) GPMC0_WAIT0.GPIO0_37 */
> +		>;
> +	};
> +
> +	user_leds_pins_default: user-leds-pins-default {
> +		pinctrl-single,pins = <
> +			AM64X_IOPAD(0x003c, PIN_OUTPUT, 7)	/* (T20) GPMC0_AD0.GPIO0_15 */
> +			AM64X_IOPAD(0x0040, PIN_OUTPUT, 7)	/* (U21) GPMC0_AD1.GPIO0_16 */
> +		>;
> +	};
> +};
> +
> +&main_i2c1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_i2c1_pins_default>;
> +	clock-frequency = <400000>;
> +
> +	eeprom@51 {
> +		compatible = "atmel,24c02";
> +		pagesize = <16>;
> +		reg = <0x51>;
> +	};
> +
> +	pca9533d: led-dimmer@62 {
> +		compatible = "nxp,pca9533";
> +		reg = <0x62>;
> +
> +		rgb-red {
> +			type = <PCA9532_TYPE_LED>;
> +			default-state = "on";
> +		};
> +
> +		rgb-green {
> +			type = <PCA9532_TYPE_LED>;
> +			default-state = "on";
> +		};
> +
> +		rgb-blue {
> +			type = <PCA9532_TYPE_LED>;
> +			default-state = "on";
> +		};
> +	};
> +};
> +
> +&main_mcan0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_mcan0_pins_default>;
> +	phys = <&can_tc1>;
> +};
> +
> +&main_mcan1 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_mcan1_pins_default>;
> +	phys = <&can_tc2>;
> +};
> +
> +&main_spi0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_spi0_pins_default>;
> +	cs-gpios = <0>, <&main_gpio1 43 GPIO_ACTIVE_LOW>;
> +	ti,pindir-d0-out-d1-in;
> +
> +	slb9670: tpm20@1 {

Node name just "tpm"

> +		compatible = "infineon,slb9670";
> +		reg = <1>;
> +		spi-max-frequency = <10000000>;
> +	};
> +};
Best regards,
Krzysztof

