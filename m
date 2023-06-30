Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 298697436B5
	for <lists+devicetree@lfdr.de>; Fri, 30 Jun 2023 10:12:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232168AbjF3IMb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jun 2023 04:12:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231455AbjF3IMa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jun 2023 04:12:30 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 832621FCC
        for <devicetree@vger.kernel.org>; Fri, 30 Jun 2023 01:12:29 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so2609152e87.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jun 2023 01:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688112748; x=1690704748;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OxbNv/NuIZYv+Sc5iZ3/gqGlhURz7mfFG5vvkmUQONs=;
        b=HX1AeRxjF2zjFFAc+6cJSNCpZziadTjoB5dKj8QKHOUrKBN5JvgvWdVOu9xHKyNNnB
         OpfJMaHc/Se5tMK9+EFVyzwFowNKq0Fal9vp+iyZDnWJCug6cEqlhhVy0Qy27XodPJNf
         i3vn2bkkStyjnNJgU/wmIQB9o9B6AVsSJn9TklTmFyKzRc1r+kj3eqgMVBF4r+ak/c6x
         teTQspslJgFDHOhahed9I7q08tmNUpI7frF6yb37FNN5mSbxDD4lqLMuhTJrT8Mi36zd
         9YQY8r8ZF4ZSqqM2za/e2J/Tb4oRWnK9oj09qbhH/7f4BaZrpr7t68fv83etVpn0mTta
         EgJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688112748; x=1690704748;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OxbNv/NuIZYv+Sc5iZ3/gqGlhURz7mfFG5vvkmUQONs=;
        b=HA7bDLokmeikQdlDrm0p3oZ3JGah5TABMeR0y1IsDrKVpC23nVat/sDJLget+SayoI
         2L2CcO4OLzr+vxJuEyk5RCQir8q8HZNw4IBRwAiGZSkhUk3Rwa5zNFpgvCmIBuehoc9f
         7/hlqNg7Ob7DV/9Jjq58SHYcHQY01KsmPR4YKripXLDi77FHQF7Q6JA+1SFg58YRrlQS
         sg9NZfT54RkJId7HgGLVCiKIgCBiiTMtYnljntwKL9OVecnyNMuhjeujKHm7gmUONEY1
         8V+s1v6bHSmtEP6WQjZkKdlAY7r1lOKAITQ/gJeKZ8dlEBzi129iiWSaD/NqvoCLIwaS
         H/Tg==
X-Gm-Message-State: ABy/qLYRoDc4SWXAFtceDSklidj+vZ8DJCc8zIITQosERBmuMVSVoigU
        GMAMZW2vOjNkFUCYqu3eFJ5sDg==
X-Google-Smtp-Source: APBJJlHg7AwqjZCPAqNwkzg/waBqzLw3gyBr7VeKpydrPhOxpKjWrXw6CAjOwIoRZqeuQc0Bkfy3lQ==
X-Received: by 2002:ac2:4dad:0:b0:4f8:62a6:8b2 with SMTP id h13-20020ac24dad000000b004f862a608b2mr1612530lfe.46.1688112747811;
        Fri, 30 Jun 2023 01:12:27 -0700 (PDT)
Received: from [192.168.1.101] (abyj222.neoplus.adsl.tpnet.pl. [83.9.29.222])
        by smtp.gmail.com with ESMTPSA id h15-20020a19700f000000b004fac93bdaecsm2360304lfc.242.2023.06.30.01.12.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jun 2023 01:12:27 -0700 (PDT)
Message-ID: <bb315c68-ccdd-a3cc-1c21-4089bdc57726@linaro.org>
Date:   Fri, 30 Jun 2023 10:12:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 3/7] arm64: dts: qcom: pmr735b: fix thermal zone name
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230630061315.4027453-1-dmitry.baryshkov@linaro.org>
 <20230630061315.4027453-4-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230630061315.4027453-4-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30.06.2023 08:13, Dmitry Baryshkov wrote:
> The name of the thermal zone in pmr735b.dtsi (pmr735a-thermal) conflicts
> with the thermal zone in pmr735a.dtsi. Rename the thermal zone according
> to the chip name.
> 
> Fixes: 6f3426b3dea4 ("arm64: dts: qcom: pmr735b: add temp sensor and thermal zone config")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/pmr735b.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmr735b.dtsi b/arch/arm64/boot/dts/qcom/pmr735b.dtsi
> index ec24c4478005..f7473e247322 100644
> --- a/arch/arm64/boot/dts/qcom/pmr735b.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmr735b.dtsi
> @@ -8,7 +8,7 @@
>  
>  / {
>  	thermal-zones {
> -		pmr735a_thermal: pmr735a-thermal {
> +		pmr735b_thermal: pmr735b-thermal {
>  			polling-delay-passive = <100>;
>  			polling-delay = <0>;
>  			thermal-sensors = <&pmr735b_temp_alarm>;
