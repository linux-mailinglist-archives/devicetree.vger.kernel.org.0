Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB0F85BD1DD
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 18:08:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbiISQIM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 12:08:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbiISQIL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 12:08:11 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1BE760DE
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:08:09 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id a8so47642550lff.13
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 09:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=HSB/B/g/VYr82RJWI+Z6LEt8n4afHbzsCgSAp+rZ5Q4=;
        b=RurmZF0UBQpsf51Oe3Ut2zQzpCDXr/fXq6lLm7sRtBjJOPHoXhLPF6fRZ8hNTsruSq
         cZL1ZixVn8mH9CXR0WKYbqZviAPxyB5HB/JQkBvxpjXaNLthm2GuRFa9FqlxasBIoIBA
         K6BQJpzvnddlVLdRX3VvDJ1LQsu+53srLUak+iOAqk72JfZHFh6ZHFGlkluxQY64IoKI
         ArWMZmIN73poVs1W6PnAezWLlZ55OomgG/35OS8ohHeAo+Z8Tmmd1XzGQwrReqRwxOpa
         gr5jQrx1lO9q343z/A2uo6EGmW8HiGlFR87KOVrtKjYmXA13swMELtVEfm6XKXlROVPH
         XVQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=HSB/B/g/VYr82RJWI+Z6LEt8n4afHbzsCgSAp+rZ5Q4=;
        b=PdGo71JlKAE7NgkD3PG82SfFMcSAA4ITOWzQD39ToPwXm2YZgWpukrooO+kw4zINKM
         JVdTt5QQpUZ/xJbUFvBzhqK1NTyeLsQHeV2gBlISvUhFSzvFZcOIFCyoBKScO4iKvEFz
         MU0l24Tra4n9UNnV/IMmWTUrCAhjhgO0s/w/H7PHvu4e6wpktWdOZ7a5k8Vh7uxzux+K
         13hB4IufiST59g+8vZHcUsPxDhHW8buPoZ7oo0g+FCPPhWeTnW3XwwqMJ97YFAoL9KeH
         n6OAXrgPjmIDrhfMKnyzXNXutKNHyLNa4e2Gi7Xdhyrg5Il6UkwaKQE0fow+qLljJNoo
         vkZw==
X-Gm-Message-State: ACrzQf26WtoJey+9IBDJaqz9ws67N063LopQtuvtklN31HMB+nk6uV6G
        D9TIUQUc8sWRbJbUucRFQpNu6Q==
X-Google-Smtp-Source: AMsMyM6LPwE0FvDdc9OwIXQDL/6wasLY+75q7B1MpODDBOjtx87UMeeQS2Fh9wbNEknxEgrqUOOllg==
X-Received: by 2002:a05:6512:2803:b0:49f:979c:cc53 with SMTP id cf3-20020a056512280300b0049f979ccc53mr2814547lfb.76.1663603688145;
        Mon, 19 Sep 2022 09:08:08 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o1-20020a2ebd81000000b0026c0158b87csm4471861ljq.29.2022.09.19.09.08.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 09:08:07 -0700 (PDT)
Message-ID: <c04461c0-e16a-6dcc-4fc0-f6c80263bd71@linaro.org>
Date:   Mon, 19 Sep 2022 18:08:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] dt-bindings: mips: add CPU bindings for MIPS
 architecture
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
References: <20220917041136.526446-1-sergio.paracuellos@gmail.com>
 <285f80ef-5f5c-e68d-b514-a3e3341841c5@linaro.org>
 <CAMhs-H92i6vFJWCBrpaQnQzA3-+6_ROb9_+zD4yBMB1FLJoKeQ@mail.gmail.com>
 <71b50383-0fc3-f834-11e0-8fbc17c123d0@linaro.org>
 <CAMhs-H-JokHX+XNNE0TQf78ORQbNz2fTd9hfgmv_s6OPT=Wh0w@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMhs-H-JokHX+XNNE0TQf78ORQbNz2fTd9hfgmv_s6OPT=Wh0w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 15:41, Sergio Paracuellos wrote:
