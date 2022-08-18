Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D35C597FE9
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 10:16:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238344AbiHRIOX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 04:14:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237784AbiHRIOW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 04:14:22 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10C5A3AE6B
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:14:21 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id v4so1041977ljg.0
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 01:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=EseHrWw6iA/ykOiA6csED9L2g8nLqyHnkIVzNZpxQFc=;
        b=NWQnJjpR6nD+7TJm20XRDTWHC37lpbLKPr5eR0Yh7lqZtQKvH907z4VUnXP2iVTgpI
         R+UwZ/GK9yQ4Mz4wLv/8fVyDAB2wFwbPq7NyZkjN9nEIhO1En7W1cWjlbXGGyjyBQxFN
         ikSzqtbJAguBYSmVWXSrwobF7RnJ4gqVdEj0Z4Tyn7rnPt8C+VHp4tt978IXAAIbvZfJ
         KNCoxMq9HehgFrkPyH/vWwguwBQs5an2dK6OPHFlGXzxqLvvPkj/SgUMtYXE04al1rRB
         dE3S8uLBBXHmlbzWk9GMBANZhhWCK+lLvAiLFquqiEAiSw0gGxtpOjmQphpa4MrZbs4B
         uSMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=EseHrWw6iA/ykOiA6csED9L2g8nLqyHnkIVzNZpxQFc=;
        b=vWcn5dUHpascmt+8qCWAkKUnonhIZQU1f9O99ANeUCA7BrnXzfsxLM+X1dYWEfCo8t
         sU1bGSWaXqsixjemIr6AH7PTB5teP/XFPPTgi7/9yOLACYtcWLBDLW/FTZ95gjse0GGX
         wzi6I4O14uvyroZNWetYkAmNommNOxV1XbyBt08lNIaWh5SCHSlby3XUgAQbshfiPB9D
         NW6O0Wsgqqrv4WlJ7x8iB2ZKWt/4ht2ghwfxQ8OTdef+qY9FDLQuMcgUKV14fs2lbVi1
         P5b7Nko5p+hW3K74IIpElXVqJqyb+Yc1lYlxcUjIhrSA0KZ+NNGEDvQw3MuuUB8YsqQJ
         YrFw==
X-Gm-Message-State: ACgBeo08/Ox3KP4zcpfM9xJZb4LWO7nmEEeNQIpgl+bLmnJ2NgLk1iwo
        oFu2t0IbZmgQTSyeBcPtmsLYA9IWKTM9PlQt
X-Google-Smtp-Source: AA6agR6s49mE+LQIyzI7TWAJP73hbKA8oNOx4Hv7gb09uj8dityXx1kZ78lYRI0YbzkerFT6XEbTTw==
X-Received: by 2002:a2e:8018:0:b0:261:b440:c0cc with SMTP id j24-20020a2e8018000000b00261b440c0ccmr269317ljg.385.1660810459411;
        Thu, 18 Aug 2022 01:14:19 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:53ab:2635:d4f2:d6d5? (d15l54z9nf469l8226z-4.rev.dnainternet.fi. [2001:14bb:ae:539c:53ab:2635:d4f2:d6d5])
        by smtp.gmail.com with ESMTPSA id v4-20020a2ea604000000b0026182c4a5c6sm124273ljp.120.2022.08.18.01.14.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 01:14:18 -0700 (PDT)
Message-ID: <e30e41c6-04b4-bf48-b034-b722f950ac90@linaro.org>
Date:   Thu, 18 Aug 2022 11:14:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Anbernic RG353 and RG503
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-4-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817204954.28135-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 23:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Anbernic RG353 and RG503 are both RK3566 based handheld gaming devices
> from Anbernic.
> 

Thank you for your patch. There is something to discuss/improve.

> +		red_led: led-2 {
> +			color = <LED_COLOR_ID_RED>;
> +			default-state = "off";
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
> +	rk817-sound {

just sound

https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "anbernic_rk817";
> +		simple-audio-card,aux-devs = <&spk_amp>;
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
> +		simple-audio-card,mclk-fs = <256>;
> +		simple-audio-card,widgets =
> +			"Microphone", "Mic Jack",
> +			"Headphone", "Headphones",
> +			"Speaker", "Internal Speakers";
> +		simple-audio-card,routing =
> +			"MICL", "Mic Jack",
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"Internal Speakers", "Speaker Amp OUTL",
> +			"Internal Speakers", "Speaker Amp OUTR",
> +			"Speaker Amp INL", "HPOL",
> +			"Speaker Amp INR", "HPOR";
> +		simple-audio-card,pin-switches = "Internal Speakers";
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rk817>;
> +		};
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +	};
> +
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		clocks = <&rk817 1>;
> +		clock-names = "ext_clock";
> +		pinctrl-0 = <&wifi_enable_h>;
> +		pinctrl-names = "default";
> +		post-power-on-delay-ms = <200>;
> +		reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	spk_amp: audio-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&spk_amp_enable_h>;
> +		pinctrl-names = "default";
> +		sound-name-prefix = "Speaker Amp";
> +	};
> +
> +	vcc3v3_lcd0_n: vcc3v3-lcd0-n {

Node name:
regulator-vcc3v3-lcd0-n
vcc3v3-lcd0-n-regulator
or just regulator-0

> +		compatible = "regulator-fixed";
> +		gpio = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-0 = <&vcc_lcd_h>;
> +		pinctrl-names = "default";
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc3v3_lcd0_n";
> +		vin-supply = <&vcc_3v3>;
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	vcc_sys: vcc_sys {

No underscores in node names. Same comment as above.

> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3800000>;
> +		regulator-max-microvolt = <3800000>;
> +		regulator-name = "vcc_sys";
> +	};
> +
> +	vcc_wifi: vcc-wifi {

Same comment as above

> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&vcc_wifi_h>;
> +		pinctrl-names = "default";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-name = "vcc_wifi";
> +	};
> +
> +	vibrator: pwm-vibrator {
> +		compatible = "pwm-vibrator";
> +		pwm-names = "enable";
> +		pwms = <&pwm5 0 1000000000 0>;
> +	};
> +};
> +
> +&combphy1 {
> +	status = "okay";
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&vdd_cpu>;
> +};
> +
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	status = "okay";
> +};
> +
> +&hdmi_in {
> +	hdmi_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi>;
> +	};
> +};
> +
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
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

No underscores in node names, unless the PMIC requires it.

(...)

> +
> +&pinctrl {
> +

No need for blank line

> +	audio-amplifier {
> +		spk_amp_enable_h: spk-amp-enable-h {
> +			rockchip,pins =
> +				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +

Best regards,
Krzysztof
