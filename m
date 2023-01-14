Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96FA766ADB2
	for <lists+devicetree@lfdr.de>; Sat, 14 Jan 2023 21:34:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230244AbjANUeO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Jan 2023 15:34:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230416AbjANUeJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 Jan 2023 15:34:09 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE1C7E3B4
        for <devicetree@vger.kernel.org>; Sat, 14 Jan 2023 12:34:06 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id m6so37674683lfj.11
        for <devicetree@vger.kernel.org>; Sat, 14 Jan 2023 12:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UB2YYYl5cVRk908WVQczk7Gs+jyqKlTiv51E60YYuEI=;
        b=cBv4TOVm3LJBa8emq8b1XYLs/5YQvpDAM1c3Im9FJZgo+fig1PrD66Ql1TpctKGA/R
         KSkpTr/OZ33T4ri0hZxf1VWIyjC5h3FkOrsSZk5Rw9qpWxcVg/ZNing3dpd8BuJbxSfw
         pupaUcGcnpgsL7TEBhN3ReOk5TMHcP5+Nn2zn54FRMblW4OdHNYgwk9L7RSZd/5rnuma
         rXvphrqDyKnMC9hDgxKr/Ffsk31MzExUEgzmNJKPmrNxm4BqWvCO8CXe1x3VLxUFSGS6
         joT+EYIN6dW1o5jpBhuTAhNBZuUq7CP6kLwUvSxLMWgAEs8Qm+mbSwJJD0dx9voz8URG
         xOww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UB2YYYl5cVRk908WVQczk7Gs+jyqKlTiv51E60YYuEI=;
        b=smrrR+viJa/WJYPL1ibPA03ONM+Vo3vuO7DE0eb0v4fTvBpIpdOj1HP0U86LMes/fr
         6bYFfqreDCeFQkpd8SLICRxdGj9KcO6i/U3kYf+9hOgWd6VLOpoNBnr8WNbeRDHjfNCv
         sKr7X/n9IZne678buNQpt73S7hyUlZM/SRa5CaarbGHfXaaTRvwdOweu+MI3iMAONOX6
         xMJsckhs0VwS6x/Rcr2oeaIGZpP54HmgfPlBJhy9F6TxpuJ6FKLKwb95NGFXDPdQC4sO
         bsUgPd3j9yCJAfEpcN8PKXHkhIaFcSyJ9bPpxkRXcXo94TI3T1xLQblJuQjdDSYPSdT2
         CXoQ==
X-Gm-Message-State: AFqh2kqt0gwKOmgZd8XzkeevThrg/0govoZY7IIVxL58JtadSAMDrTJr
        Y3m0fFsppJtlst7FSsFpZ+5oHg==
X-Google-Smtp-Source: AMrXdXu2Uya9fgA8YVpcQmaeswZQlG8/b+6oBfb3OGz/faHAw1vsXZkgdh9B/vCBwyJcWqUGtHqWXQ==
X-Received: by 2002:a05:6512:3b99:b0:4a4:68b9:608c with SMTP id g25-20020a0565123b9900b004a468b9608cmr30253425lfv.23.1673728445202;
        Sat, 14 Jan 2023 12:34:05 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id l8-20020ac25548000000b004caf42eb04csm4402226lfk.138.2023.01.14.12.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jan 2023 12:34:04 -0800 (PST)
Message-ID: <9e9ec163-a9f1-99ae-21a1-9baf43cc9455@linaro.org>
Date:   Sat, 14 Jan 2023 21:34:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 4/6] arm64: dts: qcom: sdm845-audio-wcd9340: commonize
 clocks
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230113162245.117324-1-krzysztof.kozlowski@linaro.org>
 <20230113162245.117324-4-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230113162245.117324-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13.01.2023 17:22, Krzysztof Kozlowski wrote:
> Clock for WCD9340 is coming from the SoC and is the same in all users,
> so move it to common file to reduce the code duplication (which still
> allows further customizations per board).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi           | 3 +++
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts                   | 2 --
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 2 --
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts           | 2 --
>  arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts         | 2 --
>  arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts             | 2 --
>  6 files changed, 3 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi b/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
> index 33718cb95c83..0d7c37f39176 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-audio-wcd9340.dtsi
> @@ -29,6 +29,9 @@ wcd9340: codec@1,0 {
>  			interrupt-controller;
>  			#interrupt-cells = <1>;
>  
> +			clock-names = "extclk";
> +			clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
> +
>  			#clock-cells = <0>;
>  			clock-frequency = <9600000>;
>  			clock-output-names = "mclk";
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index 33ec79afbb62..9c9a587ea7a9 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -1076,8 +1076,6 @@ &venus {
>  };
>  
>  &wcd9340 {
> -	clock-names = "extclk";
> -	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
>  	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
>  	vdd-buck-supply = <&vreg_s4a_1p8>;
>  	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> index a7a3f7ce2809..4f8ffc0da141 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> @@ -534,8 +534,6 @@ &venus {
>  };
>  
>  &wcd9340 {
> -	clock-names = "extclk";
> -	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
>  	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
>  	vdd-buck-supply = <&vreg_s4a_1p8>;
>  	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
> index 1ceeea0885b9..d9c4af06ab63 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-polaris.dts
> @@ -692,8 +692,6 @@ &venus {
>  };
>  
>  &wcd9340 {
> -	clock-names = "extclk";
> -	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
>  	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
>  	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
>  	vdd-buck-supply = <&vreg_s4a_1p8>;
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> index f3dd0ff1d5c6..5094e7e6dc48 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
> @@ -738,8 +738,6 @@ &venus {
>  };
>  
>  &wcd9340 {
> -	clock-names = "extclk";
> -	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
>  	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
>  	vdd-buck-supply = <&vreg_s4a_1p8>;
>  	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
> diff --git a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
> index fc9369eafd23..65de8d595736 100644
> --- a/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm850-samsung-w737.dts
> @@ -647,8 +647,6 @@ &venus {
>  };
>  
>  &wcd9340 {
> -	clock-names = "extclk";
> -	clocks = <&rpmhcc RPMH_LN_BB_CLK2>;
>  	reset-gpios = <&tlmm 64 GPIO_ACTIVE_HIGH>;
>  	vdd-buck-supply = <&vreg_s4a_1p8>;
>  	vdd-buck-sido-supply = <&vreg_s4a_1p8>;
