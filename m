Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08AE36FA2E5
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 11:03:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233736AbjEHJDQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 05:03:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233434AbjEHJCw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 05:02:52 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDF6B2572F
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 02:02:01 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f00c33c3d6so4857892e87.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 02:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683536516; x=1686128516;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=01B8X9+Zzozn4Wimp7pOwV/DmlmLamISG2SZTET9fGE=;
        b=m3wgGnHGuVBtGceZXUp1rg24KtczbmMJgw5ASNEvBMk0eRD+W2FfFhrKWq4Ia/70oA
         2FCp9PkUzg1m1naIqX8/A+ZN6mVNrseJmwDvU9yl+DdVJl/4clOiGH1T4/aeA0kMzKVN
         eAFEGyrwSSzApj93CwlRLDp2LlLV3BsIWxWbwU/7HppnNO7PqDM294GbaM5m4wL9NxKO
         kpY1xfFa7PyW+NOVOPIqmyV6Hv36siBmtPPKd7CvcN+rrTz6QNICfsQCj2ZnW4gx5wO3
         I41+KcasaNlr6y4XvyQXdFRv+3s8SUWm4/BIb/sF0e4BRrTkPV5uLhwQRtAMlaIck1Qd
         QAVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683536516; x=1686128516;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=01B8X9+Zzozn4Wimp7pOwV/DmlmLamISG2SZTET9fGE=;
        b=IQRvBP9emu8eq4WLtQxVeVj5j82yxcW5+8isqaxmVsMNjDKPhBrtd8xfWpZZ0rVNrd
         6tvUIy20FnVEK8wgjp9J5mQgic0jBme4TWmV/NuC8Ryz1zdlu6h2ezux1+37XuSeTY5d
         ldgybVprEb+qt5OFBE0YuxX7SOshkG85gnYngg5Os65v96761weEfnLzH+kIwDtjQFIf
         SNYHDWHuo4mX2S3TgYJJotFDf2NbamXJc1n3+GKP/XkcJA409gxDIs9j7idZHeb4nJaH
         Kh8HNggennLBf6a5z24RPd6a6/HqYtF+86gKWDOxwnS+NSJySzrQBe1GA3Gt9i8jeP39
         jyWw==
X-Gm-Message-State: AC+VfDyIZOS6+SiSFpwkUeCGKHme9EEGQfRwyRLolvlCL01qHcpLF4eB
        ijmQVknUKfTlD9iHguMwP8pnhA==
X-Google-Smtp-Source: ACHHUZ46ErnFHSEUguaodld3ZfKy4s24V0jWsSTejT7vouPKjmuu1ghrS801DffizZIxgNWSRM++jw==
X-Received: by 2002:a05:6512:1031:b0:4e8:221f:5886 with SMTP id r17-20020a056512103100b004e8221f5886mr2160211lfr.19.1683536516441;
        Mon, 08 May 2023 02:01:56 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id j22-20020ac253b6000000b004e88a166eb6sm1233294lfh.46.2023.05.08.02.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 02:01:56 -0700 (PDT)
Message-ID: <e4df7f06-4070-10e9-5694-095dfbb60dae@linaro.org>
Date:   Mon, 8 May 2023 11:01:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 4/6] ARM: dts: qcom: apq8074-dragonboard: add resin and
 gpio keys
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230508003309.2363787-1-dmitry.baryshkov@linaro.org>
 <20230508003309.2363787-5-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230508003309.2363787-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.05.2023 02:33, Dmitry Baryshkov wrote:
> Add device nodes for resin (reset, volume-down) and gpio-keys
> (volume-up, general key) device nodes.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../arm/boot/dts/qcom-apq8074-dragonboard.dts | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> index 72f7e09a5bbf..2017bdf81677 100644
> --- a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> +++ b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> @@ -1,5 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include "qcom-msm8974.dtsi"
>  #include "qcom-pm8841.dtsi"
>  #include "qcom-pm8941.dtsi"
> @@ -20,6 +22,26 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&msm_keys_default>;
property-n
property-names
> +
> +		button-volup {
> +			label = "Volume Up";
> +			linux,code = <KEY_VOLUMEUP>;
> +			gpios = <&pm8941_gpios 5 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		button-general {
> +			label = "General";
> +			linux,code = <KEY_PROG1>;
> +			gpios = <&pm8941_gpios 23 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
>  	reserved-memory {
>  		mpss_region: mpss@ac00000 {
>  			reg = <0x0ac00000 0x2500000>;
> @@ -90,6 +112,25 @@ &mdss {
>  	status = "okay";
>  };
>  
> +&pm8941_gpios {
> +        msm_keys_default: pm8941-gpio-keys-state {
> +                pinconf {
unnecessary pinconf{} level

> +                        pins = "gpio5", "gpio23";
> +                        function = "normal";
> +                        input-enable;
> +                        drive-push-pull;
> +                        bias-pull-up;
> +                        qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
> +                        power-source = <PM8941_GPIO_S3>; /* 1.8V */
> +                };
> +        };
> +};
> +
> +&pm8941_resin {
> +	status = "okay";
status last
> +	linux,code = <KEY_VOLUMEDOWN>;

Konrad
> +};
> +
>  &pm8941_wled {
>  	qcom,cs-out;
>  	qcom,switching-freq = <3200>;
