Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E65F5EDB74
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 13:13:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231642AbiI1LNu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 07:13:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232196AbiI1LNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 07:13:32 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 968F2F6F63
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 04:11:49 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id j24so13942110lja.4
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 04:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=AMuFgwhUGuhvwkMb8rixXiDnAIDGA8VA1ke3AR9NLDM=;
        b=wPiY6xNWCcJAKu9AEb2H+MnfHe/mbBe2mPu3WiadLbNZRzLgEE70OY2fNaowEoCcCm
         RKGGIp1ZQZUU1NpsVs7GdyIjl4yAGq2eN/7YCrTHVykHCIjDRYBjZ94nt/FMV3yFTm3b
         mdCbCPRThyKSCNoMfObYYiE6d/6vRuR+26cfNNRlNWBZS837VGdmAXDf8DMjXRyhtlA2
         dHW//oSkDjmFbIASME9HxNlZIEGaskhRnNjODS5R8C72L0TioK0kTQ4qXEuI/9G3F724
         nYocX/aVkGaY1Yn68/g9YSgQTl3E9mMVNprrfGxSherOsCJfszM+mnDKsTHZD6qhBWMt
         vCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=AMuFgwhUGuhvwkMb8rixXiDnAIDGA8VA1ke3AR9NLDM=;
        b=ltwdFwowD55a/uzIIlOjByctLj/YSIIciUPrk74bb4v8TeKaB4CYQCqzhWYhB7j5yG
         jbQBIUooQmRnA01UccvJA8eXy9Vv+N5rb6+psWj54/4g99gqhVHUBDn3dTIJQTRy2TK1
         0euKBwXA6jy6kYTHkJGkUp2/davFaCM+DCo8CzP+vSvDAvpHwvbqdraDz902VJUTyLe/
         QnpKA8wUP0krV2XtwmfGZkvvUs5SUbuYW5Su23O7CUnTXJIdDBYLqBkx46jSNz+C1zfv
         QWkArHNqVShSe0IYBpR/8DmmzIcSgvimQ493rZk7EVgVM7s2959VeZw0XUpLhLCt7WYF
         uE+A==
X-Gm-Message-State: ACrzQf08kATobBvoRacwj9A1oll16IUPBrg+rpcmP2dbBMkGVVoVMi9K
        AwhFVkIx4C07M9QPhbJog6rk+ShQfcizGA==
X-Google-Smtp-Source: AMsMyM5PRFx8GODtGpTVK9XilbDWNrQPrOvRHMQVFIfCiRCZ8e3tyVgL8ZvFvf3XqgIWjR/5Ju3ZXA==
X-Received: by 2002:a2e:b744:0:b0:26c:40bf:eaba with SMTP id k4-20020a2eb744000000b0026c40bfeabamr12494187ljo.367.1664363501739;
        Wed, 28 Sep 2022 04:11:41 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d28-20020ac25edc000000b004979989028bsm444028lfq.147.2022.09.28.04.11.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 04:11:41 -0700 (PDT)
Message-ID: <61e7d79a-0e04-59b7-3a39-514f9438ffed@linaro.org>
Date:   Wed, 28 Sep 2022 13:11:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/3] arm64: dts: qcom: msm8916-samsung-j5: Use common init
 device tree
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        devicetree@vger.kernel.org
References: <20220928110049.96047-1-linmengbo0689@protonmail.com>
 <20220928110516.96318-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928110516.96318-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 13:06, Lin, Meng-Bo wrote:
> The smartphones below are using the MSM8916 SoC,
> which are released in 2015-2016:
> 
> Samsung Galaxy J5 2015 (SM-J500*)
> Samsung Galaxy J5 2016 (SM-J510*)
> Samsung Galaxy J3 2016
> - SM-J3109/SM-J320Y/SM-J320YZ
> - SM-J320N0/SM-J320ZN
> - SM-J320P/SM-J320R4/SM-J320V/SM-S320VL
> 
> Add a common device tree for with initial support for:
> 
> - GPIO keys
> - SDHCI (internal and external storage)
> - USB Device Mode
> - UART (on USB connector via the SM5703 MUIC)
> - WCNSS (WiFi/BT)
> - Regulators
> 
> The three devices (some varints of J3, all other variants of J5 released
> in 2015 and J5X released in 2016) are very similar, with some differences
> in display and GPIO pins. The common parts are shared in
> msm8916-samsung-j5-common.dtsi to reduce duplication.
> 
> [Add j5x device tree]
> Co-developed-by: Josef W Menad <JosefWMenad@protonmail.ch>
> Signed-off-by: Josef W Menad <JosefWMenad@protonmail.ch>
> [Use &pm8916_usbin as USB extcon and add chassis-type for j5x]
> Co-developed-by: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> [Use common init device tree and add j3 device tree]
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>

