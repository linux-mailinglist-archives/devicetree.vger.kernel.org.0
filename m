Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1032F6569C8
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 12:18:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbiL0LST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 06:18:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229692AbiL0LSR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 06:18:17 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B464DF5
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:18:16 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id m6so8812557lfj.11
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 03:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kuxEO0uOTZfvEA3YmbsXHmGaUPqYI8uJLxIc9IyXnfc=;
        b=Pv3qCTW/TFWj7vJQ9NyAJ06xudEcYPh8MCVSoVgSgrVhMMrI2wgXierycIHopFbdJy
         /mW51pmJc27ZvhC05zV23x57HdVw76pVzND9KCIVEzFlQZpGolshUgFC0NhPS5E/ZagE
         O/caQayfLDgVx1o5hSzRrJYWizYv0MrXRdLA0YAuALn4EE07e4+B3+bNKu2zCd89O7P5
         iOw4bVLzx/x5cfrjQjRSIqIu2C3EIocL4PsXb7f09caReFEUnRf/k75dn+7XdoY2XtA2
         OBY3pu6EiXOuKiy/CTgkm0BPBreDsbf0QpQY874w24p9JLEYqlGsQ8ZLXIKV1l3zEJ/I
         3X7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kuxEO0uOTZfvEA3YmbsXHmGaUPqYI8uJLxIc9IyXnfc=;
        b=jPnPsHLjZgcRba95f1fLsHYW98uMSgmQQ/2Rg3KCii2UE2uC8jQt123/YrFeDaeYZf
         4Al26spVUpP8aLYNengbI63MROW6h9Ik96xYRXPegqYudzRwhgY+21dgKA2E8frQXzT2
         DCVL3R0ZccGJS4SslRJu6c1ES7o10TTPqzYqkl4Hr8JbJaom80zzpdJZ+ovly/fM+RP5
         vMteIzqcwuqKmnHXxus/E81UlAjc/8O6C3PkFYb8npXOOnqWUfEZjLJJuLMU+jO+kXAt
         vfseqIG22F9IAHomm89jG2zlH1E1yE0Ao9FDY3VXYrsQjHdLVrfxn0IOmq3JVkHu+4wX
         woFQ==
X-Gm-Message-State: AFqh2krFRPwPUZ/qZmIbsi9hXpdoJcpw8LIzE48X9RZOqz7+YHyVDwx5
        4YmMm1aW9UQH1XqZ7M6gtG1hOQ==
X-Google-Smtp-Source: AMrXdXv1hGoDs6+L9R2dfS+zLy3rSyJPqDqm2plb1Fl8ErdrbW54Pzu8RM/g19PeybUEQGHnw2WZCA==
X-Received: by 2002:a05:6512:3750:b0:4a4:68b7:e736 with SMTP id a16-20020a056512375000b004a468b7e736mr5795059lfs.32.1672139894991;
        Tue, 27 Dec 2022 03:18:14 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id d12-20020ac25ecc000000b004b561202ea2sm2199623lfq.182.2022.12.27.03.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 03:18:14 -0800 (PST)
Message-ID: <0cedc307-3ef6-6b35-f674-33983574f47a@linaro.org>
Date:   Tue, 27 Dec 2022 12:18:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/4] ARM: dts: qcom: align OPP table node name with DT
 schema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221225115844.55126-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221225115844.55126-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 25.12.2022 12:58, Krzysztof Kozlowski wrote:
> Bindings expect OPP tables to start with "opp-table".
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-sdx55.dtsi | 2 +-
>  arch/arm/boot/dts/qcom-sdx65.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
> index 5408ff715fbf..c64088c12c89 100644
> --- a/arch/arm/boot/dts/qcom-sdx55.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
> @@ -62,7 +62,7 @@ cpu0: cpu@0 {
>  		};
>  	};
>  
> -	cpu_opp_table: cpu-opp-table {
> +	cpu_opp_table: opp-table-cpu {
>  		compatible = "operating-points-v2";
>  		opp-shared;
>  
> diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
> index d3c661d7650d..aa6439d8763a 100644
> --- a/arch/arm/boot/dts/qcom-sdx65.dtsi
> +++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
> @@ -61,7 +61,7 @@ cpu0: cpu@0 {
>  		};
>  	};
>  
> -	cpu_opp_table: cpu-opp-table {
> +	cpu_opp_table: opp-table-cpu {
>  		compatible = "operating-points-v2";
>  		opp-shared;
>  
