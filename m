Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2FD6571CEA
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 16:38:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233322AbiGLOiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 10:38:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233308AbiGLOix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 10:38:53 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33AEF2497B
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:38:50 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id t25so14287000lfg.7
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=huTEGAFVkUuLnPe7zlQTUEd1ERAPnwddYmK15bhGekY=;
        b=ag8YJbuOWEhteK2cJ46pDnj3LCF/3OJ7wK4r60IyJ6DR4qWNpKzQiTeRlUhJFBSlKP
         oLWAIJNFcmWM8DX+i3UyVexiQUKZbdV3Nc24j0QGGWY1ZAzYfPDDbqAVEmi4+Nd9KV2v
         Z+p6Qy2QQlBLoio/WdgFlaUZ3/LEKT19GnHQGoz5cWOitg3O9C4M10Pp4+runumoqyGA
         YszqAaD9MMvH7VrnCG+bxzEExwbuLXeW3VW0OlKKMqFj/vwBxhLUgEkRR+NU6sjZ6NNO
         ETl/RMh/G98PPaMhS8Qxh8CabNnVys8UMTG1RbrFElmq3eddziHA9B0ihh+ztfzTMVdN
         KseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=huTEGAFVkUuLnPe7zlQTUEd1ERAPnwddYmK15bhGekY=;
        b=nxymPA6OfyBRTNnO103H/wrbKi1F9zmJ+nHvPtaEMeDs13d1hsmSPSOpZaZL4+zCo/
         X0F7+VH/1bpo8FNkKRV3D2UxX0HtbdBAC2K1e+fSsGgAbQkX1DhCx6XQ4VXEsOR03B51
         23aZs4V830TJsriQDwm8Uf5Kt5E/F3JXdJQ3vXmCmWRrxgufBsgi65jRgfKsxuyvEJGI
         +/knlMzKy4AvDsG0C0l5pfCcMw/5BJ6MWZmEVulur39CHeoblP2acrALXCF/DPES0NDD
         +3i4sza12sr6xonQDPECO+FB+Mx+qBbTVdr2iV+endLZS86ZBuvnx8XLmzD9misRdhK3
         /EyQ==
X-Gm-Message-State: AJIora98kOJUiyfDIWSjQVnU0AsHtzDC8WLfgdyzLxjRHcji0vW1OWJc
        JX8/rz1WuinL+HdNjHY7lPANXA==
X-Google-Smtp-Source: AGRyM1uINKiydu0AmHab6XGKT+JULz6yTizb0Tl8UvJv+D/XQiQIj0VrUOmMRUUDdv+3IhEiqqGv5g==
X-Received: by 2002:a05:6512:e88:b0:489:d187:9b3c with SMTP id bi8-20020a0565120e8800b00489d1879b3cmr9399671lfb.669.1657636729161;
        Tue, 12 Jul 2022 07:38:49 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id p27-20020a056512329b00b00482bb824214sm1912276lfe.221.2022.07.12.07.38.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 07:38:48 -0700 (PDT)
Message-ID: <edfbfc45-173a-c9ac-6b72-6d644162e54e@linaro.org>
Date:   Tue, 12 Jul 2022 16:38:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 2/5] dt-bindings: mmc: sdhci-msm: constrain reg-names
 perp variants
Content-Language: en-US
To:     Doug Anderson <dianders@chromium.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
References: <20220711082940.39539-1-krzysztof.kozlowski@linaro.org>
 <20220711082940.39539-3-krzysztof.kozlowski@linaro.org>
 <CAD=FV=WUCPzzZHAPqoz-vhmcVxzYDxkKQs=+1tLZvsQjWe4q3Q@mail.gmail.com>
 <f8744ff8-15a0-bf31-c49f-b1bb35ba5cdd@linaro.org>
 <CAD=FV=X2ZfwwDO_hSSN35ObfvBbBbPjMoSB4GvS7m0yJieNg3Q@mail.gmail.com>
 <629ede41-326b-9c84-4bb8-2f7e695ca928@linaro.org>
 <CAD=FV=W7dypM9=uqaY650TGfiV4EaZR9EBH_3svQefyNv-oE7Q@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD=FV=W7dypM9=uqaY650TGfiV4EaZR9EBH_3svQefyNv-oE7Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2022 16:29, Doug Anderson wrote:
