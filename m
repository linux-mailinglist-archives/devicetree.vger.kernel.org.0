Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D9F7483414
	for <lists+devicetree@lfdr.de>; Mon,  3 Jan 2022 16:21:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231331AbiACPVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jan 2022 10:21:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbiACPVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jan 2022 10:21:19 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 099A1C061784
        for <devicetree@vger.kernel.org>; Mon,  3 Jan 2022 07:21:19 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id c66so21593990wma.5
        for <devicetree@vger.kernel.org>; Mon, 03 Jan 2022 07:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LJlEvMT3agNtkvK1K/F7JVn2NMo3Yr7DC/P+UURs8jU=;
        b=Q+Z0wIUHfD8YXu5EKwuMYmw6HGGUCREhcg6lV3DH1KFW8VT2NPQBbN5QDDDwNr29j9
         yIQpcnxF7rLq3E3aZfENsWdLHFW8hR0+Tm91Nd58DtVQgrKyoBtFP+IBlrekep+Zp9KM
         zEKZ21DgN2PcAjaIcry2i/yKYbUUlkxjYt06raa3lLxlB8iHJkjXjwGVRQrI8DQR/a09
         jCpJOHHBjt5gpK78CR/H9WhGRaiwAOudvCsCWaXJns9TXoqq4slV31Sl6/wCRLBMaClN
         TBiYP3BgBERy0aQJjzosVvRBjiK8xDPi9IpdunG4swKh7gdB4V+506y0GCWOL99vsEz1
         T1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=LJlEvMT3agNtkvK1K/F7JVn2NMo3Yr7DC/P+UURs8jU=;
        b=s4ww95DqWkIY0S7xwZ5Xv1ow5hzM8xLYVP9/5ei5Q65Al1XtxPncFAdcTizxLi4Pkr
         tUXhOwzA75fXNf2g4rXhP5P+Z5R7ZthmE1IcjA0LP633n3J4b6g1odeG0O57pu/MH5eA
         3vBEkdHBFtqtN8HUeY1T6pTekDPrJFjcRjKaQwwAKTd7dfegHqgFA06LuAGQ/MZ0rscL
         u6n+2WFwbzi0ECf43FnJeq3oAbm7nuPH0r8vLPt1PGUgBkQgmPV97tfZiuFsDGk5V3B9
         DNAbGayX1Al/CiAb0erMWyD7Rm/WplJIJSDGetxR7DODEOTqF3GfmR7ZnLhN2YLriB0i
         LDPg==
X-Gm-Message-State: AOAM5310wxnt3MWHXUMwVnVxjj42MT32LSnfHTF3cqf/voO9roHuEovC
        7ueQHVcgBkyZ0/vJgPKLE01raw==
X-Google-Smtp-Source: ABdhPJyzKUWTjEJm6sR2G+r2sCCE1A8ALoEd4Hth0Zg3W7+7tppHci8J1FF8nJbNoY0Oluke9v+AWQ==
X-Received: by 2002:a1c:4d0d:: with SMTP id o13mr39108656wmh.70.1641223277463;
        Mon, 03 Jan 2022 07:21:17 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:7c9d:a967:38e2:5220? ([2001:861:44c0:66c0:7c9d:a967:38e2:5220])
        by smtp.gmail.com with ESMTPSA id l7sm35344384wms.1.2022.01.03.07.21.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 07:21:16 -0800 (PST)
Subject: Re: [RFC PATCH 6/9] arm64: dts: meson: add initial device-trees for
 A95XF3-AIR
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Benoit Masson <yahoo@perenite.com>
References: <20211130060523.19161-1-christianshewitt@gmail.com>
 <20211130060523.19161-7-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <6ff128a6-91cb-5b83-737e-e703cab81743@baylibre.com>
