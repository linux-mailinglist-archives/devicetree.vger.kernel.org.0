Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 393C373F63D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 09:58:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbjF0H6W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 03:58:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjF0H6V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 03:58:21 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11C251716
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 00:58:20 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fa99742bd1so16750685e9.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 00:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687852698; x=1690444698;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=x7/UbGp0E9Bxa4Bhgpxyx0OZdgH6N8kqPZt6xJxSjzc=;
        b=S5lD4ZfD82fXh6u0RLMYUVxFyY8zWED+PywdEsWbvPIfqz/XGaKoCpdhOoG+l9vCgG
         tV7f59jsuUPbx2irZ8DkkIq7GEcILFt8K4dkYB3kqnfLPGGRk4va+mN/3x9vITZmDL2E
         d0u2SeH+4ISstZ3b1pznIRxcTIHyN6DrjC8eRfNputWrDLl/pBpL0rlzb2u/Z1CNtUE/
         6IaQIaoEcYceN9M+6RvdF5A3TZPiVaaN8QtbgiFbwQmjKkhLdFPYSllYnhsPakWxEsvT
         7AxAHAOGulzd1Uezs+TWE/dMiD4e4to3V1rkqEQhC6vEJhTGjimwZLa65zypLzNjnBdU
         weFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687852698; x=1690444698;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x7/UbGp0E9Bxa4Bhgpxyx0OZdgH6N8kqPZt6xJxSjzc=;
        b=OW98sM2IQ8mtGYP8zzNtWi0ilVhUdWI0PeYRqScG9UW1MYT6nD3drEZbOWPGEw3rd8
         LZAAzM2WkhGF+bJoCQwPyvhv/J+LoUaliVX0tgnW7klKSPinQdpkTWPGQWHTYlFfguet
         /c8dWlq3KQXI7tJtaR1FFRbSuaVDsg4e5fVLNM3vDt5cMMSWgjXZN29jxz5qZutrKvtM
         0A9rGLubYlyJv7h2tHglAiDsLNLFGNBuTRKDGgw7Xmuv3dxsAQdd7st4yoMyBV6s5Kzk
         2I3bT40SKwYv0KEBmfoczngUcv9ldk180NtgAXQz+iiC19aB1LB/Dojmy1piqnCzeKxa
         pVKA==
X-Gm-Message-State: AC+VfDyuKXkeQA/tgSgYIf23Dl/1sk72hcfwUPxxgjM6cGWLS+q8d/tG
        hP/1fjyo6+e6aGf4VsDBxNrUKQZllrPxfeWYqEjacw==
X-Google-Smtp-Source: ACHHUZ4T/mzd1n8WwSghkYHzfB3fNK8Osd9PatO6HzHUrj6H8NK2aujs9IEhlhWWHP4pX4bdd92wkw==
X-Received: by 2002:a7b:c7c5:0:b0:3fa:9554:fb23 with SMTP id z5-20020a7bc7c5000000b003fa9554fb23mr3704596wmk.21.1687852698475;
        Tue, 27 Jun 2023 00:58:18 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:cec9:2929:7a19:7afa? ([2a01:e0a:982:cbb0:cec9:2929:7a19:7afa])
        by smtp.gmail.com with ESMTPSA id o16-20020a1c7510000000b003f9b155b148sm12832074wmc.34.2023.06.27.00.58.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 00:58:18 -0700 (PDT)
Message-ID: <286732aa-a4b4-a426-d59e-3c37520479a5@linaro.org>
Date:   Tue, 27 Jun 2023 09:58:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] dt-bindings: interrupt-controller: New binding for
 Meson-C3 SoCs
Content-Language: en-US
To:     Huqiang Qin <huqiang.qin@amlogic.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        tglx@linutronix.de, maz@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
References: <20230620070849.2059451-1-huqiang.qin@amlogic.com>
 <2e762290-46f1-0f0c-48b1-b399812f9ac1@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <2e762290-46f1-0f0c-48b1-b399812f9ac1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 20/06/2023 09:34, Krzysztof Kozlowski wrote:
> On 20/06/2023 09:08, Huqiang Qin wrote:
>> Update dt-binding document for GPIO interrupt controller of Meson-C3 SoCs
>>
>> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
>> ---
>>   .../bindings/interrupt-controller/amlogic,meson-gpio-intc.txt    | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>> index bde63f8f090e..fdea0488a98c 100644
>> --- a/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>> @@ -19,6 +19,7 @@ Required properties:
>>       "amlogic,meson-sm1-gpio-intc" for SM1 SoCs (S905D3, S905X3, S905Y3)
>>       "amlogic,meson-a1-gpio-intc" for A1 SoCs (A113L)
>>       "amlogic,meson-s4-gpio-intc" for S4 SoCs (S802X2, S905Y4, S805X2G, S905W2)
>> +    "amlogic,meson-c3-gpio-intc" for C3 SoCs (C308L, C302X)
> 
> Where is the user?
> 
> If there is going to be resend/new version:
> A nit, subject: drop second/last, redundant "New binding for". The
> "dt-bindings" prefix is already stating that these are bindings.
> "Add Meson C3 SoC interrupt controller"

And the bindings was updated to yaml and merged for v6.5, please rebase on:
https://lore.kernel.org/all/e06e9f26-cf55-5596-c799-d698e9d7b409@gmail.com/

Neil

> 
> Best regards,
> Krzysztof
> 

