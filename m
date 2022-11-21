Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B3B963208D
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 12:28:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230265AbiKUL25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 06:28:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbiKUL22 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 06:28:28 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6943118B13
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 03:22:54 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id be13so18358797lfb.4
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 03:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K36rHttUXqipmCdXq23O2OGPfeZt634/W4wWM3JG2Lk=;
        b=mXt0M2zct1dnVh3lcPxi7UmGqsWD3dg/a8w+svjsbPEs9i88Wf1d3HwAKk/lCzqp2l
         cvwW2YfXDGwyxeFNVfWqldpGFSRLuvdTzcicHU601RiMnWBxllSu9V3pnQbZ89YmVxJS
         oQOh6FH8c7UpgnCtCHSnk+9tNWYeGkkLuq60FmxEGqJkPBY+V4McNvE69gWhqUvEAJuV
         baoLsm37VkP+iHvukHQhH6vpVC5iGqV7jW4xkoHrMtLff/wCrn1cSdfL2nkEfAXxNx/F
         skci3RtTZyvjuZIGKitBkybyxuf17kstjrR/ov/sLdbJbZpuz5fmevbp0iIr0oVp8Lmf
         N18Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K36rHttUXqipmCdXq23O2OGPfeZt634/W4wWM3JG2Lk=;
        b=yp8gKr/iTz++ESbkDFjFEys3ppeNq5FNxbRPxj3ZXh3meRSLgVv8MdUvIEkVY17YQR
         08kxHGwUzFqyMXQPUvkRD5EKKas6pewMe4Xk4ElXEXe36sWIxM/zKT9CxYzpRMKalDyz
         qyfhLz0q3SvO3fRpQ8YVjhoX5ssUjMtLc80nlR2rM3HJlmxshxAIQetg4YFLqXXPFx2B
         Ly15BKW20IIX4cuNgJiawmCXKsk9Ipwe4vqkW+A8kNF4No9A6CKvsUQDKtTEOLhUc/FN
         yqaatAjhDP+Tobd/grEpWux9kZD2GTXuqK4wrRaAn6lzwMcBmPW+Tx2fo52fiFg2sCI3
         mfAQ==
X-Gm-Message-State: ANoB5pljM6OTEnL3POn94d4VXCYUW2sFl2n6KPFgY11HEiqhmuJ7BB49
        AsW5py2vRluouHBgDu4dw/8jfQ==
X-Google-Smtp-Source: AA0mqf61tQmfKjVq8RvAAStA86Nq8poqfJTtaBWzYwXodyJF0I7qJtagWsotr2qvZR3relWeiewZ8w==
X-Received: by 2002:a05:6512:3d8c:b0:497:a160:ed29 with SMTP id k12-20020a0565123d8c00b00497a160ed29mr5431720lfv.423.1669029772854;
        Mon, 21 Nov 2022 03:22:52 -0800 (PST)
Received: from [192.168.1.101] (95.49.32.48.neoplus.adsl.tpnet.pl. [95.49.32.48])
        by smtp.gmail.com with ESMTPSA id u24-20020a2e9b18000000b002637c04b472sm1439005lji.83.2022.11.21.03.22.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 03:22:52 -0800 (PST)
Message-ID: <ca7f36e2-e53e-db2b-bb0b-28de649bcb70@linaro.org>
Date:   Mon, 21 Nov 2022 12:22:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 3/5] arm64: dts: qcom: msm8916-gplus-fl8005a: Add initial
 device tree
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20221119202316.93142-1-linmengbo0689@protonmail.com>
 <20221119202639.93559-1-linmengbo0689@protonmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221119202639.93559-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 19.11.2022 21:27, Lin, Meng-Bo wrote:
