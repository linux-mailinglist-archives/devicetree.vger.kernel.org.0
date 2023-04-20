Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F2256E92D6
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 13:33:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229671AbjDTLdh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 07:33:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234664AbjDTLdS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 07:33:18 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1C7C93FA
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 04:32:29 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-63b5fca48bcso827132b3a.0
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 04:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1681990343; x=1684582343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HMCXTZULd3UlhCtkJk94ecZGiSt1tfzfhgqyHrECe4Q=;
        b=EPqPiOsausUJtDsGDC8KVJUUo2+d4ij8gmWFjYPN6iRtTIjnVF4EjikWPTGE/T1HfV
         pg9lAZGH1fBwRcBERwlDimtEN8o47TLX2/8MqT7Ew/NFdEvmoLumrigfrlLb70M0RAFB
         UABzbuM7nGSuWOhrtNVCVRtwQyiXNCj0CspEfQalZrLBEBjbTUEVcsy8NprgkqTy+R/+
         W6yKhoV5LS61qpc8A2YBKxH9i2Le3cnuSRxEEgeR1g4eFGZhSECyvED/odwAr9QtX/Re
         kHzVQshNn1Wp/C0DPCym0dvQ3OD5D661+Sl5XCyfQ6tis5SlWT77neW1TOmQBY1yEqLm
         Pluw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681990343; x=1684582343;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HMCXTZULd3UlhCtkJk94ecZGiSt1tfzfhgqyHrECe4Q=;
        b=Kt3IZwc3PHcI6xYuyW4KlO0fMkQ8MMID1OwL+BotKD/dXddgvbLx3eNDk5ZhbDL6oP
         SYAYLgBw1R76PRfiYxjYQHmYDopDfQqw7fwLeWdYk+ONnIlyklezyZxXbdo8QkWJRAaa
         NCyAWu45hRSigwvERTQQNMiPNT3QTexe5ZnGq7oZcHuhf1qcwSwFVAZ0HsRJrOQ6ZCuu
         hl4ZAkgRLH/vA3w7JZq/dTdzLWBljGUjnTRUJkshpzM1BHqWGgL3kjZmdJZ3a+RcXITX
         PhYvC3dGZEtASPLAX335IEd/CoceSt9HnTo8m8iLjJ4AMsVtnyZbPZ8mxxuOPBfRwuW0
         0NqA==
X-Gm-Message-State: AAQBX9ckW7LSoCQMOpUfW2WhTfIRpjjAH0cq7BvpMtDf/AaMsMwQZi2H
        mj1J5PrUuFteMXAiu8r9npn/9w==
X-Google-Smtp-Source: AKy350aAxrY3Jf8r58BzDRw0kLskEDbdgh8O0NPLyIqnIV/cnoAc2yIGQqeqt69iq9so+lDb1tl8rg==
X-Received: by 2002:a17:902:f803:b0:1a6:a988:b858 with SMTP id ix3-20020a170902f80300b001a6a988b858mr1052355plb.58.1681990343070;
        Thu, 20 Apr 2023 04:32:23 -0700 (PDT)
Received: from ?IPV6:2405:201:d02f:d855:461d:14be:2cce:b776? ([2405:201:d02f:d855:461d:14be:2cce:b776])
        by smtp.gmail.com with ESMTPSA id p5-20020a170902bd0500b001a687c505e9sm994033pls.237.2023.04.20.04.32.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 04:32:22 -0700 (PDT)
Message-ID: <6866ce7e-28a3-2526-8f2e-99470070191f@9elements.com>
Date:   Thu, 20 Apr 2023 17:02:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 1/2] dt-bindings: regulator: Add dt property
Content-Language: en-US
To:     Zev Weiss <zev@bewilderbeest.net>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230418145051.4192963-1-Naresh.Solanki@9elements.com>
 <0da2b301-8780-48c0-a5dc-326474011e8d@hatter.bewilderbeest.net>
 <9f425205-c395-648a-3f42-a776c7580a8f@9elements.com>
 <048bf9f4-92ee-4aca-a46f-dbe512129ffe@hatter.bewilderbeest.net>
From:   Naresh Solanki <naresh.solanki@9elements.com>
In-Reply-To: <048bf9f4-92ee-4aca-a46f-dbe512129ffe@hatter.bewilderbeest.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Zev,

On 20-04-2023 04:11 pm, Zev Weiss wrote:
> On Thu, Apr 20, 2023 at 01:22:30AM PDT, Naresh Solanki wrote:
>> Hi Zev,
>>
>> On 20-04-2023 05:31 am, Zev Weiss wrote:
>>> On Tue, Apr 18, 2023 at 07:50:50AM PDT, Naresh Solanki wrote:
>>>> Add DT property regulator-supplies.
>>>> This enables us to couple one or more regulator output to gether. This
>>>> is use in case of Single connector having 2 or more supplies.
>>>>
>>>> Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
>>>> ---
>>>> .../bindings/regulator/regulator-output.yaml         | 12 +++++++++---
>>>> 1 file changed, 9 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git 
>>>> a/Documentation/devicetree/bindings/regulator/regulator-output.yaml 
>>>> b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
>>>> index 078b37a1a71a..17f683d3c1f3 100644
>>>> --- a/Documentation/devicetree/bindings/regulator/regulator-output.yaml
>>>> +++ b/Documentation/devicetree/bindings/regulator/regulator-output.yaml
>>>> @@ -21,13 +21,19 @@ properties:
>>>>   compatible:
>>>>     const: regulator-output
>>>>
>>>> -  vout-supply:
>>>> +  regulator-supplies:
>>>>     description:
>>>> -      Phandle of the regulator supplying the output.
>>>> +      Specifies the name of the output supply provided by the 
>>>> regulator.
>>>> +      Defaults to "vout".
>>>> +    default: "vout"
>>>> +
>>>
>>> Was this meant to be specified as a string-array to allow providing 
>>> multiple names?
>> Yes. This is string-array.
> 
> Okay -- in that case I think it should include
> 
>    $ref: /schemas/types.yaml#/definitions/string-array
Ack
> 
>>>
>>>> +patternProperties:
>>>> +  ".*-supply":
>>>> +    description:
>>>> +      Specified the phandle for various supplies
>>>>
>>>> required:
>>>>   - compatible
>>>> -  - vout-supply
>>>>
>>>> additionalProperties: false
>>>>
>>>>
>>>
>>> I think it would be nice to also update the examples to show what a 
>>> multi-supply instance would look like.
>> Ack. Will do that.
>>>
>>> A slightly more descriptive subject line would also be good -- "Add 
>>> dt property" is a bit vague.
>> Suggestion ?
>> How about like 'Allow multiple supplies' or 'Add support for multiple 
>> supplies'
> 
> Sure, both of those sound fine to me.
Thanks :)
> 
>>>
>>>> base-commit: c55470f8b0616b0adb758077dbae9b19c5aac005
>>>> -- 
>>>> 2.39.1
>>>>
>> Regards,
>> Naresh
Regards,
Naresh
