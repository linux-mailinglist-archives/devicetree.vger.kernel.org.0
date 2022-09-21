Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CFEC5BF846
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:52:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231179AbiIUHwQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:52:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231191AbiIUHwK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:52:10 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C1D3857F6
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:51:58 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id f14so7850142lfg.5
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=W8fyHuYfi0Q6aBXCmXj6rdnVjpYrk25VdbxmX4VFatM=;
        b=SysiOLt+FD+NEFhxXvuwsZybGT8A8IVhuNkgOCwWrIJSpjV6MdII+umDEtn1vw0OM8
         J94PxMB6dR54k4HfWkAnnuTOZn7XTSkEtsXDT1QauX6kuYaJtdDJ/hpGCjhSJYQkRtVK
         wYisU8zT/KcmLTcDf0ytZ+zXzieZtPPQW69wSfWT+3q/YnnyjZRNew0lHx1qJq11dh3q
         u2hqMen2Jj+Jm4DXYixiVx8tRHbKlKxKTqGmQW5/x0Q6ZAFeTwSnRMxD9B404i+DqwmE
         YxLQJ9zcvfxIrKIV/athbR9MqWkBSjV4c8pxmVJk/tApboqt0aHDQKaoNQme2APUNv0C
         SIDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=W8fyHuYfi0Q6aBXCmXj6rdnVjpYrk25VdbxmX4VFatM=;
        b=0+jqzjDuT8RcGzLKEYIPla5yMBXcNyv8CwCZDBJ/K4ZrMtcxa4eMZRrkiguCKj5zCF
         QhKV0as9xK5yh1K9ZVqrWuT7SrFjk7xcwModF0Cpvn1MS3exslyu0UywEQJLZ+tE1YQJ
         tROQkYJPQAbaox+D8HAXmuxPwg2LhIpKuoQDrxhRbunE/tCEj0OSCKZ34eZ7w7/FnoJX
         ycZ4S1Qus6boz/n6F1baWYYoAObF/6Z4NU1RjEOyoKA41cZYMVGcdAPCfpTktcegiGqD
         dR8tnoZrsGt/b7Jaomcba1LjYMZbYqzBv5kEtCnvdjwN24bwKnczeqfhBKeYqCTY2R8V
         pywQ==
X-Gm-Message-State: ACrzQf3DW0BZkeOtJRLjOqDkQ9aso+uJrn1us+7bM4KhX+TEHdsDASBp
        D2pXwbIHKq4b/puzNzVy2lLt5Q==
X-Google-Smtp-Source: AMsMyM7oEfvhtCNQ+zY4/bdtbReuc8aihPSFbjaD6m4CzJGNAmEB4niQBNMrcwCGMhdXy5GSZksKVw==
X-Received: by 2002:a05:6512:e9f:b0:498:f1e5:26e5 with SMTP id bi31-20020a0565120e9f00b00498f1e526e5mr10521314lfb.517.1663746716887;
        Wed, 21 Sep 2022 00:51:56 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c16-20020ac25f70000000b0049d0a98f73csm322929lfc.154.2022.09.21.00.51.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:51:56 -0700 (PDT)
Message-ID: <658248bd-fe6f-04c5-fe41-bd3210d6b52f@linaro.org>
Date:   Wed, 21 Sep 2022 09:51:55 +0200
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
 <7436dcff-1648-e5e6-47e3-473ae5839e91@linaro.org>
 <CAMhs-H-TATfafSJzqXFi-Q=AYYWj-EY1tJs-9y7phR-wu4n1Tg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMhs-H-TATfafSJzqXFi-Q=AYYWj-EY1tJs-9y7phR-wu4n1Tg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 09:18, Sergio Paracuellos wrote:
> Hi Krzysztof,
> 
> On Wed, Sep 21, 2022 at 8:42 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 20/09/2022 07:51, Sergio Paracuellos wrote:
>>> Hi Krzysztof,
>>>
>>> On Mon, Sep 19, 2022 at 6:08 PM Krzysztof Kozlowski
>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>
>>>> On 19/09/2022 15:41, Sergio Paracuellos wrote:
>>>>> Hi Krzysztof,
>>>>>
>>>>> On Mon, Sep 19, 2022 at 2:48 PM Krzysztof Kozlowski
>>>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>>>
>>>>>> On 19/09/2022 14:29, Sergio Paracuellos wrote:
>>>>>>>>
>>>>>>>> else mips-hpt-frequency: false
>>>>>>>>
>>>>>>>>> +
>>>>>>>>> +required:
>>>>>>>>> +  - compatible
>>>>>>>>> +
>>>>>>>>> +additionalProperties: true
>>>>>>>>
>>>>>>>> and this is why you did not notice errors...
>>>>>>>
>>>>>>> Current arch/mips/boot/dts folder dts files are a mess for cpu nodes,
>>>>>>> so I set additionalProperties to true and only make required for
>>>>>>> 'compatible'. What should be the correct approach?
>>>>>>
>>>>>> This is okay, but it caused you did not notice errors...
>>>>>>
>>>>>>>
>>>>>>>>
>>>>>>>>> +
>>>>>>>>> +examples:
>>>>>>>>> +  - |
>>>>>>>>> +    cpus {
>>>>>>>>> +      #size-cells = <0>;
>>>>>>>>> +      #address-cells = <1>;
>>>>>>>>> +
>>>>>>>>> +      cpu@0 {
>>>>>>>>> +        device_type = "cpu";
>>>>>>>>> +        compatible = "mips,mips1004Kc";
>>>>>>>>> +        reg = <0>;
>>>>>>>>> +      };
>>>>>>>>> +
>>>>>>>>> +      cpu@1 {
>>>>>>>>> +        device_type = "cpu";
>>>>>>>>> +        compatible = "mips,mips1004Kc";
>>>>>>>>> +        reg = <1>;
>>>>>>>>> +      };
>>>>>>>>> +    };
>>>>>>>>> +
>>>>>>>>> +  - |
>>>>>>>>> +    // Example 2 (BMIPS CPU)
>>>>>>>>> +    cpus {
>>>>>>>>> +      #address-cells = <1>;
>>>>>>>>> +      #size-cells = <0>;
>>>>>>>>> +
>>>>>>>>> +      mips-hpt-frequency = <150000000>;
>>>>>>>>
>>>>>>>> Does not match your bindings. Are you sure you tested the patches?
>>>>>>>
>>>>>>> Yes I did:
>>>>>>>
>>>>>>> $ make dt_binding_check
>>>>>>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mips/cpus.yaml
>>>>>>>   LINT    Documentation/devicetree/bindings
>>>>>>>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
>>>>>>>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>>>>>>>   DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
>>>>>>>   DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
>>>>>>> ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb
>>>>>>>
>>>>>>> Can you please point me to a sample of how to make required in a
>>>>>>> parent node of cpu@X property 'mips-hpt-frequency' only for some
>>>>>>> compatible strings inside the node? What can this be properly
>>>>>>> expressed using schema??
>>>>>>> I was looking and testing different things for a while without success at all.
>>>>>>
>>>>>> You either define new schema for /cpus node (and match by name, define
>>>>>> children etc) or include it in schema for top-level properties. The
>>>>>> first is tricky, because the cpus node does not have compatible (like
>>>>>> nvidia,tegra194-ccplex.yaml).
>>>
>>> Ok so if I am understanding correctly having two schemas is a way to go:
>>>
>>> One for brcm,bmips-cpus.yaml (since there is no compatible, should
>>> this be a valid name for this?) containing something like:
>>>
>>> properties:
>>>   $nodename:
>>>      const: cpus
>>>
>>>      mips-hpt-frequency:
>>>         $ref: /schemas/types.yaml#/definitions/uint32
>>>         description: |
>>>            This is common to all CPUs in the system so it lives
>>>             under the "cpus" node.
>>>
>>> additionalProperties: true
>>
>> Almost. Such schema will allow mips-hpt-frequency in each cpus node,
>> everywhere. On every board and architecture.
> 
> Yes, that is what I thought since no compatible to match this is
> included in current node.
> 
>>
>> You need to limit it per top-level compatibles.
> 
> Any sample of how to do this? So this bmips SoCs use compatible
> strings that are described in:
> https://elixir.bootlin.com/linux/v6.0-rc5/source/Documentation/devicetree/bindings/mips/brcm/soc.txt

Could be something like this:
https://lore.kernel.org/all/20220830065744.161163-2-krzysztof.kozlowski@linaro.org/
which is a part of top-level schema or add a new one. The new one will
duplicate the compatibles and parts from that one there, so maybe better
to keep it in top-level?

I am not sure, any suggestions are welcome. Also platform/architecture
maintainers might have their preference to organize it.

Anyway, you did not Cc the actual platform maintainers (Rafał and Hauke).

> 
> Can the top level compatible string be used in some way to filter this
> easily from this new 'brcm,bmips-cpus.yaml'

Yes. If schema matches the top level compatible, then in allOf:if:then
you can add restriction to disallow it for other variants:

For example:
https://elixir.bootlin.com/linux/v5.19/source/Documentation/devicetree/bindings/example-schema.yaml#L212

https://elixir.bootlin.com/linux/v5.19/source/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml#L152


Best regards,
Krzysztof