Date:   Mon, 3 Jan 2022 16:21:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211130060523.19161-7-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 30/11/2021 07:05, Christian Hewitt wrote:
> The CYX A95XF3-AIR is based on Amlogic S905X3 reference board
> designs and ships in multiple configurations:
> 
> – 4GB DDR3 + 64GB eMMC + WiFi a/b/g/n/ac + BT + Gb Ethernet
> – 4GB DDR3 + 32GB eMMC + WiFi a/b/g/n/ac + BT + Gb Ethernet
> – 2GB DDR3 + 16GB eMMC + WiFi b/g/n (no BT) + 10/100 Ethernet
> ...
> - HDMI 2.1 video
> - S/PDIF optical output
> - AV output
> - 1x USB 2.0 OTG port
> - 1x USB 3.0 port
> - IR receiver
> - 1x micro SD card slot (internal)
> - 1x Reset/Update button (in AV jack)
> - 7-segment VFD
> - Multicolour case LED 'arc'
> 
> The device-tree with -100 suffix supports models with 10/100 Ethernet
> and with -1000 suffix supports models with Gigabit Ethernet.

I thought about this, and I think we should have:
- meson-sm1-a95xf3-air.dts for 10/100 version
- meson-sm1-a95xf3-air-gbit.dts for gigabit 10/100/1000 version

With this, I'm ok to apply the serie.

Neil

> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/Makefile          |   2 +
>  .../dts/amlogic/meson-sm1-a95xf3-air-100.dts  | 108 +++++++++++++++
>  .../dts/amlogic/meson-sm1-a95xf3-air-1000.dts | 129 ++++++++++++++++++
>  3 files changed, 239 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-100.dts
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-1000.dts
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index a0c1a7fbae57..e198d17f2ea8 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -51,6 +51,8 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxm-rbox-pro.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxm-s912-libretech-pc.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxm-vega-s96.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-gxm-wetek-core2.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-sm1-a95xf3-air-100.dtb
> +dtb-$(CONFIG_ARCH_MESON) += meson-sm1-a95xf3-air-1000.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-bananapi-m5.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-khadas-vim3l.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-c4.dtb
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-100.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-100.dts
> new file mode 100644
> index 000000000000..5158cc40485e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-100.dts
> @@ -0,0 +1,108 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 BayLibre SAS. All rights reserved.
> + * Copyright (c) 2020 Christian Hewitt <christianshewitt@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-sm1-ac2xx.dtsi"
> +#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> +
> +/ {
> +	compatible = "cyx,a95xf3-air-100", "amlogic,sm1";
> +	model = "Shenzhen CYX Industrial Co., Ltd A95XF3-AIR";
> +
> +	sound {
> +		compatible = "amlogic,axg-sound-card";
> +		model = "A95XF3-AIR";
> +		audio-aux-devs = <&tdmout_b>;
> +		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
> +				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
> +				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
> +				"TDM_B Playback", "TDMOUT_B OUT";
> +
> +		assigned-clocks = <&clkc CLKID_MPLL2>,
> +				  <&clkc CLKID_MPLL0>,
> +				  <&clkc CLKID_MPLL1>;
> +		assigned-clock-parents = <0>, <0>, <0>;
> +		assigned-clock-rates = <294912000>,
> +				       <270950400>,
> +				       <393216000>;
> +		status = "okay";
> +
> +		dai-link-0 {
> +			sound-dai = <&frddr_a>;
> +		};
> +
> +		dai-link-1 {
> +			sound-dai = <&frddr_b>;
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&frddr_c>;
> +		};
> +
> +		/* 8ch hdmi interface */
> +		dai-link-3 {
> +			sound-dai = <&tdmif_b>;
> +			dai-format = "i2s";
> +			dai-tdm-slot-tx-mask-0 = <1 1>;
> +			dai-tdm-slot-tx-mask-1 = <1 1>;
> +			dai-tdm-slot-tx-mask-2 = <1 1>;
> +			dai-tdm-slot-tx-mask-3 = <1 1>;
> +			mclk-fs = <256>;
> +
> +			codec {
> +				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
> +			};
> +		};
> +
> +		/* hdmi glue */
> +		dai-link-4 {
> +			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
> +
> +			codec {
> +				sound-dai = <&hdmi_tx>;
> +			};
> +		};
> +	};
> +};
> +
> +&arb {
> +	status = "okay";
> +};
> +
> +&clkc_audio {
> +	status = "okay";
> +};
> +
> +&ethmac {
> +	status = "okay";
> +	phy-handle = <&internal_ephy>;
> +	phy-mode = "rmii";
> +};
> +
> +&frddr_a {
> +	status = "okay";
> +};
> +
> +&frddr_b {
> +	status = "okay";
> +};
> +
> +&frddr_c {
> +	status = "okay";
> +};
> +
> +&tdmif_b {
> +	status = "okay";
> +};
> +
> +&tdmout_b {
> +	status = "okay";
> +};
> +
> +&tohdmitx {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-1000.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-1000.dts
> new file mode 100644
> index 000000000000..c87d948fa3e6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-1000.dts
> @@ -0,0 +1,129 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 BayLibre SAS. All rights reserved.
> + * Copyright (c) 2020 Christian Hewitt <christianshewitt@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "meson-sm1-ac2xx.dtsi"
> +#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> +
> +/ {
> +	compatible = "cyx,a95xf3-air-1000", "amlogic,sm1";
> +	model = "Shenzhen CYX Industrial Co., Ltd A95XF3-AIR";
> +
> +	sound {
> +		compatible = "amlogic,axg-sound-card";
> +		model = "A95XF3-AIR";
> +		audio-aux-devs = <&tdmout_b>;
> +		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
> +				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
> +				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
> +				"TDM_B Playback", "TDMOUT_B OUT";
> +
> +		assigned-clocks = <&clkc CLKID_MPLL2>,
> +				  <&clkc CLKID_MPLL0>,
> +				  <&clkc CLKID_MPLL1>;
> +		assigned-clock-parents = <0>, <0>, <0>;
> +		assigned-clock-rates = <294912000>,
> +				       <270950400>,
> +				       <393216000>;
> +		status = "okay";
> +
> +		dai-link-0 {
> +			sound-dai = <&frddr_a>;
> +		};
> +
> +		dai-link-1 {
> +			sound-dai = <&frddr_b>;
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&frddr_c>;
> +		};
> +
> +		/* 8ch hdmi interface */
> +		dai-link-3 {
> +			sound-dai = <&tdmif_b>;
> +			dai-format = "i2s";
> +			dai-tdm-slot-tx-mask-0 = <1 1>;
> +			dai-tdm-slot-tx-mask-1 = <1 1>;
> +			dai-tdm-slot-tx-mask-2 = <1 1>;
> +			dai-tdm-slot-tx-mask-3 = <1 1>;
> +			mclk-fs = <256>;
> +
> +			codec {
> +				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
> +			};
> +		};
> +
> +		/* hdmi glue */
> +		dai-link-4 {
> +			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
> +
> +			codec {
> +				sound-dai = <&hdmi_tx>;
> +			};
> +		};
> +	};
> +};
> +
> +&arb {
> +	status = "okay";
> +};
> +
> +&clkc_audio {
> +	status = "okay";
> +};
> +
> +&ethmac {
> +	status = "okay";
> +
> +	pinctrl-0 = <&eth_pins>, <&eth_rgmii_pins>;
> +	pinctrl-names = "default";
> +	phy-mode = "rgmii-txid";
> +	phy-handle = <&external_phy>;
> +
> +	rx-internal-delay-ps = <800>;
> +};
> +
> +&ext_mdio {
> +	external_phy: ethernet-phy@0 {
> +		/* Realtek RTL8211F (0x001cc916) */
> +		reg = <0>;
> +		max-speed = <1000>;
> +
> +		reset-assert-us = <10000>;
> +		reset-deassert-us = <80000>;
> +		reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
> +
> +		interrupt-parent = <&gpio_intc>;
> +		/* MAC_INTR on GPIOZ_14 */
> +		interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +
> +&frddr_a {
> +	status = "okay";
> +};
> +
> +&frddr_b {
> +	status = "okay";
> +};
> +
> +&frddr_c {
> +	status = "okay";
> +};
> +
> +&tdmif_b {
> +	status = "okay";
> +};
> +
> +&tdmout_b {
> +	status = "okay";
> +};
> +
> +&tohdmitx {
> +	status = "okay";
> +};
> 

