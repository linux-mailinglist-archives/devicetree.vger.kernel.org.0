Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8BBB54E8A4
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 19:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233529AbiFPRap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 13:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233698AbiFPRao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 13:30:44 -0400
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48CE62CCA4
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:30:43 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id f7so1392371ilr.5
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:30:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9PHViV8lPLJyrqPL0LHr+XBi9ajTrYPhETIOpjq/XCI=;
        b=4tl4rZG4MotpES0zBs8jo1Y1A5oijXMgtDE2JRtDI8OYO8YQVVgLKQBMeWR15ay3d/
         b+6lA5cdlEJEDdEUdIZvQwy0+1PLQMG2YVc8AEzmWbksIO1sb8vaZikFUyXkLcBdeRhI
         wvCyxF44TSA8bFV5J5jwSCGS71bC2Ke93BkEU1MHBCF862VOX0yRjYaM0idINVw+LiCE
         aZraU5q36O1X4f2Z9xaJdAdcJ4vzlJGyzw58jgf5C/2ehPsNAgE9h06MfB9QLMSeZpXP
         SETyjOJ0ApqOJmBFerB1KLEQHD45KVxvsNDsUWrSzbHX2pSXva88VypulDHcfGLgDdOO
         t8Og==
X-Gm-Message-State: AJIora9RbyGU+XXi0dejCCEdBvcZIDVeDlrnt8KjBRrP63VGk9rmOjTe
        9CaoMtDlzNtuB2S73E0yCA==
X-Google-Smtp-Source: AGRyM1u076wWx6UiBODDY/wS6W1yfAtrzEnSGe7YXRvvt8HEaSY02mvqELt9qdcHecTkdfJEqkIEuA==
X-Received: by 2002:a05:6e02:1b02:b0:2d2:f327:59c3 with SMTP id i2-20020a056e021b0200b002d2f32759c3mr3480645ilv.219.1655400642446;
        Thu, 16 Jun 2022 10:30:42 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id e2-20020a056638020200b0032e3b9e3d38sm1098792jaq.126.2022.06.16.10.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 10:30:42 -0700 (PDT)
Received: (nullmailer pid 3686875 invoked by uid 1000);
        Thu, 16 Jun 2022 17:30:40 -0000
Date:   Thu, 16 Jun 2022 11:30:40 -0600
From:   Rob Herring <robh@kernel.org>
To:     Christian Lamparter <chunkeey@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: Re: [PATCH v1 2/2] ARM: BCM5301X: Add DT for Meraki MR26
Message-ID: <20220616173040.GA3667029-robh@kernel.org>
References: <20220611165948.410308-1-chunkeey@gmail.com>
 <20220611165948.410308-2-chunkeey@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220611165948.410308-2-chunkeey@gmail.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jun 11, 2022 at 06:59:48PM +0200, Christian Lamparter wrote:
> Meraki MR26 is an EOL wireless access point featuring a
> PoE ethernet port and two dual-band 3x3 MIMO 802.11n
> radios and 1x1 dual-band WIFI dedicated to scanning.
> 
> Thank you Amir for the unit and PSU.
> 
> Hardware info:
> SOC   : Broadcom BCM53015A1KFEBG (dual-core Cortex-A9 CPU at 800 MHz)
> RAM   : H5TQ1G63EFR, SK hynix Inc. 1Gb DDR3 SDRAM = 128 MiB
> NAND  : S34ML01G100TF100, S34ML01G1 1 Gb Spansion SLC NAND Flash = 128 MiB
> ETH   : 1GBit Ethernet Port - PoE (TPS23754 PoE Interface)
> 
> WIFI0 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
> WIFI1 : Broadcom BCM43431KMLG, BCM43431 802.11 abgn (3x3:3)
> WIFI2 : Broadcom BCM43428               802.11 abgn (1x1:1)
> BUTTON: one reset button
> LEDS  : one amber (fault), one white (indicator) LED, separate RGB-LED.
> MISC  : Atmel AT24C64 8KiB EEPROM i2c
>       : Ti INA219 26V, 12-bit, i2c output current/voltage/power monitor
> 
> SERIAL:
>       WARNING: The serial port needs a TTL/RS-232 3V3 level converter!
>       The Serial setting is 115200-8-N-1. The board has a populated
>       right angle 1x4 0.1" pinheader.
>       The pinout is: VCC (next to J3, has the pin 1 indicator), RX, TX, GND.
> 
> Odd stuff:
> 
> - uboot does not support lzma compression, but gzip'd uImage/DTB work.
> - uboot claims to support FIT, but fails to pass the DTB to the kernel.
>   Appending the dtb after the kernel image works.
> - RGB-controller is supported through an external userspace program.
> - The ubi partition contains a "board-config" volume. It stores the
>   MAC Address (0x66 in binary) and Serial No. (0x7c alpha-numerical).
> - SoC's temperature sensor always reports that it is on fire.
>   This causes the system to immediately shutdown! Looking at reported
>   "418 degree Celsius" suggests that this sensor is not working.
> 
> WIFI:
> b43 is able to initialize all three WIFIs @ 802.11bg.
> | b43-phy0: Broadcom 43431 WLAN found (core revision 29)
> | bcma-pci-bridge 0000:01:00.0: bus1: Switched to core: 0x812
> | b43-phy0: Found PHY: Analog 9, Type 7 (HT), Revision 1
> | b43-phy0: Found Radio: Manuf 0x17F, ID 0x2059, Revision 0, Version 1
> | b43-phy0 warning: 5 GHz band is unsupported on this PHY
> | b43-phy1: Broadcom 43431 WLAN found (core revision 29)
> | bcma-pci-bridge 0001:01:00.0: bus2: Switched to core: 0x812
> | b43-phy1: Found PHY: Analog 9, Type 7 (HT), Revision 1
> | b43-phy1: Found Radio: Manuf 0x17F, ID 0x2059, Revision 0, Version 1
> | b43-phy1 warning: 5 GHz band is unsupported on this PHY
> | b43-phy2: Broadcom 43228 WLAN found (core revision 30)
> | bcma-pci-bridge 0002:01:00.0: bus3: Switched to core: 0x812
> | b43-phy2: Found PHY: Analog 9, Type 4 (N), Revision 16
> | b43-phy2: Found Radio: Manuf 0x17F, ID 0x2057, Revision 9, Version 1
> | Broadcom 43xx driver loaded [ Features: NL ]
> 
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
> ---
> 
> |WARNING: added, moved or deleted file(s), does MAINTAINERS need updating?
> |#89:
> |new file mode 100644
> 
> MAINTAINERS has:
> 
> >BROADCOM BCM5301X ARM ARCHITECTURE
> >[...]
> >F:      arch/arm/boot/dts/bcm5301*
> 
> |WARNING: DT compatible string "atmel,24c64" appears un-documented \
> |-- check ./Documentation/devicetree/bindings/
> |#245: FILE: arch/arm/boot/dts/bcm53015-meraki-mr26.dts:152:
> |+            compatible = "atmel,24c64";
> 
> weird, it should match what is in:
> Documentation/devicetree/bindings/eeprom/at24.yaml

This checkpatch check is a hack dating back to before we had schemas. It 
just greps the tree for the compatible string, but that doesn't work 
since it's a pattern now. 

What you should pay attention to is 'make dtbs_check' for this dts file 
though that is still pretty noisy for existing platforms. It will be 
accurate for what's not documented with a schema.

I haven't removed the checkpatch check because I imagine folks run 
checkpatch, but not schema checks still, and the check also looks at .c 
files which I don't have a solution for. What I want to do is extract 
all struct of_device_id instances and compare them against all schema 
compatibles. I'm not sure how to do that exactly. Use the DWARF info to 
get all the structs perhaps. Another way is using the modinfo, but not 
everything is a module.

