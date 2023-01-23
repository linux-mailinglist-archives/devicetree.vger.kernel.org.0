Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C013E67853F
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 19:48:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231908AbjAWSsP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 13:48:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231719AbjAWSsO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 13:48:14 -0500
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BEBD14497
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:48:12 -0800 (PST)
Received: by mail-io1-xd33.google.com with SMTP id c66so581008iof.12
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=8e3NreOUzZjT8qz/39bUI0daiN7IxAk6v8AOVW6gkQI=;
        b=dxzUMmkzRd7l3i2CoAsAN1xYoMbNhtiwbDJkTErNMRTA9ILan8HqJdEc3utiemGRRY
         hduNhg9AOtx9+stYwmZ7x3SeLmOrjN2dyJ+EA6RbwxtHlMOodp87wHcyIqyVVpWRU0Wq
         yfOXb56tNwgKNx0/PAmpsoWgwO2eDq4CrLsAYCFHxS5Ibv8ZRlGgStP0xL+aR0TAgs+X
         fmRxOqjmO8z0pkREAcouyIzRyhkjCAnHodB1J8q0TvWrVqB5ZhN6MNm+fbe/vEQOStP+
         2ORdX8A0PA3S1p1Iudc80+39nxg4b+kLEzJQpLbPpiwVrq8vnKSzdnl09cGUzmwyoPWM
         Ri6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8e3NreOUzZjT8qz/39bUI0daiN7IxAk6v8AOVW6gkQI=;
        b=7N2IubArbz8kYdavF0wsrrPN/LcZd+ThYz0UwdlHw2yVUFd4prPXssZzaAbSAGydmj
         NrX14GBWY5dsd3yLbsy1V64p43GnP+j3b6Ad5M7qbtDl4S+o/VeIeajfqyCGP7/44VrH
         aXATMBp4CFmveaNi6HMZXCQ3KdrP+Dda8FWdqg/gKZ51eqiA6LTWtM+wq8suXPxiMfmI
         yiUwyV4mNbkNmiOV8JEe9/LpJcjklCxYqxX7TUijPxgUJ1lK6wZ85hLqfE9A/5DIO2yv
         i5dQkKZslLtnDEAnEIVR85GJiftSR6qpWGWklNUlrcTJ1eNl1aLxl/bYev9j4aRanZjU
         qJ4Q==
X-Gm-Message-State: AFqh2kqaH20dFbCeT/Q0fXagMQc0apSsnsx+++E9s1g6f+iE+YsdX9N6
        5v5FtZLfdF578I6LggHHGgs=
X-Google-Smtp-Source: AMrXdXtAL+nNSP9vH6V/ZZPjBeWJAdNKCKSptXmWdQRNNVCu9jh1eix4aLQygPuKDubYAYpQcD5wPA==
X-Received: by 2002:a6b:4e12:0:b0:6dc:5e15:c6e4 with SMTP id c18-20020a6b4e12000000b006dc5e15c6e4mr18092928iob.11.1674499691349;
        Mon, 23 Jan 2023 10:48:11 -0800 (PST)
Received: from rivendell (static.167.156.21.65.clients.your-server.de. [65.21.156.167])
        by smtp.gmail.com with ESMTPSA id u27-20020a02b1db000000b003a068d00373sm9749110jah.138.2023.01.23.10.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 10:48:10 -0800 (PST)
Date:   Mon, 23 Jan 2023 19:48:08 +0100 (CET)
From:   Enrico Mioso <mrkiko.rs@gmail.com>
To:     Pali <pali@kernel.org>
cc:     devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: add DTS for GL.iNet GL-MV1000
In-Reply-To: <20221128185256.awiuxvbzpairsdo5@pali>
Message-ID: <95e775fe-d899-86c3-9c81-df2fe1208f81@gmail.com>
References: <20221122063017.924-1-mrkiko.rs@gmail.com> <20221128185256.awiuxvbzpairsdo5@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,LOTS_OF_MONEY,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org




On Mon, 28 Nov 2022, Pali wrote:

> Date: Mon, 28 Nov 2022 19:52:56
> From: Pali <pali@pali.im>
> To: Enrico Mioso <mrkiko.rs@gmail.com>
> Subject: Re: [PATCH] arm64: dts: marvell: add DTS for GL.iNet GL-MV1000
> 
> Hello! Thanks for the patch. I have a few comments.
>
> Ideally, for kernel patches, please CC my kernel address pali@kernel.org
> so my email filter correctly put PATCH into correct folder, so I will
> see it in review queue :-)

Thanks again, sorry for the inconvenience.

>
> About partition generally, I would suggest to completely drop all
> "read-only" attributes (except factory). I think that "read-only" is
> useful for some calibration data which should never be erased or
> updated. So factory with MAC address should be marked as read-only. But
> on the other hand, firmware, dtb and system rootfs is something
> upgradable - therefore should be read/write.

