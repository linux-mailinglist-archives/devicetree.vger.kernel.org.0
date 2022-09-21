Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53F415BF688
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 08:42:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbiIUGmh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 02:42:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229992AbiIUGmf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 02:42:35 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C5D780EBC
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:42:30 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id s10so5779820ljp.5
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=MjIcNOYEaqnTNd3Vfl/6SM9O1Q7tJ/enPgdgY7sB+eY=;
        b=CymI2Dq5RcOVimUI28vSZ+7pZczQKvHq7eBoZVXEjymas4hDp5JAocerp2vdZWNWCW
         jsIQEWLDyuWMwP0GQvTsp9RV2Pw8dmNSy8km+/f5eKecEET/Bg/ELcrZ/4czOMLWHFkz
         r0iMWyTEQBIinMFQkc0ZcpbhdBoZRvs/f2DrhdYTMvyRc/TdJ8TZVBdsd7RfbkNdBDXh
         sAC9SB29UymXC1wt/tRxYv/dPN9KLDegXHKm7ATYqikLL49HLSpBwoSc4gSSYDouU6IF
         fyf09cF3VjJ7TqTal0n+sqEpONv9l9KnbUx9AsN99ItDT0rwN/j2XIvt2bgwFrtnTyon
         McMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=MjIcNOYEaqnTNd3Vfl/6SM9O1Q7tJ/enPgdgY7sB+eY=;
        b=LfJzFpWAO/0xGJmHssnTSBzX6FySxfJ0TintM3x0WZTLBPwjcfytj+KrSY97xaePuj
         rW5psLvAM+0pDIzIz+SNEzZKYifHsSVtC554wzKt7+n3deftb4iGIqb3hucHqvxzuMGA
         YL1xLZSZy8PPDk8ey5DqBj444uAZycE5vRx76iN6eRg1No2Pc//JOCTgNa95Vf/e4NBH
         Db2KdJZW2KLnDxb1tO3zG4NuB62LbIXcXa8Dq1bDW93RnALMeR47ETGXLAwVBS6z/PQj
         cuBYWwYztcbB+aw7RC4rLZb0hT3Z+YG00E07ftjqsBMz6dYMcU58amFW2jpPbkaIzsfF
         kOZA==
X-Gm-Message-State: ACrzQf2xjnc9wgrHMpDwKAHPgPSCCCMbhOdBsAQF9r4o8oWHqHbIFrv6
        PTJkxABi4rbEIo1z1+Ae8PzWOhHPGMXx1A==
X-Google-Smtp-Source: AMsMyM63ADMb8qziTMt5zgrxs4c+IJ8zrlMMT/QKkYFGn4iPwXYFXr71wADcTKXstdDcMVwLQCCMcA==
X-Received: by 2002:a05:651c:1504:b0:26c:6331:3463 with SMTP id e4-20020a05651c150400b0026c63313463mr1223003ljf.30.1663742548783;
        Tue, 20 Sep 2022 23:42:28 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020ac25f4b000000b00494978b0caesm294173lfz.276.2022.09.20.23.42.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 23:42:28 -0700 (PDT)
Message-ID: <7436dcff-1648-e5e6-47e3-473ae5839e91@linaro.org>
Date:   Wed, 21 Sep 2022 08:42:27 +0200
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
 <c04461c0-e16a-6dcc-4fc0-f6c80263bd71@linaro.org>
 <CAMhs-H9HX4gmZn-ySWZZdhDiWJPazado=Vp6D1PpyxvV85ACsw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMhs-H9HX4gmZn-ySWZZdhDiWJPazado=Vp6D1PpyxvV85ACsw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 07:51, Sergio Paracuellos wrote:
