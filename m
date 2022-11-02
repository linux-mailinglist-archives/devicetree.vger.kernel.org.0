Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E72356165C8
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 16:11:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiKBPLU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 11:11:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiKBPLU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 11:11:20 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C800C18E1C
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 08:11:18 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2A2FAlFE030267;
        Wed, 2 Nov 2022 10:10:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1667401847;
        bh=P+i9Ojlv3M8+20rFeYvWb7rB2Lb1CBP/zpG3ua+Q0p8=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=nDlu9uS0wIadTVzJIfKpmtvAaA3/RQCrQQwOsVsuyROyxJ660gaL86ERDgHytnjOC
         2h/xndNgk9mxsbfgx7g1apWMDTq8mKJUj8KDnUN7nIIT9trkr4vKmLBrz+f8DSc4zC
         keQzfj2kstKAJqYliKyelqtZgUJ3I0bcu7drqQwM=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2A2FAlem007842
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Wed, 2 Nov 2022 10:10:47 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Wed, 2 Nov
 2022 10:10:47 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Wed, 2 Nov 2022 10:10:47 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 2A2FAl1K041295;
        Wed, 2 Nov 2022 10:10:47 -0500
Date:   Wed, 2 Nov 2022 10:10:47 -0500
From:   Nishanth Menon <nm@ti.com>
To:     Wadim Egorov <w.egorov@phytec.de>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <vigneshr@ti.com>,
        <kristo@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: Add support for phyBOARD-Electra-AM642
Message-ID: <20221102151047.ucwh7dwmmqhx4nxf@rejoice>
References: <20221102134923.3438022-1-w.egorov@phytec.de>
 <20221102134923.3438022-2-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221102134923.3438022-2-w.egorov@phytec.de>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14:49-20221102, Wadim Egorov wrote:
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

Optionally: please add a immutable link to the product (if possible
with board information and details)

Quick scan comments below.

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

Here as well -> so that folks can look at the dtsi file and see where
the details are?

This is probably an approximate of what I'd hope to see:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=614d47cc9303893c706c0c94516249eb3adaeb80

> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/net/ti-dp83867.h>
> +
> +/ {
> +	model = "PHYTEC phyCORE-AM64x";
> +	compatible = "phytec,am64-phycore-som";

Does this match the binding?

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

Does this memory map work for All usage of the SoM and firmware
combinations? OR would you like to keep the immutable memory map
reservation in the base device tree and use overlay for firmware
combination?

> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&leds_pins_default>;
> +
> +		led-green {

please see the pattern property in Documentation/devicetree/bindings/leds/leds-gpio.yaml

> +			function = LED_FUNCTION_HEARTBEAT;
> +			gpios = <&main_gpio0 12 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +			default-state = "on";
> +		};
> +	};
> +
> +	vcc_5v0_som: fixed-regulator-vcc-5v0-som {

You would want to see feedback from Krzysztof
	https://lore.kernel.org/linux-arm-kernel/c40a2dad-c7aa-f778-f1ac-971185691950@linaro.org/
on the node naming.

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

[...]

> +	rv3028: rtc@52 {
> +		compatible = "microcrystal,rv3028";
> +		reg = <0x52>;
> +		trickle-resistor-ohms = <3000>;

You might want to alias rtc to make it reliably useful. If this did
have an interrupt, you could potentially use it as a wakeup source for
suspend states.

> +	};
> +
> +	lp8733: lp8733@61 {
> +		compatible = "ti,lp8733";
> +		reg = <0x61>;
> +
> +		buck0-in-supply =<&vcc_5v0_som>;
> +		buck1-in-supply =<&vcc_5v0_som>;
> +		ldo0-in-supply =<&vdd_3v3>;
> +		ldo1-in-supply =<&vdd_3v3>;
> +
> +		lp8733_regulators: regulators {
> +			vdd_core: buck0 {

See regulator comment

> +				regulator-name = "VDD_CORE";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +

[...]

> diff --git a/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
> new file mode 100644
> index 000000000000..70e34fc3592f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am642-phyboard-electra-rdk.dts
> @@ -0,0 +1,313 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2021 PHYTEC America, LLC - https://www.phytec.com
> + * Author: Matt McKee <mmckee@phytec.com>
> + *
> + * Copyright (C) 2022 PHYTEC Messtechnik GmbH
> + * Author: Wadim Egorov <w.egorov@phytec.de>

Same comment for a product link as the SoM

> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/leds-pca9532.h>
> +#include <dt-bindings/mux/ti-serdes.h>
> +#include <dt-bindings/phy/phy.h>
> +#include "k3-am642.dtsi"
> +#include "k3-am64-phycore-som.dtsi"
> +
> +/ {
> +	compatible = "phytec,am642-phyboard-electra-rdk",
> +		     "phytec,am64-phycore-som", "ti,am642";
> +	model = "PHYTEC phyBOARD-Electra-AM64x RDK";
> +
> +	aliases {
> +		mmc1 = &sdhci1;

I plan on fixing aliases so that all aliases are defined in board device
dts files, I'd suggest doing that right away in your series.

https://lore.kernel.org/linux-arm-kernel/20220830201500.sowmkdyrlizpt6o2@confider/

> +	};
> +
> +	chosen {
> +		stdout-path = &main_uart0;
> +	};
> +

[...]

> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gpio_keys_pins_default>;
> +
> +		key-home {
> +			label = "home";
> +			linux,code = <KEY_HOME>;
> +			gpios = <&main_gpio0 17 GPIO_ACTIVE_HIGH>;
> +		};
> +
> +		key-menu {
> +			label = "menu";
> +			linux,code = <KEY_MENU>;
> +			gpios = <&main_gpio0 21 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	user-leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&user_leds_pins_default>;
> +
> +		user-led0 {
Please follow the node naming pattern

> +			gpios = <&main_gpio0 15 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "gpio";

Please check if this matches up with the linux,default-trigger property

Documentation/devicetree/bindings/leds/common.yaml

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
similar comment as before on regulators

[...]


-- 
Regards,
Nishanth Menon
Key (0xDDB5849D1736249D) / Fingerprint: F8A2 8693 54EB 8232 17A3  1A34 DDB5 849D 1736 249D
