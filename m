Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE6F176691F
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 11:40:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234382AbjG1JkD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 05:40:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234839AbjG1JkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 05:40:00 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD50519B5
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 02:39:56 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so6660056a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 02:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690537195; x=1691141995;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YzOjDa/NiFfXAukG8EL/eyfE/m/LqMSufMn6fl5Fd5Q=;
        b=aELCmPUKOnOtKtdIdrm1ftrjdJY25iLwulcwpTSbyw3xoxyRfGgMUQLyqC/+aYAePg
         UvMPnLwyBdbseFNQ1JAylEiuzCN7CKvfl8ZkzseqD97oBAsgz04T6tTGgRB5gHsCsUQj
         P+dKNM6UY2calrABEpr42Ers0QQc/9Nh+0pO+h66YrLdJsZwnq7HELwOktlD3FcDth6P
         yTFQqrCIkJPWlUw5/b+qKo3REf2s+h+i/dyqmM1KtBAIhmhZfBW5k1cP5JuYaUO12oz/
         ILPMZsnUrJafM7hxQQHnh8972Qh64Od7CzZTM0AfVHQ0x2DcoZ7aXXbPL0BSD+kwXldV
         uwRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690537195; x=1691141995;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YzOjDa/NiFfXAukG8EL/eyfE/m/LqMSufMn6fl5Fd5Q=;
        b=Q5GlWXN86WHnXX+LRdZ/Ey/rk5ddU9kHXwljSPAhqP88QUnuMZRvc5rujSRHTzqNjx
         ZA6Bhq+cY8VMrNK/MZ4o6jrxmrh/FVSXZWbponQ+RoEoPquTZC3HIG30kU9JgcuBLwdv
         059kmBFGcunxybEU11m+ayUqYFjAzFnG5bigRcx0dW9DqzQkME1+iv3IGlHeHCNxgJeK
         SM56dNhG2onFsPFzgn1S6Pv3SMURPJL6uwgN+g49mLdcgl46AioemKxBZslntR+7e3H5
         HSKILaGT6HDG0mtaqTI4i6tx0eyhx7LuKKWrL1XfJGcGjVlCcBb5DxpYXEdABY5lAusy
         GxxA==
X-Gm-Message-State: ABy/qLYA+InyXWwL5WgdGYR5CqRY5xYR7HAeo4rTSnmqBal2obICL6a8
        hRgOdD3wuUwGVM6aJea+fERulQ==
X-Google-Smtp-Source: APBJJlEzVY3nftGhMOjUKhGUDDP2LVoqOpi/EgmGWeNfXear+Hqdo+hio8an3wet4513dTrvaHivKQ==
X-Received: by 2002:a17:907:784d:b0:99b:50ea:2f96 with SMTP id lb13-20020a170907784d00b0099b50ea2f96mr1995415ejc.12.1690537195124;
        Fri, 28 Jul 2023 02:39:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id si15-20020a170906cecf00b00992e265495csm1860758ejb.212.2023.07.28.02.39.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 02:39:54 -0700 (PDT)
Message-ID: <f7df407e-1deb-f667-912c-81415fffcbfd@linaro.org>
Date:   Fri, 28 Jul 2023 11:39:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/3] dt-bindings: riscv: sifive: Add SiFive Private L2
 cache controller
Content-Language: en-US
To:     Eric Lin <eric.lin@sifive.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        zong.li@sifive.com, greentime.hu@sifive.com,
        vincent.chen@sifive.com
References: <20230720135125.21240-1-eric.lin@sifive.com>
 <20230720135125.21240-2-eric.lin@sifive.com>
 <cbf0a8fd-3479-1684-fe90-81f2159804ef@linaro.org>
 <CAPqJEFr5h+5+F4TdNuRMaWsrmeedbfGgbgd9wh8sUUQsj2Pw-A@mail.gmail.com>
 <be748338-987b-d474-d040-82af7cfb5f01@linaro.org>
 <CAPqJEFpYOgaEiSJ4HJwxMtpu1MZeUg9=tARTWa7hwTkjsQ3UAA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAPqJEFpYOgaEiSJ4HJwxMtpu1MZeUg9=tARTWa7hwTkjsQ3UAA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2023 11:04, Eric Lin wrote:
> On Fri, Jul 28, 2023 at 2:58 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 28/07/2023 08:01, Eric Lin wrote:
>>> Hi Krzysztof,
>>>
>>> On Fri, Jul 21, 2023 at 4:35 PM Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 20/07/2023 15:51, Eric Lin wrote:
>>>>> This add YAML DT binding documentation for SiFive Private L2
>>>>> cache controller
>>>>>
>>>>> Signed-off-by: Eric Lin <eric.lin@sifive.com>
>>>>> Reviewed-by: Zong Li <zong.li@sifive.com>
>>>>> Reviewed-by: Nick Hu <nick.hu@sifive.com>
>>>>
>>>>
>>>> ...
>>>>
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    items:
>>>>> +      - const: sifive,pl2cache1
>>>>
>>>> I still have doubts that it is not used in any SoC. This is what you
>>>> said last time: "is not part of any SoC."
>>>> If not part of any SoC, then where is it? Why are you adding it to the
>>>> kernel?
>>>>
>>>
>>> Sorry for the late reply. I didn't describe it clearly last time.
>>> Currently, we have two hardware versions of pl2cache: pl2cache0 and pl2cache1.
>>> The pl2cache0 is used in unmatched board SoC. The pl2cache1 is
>>> utilized in our internal FPGA platform for evaluation; it's our core
>>> IP.
>>
>> And why do you add bindings for some internal FPGA IP block which does
>> not interface with any SW?
>>
> 
> Hi Krzysztof,
> The pl2cache has mmio interface for SW. Thanks.

Then did you mean that FPGA represented some model of your SoC? If so,
what are other bindings for that FPGA components?

Best regards,
Krzysztof

