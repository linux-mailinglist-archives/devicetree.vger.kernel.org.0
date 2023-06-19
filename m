Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CFEC73585B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 15:19:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231610AbjFSNTP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 09:19:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231889AbjFSNTH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 09:19:07 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB491716
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:18:45 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b46a06c553so28973171fa.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687180723; x=1689772723;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m1Oqx8M/+wSDkPLJftWrMDFpwIQ8TXiLmaeHAa23Jzc=;
        b=gP2kk1gehA67yaE93D2K0TxcK0EyWorpZLmI5eYkiQ01sZ/A3GxP2dYo2znvZaIMAq
         972nN7+KHKaF4TfJQ3FRfC6SaSB4/ps8o/iKHAaMdRbZpk4SXGRER/fBLyzOqOObOTZ6
         XndhOApw7QsDcUfQErWOiG1T+R+vvE9XhcsT3E7kSi1yAmxLXu/GqRIvLc+7ekpxJhzS
         mWUFjg7QFvZZ6M7nodxNDOjuRFoSQY4bhJW/4/Y0Zl5L9Op/+EaRSjW78Ue0HwHzJ1GR
         g1sEWL08Ye4lAvgWK72DkXsYsgWwXuVvuFuocbM/2IkPRbNfFEi59rxNqFKEDyFMOUj0
         WKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687180723; x=1689772723;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m1Oqx8M/+wSDkPLJftWrMDFpwIQ8TXiLmaeHAa23Jzc=;
        b=Uc0LWSrRoK1VrVKNWHyxbnvopcyva3W82ecS8PRq0rk/WTlRYC/up4NNysyX1iGS1z
         c5lxaEX2Nhn6BpoxHJ75cPKRjh+mP/raF4BesllgMUKwmOiVeelskU8T051FVHrs5lWI
         hspzEH74cCKJ1Q92nUgpjqkG0++xO82+F4mcm1ebSS83pI8asJunIjfyYq5FYe0PyaU4
         LIkNsxwFFgbaXPN684siQMfQ3YNdDIy/ASdWyoDFBAI88NgmLs5E6NcdGj9D1Q6AfLeX
         +bQugAHNOfosM85/2SgRwLpJ2cfP4lzo6D+KdLUnVVwhgnMXTC5CYhn4dFxbphaQP0s2
         DV6g==
X-Gm-Message-State: AC+VfDy0s/9s4PN9e52STpNbrP/Rg2J9ra1t8d5VBCXA4kxsVXWI2X9u
        EalIgDr65nMu86nGRHrUl41LgA==
X-Google-Smtp-Source: ACHHUZ4YuscAy5KTLtnQ2Y/V5NuD7OBHf0hw5pOUiojs8iStnTLkZPUAkStyV6LT26L76b32KEFn+A==
X-Received: by 2002:a2e:9b4f:0:b0:2b4:70da:823 with SMTP id o15-20020a2e9b4f000000b002b470da0823mr2336287ljj.45.1687180723443;
        Mon, 19 Jun 2023 06:18:43 -0700 (PDT)
Received: from [192.168.1.101] (abyl242.neoplus.adsl.tpnet.pl. [83.9.31.242])
        by smtp.gmail.com with ESMTPSA id l5-20020a2ea305000000b002b1a7823548sm5212298lje.98.2023.06.19.06.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 06:18:43 -0700 (PDT)
Message-ID: <50a543ce-c4b1-744f-688d-8122adf69c59@linaro.org>
Date:   Mon, 19 Jun 2023 15:18:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc8180x-flex-5g: remove superfluous
 "input-enable"
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230617112115.130024-1-krzysztof.kozlowski@linaro.org>
 <20230617112115.130024-2-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230617112115.130024-2-krzysztof.kozlowski@linaro.org>
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

On 17.06.2023 13:21, Krzysztof Kozlowski wrote:
> Pin configuration property "input-enable" was used with the intention to
> disable the output, but this is done by default by Linux drivers.  Since
> commit c4a48b0df8bf ("dt-bindings: pinctrl: qcom: tlmm should use
> output-disable, not input-enable") the property is not accepted anymore.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> index fe3b366e1435..b12e0a61b3c0 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
> @@ -497,7 +497,6 @@ hall_int_active_state: hall-int-active-state {
>  		pins = "gpio121";
>  		function = "gpio";
>  
> -		input-enable;
>  		bias-disable;
>  	};
>  
> @@ -513,7 +512,6 @@ i2c1_hid_active: i2c1-hid-active-state {
>  		pins = "gpio122";
>  		function = "gpio";
>  
> -		input-enable;
>  		bias-pull-up;
>  		drive-strength = <2>;
>  	};
> @@ -530,7 +528,6 @@ i2c7_hid_active: i2c7-hid-active-state {
>  		pins = "gpio37", "gpio24";
>  		function = "gpio";
>  
> -		input-enable;
>  		bias-pull-up;
>  		drive-strength = <2>;
>  	};
