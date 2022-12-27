Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 160196569D2
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 12:19:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231204AbiL0LTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 06:19:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231318AbiL0LTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 06:19:44 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E780C3883
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:19:42 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id f34so19185672lfv.10
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xXaGHzG7iSL/dK9e+vmF6UXxBmRQkEZEoBP+E4sGBP4=;
        b=VuKVsBLLl3lR3Et4NWRqbX0rzbjPrN5eCGPaea2WD6LwWo05y8xkw/wCoxZxUOQI+C
         tkwCPnsg/MBsM6/ObMAcC9SnR83d10ay8Ido5Iw8/0gQvd+CBLWcNFT7SzzLROEKsDbZ
         9NNW2kUKG0y/G1SSFasizy6fhepzvh9AbzpSBiZQgrk0TR5Qme07e1gwjBr4ju12eqNN
         lIWKX3wo+vMjXWzWL3ljIAfDxZRu4k6iqMXUxdaHQw+6rz3D0CXWSaNeMSUIpR5XvqkR
         JSMBu9S4vjvFdmrAM+4o0EJQDX04/nAkDAlgaBVb/7uSdFykNnO6/44MNZmENTspSmkx
         2aFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xXaGHzG7iSL/dK9e+vmF6UXxBmRQkEZEoBP+E4sGBP4=;
        b=O0/T+SH59cv/6NtKjy6eWsdQ5UBlP5DO5bFYR3uNRHhTxsoCVKpWUv2WI2k3PowHAp
         IP+lq8d7wrVtoc5DyiI/YWDB15/uMWhzn/5T+LpxTUZij43v9ZAJOPstskS+ychomOMO
         ZlrKXmENv28s+8OIMqv1QEzt2D8EIUfXMVLype2IJPs78BQ7G2dU0ffRl7wusV7NWN5a
         jfckRXOKSZNSctK8ncKUezYX4hF0SHsByMFV3JEUW8KQg78qOANcQDNf/swhComkHodI
         DoBGoPi8MMNIIB8xc6k51aY4qSRFONwyA9g8XfcKjpWr6PxosX3US/4DvdZxZHydkN9L
         GpUQ==
X-Gm-Message-State: AFqh2krldrtN0yMtUGj1JM7xj8aieZx4eH/Ft0oYShkL9wsX/BFqiHHj
        tS6G6ZZi7doBftVees5Ia7RAMLSa46dUH3cO
X-Google-Smtp-Source: AMrXdXsQ+SeODTskNdNyYthbhw4IjHZvPl7e2YlPwnBEVs3QK5FUDT7LEkZhALuXfhwnULP3XEMNwA==
X-Received: by 2002:a05:6512:1043:b0:4cb:d3:b81b with SMTP id c3-20020a056512104300b004cb00d3b81bmr5317228lfb.44.1672139981364;
        Tue, 27 Dec 2022 03:19:41 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id a11-20020a056512374b00b00492ca820e15sm2200876lfs.270.2022.12.27.03.19.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 03:19:41 -0800 (PST)
Message-ID: <f62078aa-2c42-4a11-3d01-2502748a1c16@linaro.org>
Date:   Tue, 27 Dec 2022 12:19:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8250: drop unused properties from
 tx-macro
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221225115844.55126-1-krzysztof.kozlowski@linaro.org>
 <20221225115844.55126-4-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221225115844.55126-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25.12.2022 12:58, Krzysztof Kozlowski wrote:
> Neither qcom,sm8250-lpass-tx-macro bindings nor the driver use
> "clock-frequency" and address/size cells properties.
> 
>   sm8250-mtp.dtb: txmacro@3220000: Unevaluated properties are not allowed ('clock-frequency', '#address-cells', '#size-cells' were unexpected)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index a58f51083715..ddd750591e8c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2329,10 +2329,7 @@ txmacro: txmacro@3220000 {
>  			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
>  
>  			#clock-cells = <0>;
> -			clock-frequency = <9600000>;
>  			clock-output-names = "mclk";
> -			#address-cells = <2>;
> -			#size-cells = <2>;
>  			#sound-dai-cells = <1>;
>  		};
>  
