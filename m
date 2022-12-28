Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AC98657767
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 14:42:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232981AbiL1NmH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 08:42:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233044AbiL1Nl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 08:41:56 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A17FD64EC
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:41:54 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id g13so23649775lfv.7
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:41:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I99sMjDsAea5G8B1JlCQSCo9peQ47lkvT7dfS54M45M=;
        b=eV9isvizueOy1vXXFpMk7UnDoGDerHmnCOZXWfLhABxUKkg2szl1Z1xkKDkfUN04La
         Lj+FGfAadQSmWh9ZErCcHRxw6epcIsRUZF+2ZxD/JwEG9ZxVvPfudeBMfbhCGwN3Q2Md
         DA7KCApdzo/H+RvT6YgRFp7i9eSEH3vpval+2/hee1PGJtxE0odlUUloRr/IsFgyduKB
         ekAmIV7B7mxjknjvkYfRk+AlU1vy6JgCyGpeyavTYHPKRw9TjcncQ8vfBAr9dUlBmbzQ
         bvBVreKUF4zOnsk1h9ZMiCQOyDmE2Y2/k5kn66WvYxru2qsJ66JJMb0jEAVmBbcllrAI
         1RbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I99sMjDsAea5G8B1JlCQSCo9peQ47lkvT7dfS54M45M=;
        b=qnfsg8wt4Cb5CxPaI7WjSYXl/qH/yNbfiuc7X+arPSZjI0lhIQZ0LqMEaMIOV/ieNg
         OdYZ6VgCil92GC0wMe8AuUMTAGys79EGTkor6ukbynw3EYw0KXvleYxvIRYf+CzMrERZ
         GpV0Sy7OVHunXy7bDQb4aPetysWpLtkRK66YoqjlH/RtPdaBFP3R22fyPsfx9+8VBoG3
         m0ZQYGd9Kyq7GhdRXo50Gd0xFWcG69fvOogOmk5FQlio195YkRfD6O/kMj/YInHlG57R
         eIuts9ImwDwTD3BnHRApdKcNxWz/wciN2lJHtx9cB68KId4D8/39pQTu2HxjXyk0MQH/
         fqqw==
X-Gm-Message-State: AFqh2kpkYCzpe04/XbVYFQ+gBZl79iN32V0WaGBqsIORGROOIGGX8UT0
        on5iCMJ0JDqbwkoE4JuAhRdXLQ==
X-Google-Smtp-Source: AMrXdXssihIaszrUcuTU8eNLzMHzUZ/xpoVxxYeRNpQn2Q6binlVJqVyxvuNZCFdmZU8cwkUlR4PIQ==
X-Received: by 2002:a05:6512:3e10:b0:4a4:68b8:f4f0 with SMTP id i16-20020a0565123e1000b004a468b8f4f0mr7868369lfv.54.1672234913056;
        Wed, 28 Dec 2022 05:41:53 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id s4-20020a056512202400b004b5979f9ba8sm2651230lfs.210.2022.12.28.05.41.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 05:41:52 -0800 (PST)
Message-ID: <6a45ded9-5a61-fec6-d1b8-91fbad4b0a04@linaro.org>
Date:   Wed, 28 Dec 2022 14:41:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 16/16] arm64: dts: qcom: msm8998: get rid of test clock
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20221228133243.3052132-1-dmitry.baryshkov@linaro.org>
 <20221228133243.3052132-17-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221228133243.3052132-17-dmitry.baryshkov@linaro.org>
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



On 28.12.2022 14:32, Dmitry Baryshkov wrote:
> The test clock apparently it's not used by anyone upstream. Remove it.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> index 18cc149b6be4..6d69dce14dba 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> @@ -2398,8 +2398,7 @@ mmcc: clock-controller@c8c0000 {
>  				      "dsi1byte",
>  				      "hdmipll",
>  				      "dplink",
> -				      "dpvco",
> -				      "core_bi_pll_test_se";
> +				      "dpvco";
>  			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
>  				 <&gcc GCC_MMSS_GPLL0_CLK>,
>  				 <0>,
> @@ -2408,7 +2407,6 @@ mmcc: clock-controller@c8c0000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> -				 <0>,
>  				 <0>;
>  		};
>  
