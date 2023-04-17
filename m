Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0BCF66E41A8
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 09:55:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbjDQHzM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 03:55:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230430AbjDQHzK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 03:55:10 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC26A3C10
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:55:06 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id xd13so27831759ejb.4
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681718105; x=1684310105;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=04X9YyS+WRM9ueLmwKNRcEhK8aDEU6JqEoi8mu6JJQg=;
        b=f7bIgFtbo3iG9YB1+2z34kflvvNdStH3Uoi9DdZ0wi2w17qQ++kRvLpHhqTLCWvQZp
         +lFl70n+xuxmFbNFepSyM79s2+oP3pqShyI/Uf5xmel3Um0NXDVEGE1R/ZndMcexW/vo
         n7IsuvG5zeRGPpXN53gTG4aeEgtrZ9L918lca5Akqx1BokuzHMA/kwxPl1jVw/WMTYy/
         8lURqrqNVwbmT10S49PR8q+Opy0F8SJcBokglHu+lOyWQMvlT6j4eerebQY7KPzM12W4
         ic4tIN0IqpUekLtbvZqGUh0C8zN2m0Is7YzCdmO3zauc/ckVt2i0LvFx8h6KHRgeuNBD
         pBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681718105; x=1684310105;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=04X9YyS+WRM9ueLmwKNRcEhK8aDEU6JqEoi8mu6JJQg=;
        b=Bya59ZWa54IKPb6Uw4NTGIO7Iqu4LKmtANj5M3FjhhutKGyIY3I9pqZnLmhspCL2ve
         UmI9KoIshOjnIJx2Q4DSX/sTub1mdlPhRh163Gt8eW0iI26+bLpdJWLuoOchgXF1etME
         DsF8U5pxhHCWLnB1jdZnjKa7DkQt3Je87J+3c5FdWrMJ2JbD3z6pN2IOxAeFl4ZZcPg/
         ILHLX8lXv8ZCLKeMo25qIIRWZcvJVn5VxMaPSsA7sImYzqSYNah84Rqd9txlyLKrdG2u
         s4N/urew5xq7euSX70KcAQP/QaMkIypl2SuheVWSsLKX0GYpdG2gGUi3y5Q77RAD29rX
         UtMw==
X-Gm-Message-State: AAQBX9duNXoXaPUJOOTxvLT2iTrjUHH8Ab2ZU603uZeSq7PzwMGrmqFl
        kK79xDYAU0lkD0cGJC2ttzE7GQ==
X-Google-Smtp-Source: AKy350ap2ETRFcAZiOVu5L5wZXGxbHGbZstaUB32EeY+kKy5jiLzynUjnJpGw4e3u80X65R+Cbf8Dw==
X-Received: by 2002:a17:906:c455:b0:94f:17b7:5db3 with SMTP id ck21-20020a170906c45500b0094f17b75db3mr5709683ejb.20.1681718105164;
        Mon, 17 Apr 2023 00:55:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:b0ac:4d3b:966c:b33d? ([2a02:810d:15c0:828:b0ac:4d3b:966c:b33d])
        by smtp.gmail.com with ESMTPSA id r10-20020a17090638ca00b0094a44867e0asm6236255ejd.52.2023.04.17.00.55.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 00:55:04 -0700 (PDT)
Message-ID: <b46028dc-b539-384c-78aa-2f5e6f6516f2@linaro.org>
Date:   Mon, 17 Apr 2023 09:55:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 03/18] dt-bindings: interrupt-controller: qcom-pdc: add
 compatible for sa8775p
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>
References: <20230327125316.210812-1-brgl@bgdev.pl>
 <20230327125316.210812-4-brgl@bgdev.pl>
 <CAMRc=Mfe6gCM=Mz6Can6xsSsrjX-9T_aR2Yev+b57koky_az-A@mail.gmail.com>
 <CAMRc=Mfw+4Co8JPz51_E+DSawijO8EB6rMmFXEmM0e5F3Fg_8A@mail.gmail.com>
 <3877cb9e-9647-0acf-f705-d34fe2c731ff@linaro.org>
 <CAMRc=MeT4VLiLu5DJSXHqDdZv2gEoC-B7aPvoXVpc3SokQcrFg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMRc=MeT4VLiLu5DJSXHqDdZv2gEoC-B7aPvoXVpc3SokQcrFg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/04/2023 09:27, Bartosz Golaszewski wrote:
> On Sun, Apr 16, 2023 at 5:04 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 14/04/2023 11:33, Bartosz Golaszewski wrote:
>>> On Thu, Apr 6, 2023 at 4:10 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>>>>
>>>> On Mon, Mar 27, 2023 at 2:53 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
>>>>>
>>>>> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>>>>
>>>>> Add a compatible for the Power Domain Controller on SA8775p platforms.
>>>>> Increase the number of PDC pin mappings.
>>>>>
>>>>> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>>>>> Cc: Thomas Gleixner <tglx@linutronix.de>
>>>>> Cc: Marc Zyngier <maz@kernel.org>
>>>>> ---
>>>>>  .../devicetree/bindings/interrupt-controller/qcom,pdc.yaml     | 3 ++-
>>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
>>>>> index 94791e261c42..641ff32e4a6c 100644
>>>>> --- a/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
>>>>> +++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,pdc.yaml
>>>>> @@ -26,6 +26,7 @@ properties:
>>>>>    compatible:
>>>>>      items:
>>>>>        - enum:
>>>>> +          - qcom,sa8775p-pdc
>>>>>            - qcom,sc7180-pdc
>>>>>            - qcom,sc7280-pdc
>>>>>            - qcom,sc8280xp-pdc
>>>>> @@ -53,7 +54,7 @@ properties:
>>>>>    qcom,pdc-ranges:
>>>>>      $ref: /schemas/types.yaml#/definitions/uint32-matrix
>>>>>      minItems: 1
>>>>> -    maxItems: 32 # no hard limit
>>>>> +    maxItems: 38 # no hard limit
>>
>> I don't think the limit is correct. I still see warnings with this
>> patch. We already have 57 elements, so limit should be I guess 128 or
>> something.
>>
> 
> You mean for other platforms? This limit applies to sa8775p as the

I see errors on sa8775p.

> goal of the patch is to add its own PDC compatible. If other platforms
> have more interrupts then we need to fix it first with a separate
> commit IMO. I'll send out two patches for that.

Best regards,
Krzysztof

