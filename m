Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B4A459E58A
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:02:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239085AbiHWPCY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:02:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242715AbiHWPBb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:01:31 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 905A3316074
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:26:52 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id l21so13349806ljj.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=WNYNLsddiMbX+zX1q/G9e2PsmV/Wq/uCqEJWUrlSkFs=;
        b=P7fh/uLfCBEbkha+axE1BmCW758bAHnMirsct1lHmxeWy9lL/DxSctYZfRZyPcw9sd
         E1NdasDjlQYH3BiW45xy/ziFvgNHapC0n7ZBRAqDXTV91GybLYH7ABYpGSts31izda+z
         ayXR3+PD549ANK09UqPKpmmIUbHoCrKcqd0IyiSprNlCZYBEe28Nb5zzt9erS8Sqsqmv
         F8iaeF1BrE7ASuTAZw3OZ/QU4d6Z1WLvKPq0e1ckEteHBifaRXp6b5P9e2BUTgaKi6TX
         Vw3j/je7TI/cF8JLBh8dLUueMHpXNEdAV2Ci4/M46R8AAcwWgsyx3R3p5cdDYqOtxzhi
         P70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=WNYNLsddiMbX+zX1q/G9e2PsmV/Wq/uCqEJWUrlSkFs=;
        b=jhdWF8hCjAW5FQBACIgkNhVTIR1HN0H64wIf25cOf4GPB4OQ13ZXOKLYnjarsjTS5c
         cphAsYVDi6ko79USFHgL4UBFiqA6HKrEEM5Pk9yq77wk9l13QpSbUOSV5VAwRg4rhtv5
         8CBe0GXQnLcN0gh2SYIN23xSb2ey4xPwBQLfjLuBaFEiFWbzUtCuHy1Wq7F5iZShLZnR
         kKczCKt8wdOTpx55vuwdPK20RQ++Qy/bNHIxSJvm8VGtjAkv5kCV1X4JVXTeUsW5LKUe
         XHENZYp6ZQNimRv91BY4uyaG5fAML68J5JWbWYJUTfgldnP3yPU7N+3CQjCrSkfBqCnd
         xLSQ==
X-Gm-Message-State: ACgBeo11rJSolWE3gneEBpqzqJm2yUWkGw7a3caFJLpAFzS3jxbgjkVh
        NCShVpMy2qCZlpLB3nVCtsBjpQ==
X-Google-Smtp-Source: AA6agR4wIidcqZ4fYcmvnyCAoXGxiWkAwjYJSbW09dhwZ85C4pf/pohNRsmc0Px7uR7V0qEv3tGTJg==
X-Received: by 2002:a2e:9ec3:0:b0:261:c893:679c with SMTP id h3-20020a2e9ec3000000b00261c893679cmr3669835ljk.378.1661257569107;
        Tue, 23 Aug 2022 05:26:09 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id v24-20020ac258f8000000b0048b0062a14fsm1239695lfo.144.2022.08.23.05.26.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:26:08 -0700 (PDT)
