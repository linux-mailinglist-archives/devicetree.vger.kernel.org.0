Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E17BF6335EB
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 08:35:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232024AbiKVHf5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 02:35:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231967AbiKVHfy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 02:35:54 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B245317C2
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 23:35:52 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id l8so16972713ljh.13
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 23:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1u0dEaaWhrqQvE4qsk7X1OxJmmJb8lbRjc7uGUVx+S0=;
        b=pHeIeuCN2C4RNRtqL98JitckwDlrmsvuU1QF8rnDOadvaURejGXeZ9OhMuEiuea4NC
         r/d5VzzE3xmSlPRpCGUz3j+7f+jKKMc2Ht/KZoYUetVeL6Pfgk42l1ALsAxG3aeeEngt
         ruaZDQZ70Ptju4mvS/4Vm/nMTZaV8fUPtHC2+ekNh8EnzzcS7yHC5ThYsKE9I8d5JMoo
         V5KlWmFgg4gFy5KrIgEMOUULHhZ4RkHjdvLpYNBtRJYSlXpHfh4x9wjSugR7VJ/eSApY
         4Tg+WDH1fde0Qzsus4p+Jd4LnaYVsjRxJFWAYyX4NTGVrRJMbF12OrhIgjTVdFkU9jn3
         Srbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1u0dEaaWhrqQvE4qsk7X1OxJmmJb8lbRjc7uGUVx+S0=;
        b=haNk8aOeDI9SqDxzJ737SOsd/50AO/ZmK7rdxzGrDf6JBW0086JIAL3ts5N3+4viGu
         N1GA2FwxLk7Zg5f0GELixHopKqY47RV0h7kvG9D8sXKyK9j3rM0R/NvzU54dgSZDu3Aa
         mgZcFZlTL42kp1jfXNEDlrMMazEQ+QEXylCKAtlI0OLMAnYOPb8vxncplV0K73PIxj08
         44+PUpo4knvu6KyFdq2HqwiRObPvt3lrPig7AfjCidDjpQlI5hnQUPUtVZpRUcYVZtJR
         BmcNFd+O+ZCEne65+vrV26zSC+ISt9vZyCRhdCb/teGtGDDGPXU5hn6lVSEDd+htW86y
         7HiQ==
X-Gm-Message-State: ANoB5plB4OW/unNHxzqCnfW8Odq5NFRfIBVHgHwPeR4ueyxxfn2PWmo2
        iYxToyXRt3wC6yh8Wj1G9uppUQ==
X-Google-Smtp-Source: AA0mqf6E3yNpVsm4tAzpPODPKj0VPd4PaUzV0wZr7Z970RIAb1aIibK6y+UUpzrh8KT5qG7Kfq+A4A==
X-Received: by 2002:a2e:97cf:0:b0:277:515b:3dae with SMTP id m15-20020a2e97cf000000b00277515b3daemr7150516ljj.487.1669102550603;
        Mon, 21 Nov 2022 23:35:50 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v3-20020a056512348300b004b4b5da5f80sm2354795lfr.219.2022.11.21.23.35.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 23:35:49 -0800 (PST)
Message-ID: <d0f3ce4f-5676-f5e1-f04f-dd069679b2d3@linaro.org>
Date:   Tue, 22 Nov 2022 08:35:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/3] dt-bindings: timer: sifive,clint: add compatible for
 OpenC906
To:     Icenowy Zheng <uwu@icenowy.me>, Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Samuel Holland <samuel@sholland.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20221121041757.418645-1-uwu@icenowy.me>
 <20221121041757.418645-3-uwu@icenowy.me>
 <98005150-83a7-5439-0db1-d93d459c3809@linaro.org>
 <b924d37d716fa8b1fd93102b1d51fac221f43d59.camel@icenowy.me>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b924d37d716fa8b1fd93102b1d51fac221f43d59.camel@icenowy.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/11/2022 08:18, Icenowy Zheng wrote:
> 在 2022-11-21星期一的 11:06 +0100，Krzysztof Kozlowski写道：
>> On 21/11/2022 05:17, Icenowy Zheng wrote:
>>> T-Head OpenC906 is a open-source-licensed fixed-configuration of
>>> C906,
>>> which is now public and able to be integrated.
>>>
>>> Add a compatible for the CLINT shipped as part of OpenC906, which
>>> should
>>> just be ordinary C9xx CLINT.
>>>
>>> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
>>> ---
>>>  Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>>> b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>>> index aada6957216c..86703e995e31 100644
>>> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>>> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
>>> @@ -35,6 +35,7 @@ properties:
>>>            - const: sifive,clint0
>>>        - items:
>>>            - enum:
>>> +              - thead,openc906-clint
>>>                - allwinner,sun20i-d1-clint
>>
>> Add entries sorted alphabetically. This should be squashed with
>> previous
>> patch.
> 
> I make it a seperated patch because I think it's a questionable
> approach.
> 
> If you think it's okay, I will just squash it and put it as the second
> patch in the next iteration, with adding openc906-plic as the first
> one.

What is a questionable approach? Why commit msg is not saying this?

Best regards,
Krzysztof

