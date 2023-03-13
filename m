Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7ED696B71CF
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 09:57:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230324AbjCMI5m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 04:57:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230318AbjCMI5G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 04:57:06 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155D81EFD4
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:53:45 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id f16so11766827ljq.10
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678697621;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uOM83DIkI6pVoP8hg6E+B1yQhVe0u4uF5Qd0MIt8s58=;
        b=e/t9UkMU9R+7CsYbMRvfSh8iGmqCt/5lwfuhRqXjZmvZbs6SsX4zUMLW8KeTlV4nam
         OHxVI8ql3SKJlxJqaPNndF1FyH95iiXLYUWI8OupV5mK5J7rltmECHxlLxl6ia+snNTJ
         +13p3Syqopd4IhEHuCefQZ52iSMoXSFXqUUpQ5Kjlls+KkwZ4B9y00AaVQ1GgdOfdXHJ
         Laj4OiyR/RqsL4De2gZ12wrwevImrzFiaQLno+21MAOy8Ofovlkoc/G6GuFqDC1ji9oc
         28/WCvAnZzhoj05RLQBUB8F1kGp2VKnUO+6tDtgKYXNd0bq/mUXFcFgoSmLGwzHuPlxY
         cJRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678697621;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uOM83DIkI6pVoP8hg6E+B1yQhVe0u4uF5Qd0MIt8s58=;
        b=WxSbV4ACfebqeOZTNsDEztPkMVUgJrgCnTnRkHfABJkADajh0sJbKarSXmp4wWsFpm
         F3lna87RKPILjeNI6f/CpcI2njao5wYxs/uoPRCXf3o6rNqVW8WnDj2392/2UVOWzw4U
         YOqu3eQUQVcms+EgkWMmNGB8Nn5PpdT5RLhtHh9nqbnU4qoWLASLyz1D0L9s2SzhW9HE
         u3bwqCRzINu31VKl5ma9MfKWbnJ2O7f9TY4tDemBEDRTrST5hR53f3QENkxFffR2NrjJ
         TLtlC4w4nrZAKxSp3in4KXSuJV2wENLS2g3JqSVQ/bPR6VK1gECi3xth+HH8VOkqF7GG
         Su8A==
X-Gm-Message-State: AO0yUKVxbd5AEaxPp0O+y4r6c44W9SxEMO1doZCepus4IbKE2o8IQgwU
        hBhSj+fw1KAW0AE0JtXO5/4AZw==
X-Google-Smtp-Source: AK7set+M6pdIzrMODtmqnK3Z+Ee4/7+1Jz5yFgs+UJ1yxFtJF6ObVdP/qJgR/9DseY5B92DfpgdHIQ==
X-Received: by 2002:a2e:7804:0:b0:295:b3df:4942 with SMTP id t4-20020a2e7804000000b00295b3df4942mr9530973ljc.40.1678697620946;
        Mon, 13 Mar 2023 01:53:40 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id w9-20020a2e1609000000b00295b2e08b9dsm936171ljd.116.2023.03.13.01.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 01:53:40 -0700 (PDT)
Message-ID: <21b7d21a-019e-ea6f-eda7-80068a4d4c2f@linaro.org>
Date:   Mon, 13 Mar 2023 09:53:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 7/8] arm64: dts: qcom: msm8994-msft-lumia-octagon: drop
 unit address from PMI8994 regulator
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>,
        Gustave Monce <gustave.monce@outlook.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230312183622.460488-1-krzysztof.kozlowski@linaro.org>
 <20230312183622.460488-7-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230312183622.460488-7-krzysztof.kozlowski@linaro.org>
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



On 12.03.2023 19:36, Krzysztof Kozlowski wrote:
> The PMIC regulators are not supposed to have unit addresses.
> 
> Fixes: 60b214effb80 ("arm64: dts: qcom: msm8994-octagon: Configure regulators")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi b/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
> index 4520a7e86d5b..0c112b7b57ea 100644
> --- a/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon.dtsi
> @@ -542,8 +542,7 @@ hd3ss460_en: en-high-state {
>  };
>  
>  &pmi8994_spmi_regulators {
> -	vdd_gfx: s2@1700 {
> -		reg = <0x1700 0x100>;
> +	vdd_gfx: s2 {
>  		regulator-min-microvolt = <980000>;
>  		regulator-max-microvolt = <980000>;
>  	};