> Hi Krzysztof,
> 
> On Mon, Sep 19, 2022 at 6:08 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 19/09/2022 15:41, Sergio Paracuellos wrote:
>>> Hi Krzysztof,
>>>
>>> On Mon, Sep 19, 2022 at 2:48 PM Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 19/09/2022 14:29, Sergio Paracuellos wrote:
>>>>>>
>>>>>> else mips-hpt-frequency: false
>>>>>>
>>>>>>> +
>>>>>>> +required:
>>>>>>> +  - compatible
>>>>>>> +
>>>>>>> +additionalProperties: true
>>>>>>
>>>>>> and this is why you did not notice errors...
>>>>>
>>>>> Current arch/mips/boot/dts folder dts files are a mess for cpu nodes,
>>>>> so I set additionalProperties to true and only make required for
>>>>> 'compatible'. What should be the correct approach?
>>>>
>>>> This is okay, but it caused you did not notice errors...
>>>>
>>>>>
>>>>>>
>>>>>>> +
>>>>>>> +examples:
>>>>>>> +  - |
>>>>>>> +    cpus {
>>>>>>> +      #size-cells = <0>;
>>>>>>> +      #address-cells = <1>;
>>>>>>> +
>>>>>>> +      cpu@0 {
>>>>>>> +        device_type = "cpu";
>>>>>>> +        compatible = "mips,mips1004Kc";
>>>>>>> +        reg = <0>;
>>>>>>> +      };
>>>>>>> +
>>>>>>> +      cpu@1 {
>>>>>>> +        device_type = "cpu";
>>>>>>> +        compatible = "mips,mips1004Kc";
>>>>>>> +        reg = <1>;
>>>>>>> +      };
>>>>>>> +    };
>>>>>>> +
>>>>>>> +  - |
>>>>>>> +    // Example 2 (BMIPS CPU)
>>>>>>> +    cpus {
>>>>>>> +      #address-cells = <1>;
>>>>>>> +      #size-cells = <0>;
>>>>>>> +
>>>>>>> +      mips-hpt-frequency = <150000000>;
>>>>>>
>>>>>> Does not match your bindings. Are you sure you tested the patches?
>>>>>
>>>>> Yes I did:
>>>>>
>>>>> $ make dt_binding_check
>>>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mips/cpus.yaml
>>>>>   LINT    Documentation/devicetree/bindings
>>>>>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
>>>>>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>>>>>   DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
>>>>>   DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
>>>>> ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb
>>>>>
>>>>> Can you please point me to a sample of how to make required in a
>>>>> parent node of cpu@X property 'mips-hpt-frequency' only for some
>>>>> compatible strings inside the node? What can this be properly
>>>>> expressed using schema??
>>>>> I was looking and testing different things for a while without success at all.
>>>>
>>>> You either define new schema for /cpus node (and match by name, define
>>>> children etc) or include it in schema for top-level properties. The
>>>> first is tricky, because the cpus node does not have compatible (like
>>>> nvidia,tegra194-ccplex.yaml).
> 
> Ok so if I am understanding correctly having two schemas is a way to go:
> 
> One for brcm,bmips-cpus.yaml (since there is no compatible, should
> this be a valid name for this?) containing something like:
> 
> properties:
>   $nodename:
>      const: cpus
> 
>      mips-hpt-frequency:
>         $ref: /schemas/types.yaml#/definitions/uint32
>         description: |
>            This is common to all CPUs in the system so it lives
>             under the "cpus" node.
> 
> additionalProperties: true

Almost. Such schema will allow mips-hpt-frequency in each cpus node,
everywhere. On every board and architecture.

You need to limit it per top-level compatibles.

You can also wait a week and maybe Rob will have some ideas.

> 
> examples:
>   - |
>      cpus {
>        #address-cells = <1>;
>        #size-cells = <0>;
> 
>         mips-hpt-frequency = <150000000>;
> 
>         cpu@0 {
>           compatible = "brcm,bmips4350";
>           device_type = "cpu";
>            reg = <0>;
>         };
> 
>          cpu@1 {
>            compatible = "brcm,bmips4350";
>            device_type = "cpu";
>            reg = <1>;
>         };
>   };
> 
> And the other as 'cpus.yaml' having:

Yes.

Best regards,
Krzysztof