> Hi,
> 
> On Tue, Jul 12, 2022 at 12:02 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 11/07/2022 17:11, Doug Anderson wrote:
>>> Hi,
>>>
>>> On Mon, Jul 11, 2022 at 7:53 AM Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 11/07/2022 16:52, Doug Anderson wrote:
>>>>> Hi
>>>>>
>>>>> On Mon, Jul 11, 2022 at 1:29 AM Krzysztof Kozlowski
>>>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>>>
>>>>>> The entries in arrays must have fixed order, so the bindings and Linux
>>>>>> driver expecting various combinations of 'reg' addresses was never
>>>>>> actually conforming to guidelines.
>>>>>>
>>>>>> The 'core' reg entry is valid only for SDCC v4 and lower, so disallow it
>>>>>> in SDCC v5.  SDCC v4 supports CQE and ICE, so allow them, even though
>>>>>> the qcom,sdhci-msm-v4 compatible is used also for earlier SoCs with SDCC
>>>>>> v2 or v3, so it is not entirely accurate.
>>>>>>
>>>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>>
>>>>>> ---
>>>>>>
>>>>>> Changes since v1:
>>>>>> 1. Rework the patch based on Doug's feedback.
>>>>>> ---
>>>>>>  .../devicetree/bindings/mmc/sdhci-msm.yaml    | 61 ++++++++++++-------
>>>>>>  1 file changed, 38 insertions(+), 23 deletions(-)
>>>>>
>>>>> In the ${SUBJECT} I'm not sure what a "perp variant" is. Is that a
>>>>> typo or just a phrase I'm not aware of?
>>>>
>>>> Should be:
>>>> "per variants"
>>>>
>>>>>
>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>>>> index fc6e5221985a..2f0fdd65e908 100644
>>>>>> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
>>>>>> @@ -49,33 +49,11 @@ properties:
>>>>>>
>>>>>>    reg:
>>>>>>      minItems: 1
>>>>>> -    items:
>>>>>> -      - description: Host controller register map
>>>>>> -      - description: SD Core register map
>>>>>> -      - description: CQE register map
>>>>>> -      - description: Inline Crypto Engine register map
>>>>>> +    maxItems: 4
>>>>>>
>>>>>>    reg-names:
>>>>>>      minItems: 1
>>>>>>      maxItems: 4
>>>>>> -    oneOf:
>>>>>> -      - items:
>>>>>> -          - const: hc
>>>>>> -      - items:
>>>>>> -          - const: hc
>>>>>> -          - const: core
>>>>>> -      - items:
>>>>>> -          - const: hc
>>>>>> -          - const: cqhci
>>>>>> -      - items:
>>>>>> -          - const: hc
>>>>>> -          - const: cqhci
>>>>>> -          - const: ice
>>>>>> -      - items:
>>>>>> -          - const: hc
>>>>>> -          - const: core
>>>>>> -          - const: cqhci
>>>>>> -          - const: ice
>>>>>>
>>>>>>    clocks:
>>>>>>      minItems: 3
>>>>>> @@ -177,6 +155,43 @@ required:
>>>>>>  allOf:
>>>>>>    - $ref: mmc-controller.yaml#
>>>>>>
>>>>>> +  - if:
>>>>>> +      properties:
>>>>>> +        compatible:
>>>>>> +          contains:
>>>>>> +            enum:
>>>>>> +              - qcom,sdhci-msm-v4
>>>>>> +    then:
>>>>>> +      properties:
>>>>>> +        reg:
>>>>>> +          minItems: 2
>>>>>> +          items:
>>>>>> +            - description: Host controller register map
>>>>>> +            - description: SD Core register map
>>>>>> +            - description: CQE register map
>>>>>> +            - description: Inline Crypto Engine register map
>>>>>> +        reg-names:
>>>>>> +          minItems: 2
>>>>>> +          items:
>>>>>> +            - const: hc
>>>>>> +            - const: core
>>>>>> +            - const: cqhci
>>>>>> +            - const: ice
>>>>>> +    else:
>>>>>> +      properties:
>>>>>> +        reg:
>>>>>> +          minItems: 1
>>>>>> +          items:
>>>>>> +            - description: Host controller register map
>>>>>> +            - description: CQE register map
>>>>>> +            - description: Inline Crypto Engine register map
>>>>>> +        reg-names:
>>>>>> +          minItems: 1
>>>>>> +          items:
>>>>>> +            - const: hc
>>>>>> +            - const: cqhci
>>>>>> +            - const: ice
>>>>>
>>>>> Do you need to set "maxItems" here? If you don't then will it inherit
>>>>> the maxItems of 4 from above?
>>>>
>>>> No, items determine the size instead.
>>>
>>> Can you just remove the "maxItems" from above then? Does it buy us anything?
>>
>> There is no maxItems directly here...
> 
> Sorry, I mean above in the schema. After your patch the schema is effectively:
> 
> reg:
>   minItems: 1
>   maxItems: 4
> reg-names:
>   minItems: 1
>   maxItems: 4
> 
> ...
> 
> allOf:
>   - if:
>       blah-blah-blah
>     then:
>       properties:
>         reg:
>           minItems: 2
>           items:
>             - description: ...
>             - description: ...
>             - description: ...
>             - description: ...
>         reg-names:
>           blah-blah-blah
>     else:
>       blah-blah-blah
> 
> I'm asking about the maxItems _above_, AKA in the section:
> 
> reg:
>   minItems: 1
>   maxItems: 4
> reg-names:
>   minItems: 1
>   maxItems: 4
> 
> Can we remove the "maxItems: 4" from the above and have it just be:
> 
> reg:
>   minItems: 1
> reg-names:
>   minItems: 1
> 


Yes, we can, but preferred is to have it because it makes the broad
constraints easily visible. You don't need to check each if:else branch
to find upper bounds or check if maxItems are defined at all. This also
matches pattern used in bindings without allOf:if:then - each time you
are expected to see array types constraint in the list of properties.

Best regards,
Krzysztof
