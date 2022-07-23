Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1144257F09B
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 19:29:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237879AbiGWR3N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 13:29:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237846AbiGWR3M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 13:29:12 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBE881900C
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 10:29:10 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bp17so12265560lfb.3
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 10:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Mxp+CxBW8pHVdourNhn6PmNRAsrAJ2ndNnRfOTXc6Oo=;
        b=NvtcMfL5xL55dHVCLFBJV9Ru0RrDYGST/5RNWwKm/l5tUInf1f1LOsQ7iGNRsgsxLc
         ZY8S+Yl6dMKEvHylCitRq43sALdjOVoSk0PYnYVq0E9Kx09oQB95WC0HNfj9S8piyZsQ
         MU9kidr4Q9fRSFQ5IVLKMWvkVagx/EDpPAd4GAOzzkEOlUT4FckL5ZwMkSByU8GyzP7M
         ZDA9e3GWk2uzEk33dwJYrxykczDiIS2UMXn+170PmjIYBSlUYduDmDhFjYICVtb3NiYL
         TBVqowRPnokNf8ZCDhkPQ3LUZgKfqUK0jLL5HXJZncc4MP7ycyjV7nh5on8ZeHaytf3q
         UBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Mxp+CxBW8pHVdourNhn6PmNRAsrAJ2ndNnRfOTXc6Oo=;
        b=OCoX9YU7B/WDJTR9n8nfDkkIucDx0fEnuHnmoiIR1MTo1LdIWAQSVuTRHm6m1qubD5
         mrzO5vq7HSNnOVpcsTzcicUxQZlY2jiM8suCQpeyf47cju+FILSz9jsPEi2v2TPHKn23
         wZTObdcxKCgaa9fYYojB+KtASrLySqDI/waVZITZ5ckj1hYTvFF4UZ71vrXP1IddcQNv
         NobE6EMnPwARIVjiqzrn09WUiO9XudAIWzFCOTWbu7gSNzj675NRbTvEENoYU7e4vcjY
         PsnXr3c/OvaFH1cwWJv37wQch6UHtsXmR11WH74Muf4VfQjk8GHfh4Yr84vyjvF0FQ7O
         Y8rg==
X-Gm-Message-State: AJIora9+2Vu0eSwvvGneJrBK4gpjT2JHA/8L8XglNlfEBcsTCchKwneO
        HuQFxcWuHzFFUKKIHmrpnbvREA==
X-Google-Smtp-Source: AGRyM1vLIWRg/4veh1w7QJCNbMWDeopEiLjxm1bwhdsZ/xk64cZQyXbfaoQB9/6W/RNrbwPSFIoinw==
X-Received: by 2002:ac2:48b3:0:b0:48a:7442:b4a with SMTP id u19-20020ac248b3000000b0048a74420b4amr1945046lfg.286.1658597349068;
        Sat, 23 Jul 2022 10:29:09 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id i7-20020a0565123e0700b00489e211c58esm1746865lfv.134.2022.07.23.10.29.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 10:29:08 -0700 (PDT)
Message-ID: <8027e1d6-d4de-787b-906e-51d40f7b7bad@linaro.org>
Date:   Sat, 23 Jul 2022 19:29:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v5 1/4] dt-bindings: qcom: Document bindings for new
 msm8916-samsung-e2015 devices
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        devicetree@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20220723141835.136196-1-linmengbo0689@protonmail.com>
 <20220723142434.136458-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723142434.136458-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/07/2022 16:26, Lin, Meng-Bo wrote:
> Document the new samsung,e5/e7/grandmax device tree bindings used in their
> device trees.
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>
> Acked-by: Krzysztof Kozlowski

This is not correct ack. Do not invent stuff, but copy what you received.

https://elixir.bootlin.com/linux/v5.19-rc1/source/Documentation/process/submitting-patches.rst#L536


Best regards,
Krzysztof
