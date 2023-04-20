Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97B356E9109
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 12:53:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234990AbjDTKx1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 06:53:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235004AbjDTKxA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 06:53:00 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 947466E85
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:50:32 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2a8bca69e8bso4104381fa.3
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681987796; x=1684579796;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ISDDN/N0rEFfikck66+Z24/wyAdEVwOWe2CAWFioEtc=;
        b=m7Jj8i9f+dxN4pwDEwqdt1rEmZEIpxG/BGeSJTz2aaCvdZtfxX4mijbyxzKdQhsINY
         cLK4ReKiMRmU7R7Gdeb7JVzLDXsD0CuBQ8aCbSEABRzvzYMEAtYpLAXwPVVyVGTZHzNS
         YLkMdS9vN6Zzt7Xefp9i1UEx0BaKUCavs8DsJitp9bECMMZcxpEcJHHmzCtnZIdwwWZK
         w7VquKC6iZJJGtOnVF6zSFGmgeySkYB1lpv2pFOMztHe9IOn3ki7XxPXHeDjTIV1pjZB
         YF7//5t0yfzHbpq8EnciSB/5/EXbz+N7+wx5KzC9EnE10oBZT5F9+uDdnVyJYXxF0Yw7
         dS/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681987796; x=1684579796;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ISDDN/N0rEFfikck66+Z24/wyAdEVwOWe2CAWFioEtc=;
        b=A9YC5ePAuhSn9s2ZOojPcjqPC0RaVS7gsdNhjsIY3sRjDdcP6s2ScGFzBNMrXNRueO
         ++pQbJDMFxIuplO0cbEtIosqrABw9lnOH9n4KutGk08OibY+7rEmp0fLLcrV42uXBf1r
         5iqAnTNkfuam8e7yELk9ulI9u+3R6/FBFhMt+1aw885KKOBgpQrFS3E1KVWPsP3khNQC
         AXwZggzB2HnYkJfhZHUoioEM7Mu5MATNLsNJ1beoZRwhH/iwBT98mLC5NtUCnrdV5dDD
         JqxOpqgSk7+2eUmJnCCZjXmbLKXl6RjTIFI1aiCTdZ181U4muriftoOzchfrRoGTBgU0
         4cxg==
X-Gm-Message-State: AAQBX9eFKvQGDcG2rN1SuAShjKsplHzqd0TBHU8o5wx32NzVeGTJFTiN
        UDHiZMoq91/T5KJZoRVlvCjdX9gjju5C13vvzGc=
X-Google-Smtp-Source: AKy350btW5RbCt9icEEmJrgaBl4QuZbI3JbV48JNxQtlsfwxW2WyBcP/31up+3Eh0wFNc3zDvvCuIA==
X-Received: by 2002:ac2:4905:0:b0:4ed:c9b0:6a42 with SMTP id n5-20020ac24905000000b004edc9b06a42mr369436lfi.12.1681987796498;
        Thu, 20 Apr 2023 03:49:56 -0700 (PDT)
Received: from [192.168.1.101] (abyj144.neoplus.adsl.tpnet.pl. [83.9.29.144])
        by smtp.gmail.com with ESMTPSA id h15-20020ac2596f000000b004cca1658a41sm175011lfp.300.2023.04.20.03.49.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 03:49:56 -0700 (PDT)
Message-ID: <ae2d4903-9147-fe8f-1911-d49ef5a4cb51@linaro.org>
Date:   Thu, 20 Apr 2023 12:49:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 09/10] ARM: dts: qcom: msm8960-cdp: move regulator out of
 simple-bus
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230420075053.41976-1-krzysztof.kozlowski@linaro.org>
 <20230420075053.41976-9-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230420075053.41976-9-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 20.04.2023 09:50, Krzysztof Kozlowski wrote:
> Regulators is not a bus, so drop incomplete simple-bus usage to fix dtbs
> W=1 warning:
> 
>   Warning (simple_bus_reg): /regulators/gpio-regulator: missing or empty reg/ranges property
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-msm8960-cdp.dts | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-msm8960-cdp.dts b/arch/arm/boot/dts/qcom-msm8960-cdp.dts
> index 8fa2befa629a..6c1bc3818883 100644
> --- a/arch/arm/boot/dts/qcom-msm8960-cdp.dts
> +++ b/arch/arm/boot/dts/qcom-msm8960-cdp.dts
> @@ -15,16 +15,12 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> -	regulators {
> -		compatible = "simple-bus";
> -
> -		ext_l2: gpio-regulator {
> -			compatible = "regulator-fixed";
> -			regulator-name = "ext_l2";
> -			gpio = <&msmgpio 91 0>;
> -			startup-delay-us = <10000>;
> -			enable-active-high;
> -		};
> +	ext_l2: gpio-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "ext_l2";
> +		gpio = <&msmgpio 91 0>;
> +		startup-delay-us = <10000>;
> +		enable-active-high;
>  	};
>  };
>  