Ok, thanks. I removed all the read-only markers except on the factory partitions. The u-boot-env partition will be marked read-only by the kernel itself due to it not ending at an erase/write boundary block.
Still, updating environment on this device maybe useful when e.g.: installing a general purpose distribution as opposed to OpenWrt in the eMMC.

>
> Ad first partition@0: I would suggest to use label "firmware" as this
> name is used on all A3720 devices because at offset 0 is not u-boot, but
> A3720 firmware (TIM). And this partition contains concatenation of TIM,
> WTMI, ARM trusted firmware and U-Boot. Hence generic firmware name is
> better.

ACK, thanks a lot.

>
> Ad partition partition@100000: I would suggest to name it just "dtb".
> Device Tree Blob is system independent and hence can be used by any
> operating system or program (U-Boot, Linux, BSD, etc...).

Sure.

>
> Anyway, what is stored on "gl-firmware" partition and what on
> "gl-firmware-jffs2" partition? JFFS2 is file systems, mostly used for
> the system as root file system. If this is truth than better label could
> be "rootfs"?

Well - here "firmware" is meant in OpenWrt "conventions" in a sense: so:
- gl-firmware: consists of an u-boot legacy uImage (kernel+squashfs root filesystem)
Squashfs is read-only of course, so OpenWrt uses overlayfs to store changes.
- gl-firmware-jffs2: is used as an overlay to store changes, and contains a JFFS2 filesystem (which is OK, since this is stored in NOR flash).

So to recap:
- openwrt boots from eMMC and is stored there
- here we are definiting the partitions for the NOR flash which contains a copy of the "stock" gl.iNet firmware (actually a modified copy of OpenWRt, with features such as automatic firmware updates).
I prepended them with "gl-" to signal the fact they're stock from gl.iNet, but don't know how to better name them.


>
> Recently I introduced updated DTS file for old Turris 1.x routers where
> I tried to use more descriptive partitions labels and also put comments:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/powerpc/boot/dts/turris1x.dts

