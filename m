Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8E54745B7E
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 13:47:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230273AbjGCLrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 07:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230035AbjGCLrW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 07:47:22 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA4B11B5
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 04:47:20 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b6a662b9adso63765461fa.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 04:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688384839; x=1690976839;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gI+e074nlB+UfQ82LxM55SnnLamwynBUA3VS5DX7QPA=;
        b=xVm/QlEQhxYgKpkCAnOaBZ/fUESzG6cFaGHuKdOsV82nNiBUDHFamTuQ1VqJ3GVknJ
         yu8JcE9TBZHO+lQTyU0AFDLQTKKnAcm39Ih4IizyXYk2HJNzpc6fdC0F2tPszmCpC/hO
         9861Rjy+lVa38WxdjLxTZsCKwcRWeMylVHjH2J29ILDssNcfFU0P5fX7nmgyE/3SdzF0
         b1mWfIm0DI1cYEqf9a1SKQt5Xbiu4wdVHohUZlN2czD1sjVM4RJ6tO5EV2AQD1XTcmZs
         mpas+yvO2S6AFH6Qqe5h8GpyaKY5NdT7bNq02uTAUn82StqoOl2TfJkwkAX5hZ8Iubk1
         iLGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688384839; x=1690976839;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gI+e074nlB+UfQ82LxM55SnnLamwynBUA3VS5DX7QPA=;
        b=F3HCc6OohnDOk/RBQ8L0pUmaDJyHXgwBr1CB9cObzQFFDRpjsxvnyWRB41bDOlM5kQ
         3vHpin9V4NlcfXUY5J6Xf0gpuPEKdUMRyfTonSNXY9uUHZJG3BlrM4SG+UsQKE4bj3Qm
         xTAA6Vor5Bif+paU5RLzQO3cQhf2/qToiXCilc9pr/cha8sRjQDVw7zeIApUNoknjK3q
         UPBEvi1Pjc7WuTG2zsPgebgJbadtR8f6hwT6P+X/a+THRbr4f5Ig9OiaGQM0VLBa7uKs
         Mi3EaLewkZ8A/B6XuIDaeJgW42CAcK3IFw2c/3VfosFyW3jmPvHx8wwwQxDWa/yfU4s/
         B2Jw==
X-Gm-Message-State: ABy/qLZ8k0zAOHPZrugLuvKLPYeyijipHRhbknGUJVdDZVz/H9Ehr48Q
        Z8bjqmV+M6MM9gsXKIVNIf9U0A==
X-Google-Smtp-Source: APBJJlFRQHrhN2IUImYMQuBbVyDtwJxpUyT2Z3N0SHc+2XF7J1pz2+214kq30Qo+vybFY3A03HVNUw==
X-Received: by 2002:a2e:3312:0:b0:2b6:d4f7:b7fa with SMTP id d18-20020a2e3312000000b002b6d4f7b7famr5083155ljc.5.1688384839061;
        Mon, 03 Jul 2023 04:47:19 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id g8-20020a2e9cc8000000b002b6c9927a3csm2703885ljj.37.2023.07.03.04.47.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 04:47:18 -0700 (PDT)
Message-ID: <e6543c15-dee8-538c-a686-a4cf5d2b1058@linaro.org>
Date:   Mon, 3 Jul 2023 13:47:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 09/27] ARM: dts: qcom: msm8660: fix PMIC node labels
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
 <20230702134320.98831-10-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230702134320.98831-10-dmitry.baryshkov@linaro.org>
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
> Change PM8058 node labels to start with pm8058_ prefix, following other
> Qualcomm PMIC device nodes.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../boot/dts/qcom/qcom-apq8060-dragonboard.dts   |  4 ++--
>  arch/arm/boot/dts/qcom/qcom-msm8660.dtsi         | 16 ++++++++--------
>  2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
> index db4c791b2e2f..48fd1a1feea3 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
> @@ -72,7 +72,7 @@ cm3605 {
>  		/* Trig on both edges - getting close or far away */
>  		interrupts-extended = <&pm8058_gpio 34 IRQ_TYPE_EDGE_BOTH>;
>  		/* MPP05 analog input to the XOADC */
> -		io-channels = <&xoadc 0x00 0x05>;
> +		io-channels = <&pm8058_xoadc 0x00 0x05>;
>  		io-channel-names = "aout";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&dragon_cm3605_gpios>, <&dragon_cm3605_mpps>;
> @@ -945,7 +945,7 @@ irq-pins {
>  	};
>  };
>  
> -&xoadc {
> +&pm8058_xoadc {
>  	/* Reference voltage 2.2 V */
>  	xoadc-ref-supply = <&pm8058_l18>;
>  
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
> index 78023ed2fdf7..9217ced108c4 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8660.dtsi
> @@ -80,13 +80,13 @@ sleep-clk {
>  	 */
>  	iio-hwmon {
>  		compatible = "iio-hwmon";
> -		io-channels = <&xoadc 0x00 0x01>, /* Battery */
> -			    <&xoadc 0x00 0x02>, /* DC in (charger) */
> -			    <&xoadc 0x00 0x04>, /* VPH the main system voltage */
> -			    <&xoadc 0x00 0x0b>, /* Die temperature */
> -			    <&xoadc 0x00 0x0c>, /* Reference voltage 1.25V */
> -			    <&xoadc 0x00 0x0d>, /* Reference voltage 0.625V */
> -			    <&xoadc 0x00 0x0e>; /* Reference voltage 0.325V */
> +		io-channels = <&pm8058_xoadc 0x00 0x01>, /* Battery */
> +			      <&pm8058_xoadc 0x00 0x02>, /* DC in (charger) */
> +			      <&pm8058_xoadc 0x00 0x04>, /* VPH the main system voltage */
> +			      <&pm8058_xoadc 0x00 0x0b>, /* Die temperature */
> +			      <&pm8058_xoadc 0x00 0x0c>, /* Reference voltage 1.25V */
> +			      <&pm8058_xoadc 0x00 0x0d>, /* Reference voltage 0.625V */
> +			      <&pm8058_xoadc 0x00 0x0e>; /* Reference voltage 0.325V */
>  	};
>  
>  	soc: soc {
> @@ -390,7 +390,7 @@ pm8058_keypad: keypad@148 {
>  					row-hold = <91500>;
>  				};
>  
> -				xoadc: xoadc@197 {
> +				pm8058_xoadc: xoadc@197 {
>  					compatible = "qcom,pm8058-adc";
>  					reg = <0x197>;
>  					interrupts-extended = <&pm8058 76 IRQ_TYPE_EDGE_RISING>;