> Hi Krzysztof,
> 
> On Mon, Sep 19, 2022 at 2:48 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 19/09/2022 14:29, Sergio Paracuellos wrote:
>>>>
>>>> else mips-hpt-frequency: false
>>>>
>>>>> +
>>>>> +required:
>>>>> +  - compatible
>>>>> +
>>>>> +additionalProperties: true
>>>>
>>>> and this is why you did not notice errors...
>>>
>>> Current arch/mips/boot/dts folder dts files are a mess for cpu nodes,
>>> so I set additionalProperties to true and only make required for
>>> 'compatible'. What should be the correct approach?
>>
>> This is okay, but it caused you did not notice errors...
>>
>>>
>>>>
>>>>> +
>>>>> +examples:
>>>>> +  - |
>>>>> +    cpus {
>>>>> +      #size-cells = <0>;
>>>>> +      #address-cells = <1>;
>>>>> +
>>>>> +      cpu@0 {
>>>>> +        device_type = "cpu";
>>>>> +        compatible = "mips,mips1004Kc";
>>>>> +        reg = <0>;
>>>>> +      };
>>>>> +
>>>>> +      cpu@1 {
>>>>> +        device_type = "cpu";
>>>>> +        compatible = "mips,mips1004Kc";
>>>>> +        reg = <1>;
>>>>> +      };
>>>>> +    };
>>>>> +
>>>>> +  - |
>>>>> +    // Example 2 (BMIPS CPU)
>>>>> +    cpus {
>>>>> +      #address-cells = <1>;
>>>>> +      #size-cells = <0>;
>>>>> +
>>>>> +      mips-hpt-frequency = <150000000>;
>>>>
>>>> Does not match your bindings. Are you sure you tested the patches?
>>>
>>> Yes I did:
>>>
>>> $ make dt_binding_check
>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mips/cpus.yaml
>>>   LINT    Documentation/devicetree/bindings
>>>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
>>>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>>>   DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
>>>   DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
>>> ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb
>>>
>>> Can you please point me to a sample of how to make required in a
>>> parent node of cpu@X property 'mips-hpt-frequency' only for some
>>> compatible strings inside the node? What can this be properly
>>> expressed using schema??
>>> I was looking and testing different things for a while without success at all.
>>
>> You either define new schema for /cpus node (and match by name, define
>> children etc) or include it in schema for top-level properties. The
>> first is tricky, because the cpus node does not have compatible (like
>> nvidia,tegra194-ccplex.yaml).
>>
>> The second should work, but then it's a bit cluttered (top-level mixed
>> with cpus).
> 
> I don't know if I am understanding you but maybe it is because my
> explanation about the requirement was not good at all. So let me
> explain a bit better.
> 
> This is the normal way of definition of cpus for BMIPS:

I know, I checked the DTS.

> 
> cpus {
>       #address-cells = <1>;
>       #size-cells = <0>;
> 
>       mips-hpt-frequency = <150000000>;
> 
>       cpu@0 {
>         compatible = "brcm,bmips4350";
>         device_type = "cpu";
>         reg = <0>;
>       };
> 
>       cpu@1 {
>         compatible = "brcm,bmips4350";
>         device_type = "cpu";
>         reg = <1>;
>       };
>     };
> 
> What I need to say in schema is that 'mips-hpt-frequency' must be only
> present if cpu@0 and cpu@1 nodes contain a compatible matching
> brcm,bmips*. In the same cpu@0 or cpu@1 node
> the following below will be sufficient. How can I express the same but
> referring that 'mips-hpt-frequency' must be on the parent node?

As I said you had two ways. In your current patch, I think you cannot.

> Because as it is below the validator complains because
> 'mips-hpt-frequency'
> is not present in cpu@0 and cpu@1 nodes:
> 
> allOf:
>    - if:
>         properties:
>            compatible:
>                enum:
>                    - brcm,bmips3300
>                    - brcm,bmips4350
>                    - brcm,bmips4380
>                    - brcm,bmips5000
>                    - brcm,bmips5200
>      then:
>         required:
>            - mips-hpt-frequency
>      else:
>         properties:
>            mips-hpt-frequency: false
> 

Best regards,
Krzysztof
