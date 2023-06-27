Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5006C73FD66
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 16:08:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbjF0OIr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 10:08:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230058AbjF0OIp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 10:08:45 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B489C30DF
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 07:08:31 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-307d58b3efbso4068051f8f.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 07:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687874910; x=1690466910;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BAc/hkkt4MGceXCskuJJ2M2wZrdjzN2VaeA5KmvNMbU=;
        b=YR4Nk2SdOpkklxr/Wuv2Ta00MjSeVguU80TK076+fHMy988kaEdMJiD6t/40+tHnmM
         QQBrynHNu/91tDX1NmgeDiOLQFW1zVuzaFF3OOMMP1kGFX99o+mx5LPepLSWD7OrofyW
         CTfuGM4lSTCsQbYrQlmvPvVizKWCoWY4N2iuMye6anZ2BBeqJwqEa2ksE6wPLzv3xn6d
         VOEQ2/200fv2dytTp8+YNjKIatm8hyfkST78I5GnK3xXIFPs6IHwfg5sIKCTgM2pMJR3
         jDqppjCzwOGfoHaooitrttGCtahdSqww0pU/l5dW/+5Br0iYrrmlykhuGcjQzZTlpzhS
         i6pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687874910; x=1690466910;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BAc/hkkt4MGceXCskuJJ2M2wZrdjzN2VaeA5KmvNMbU=;
        b=gSHWso9/hcxucfYvI98CEv5wLEfYvPjPU6KrZPFuLJRBZQaZL45pKziGVyDQa1p3gA
         +XY/3oidV5ZLW9JdJghXbBw+6kc7N+Ey0QRxd/rz5B80Jglpfash58MDYwoCj4xCuCaj
         +Us0cSqNlnBPxir1dC/jPpJ+o4Fg9bdLERtGkp239ZpSSmPw6k3lvCC68ryNiEorhd34
         E/HWosBGCkBjYqcu+YoJbcNBsS9H2LzF0t7SS6eioOl1FQ8KQePRP1KiVbppHShDGnun
         FfKOs4XRFkmOXEHYaXw0hpKCV9hYn6JJnyGiig1+nVVQcDHZxBRjj4LSMik9QGBY/nPa
         HJMw==
X-Gm-Message-State: AC+VfDzwELAemK/ur9n182xtlUUzHojnGLS4o8SisfWlMCiBURsQGN+8
        /jBD+q7/PUVYwMQvbcxEqo/WHg==
X-Google-Smtp-Source: ACHHUZ4r+OHok1szuS/TYzNzqUULOILscOxN6x3OV6V+9sY5zmkWk3YeTHCtatZ14YKuQMseY63cfQ==
X-Received: by 2002:a5d:4ad0:0:b0:313:f98a:1fd3 with SMTP id y16-20020a5d4ad0000000b00313f98a1fd3mr2571971wrs.27.1687874910010;
        Tue, 27 Jun 2023 07:08:30 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:cec9:2929:7a19:7afa? ([2a01:e0a:982:cbb0:cec9:2929:7a19:7afa])
        by smtp.gmail.com with ESMTPSA id b3-20020a056000054300b002c70ce264bfsm10623578wrf.76.2023.06.27.07.08.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 07:08:29 -0700 (PDT)
Message-ID: <37c647d8-8957-e6d4-f1bb-7e6de4c9df34@linaro.org>
Date:   Tue, 27 Jun 2023 16:08:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 08/15] ARM: dts: qcom: mdm9615: split PMIC to separate
 dtsi files
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
 <20230627012422.206077-9-dmitry.baryshkov@linaro.org>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230627012422.206077-9-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/06/2023 03:24, Dmitry Baryshkov wrote:
> The PMIC is not a part of the SoC, so move PMIC to a separate file and
> include it from the board files.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom/pm8018.dtsi            | 57 +++++++++++++++++++
>   .../boot/dts/qcom/qcom-mdm9615-wp8548.dtsi    |  3 +-
>   arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi      | 46 +--------------
>   3 files changed, 61 insertions(+), 45 deletions(-)
>   create mode 100644 arch/arm/boot/dts/qcom/pm8018.dtsi
> 
> diff --git a/arch/arm/boot/dts/qcom/pm8018.dtsi b/arch/arm/boot/dts/qcom/pm8018.dtsi
> new file mode 100644
> index 000000000000..81c0ad29fe60
> --- /dev/null
> +++ b/arch/arm/boot/dts/qcom/pm8018.dtsi
> @@ -0,0 +1,57 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR MIT
> +/*
> + * Device Tree Source for Qualcomm PM8018
> + *
> + * Copyright (C) 2016 BayLibre, SAS.
> + * Author : Neil Armstrong <narmstrong@baylibre.com>
> + */
> +
> +&ssbi {
> +	pm8018: pmic {
> +		compatible = "qcom,pm8018", "qcom,pm8921";
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		pwrkey@1c {
> +			compatible = "qcom,pm8018-pwrkey",
> +				     "qcom,pm8921-pwrkey";
> +			reg = <0x1c>;
> +			interrupt-parent = <&pm8018>;
> +			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
> +				     <51 IRQ_TYPE_EDGE_RISING>;
> +			debounce = <15625>;
> +			pull-up;
> +		};
> +
> +		pm8018_mpps: mpps@50 {
> +			compatible = "qcom,pm8018-mpp", "qcom,ssbi-mpp";
> +			reg = <0x50>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&pm8018_mpps 0 0 6>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		rtc@11d {
> +			compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
> +			reg = <0x11d>;
> +			interrupt-parent = <&pm8018>;
> +			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
> +			allow-set-time;
> +		};
> +
> +		pm8018_gpio: gpio@150 {
> +			compatible = "qcom,pm8058-gpio",
> +				     "qcom,ssbi-gpio";
> +			reg = <0x150>;
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&pm8018_gpio 0 0 6>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
> index 92c8003dac25..cc264861afe5 100644
> --- a/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-mdm9615-wp8548.dtsi
> @@ -7,6 +7,7 @@
>    */
>   
>   #include "qcom-mdm9615.dtsi"
> +#include "pm8018.dtsi"
>   
>   / {
>   	model = "Sierra Wireless WP8548 Module";
> @@ -76,7 +77,7 @@ reset-out-pins {
>   	};
>   };
>   
> -&pmicgpio {
> +&pm8018_gpio {
>   	usb_vbus_5v_pins: usb-vbus-5v-state {
>   		pins = "gpio4";
>   		function = "normal";
> diff --git a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
> index b40c52ddf9b4..ac2327bc4ec5 100644
> --- a/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-mdm9615.dtsi
> @@ -241,56 +241,14 @@ gsbi5_serial: serial@16440000 {
>   			};
>   		};
>   
> -		qcom,ssbi@500000 {
> +		ssbi: qcom,ssbi@500000 {
>   			compatible = "qcom,ssbi";
>   			reg = <0x500000 0x1000>;
>   			qcom,controller-type = "pmic-arbiter";
>   
> -			pmicintc: pmic {
> -				compatible = "qcom,pm8018", "qcom,pm8921";
> +			pmic {
>   				interrupts = <GIC_PPI 226 IRQ_TYPE_LEVEL_HIGH>;
>   				#interrupt-cells = <2>;
> -				interrupt-controller;
> -				#address-cells = <1>;
> -				#size-cells = <0>;
> -
> -				pwrkey@1c {
> -					compatible = "qcom,pm8018-pwrkey", "qcom,pm8921-pwrkey";
> -					reg = <0x1c>;
> -					interrupt-parent = <&pmicintc>;
> -					interrupts = <50 IRQ_TYPE_EDGE_RISING>,
> -						     <51 IRQ_TYPE_EDGE_RISING>;
> -					debounce = <15625>;
> -					pull-up;
> -				};
> -
> -				pmicmpp: mpps@50 {
> -					compatible = "qcom,pm8018-mpp", "qcom,ssbi-mpp";
> -					interrupt-controller;
> -					#interrupt-cells = <2>;
> -					reg = <0x50>;
> -					gpio-controller;
> -					#gpio-cells = <2>;
> -					gpio-ranges = <&pmicmpp 0 0 6>;
> -				};
> -
> -				rtc@11d {
> -					compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
> -					interrupt-parent = <&pmicintc>;
> -					interrupts = <39 IRQ_TYPE_EDGE_RISING>;
> -					reg = <0x11d>;
> -					allow-set-time;
> -				};
> -
> -				pmicgpio: gpio@150 {
> -					compatible = "qcom,pm8018-gpio", "qcom,ssbi-gpio";
> -					reg = <0x150>;
> -					interrupt-controller;
> -					#interrupt-cells = <2>;
> -					gpio-controller;
> -					gpio-ranges = <&pmicgpio 0 0 6>;
> -					#gpio-cells = <2>;
> -				};
>   			};
>   		};
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
