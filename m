Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4368745B8E
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 13:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231384AbjGCLtr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 07:49:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229504AbjGCLtq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 07:49:46 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E44C115
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 04:49:43 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so6959607e87.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 04:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688384982; x=1690976982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XwiZHvlVH5nVBUN4Fh7QUmLkW/4sa8iHLE6NUhNZsW8=;
        b=Q5uFYYO8d7in/IUlasE30nXnhqTZ474yF6Zi240+3oF2u9QDVuHt3M+vGWY2mtAKJo
         8kXcWQ1BEikLkfZiRRFjebY1G/QsXwYRV9pPVJu1urEEpp4qLgo+HvBnZHDlqa4Sg7xj
         qQO/DdOIwbZPmW2yJ6LYeEjjdXm/HU21DY9Wr4Cud89Es858UAX5mfEIYDOd/YnojV8M
         hd02uKLlneMOCbjotK3nF2Yhn6z7YyztJhZc3pWJO7aLmTSPpkZ9GrphVQcmY3KU9wXu
         DQyHpV3/hLYRjs2pDz88waC6pP5bXFwQGx7sAbC/PYDMiWwJOzSHRepUsIgEdoij/qGS
         dtEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688384982; x=1690976982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XwiZHvlVH5nVBUN4Fh7QUmLkW/4sa8iHLE6NUhNZsW8=;
        b=a77eW2oWbj+GoZwOIgMKNBfCy4HPJsUz3egL4/EOIYCD1N2hF0OotnlUFaUg+Lqa6r
         zwnXZvUQ0g2WhQgxGEHnjpl/0jrzz2gkXbsMq4ybGQ1QA0VPFeqSO5U4q6eumB7M8x65
         ppmkXZsTSz3q4Tib25M0qkXlUPs2sP8Zfeg/IX7j1KHZitAxXo7aXzsM6/aQqza76uLH
         5e/Ng0m19pYEeBLNELxSuOvWAyk/lWp2BtblfLOBsz06GLF4VdSMhtE/PS3TGrv4/qYv
         iCfaR3BgkbFldRIxfkUoMEF85pfQRPBnfoXU+KlOnhZPmeJ6tRJHqBKPYYMVBnEZ2yEq
         uh1A==
X-Gm-Message-State: ABy/qLY/tL+PqQIKOruPHe1mjF13L7Oj6k3TmGJu52alIOtrXSTOxTWH
        YpzusR6QKjZo3ImUXDMs/7Faew==
X-Google-Smtp-Source: APBJJlFKLtpcTSBKxn6dmYpOUOB7+KBKDpDWUh2+Isws8STRF8rY1xjYcB/Whj/KL6nDJ4kdJ0jR9A==
X-Received: by 2002:a05:6512:1094:b0:4f1:3d7d:409e with SMTP id j20-20020a056512109400b004f13d7d409emr7700013lfg.0.1688384981845;
        Mon, 03 Jul 2023 04:49:41 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id t20-20020ac25494000000b004fb9d7b9922sm2332815lfk.144.2023.07.03.04.49.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 04:49:41 -0700 (PDT)
Message-ID: <686e0b28-aeb3-8f24-1aea-17bdeefd6ca4@linaro.org>
Date:   Mon, 3 Jul 2023 13:49:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 11/27] ARM: dts: qcom: msm8960: split PMIC to separate
 dtsi files
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
 <20230702134320.98831-12-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230702134320.98831-12-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2.07.2023 15:43, Dmitry Baryshkov wrote:
> The PMIC is not a part of the SoC, so move PMIC to a separate file and
> include it from the board files.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm/boot/dts/qcom/pm8921.dtsi            | 40 +++++++++++++++++++
>  arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts   |  1 +
>  .../qcom/qcom-msm8960-samsung-expressatt.dts  |  3 +-
>  arch/arm/boot/dts/qcom/qcom-msm8960.dtsi      | 38 +-----------------
>  4 files changed, 45 insertions(+), 37 deletions(-)
>  create mode 100644 arch/arm/boot/dts/qcom/pm8921.dtsi
> 
> diff --git a/arch/arm/boot/dts/qcom/pm8921.dtsi b/arch/arm/boot/dts/qcom/pm8921.dtsi
> new file mode 100644
> index 000000000000..414941f7a42f
> --- /dev/null
> +++ b/arch/arm/boot/dts/qcom/pm8921.dtsi
> @@ -0,0 +1,40 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +&ssbi {
> +	pm8921: pmic {
> +		compatible = "qcom,pm8921";
> +		#interrupt-cells = <2>;
> +		interrupt-controller;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		pwrkey@1c {
> +			compatible = "qcom,pm8921-pwrkey";
> +			reg = <0x1c>;
> +			interrupt-parent = <&pm8921>;
> +			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
> +				     <51 IRQ_TYPE_EDGE_RISING>;
> +			debounce = <15625>;
> +			pull-up;
> +		};
> +
> +		pm8921_keypad: keypad@148 {
> +			compatible = "qcom,pm8921-keypad";
> +			reg = <0x148>;
> +			interrupt-parent = <&pm8921>;
> +			interrupts = <74 IRQ_TYPE_EDGE_RISING>,
> +				     <75 IRQ_TYPE_EDGE_RISING>;
> +			debounce = <15>;
> +			scan-delay = <32>;
> +			row-hold = <91500>;
> +		};
> +
> +		rtc@11d {
> +			compatible = "qcom,pm8921-rtc";
> +			interrupt-parent = <&pm8921>;
> +			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
> +			reg = <0x11d>;
> +			allow-set-time;
> +		};
> +	};
> +};
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
> index 4641b4f2195d..414881d34c60 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-cdp.dts
> @@ -2,6 +2,7 @@
>  #include <dt-bindings/input/input.h>
>  
>  #include "qcom-msm8960.dtsi"
> +#include "pm8921.dtsi"
>  
>  / {
>  	model = "Qualcomm MSM8960 CDP";
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> index 13e85c287498..2e7d98e132be 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -1,8 +1,9 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/reset/qcom,gcc-msm8960.h>
>  
>  #include "qcom-msm8960.dtsi"
> -#include <dt-bindings/reset/qcom,gcc-msm8960.h>
> +#include "pm8921.dtsi"
>  
>  / {
>  	model = "Samsung Galaxy Express SGH-I437";
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> index 6b8d90d02146..8157236f249d 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
> @@ -259,48 +259,14 @@ gsbi5_serial: serial@16440000 {
>  			};
>  		};
>  
> -		ssbi@500000 {
> +		ssbi: ssbi@500000 {
>  			compatible = "qcom,ssbi";
>  			reg = <0x500000 0x1000>;
>  			qcom,controller-type = "pmic-arbiter";
>  
> -			pm8921: pmic {
> -				compatible = "qcom,pm8921";
> +			pmic {
>  				interrupt-parent = <&msmgpio>;
>  				interrupts = <104 IRQ_TYPE_LEVEL_LOW>;
Hm.. did you leave a stray node here?

Konrad
> -				#interrupt-cells = <2>;
> -				interrupt-controller;
> -				#address-cells = <1>;
> -				#size-cells = <0>;
> -
> -				pwrkey@1c {
> -					compatible = "qcom,pm8921-pwrkey";
> -					reg = <0x1c>;
> -					interrupt-parent = <&pm8921>;
> -					interrupts = <50 IRQ_TYPE_EDGE_RISING>,
> -						     <51 IRQ_TYPE_EDGE_RISING>;
> -					debounce = <15625>;
> -					pull-up;
> -				};
> -
> -				pm8921_keypad: keypad@148 {
> -					compatible = "qcom,pm8921-keypad";
> -					reg = <0x148>;
> -					interrupt-parent = <&pm8921>;
> -					interrupts = <74 IRQ_TYPE_EDGE_RISING>,
> -						     <75 IRQ_TYPE_EDGE_RISING>;
> -					debounce = <15>;
> -					scan-delay = <32>;
> -					row-hold = <91500>;
> -				};
> -
> -				rtc@11d {
> -					compatible = "qcom,pm8921-rtc";
> -					interrupt-parent = <&pm8921>;
> -					interrupts = <39 IRQ_TYPE_EDGE_RISING>;
> -					reg = <0x11d>;
> -					allow-set-time;
> -				};
>  			};
>  		};
>  