Yet you did not Cc them... Use standard tools and CC everyone from
maintainers and other developers.

> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   2 +
>  .../boot/dts/qcom/msm8916-samsung-j3.dts      |  21 ++
>  .../dts/qcom/msm8916-samsung-j5-common.dtsi   | 203 ++++++++++++++++++
>  .../boot/dts/qcom/msm8916-samsung-j5.dts      | 196 +----------------

You need to create patch which will properly detect rename/copy. See
-M/-B/-C arguments,.

In current format it is too difficult to review, so no.

>  .../boot/dts/qcom/msm8916-samsung-j5x.dts     |  11 +
>  5 files changed, 238 insertions(+), 195 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/msm8916-samsung-j3.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/msm8916-samsung-j5x.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 1d86a33de528..357a2529fe74 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -15,7 +15,9 @@ dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-longcheer-l8910.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-samsung-a3u-eur.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-samsung-a5u-eur.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-samsung-j3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-samsung-j5.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-samsung-j5x.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-samsung-serranove.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-wingtech-wt88047.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8992-lg-bullhead-rev-10.dtb
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-j3.dts b/arch/arm64/boot/dts/qcom/msm8916-samsung-j3.dts
> new file mode 100644
> index 000000000000..24e77c61ca9b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-j3.dts
> @@ -0,0 +1,21 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/dts-v1/;
> +
> +#include "msm8916-samsung-j5-common.dtsi"
> +
> +/ {
> +	model = "Samsung Galaxy J3 (2016)";
> +	compatible = "samsung,j3", "qcom,msm8916";
> +	chassis-type = "handset";
> +
> +	reserved-memory {
> +		/delete-node/ tz-apps@85500000;
> +
> +		/* Additional memory used by Samsung firmware modifications */
> +		tz-apps@85a00000 {
> +			reg = <0x0 0x85800000 0x0 0x800000>;
> +			no-map;
> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi b/arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi
> new file mode 100644
> index 000000000000..ea2e165c2aa4
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-j5-common.dtsi
> @@ -0,0 +1,203 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include "msm8916-pm8916.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	aliases {
> +		serial0 = &blsp1_uart2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0";
> +	};
> +
> +	reserved-memory {
> +		/* Additional memory used by Samsung firmware modifications */
> +		tz-apps@85500000 {
> +			reg = <0x0 0x85500000 0x0 0xb00000>;
> +			no-map;
> +		};
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
> +
> +		button-home {
> +			label = "Home Key";
> +			gpios = <&msmgpio 109 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_HOMEPAGE>;
> +		};
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
> +};
> +
> +/* FIXME: Replace with SM5703 MUIC when driver is available */
> +&pm8916_usbin {
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
> +	pinctrl-0 = <&sdc2_clk_on &sdc2_cmd_on &sdc2_data_on &sdc2_cd_on>;
> +	pinctrl-1 = <&sdc2_clk_off &sdc2_cmd_off &sdc2_data_off &sdc2_cd_off>;
> +
> +	cd-gpios = <&msmgpio 38 GPIO_ACTIVE_LOW>;
> +};
> +
> +&usb {
> +	status = "okay";
> +	dr_mode = "peripheral";
> +	extcon = <&pm8916_usbin>;
> +};
> +
> +&usb_hs_phy {
> +	extcon = <&pm8916_usbin>;
> +};
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
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +	};
> +
> +	l18 {
> +		regulator-min-microvolt = <2700000>;
> +		regulator-max-microvolt = <2700000>;
> +	};
> +};
> +
> +&msmgpio {
> +	gpio_keys_default: gpio-keys-default {

missing suffix "state"

> +		pins = "gpio107", "gpio109";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};


Best regards,
Krzysztof