> ---
>  arch/arm/boot/dts/Makefile                 |   1 +
>  arch/arm/boot/dts/bcm53015-meraki-mr26.dts | 166 +++++++++++++++++++++
>  2 files changed, 167 insertions(+)
>  create mode 100644 arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 184899808ee7..9ad78c358330 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -135,6 +135,7 @@ dtb-$(CONFIG_ARCH_BCM_5301X) += \
>  	bcm47094-luxul-xwr-3150-v1.dtb \
>  	bcm47094-netgear-r8500.dtb \
>  	bcm47094-phicomm-k3.dtb \
> +	bcm53015-meraki-mr26.dtb \
>  	bcm53016-meraki-mr32.dtb \
>  	bcm94708.dtb \
>  	bcm94709.dtb \
> diff --git a/arch/arm/boot/dts/bcm53015-meraki-mr26.dts b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> new file mode 100644
> index 000000000000..597d36945756
> --- /dev/null
> +++ b/arch/arm/boot/dts/bcm53015-meraki-mr26.dts
> @@ -0,0 +1,166 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Broadcom BCM470X / BCM5301X ARM platform code.
> + * DTS for Meraki MR26 / Codename: Venom
> + *
> + * Copyright (C) 2022 Christian Lamparter <chunkeey@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "bcm4708.dtsi"
> +#include "bcm5301x-nand-cs0-bch8.dtsi"
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	compatible = "meraki,mr26", "brcm,bcm53015", "brcm,bcm4708";
> +	model = "Meraki MR26";
> +
> +	memory@0 {
> +		reg = <0x00000000 0x08000000>;
> +		device_type = "memory";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			function = LED_FUNCTION_FAULT;
> +			color = <LED_COLOR_ID_AMBER>;
> +			gpios = <&chipcommon 13 GPIO_ACTIVE_HIGH>;
> +			panic-indicator;
> +		};
> +		led-1 {
> +			function = LED_FUNCTION_INDICATOR;
> +			color = <LED_COLOR_ID_WHITE>;
> +			gpios = <&chipcommon 12 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		restart {

key-restart

I think, there's a series under review to standardize the prefix.

> +			label = "Reset";
> +			linux,code = <KEY_RESTART>;
> +			gpios = <&chipcommon 11 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&uart0 {
> +	clock-frequency = <50000000>;
> +	/delete-property/ clocks;
> +};
> +
> +&uart1 {
> +	status = "disabled";
> +};
> +
> +&gmac0 {
> +	status = "okay";
> +};
> +
> +&gmac1 {
> +	status = "disabled";
> +};
> +&gmac2 {
> +	status = "disabled";
> +};
> +&gmac3 {
> +	status = "disabled";
> +};
> +
> +&nandcs {
> +	nand-ecc-algo = "hw";
> +
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <0x1>;
> +		#size-cells = <0x1>;
> +
> +		partition@0 {
> +			label = "u-boot";
> +			reg = <0x0 0x200000>;
> +			read-only;
> +		};
> +
> +		partition@200000 {
> +			label = "u-boot-env";
> +			reg = <0x200000 0x200000>;
> +			/* empty */
> +		};
> +
> +		partition@400000 {
> +			label = "u-boot-backup";
> +			reg = <0x400000 0x200000>;
> +			/* empty */
> +		};
> +
> +		partition@600000 {
> +			label = "u-boot-env-backup";
> +			reg = <0x600000 0x200000>;
> +			/* empty */
> +		};
> +
> +		partition@800000 {
> +			label = "ubi";
> +			reg = <0x800000 0x7780000>;
> +		};
> +	};
> +};
> +
> +&srab {
> +	status = "okay";
> +
> +	ports {
> +		port@0 {
> +			reg = <0>;
> +			label = "poe";
> +		};
> +
> +		port@5 {
> +			reg = <5>;
> +			label = "cpu";
> +			ethernet = <&gmac0>;
> +
> +			fixed-link {
> +				speed = <1000>;
> +				duplex-full;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinmux_i2c>;
> +
> +	clock-frequency = <100000>;
> +
> +	ina219@40 {
> +		compatible = "ti,ina219"; /* PoE power */
> +		reg = <0x40>;
> +		shunt-resistor = <60000>; /* = 60 mOhms */
> +	};
> +
> +	eeprom@56 {
> +		compatible = "atmel,24c64";
> +		reg = <0x56>;
> +		pagesize = <32>;
> +		read-only;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		/* it's empty */
> +	};
> +};
> +
> +&thermal {
> +	status = "disabled";
> +	/* does not work, reads 418 degree Celsius */
> +};
> -- 
> 2.36.1
> 
> 