Message-ID: <273e27e6-4def-2424-b838-de217f10e4a3@linaro.org>
Date:   Tue, 23 Aug 2022 15:26:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, cphealy@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220819222520.3069-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/08/2022 01:25, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Anbernic RG353P and RG503 are both RK3566 based handheld gaming devices
> from Anbernic.
> 
> Both devices have:
>  - 2 SDMMC slots.
>  - A Realtek rtl8821cs WiFi/Bluetooth adapter.
>  - A mini HDMI port.
>  - A USB C host port and a USB C otg port (currently only working as
>    device).
>  - Multiple GPIO buttons and a single ADC button.
>  - Dual analog joysticks controlled via a GPIO mux.
>  - A headphone jack with amplified stereo speakers via a SGM4865 amp.
>  - A PWM based vibrator for force feedback.
> 
> The RG353P has:
>  - 2GB LPDDR4 RAM.
>  - A 32GB eMMC.
>  - A 3.5 inch 640x480 4-lane DSI panel of unknown origin with an i2c
>    controlled touchscreen (touchscreen is a Hynitron CST340).
> 
> The RG503 has:
>  - 1GB LPDDR4 RAM.
>  - A 5 inch 960x544 AMOLED 2-lane DSI/DBI panel manufactured by Samsung
>    with part number ams495qa04. Data for this panel is provided via the
>    DSI interface, however commands are sent via a 9-bit 3-wire SPI
>    interface. The MISO pin of SPI3 of the SOC is wired to the input of
>    the panel, so it must be bitbanged.
> 
> This devicetree enables the following hardware:
>  - HDMI (plus audio).
>  - Analog audio, including speakers.
>  - All buttons.
>  - All SDMMC/eMMC/SDIO controllers.
>  - The ADC joysticks (note a pending patch is required to use them).
>  - WiFi/Bluetooth (note out of tree drivers are required).
>  - The PWM based vibrator motor.
> 
> The following hardware is not enabled:
>  - The display panels (drivers are being written and there are issues
>    with the upstream DSI and VOP2 subsystems).
>  - Battery (driver pending).
>  - Touchscreen on the RG353P (note the i2c2 bus is enabled for it).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 103 +++
>  .../dts/rockchip/rk3566-anbernic-rg503.dts    |  93 ++
>  .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 821 ++++++++++++++++++
>  4 files changed, 1019 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index ef79a672804a..1402274a78a0 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -57,6 +57,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353p.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> new file mode 100644
> index 000000000000..f9333ed1ecc7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -0,0 +1,103 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566-anbernic-rgxx3.dtsi"
> +
> +/ {
> +	model = "RG353P";
> +	compatible = "anbernic,rg353p", "rockchip,rk3566";
> +
> +	aliases {
> +		mmc0 = &sdhci;
> +		mmc1 = &sdmmc0;
> +		mmc2 = &sdmmc1;
> +		mmc3 = &sdmmc2;
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		power-supply = <&vcc_sys>;
> +		pwms = <&pwm4 0 25000 0>;
> +	};
> +};
> +
> +&gpio_keys_control {
> +	button-5 {
> +		gpios = <&gpio3 RK_PA5 GPIO_ACTIVE_LOW>;
> +		label = "DPAD-LEFT";
> +		linux,code = <BTN_DPAD_RIGHT>;
> +	};
> +
> +	button-6 {
> +		gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_LOW>;
> +		label = "DPAD-RIGHT";
> +		linux,code = <BTN_DPAD_LEFT>;
> +	};
> +
> +	button-9 {
> +		gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_LOW>;
> +		label = "TR";
> +		linux,code = <BTN_TR2>;
> +	};
> +
> +	button-10 {
> +		gpios = <&gpio3 RK_PB4 GPIO_ACTIVE_LOW>;
> +		label = "TR2";
> +		linux,code = <BTN_TR>;
> +	};
> +
> +	button-14 {
> +		gpios = <&gpio3 RK_PC1 GPIO_ACTIVE_LOW>;
> +		label = "WEST";
> +		linux,code = <BTN_WEST>;
> +	};
> +
> +	button-15 {
> +		gpios = <&gpio3 RK_PC2 GPIO_ACTIVE_LOW>;
> +		label = "EAST";
> +		linux,code = <BTN_EAST>;
> +	};
> +};
> +
> +&i2c0 {
> +	/* This hardware is physically present but unused. */
> +	cw2015@62 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "cellwise,cw2015";
> +		reg = <0x62>;
> +		status = "disabled";
> +	};
> +};
> +
> +&i2c2 {
> +	pintctrl-names = "default";
> +	pinctrl-0 = <&i2c2m1_xfer>;
> +	status = "okay";
> +};
> +

(...)

> +
> +&hdmi_sound {
> +	status = "okay";
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	rk817: pmic@20 {
> +		compatible = "rockchip,rk817";
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> +		clock-names = "mclk";
> +		clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> +		#clock-cells = <1>;
> +		#sound-dai-cells = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>;
> +		wakeup-source;
> +
> +		vcc1-supply = <&vcc_sys>;
> +		vcc2-supply = <&vcc_sys>;
> +		vcc3-supply = <&vcc_sys>;
> +		vcc4-supply = <&vcc_sys>;
> +		vcc5-supply = <&vcc_sys>;
> +		vcc6-supply = <&vcc_sys>;
> +		vcc7-supply = <&vcc_sys>;
> +		vcc8-supply = <&vcc_sys>;
> +		vcc9-supply = <&dcdc_boost>;
> +
> +		regulators {
> +			vdd_logic: DCDC_REG1 {

I commented here and there was no feedback, so please implement the change.


Best regards,
Krzysztof
