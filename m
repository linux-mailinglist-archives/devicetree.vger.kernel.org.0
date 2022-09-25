Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D4D55E9588
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 20:57:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230465AbiIYS5m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 14:57:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229951AbiIYS5k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 14:57:40 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA8FB2EF2C
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 11:57:38 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id d64so5978822oia.9
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 11:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=bqqG78pR7ezwwLzn7M7n9VDWc9F+Ofv/1iAE/Bm/ftU=;
        b=AfC0cdfpVaBwj3CcA7oeO0Q6l8KZlfJtTPZr9qhYm1k6IJlENkYSYRdyLKw37AU9vE
         k785gFHvSCRHViBJRXRg5X6uNVUm1cU3g6foHOFS/3dBHhx3ruuWbxlZKr2WhBo1Rh5c
         AqWLdWZ42KhVFL01dJrDVy2h7hVwmu0JTmiOqm3c+XiU4UIsuSDDYUugvQp7gSUi/tVA
         ZFh1CE0dyEZEAzQABEia1uLwT7sF4l8walPohpRjE2Pk3p01EcnkVxN+Yz90fQd6fcc/
         7ID2V4sRFT9sJD28PhFXyVe4Y5Q859zWeCOKDr3fLKJHATNlAMnD/Fnv4F419h74v762
         UYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=bqqG78pR7ezwwLzn7M7n9VDWc9F+Ofv/1iAE/Bm/ftU=;
        b=11j/S6Pv2HFYAK9f6ntAuXePuF5wtYNZK9WkLN1omVA0UAPcGghs7F69trL+56rocc
         DNRZ8d1UJjQms8PdB5Fe17RVsnrqfrsEBXblJycnQkLHuJJA+E39ALvg9NOMO0jNsvqa
         CYqRSqWsv1Hper7vSJJ1GPDx6KcXfYNEAeaEG46NLxWhV5CDuhZUBUsPyr5BhufF6hY4
         LuTkNwbwoom6rKPsmGikmZ20dgnlq75FEYiLfj1sF1YtSpitOMhWPrlU5+zd5jZvtsV3
         QnUgOCeVWPUSwMatzGYCgGSd+E6gmbrhvQk9xr0MH/+478S9xD24f31gFNhnFs6IJIBI
         toSA==
X-Gm-Message-State: ACrzQf3bGT20dQHkpdZutCCipyLlJJTlSt6BGu5QkB5SpI2klYsdnrcS
        /ocQf0l2LXBDcAoZT4VGhQ70IQ==
X-Google-Smtp-Source: AMsMyM6PPcl7/+jBEtRKosva+dM1Z8fxPO/owiGiHAPokcfw8mny0h3O3HTdso08LYBH2GJglszuKQ==
X-Received: by 2002:a05:6808:188e:b0:350:6212:4f34 with SMTP id bi14-20020a056808188e00b0035062124f34mr13147961oib.144.1664132258120;
        Sun, 25 Sep 2022 11:57:38 -0700 (PDT)
Received: from [192.168.11.16] (cpe-173-173-107-246.satx.res.rr.com. [173.173.107.246])
        by smtp.gmail.com with ESMTPSA id a184-20020acab1c1000000b003436fa2c23bsm6281560oif.7.2022.09.25.11.57.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 11:57:37 -0700 (PDT)
Message-ID: <d337655c-dd86-2c99-fd26-5a4a44ea98fa@kali.org>
Date:   Sun, 25 Sep 2022 13:57:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.0
Subject: Re: [PATCH 03/11] arm64: dts: qcom: sdm845: correct slimbus children
 unit addresses
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20220923161453.469179-1-krzysztof.kozlowski@linaro.org>
 <20220923161453.469179-4-krzysztof.kozlowski@linaro.org>
From:   Steev Klimaszewski <steev@kali.org>
In-Reply-To: <20220923161453.469179-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 9/23/22 11:14 AM, Krzysztof Kozlowski wrote:
> slimbus uses address-cells=2, so correct children unit addresses.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 9db1fce6b198..2264bba69f84 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -3841,12 +3841,12 @@ ngd@1 {
>   				#address-cells = <2>;
>   				#size-cells = <0>;
>   
> -				wcd9340_ifd: ifd@0{
> +				wcd9340_ifd: ifd@0,0 {
>   					compatible = "slim217,250";
>   					reg = <0 0>;
>   				};
>   
> -				wcd9340: codec@1{
> +				wcd9340: codec@1,0 {
>   					compatible = "slim217,250";
>   					reg = <1 0>;
>   					slim-ifc-dev = <&wcd9340_ifd>;

Tested on Lenovo Yoga C630

Tested-by: Steev Klimaszewski <steev@kali.org>

