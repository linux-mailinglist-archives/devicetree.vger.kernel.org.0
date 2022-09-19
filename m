Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAEDA5BCC22
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 14:48:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230133AbiISMsS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 08:48:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230030AbiISMsR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 08:48:17 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B67132A73F
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:48:16 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id h3so25310116lja.1
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 05:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=LqAonb1iVEyO4GS/rjrld6vknc9s6ZUU5ymSIsUQUfc=;
        b=pVO+FYO2ebVzc5p20iiNy2UKxnDIdUdJbyVyPARm/UMBBOWmwzg2ZwVBoR1uMoO+yx
         HKjp2RtZ8guVebqY73tlR4hmwzkTn2jET3NQOK9P84oBhib0Ffy+4y3KJ1W3kouP1o/L
         AcOsJ0kvnESDVuU+mX2Cik0NeXjwJHpBX/FKwZJ6B+lIGpeVBEIjnpqrcGEs6X7ZhNo/
         3zI+sUV3rBnX9hNrwd+0PRD47amy7EvaVdhMJw7J6hXMaKORnqFT4axWbNxtFT91gn26
         sxGzGYMLkXEl8A/ttODSO7dZyCbyYK4NF1Xw7Nf9Rt/Y1ZcVpxkzP5RVW71jGFGpe6K/
         FDdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=LqAonb1iVEyO4GS/rjrld6vknc9s6ZUU5ymSIsUQUfc=;
        b=N6aEQfhTd77WWPLP4EkuKtkjIEXFQmyQPeePeSTpIPX2FUVE1XfFa+cMprHDa8tNNw
         O0zbiSMZD9cuWlZOT55SrW9Y89/ZMJkGack9CLq+TDQGZbNXRNv26Qmcrgn8fUN0uMin
         Sn+IXls5ThyKPdKBkZXDdly7sbqo13NUM0+fGKsPS8+lAu+hSijlWf4rufEbjRZmYOTn
         X+n02bwlo53dMoKhIqn9Xya6Cy3pAUoDem9yMVjQiVu8FJiGUmMXuv39cEizHEMrqcQ3
         EnOL9XOgRAAH85yVslr9v3VVYmur06clD2L4Zh96KhhmtGNrnch3I4m5Ssgf9nkEC5Er
         fVdQ==
X-Gm-Message-State: ACrzQf3ZXfyPhKluGgVCDddV8MJmk8Knpf3ry4Pu642/6xw9aHNk8J7R
        kXgL9JLE3Q8K7OSOUrHAsEh4wA==
X-Google-Smtp-Source: AMsMyM5gygCwjC5rxV145YW6ag5O31HSNksJOAGobIfnCJhnWPQ6WD+95RCk0eGc7ZALChMh8bHi4Q==
X-Received: by 2002:a2e:97c5:0:b0:26c:54ba:4cc8 with SMTP id m5-20020a2e97c5000000b0026c54ba4cc8mr591630ljj.219.1663591695092;
        Mon, 19 Sep 2022 05:48:15 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w9-20020ac254a9000000b00497b198987bsm5176229lfk.26.2022.09.19.05.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 05:48:14 -0700 (PDT)
Message-ID: <71b50383-0fc3-f834-11e0-8fbc17c123d0@linaro.org>
Date:   Mon, 19 Sep 2022 14:48:13 +0200
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
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMhs-H92i6vFJWCBrpaQnQzA3-+6_ROb9_+zD4yBMB1FLJoKeQ@mail.gmail.com>
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

On 19/09/2022 14:29, Sergio Paracuellos wrote:
>>
>> else mips-hpt-frequency: false
>>
>>> +
>>> +required:
>>> +  - compatible
>>> +
>>> +additionalProperties: true
>>
>> and this is why you did not notice errors...
> 
> Current arch/mips/boot/dts folder dts files are a mess for cpu nodes,
> so I set additionalProperties to true and only make required for
> 'compatible'. What should be the correct approach?

This is okay, but it caused you did not notice errors...

> 
>>
>>> +
>>> +examples:
>>> +  - |
>>> +    cpus {
>>> +      #size-cells = <0>;
>>> +      #address-cells = <1>;
>>> +
>>> +      cpu@0 {
>>> +        device_type = "cpu";
>>> +        compatible = "mips,mips1004Kc";
>>> +        reg = <0>;
>>> +      };
>>> +
>>> +      cpu@1 {
>>> +        device_type = "cpu";
>>> +        compatible = "mips,mips1004Kc";
>>> +        reg = <1>;
>>> +      };
>>> +    };
>>> +
>>> +  - |
>>> +    // Example 2 (BMIPS CPU)
>>> +    cpus {
>>> +      #address-cells = <1>;
>>> +      #size-cells = <0>;
>>> +
>>> +      mips-hpt-frequency = <150000000>;
>>
>> Does not match your bindings. Are you sure you tested the patches?
> 
> Yes I did:
> 
> $ make dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mips/cpus.yaml
>   LINT    Documentation/devicetree/bindings
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   DTEX    Documentation/devicetree/bindings/mips/cpus.example.dts
>   DTC     Documentation/devicetree/bindings/mips/cpus.example.dtb
> ' CHECK   Documentation/devicetree/bindings/mips/cpus.example.dtb
> 
> Can you please point me to a sample of how to make required in a
> parent node of cpu@X property 'mips-hpt-frequency' only for some
> compatible strings inside the node? What can this be properly
> expressed using schema??
> I was looking and testing different things for a while without success at all.

You either define new schema for /cpus node (and match by name, define
children etc) or include it in schema for top-level properties. The
first is tricky, because the cpus node does not have compatible (like
nvidia,tegra194-ccplex.yaml).

The second should work, but then it's a bit cluttered (top-level mixed
with cpus).

Best regards,
Krzysztof