> GPLUS FL8005A is a tablet using the MSM8916 SoC released in 2015.
> 
> Add a device tree for with initial support for:
> 
> - GPIO keys
> - GPIO LEDs
> - pm8916-vibrator
> - SDHCI (internal and external storage)
> - USB Device Mode
> - UART
> - WCNSS (WiFi/BT)
> - Regulators
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/msm8916-gplus-fl8005a.dts   | 239 ++++++++++++++++++
>  2 files changed, 240 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index afe496a93f94..5a2dcf726159 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-asus-z00l.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-gplus-fl8005a.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-huawei-g7.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-longcheer-l8150.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-longcheer-l8910.dtb
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts b/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts
> new file mode 100644
> index 000000000000..bed1fe984287
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts
> @@ -0,0 +1,239 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/dts-v1/;
> +
> +#include "msm8916-pm8916.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model = "GPLUS FL8005A";
> +	compatible = "gplus,fl8005a", "qcom,msm8916";
> +	chassis-type = "tablet";
> +
> +	aliases {
> +		serial0 = &blsp1_uart2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gpio_keys_default>;
> +
> +		label = "GPIO Buttons";
> +
> +		button-volume-up {
> +			label = "Volume Up";
> +			gpios = <&msmgpio 107 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_VOLUMEUP>;
> +		};
> +	};
> +
> +	gpio-leds {
> +		compatible = "gpio-leds";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&gpio_leds_default>;
> +
> +		led-red {
> +			function = LED_FUNCTION_CHARGING;
> +			color = <LED_COLOR_ID_RED>;
> +			gpios = <&msmgpio 117 GPIO_ACTIVE_HIGH>;
> +			retain-state-suspended;
> +		};
> +
> +		led-green {
> +			function = LED_FUNCTION_CHARGING;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&msmgpio 118 GPIO_ACTIVE_HIGH>;
> +			retain-state-suspended;
> +		};
> +	};
> +
> +	usb_id: usb-id {
> +		compatible = "linux,extcon-usb-gpio";
> +		id-gpio = <&msmgpio 110 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_id_default>;
> +	};
> +};
> +
> +&blsp1_uart2 {
> +	status = "okay";
> +};
> +
> +&pm8916_resin {
> +	status = "okay";
> +	linux,code = <KEY_VOLUMEDOWN>;
Status should go last, everywhere.

> +};
> +
> +&pm8916_vib {
> +	status = "okay";
> +};
> +
> +&pronto {
> +	status = "okay";
> +};
> +
> +&sdhc_1 {
> +	status = "okay";
> +
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&sdc1_clk_on &sdc1_cmd_on &sdc1_data_on>;
> +	pinctrl-1 = <&sdc1_clk_off &sdc1_cmd_off &sdc1_data_off>;
> +};
> +
> +&sdhc_2 {
> +	status = "okay";
> +
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&sdc2_clk_on &sdc2_cmd_on &sdc2_data_on>;
> +	pinctrl-1 = <&sdc2_clk_off &sdc2_cmd_off &sdc2_data_off>;
> +
> +	cd-gpios = <&msmgpio 38 GPIO_ACTIVE_LOW>;
> +};
> +
> +&usb {
> +	status = "okay";
> +	extcon = <&usb_id>, <&usb_id>;
> +};
> +
> +&usb_hs_phy {
> +	extcon = <&usb_id>;
> +};
These two usb properties are not sorted properly.

> +
> +&smd_rpm_regulators {
> +	vdd_l1_l2_l3-supply = <&pm8916_s3>;
> +	vdd_l4_l5_l6-supply = <&pm8916_s4>;
> +	vdd_l7-supply = <&pm8916_s4>;
> +
> +	s3 {
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1300000>;
> +	};
> +
> +	s4 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <2100000>;
> +	};
> +
> +	l1 {
> +		regulator-min-microvolt = <1225000>;
> +		regulator-max-microvolt = <1225000>;
> +	};
> +
> +	l2 {
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +	};
> +
> +	l4 {
> +		regulator-min-microvolt = <2050000>;
> +		regulator-max-microvolt = <2050000>;
> +	};
> +
> +	l5 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +
> +	l6 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +
> +	l7 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +	};
> +
> +	l8 {
> +		regulator-min-microvolt = <2850000>;
> +		regulator-max-microvolt = <2900000>;
> +	};
> +
> +	l9 {
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	l10 {
> +		regulator-min-microvolt = <2700000>;
> +		regulator-max-microvolt = <2800000>;
> +	};
> +
> +	l11 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <2950000>;
> +		regulator-allow-set-load;
> +		regulator-system-load = <200000>;
Please swap the two properties.

Other than that, LGTM

Konrad
> +	};
> +
> +	l12 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <2950000>;
> +	};
> +
> +	l13 {
> +		regulator-min-microvolt = <3075000>;
> +		regulator-max-microvolt = <3075000>;
> +	};
> +
> +	l14 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	l15 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	l16 {
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +
> +	l17 {
> +		regulator-min-microvolt = <2850000>;
> +		regulator-max-microvolt = <2850000>;
> +	};
> +
> +	l18 {
> +		regulator-min-microvolt = <2700000>;
> +		regulator-max-microvolt = <2700000>;
> +	};
> +};
> +
> +&msmgpio {
> +	gpio_keys_default: gpio-keys-default-state {
> +		pins = "gpio107";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +	gpio_leds_default: gpio-led-default-state {
> +		pins = "gpio117", "gpio118";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	usb_id_default: usb-id-default-state {
> +		pins = "gpio110";
> +		function = "gpio";
> +
> +		drive-strength = <8>;
> +		bias-pull-up;
> +	};
> +};