I had a look at it. Thanks!
>
> On Tuesday 22 November 2022 07:30:17 Enrico Mioso wrote:
>> The GL-MV1000 (Brume) is a small form-factor gateway router.
>> It is based on the Marvell Armada 88F3720 SOC (1GHz), has 3 gigabit ethernet ports, 1 GB RAM, 16M SPI flash, 8GB eMMC and an uSD slot, as well as an USB 2.0 type A and an USB 3.0 type C port.
>>
>> Signed-off-by: Enrico Mioso <mrkiko.rs@gmail.com>
>> CC: Pali <pali@pali.im>
>> ---
>>  arch/arm64/boot/dts/marvell/Makefile          |   1 +
>>  .../dts/marvell/armada-3720-gl-mv1000.dts     | 248 ++++++++++++++++++
>>  2 files changed, 249 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
>>
>> diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
>> index 058237681fe5..79ac09b58a89 100644
>> --- a/arch/arm64/boot/dts/marvell/Makefile
>> +++ b/arch/arm64/boot/dts/marvell/Makefile
>> @@ -7,6 +7,7 @@ dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-emmc.dtb
>>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-ultra.dtb
>>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-v7.dtb
>>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-v7-emmc.dtb
>> +dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-gl-mv1000.dtb
>>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-turris-mox.dtb
>>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-uDPU.dtb
>>  dtb-$(CONFIG_ARCH_MVEBU) += armada-7040-db.dtb
>> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
>> new file mode 100644
>> index 000000000000..72d7267ccd08
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
>> @@ -0,0 +1,248 @@
>> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
>> +
>> +/dts-v1/;
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>> +#include "armada-372x.dtsi"
>> +
>> +/ {
>> +	model = "GL.iNet GL-MV1000";
>> +	compatible = "glinet,gl-mv1000", "marvell,armada3720";
>> +
>> +	aliases {
>> +		led-boot = &led_power;
>> +		led-failsafe = &led_power;
>> +		led-running = &led_power;
>> +		led-upgrade = &led_power;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +
>> +	memory@0 {
>> +		device_type = "memory";
>> +		reg = <0x00000000 0x00000000 0x00000000 0x20000000>;
>> +	};
>> +
>> +	vcc_sd_reg1: regulator {
>> +		compatible = "regulator-gpio";
>> +		regulator-name = "vcc_sd1";
>> +		regulator-min-microvolt = <1800000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		regulator-boot-on;
>> +
>> +		gpios-states = <0>;
>> +		states = <1800000 0x1
>> +			3300000 0x0>;
>> +		enable-active-high;
>> +	};
>> +
>> +	keys {
>> +		compatible = "gpio-keys";
>> +
>> +		reset {
>> +			label = "reset";
>> +			linux,code = <KEY_RESTART>;
>> +			gpios = <&gpionb 14 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		switch {
>> +			label = "switch";
>> +			linux,code = <BTN_0>;
>> +			gpios = <&gpiosb 22 GPIO_ACTIVE_LOW>;
>> +		};
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		vpn {
>> +			label = "green:vpn";
>> +			gpios = <&gpionb 11 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		wan {
>> +			label = "green:wan";
>> +			gpios = <&gpionb 12 GPIO_ACTIVE_LOW>;
>> +		};
>> +
>> +		led_power: power {
>> +			label = "green:power";
>> +			gpios = <&gpionb 13 GPIO_ACTIVE_LOW>;
>> +			default-state = "on";
>> +		};
>> +	};
>> +};
>> +
>> +&spi0 {
>> +	status = "okay";
>> +
>> +	flash@0 {
>> +		reg = <0>;
>> +		compatible = "jedec,spi-nor";
>> +		spi-max-frequency = <104000000>;
>> +		m25p,fast-read;
>> +		partitions {
>> +			compatible = "fixed-partitions";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +
>> +			partition@0 {
>> +				label = "u-boot";
>> +				reg = <0 0xf0000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@f0000 {
>> +				label = "u-boot-env";
>> +				reg = <0xf0000 0x8000>;
>> +				read-only;
>> +			};
>> +
>> +			factory: partition@f8000 {
>> +				label = "factory";
>> +				reg = <0xf8000 0x8000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@100000 {
>> +				label = "gl-firmware-dtb";
>> +				reg = <0x100000 0x10000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@110000 {
>> +				label = "gl-firmware";
>> +				reg = <0x110000 0xef0000>;
>> +				read-only;
>> +			};
>> +
>> +			partition@ef0000 {
>> +				label = "gl-firmware-jffs2";
>> +				reg = <0xef0000 0x110000>;
>> +				read-only;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&sdhci1 {
>> +	wp-inverted;
>> +	bus-width = <4>;
>> +	cd-gpios = <&gpionb 17 GPIO_ACTIVE_LOW>;
>> +	marvell,pad-type = "sd";
>> +	no-1-8-v;
>> +	vqmmc-supply = <&vcc_sd_reg1>;
>> +	status = "okay";
>> +};
>> +
>> +&sdhci0 {
>> +	bus-width = <8>;
>> +	mmc-ddr-1_8v;
>> +	mmc-hs400-1_8v;
>> +	non-removable;
>> +	no-sd;
>> +	no-sdio;
>> +	marvell,pad-type = "fixed-1-8v";
>> +	status = "okay";
>> +};
>> +
>> +&usb3 {
>> +	status = "okay";
>> +};
>> +
>> +&usb2 {
>> +	status = "okay";
>> +};
>> +
>> +&uart0 {
>> +	status = "okay";
>> +};
>> +
>> +&mdio {
>> +	switch0: switch0@1 {
>> +		compatible = "marvell,mv88e6085";
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +		reg = <1>;
>> +
>> +		dsa,member = <0 0>;
>> +
>> +		ports: ports {
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			port@0 {
>> +				reg = <0>;
>> +				label = "cpu";
>> +				ethernet = <&eth0>;
>> +			};
>> +
>> +			port@1 {
>> +				reg = <1>;
>> +				label = "wan";
>> +				phy-handle = <&switch0phy0>;
>> +			};
>> +
>> +			port@2 {
>> +				reg = <2>;
>> +				label = "lan0";
>> +				phy-handle = <&switch0phy1>;
>> +
>> +				nvmem-cells = <&macaddr_factory_6>;
>> +				nvmem-cell-names = "mac-address";
>> +			};
>> +
>> +			port@3 {
>> +				reg = <3>;
>> +				label = "lan1";
>> +				phy-handle = <&switch0phy2>;
>> +
>> +				nvmem-cells = <&macaddr_factory_6>;
>> +				nvmem-cell-names = "mac-address";
>> +			};
>> +		};
>> +
>> +		mdio {
>> +			#address-cells = <1>;
>> +			#size-cells = <0>;
>> +
>> +			switch0phy0: switch0phy0@11 {
>> +				reg = <0x11>;
>> +			};
>> +			switch0phy1: switch0phy1@12 {
>> +				reg = <0x12>;
>> +			};
>> +			switch0phy2: switch0phy2@13 {
>> +				reg = <0x13>;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&eth0 {
>> +	nvmem-cells = <&macaddr_factory_0>;
>> +	nvmem-cell-names = "mac-address";
>> +	phy-mode = "rgmii-id";
>> +	status = "okay";
>> +
>> +	fixed-link {
>> +		speed = <1000>;
>> +		full-duplex;
>> +	};
>> +};
>> +
>> +&factory {
>> +	compatible = "nvmem-cells";
>> +	#address-cells = <1>;
>> +	#size-cells = <1>;
>> +
>> +	macaddr_factory_0: macaddr@0 {
>> +		reg = <0x0 0x6>;
>> +	};
>> +
>> +	macaddr_factory_6: macaddr@6 {
>> +		reg = <0x6 0x6>;
>> +	};
>> +};
>> --
>> 2.38.1
>>
>
