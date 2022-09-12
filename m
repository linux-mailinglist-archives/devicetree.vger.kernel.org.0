Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2CE85B5EB5
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 19:00:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229943AbiILRAX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 13:00:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229908AbiILRAV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 13:00:21 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BE4211C37
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 10:00:18 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id z187so9196292pfb.12
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 10:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=sfYBJC32ETGyteiWg3YC9wQpy2EzrGHLM+DajwGhI4I=;
        b=b9P3PVEQ9u6tuw4txhn443NBSCEH8tCVzgKr4rmIdZFsA7TJUheFOKJC7L39lri40z
         4NKkxjzd8vuOT7w+CY7VVC18Frtz41ldO3BbwB9sK6olTDNV6ACrIw2EDDG6MAesNhe1
         HoyK7EUtVSQBKgfpLvJ8kxwvN9xIbYqR/OLJuC4F9TzSeEbDUck+kq6bHLY1Zny2exPt
         IqNkab7JEGth4ZT2EjQRjbbVSNUHFK+XAKjKitJzYTRglRw4sIjKlqmebilPV/ZI3+tg
         st2WDmMsWFCwxApJhzVm9K0UYRehYXzLWdGzitqjmizle8lMy5vaj7DGoHakP4Eam9LX
         Kr1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=sfYBJC32ETGyteiWg3YC9wQpy2EzrGHLM+DajwGhI4I=;
        b=OUeEUvMGjnvgr0YvITBuX2W2bdfoItwioxpXuoN6O7Y3EMjig43iG5dYNqQ9KfuquH
         ygC55eVNFGxBELf6MdGiqbQyhJtyBiZosmmJphxSLGeQjwQdvAsBToa+OKe24DlQFPyE
         1JGd9jLnoRpVYKYRZ/MNtfMJ39q2f9HnGtcRlCzgRmclMCUKsV5aI9dBrOJz9hDzpyui
         xga/z6yKJYSRjMdmk8W4jMG6HBJTv0KI6nqltsI8AY8pNaTnv70Rox9R3BqsDxr72kZA
         G4kfuQ2taMot9etOLR08VQhacUZAyVbqz1O+2Ql2BZmmh3z3gnxCO8yGWTJwe4WJQZTn
         BoEg==
X-Gm-Message-State: ACgBeo3yZ2qH635KPzZQrb94tf35J2yMbpzNNbFPJWTyp/uXclVAJe8U
        JHkl5OqkiXnCi+uHtRHvuyW35Q==
X-Google-Smtp-Source: AA6agR4X4xWoT+7YRcOdp1xsn8Z9iuWeLxFphBLc3/8KNvPhY5ySw4xeAoZBvddlZJmKeRi76+goxQ==
X-Received: by 2002:a63:fc13:0:b0:42b:890d:5954 with SMTP id j19-20020a63fc13000000b0042b890d5954mr24154219pgi.200.1663002017237;
        Mon, 12 Sep 2022 10:00:17 -0700 (PDT)
Received: from ?IPV6:2401:4900:1c60:5362:9d7f:2354:1d0a:78e3? ([2401:4900:1c60:5362:9d7f:2354:1d0a:78e3])
        by smtp.gmail.com with ESMTPSA id pg2-20020a17090b1e0200b001fd7fe7d369sm5442265pjb.54.2022.09.12.10.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Sep 2022 10:00:16 -0700 (PDT)
Message-ID: <333abaaa-4e56-7a4e-a4a1-f3f54970a21e@linaro.org>
Date:   Mon, 12 Sep 2022 22:30:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 5/9] dt-bindings: mmc: sdhci-msm: Add pinctrl-1
 property
Content-Language: en-US
To:     Iskren Chernev <iskren.chernev@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220910143213.477261-1-iskren.chernev@gmail.com>
 <20220910143213.477261-6-iskren.chernev@gmail.com>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
In-Reply-To: <20220910143213.477261-6-iskren.chernev@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/10/22 8:02 PM, Iskren Chernev wrote:
> Most mmc blocks contain two pinctrls, default and sleep. But then
> dt-schema complains about pinctrl-1 not being defined.
> 
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> ---
>   Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index a792fa5574a0..775476d7f9f0 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -97,6 +97,10 @@ properties:
>       description:
>         Should specify pin control groups used for this controller.
>   
> +  pinctrl-1:
> +    description:
> +      Should specify sleep pin control groups used for this controller.
> +
>     resets:
>       maxItems: 1
>   

Reviewed-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Thanks.
