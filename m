Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FF7F3EFCEC
	for <lists+devicetree@lfdr.de>; Wed, 18 Aug 2021 08:37:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238722AbhHRGhv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 02:37:51 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:49760
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S237981AbhHRGht (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Aug 2021 02:37:49 -0400
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 61FFD40C9D
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 06:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629268633;
        bh=PDa4Y8NlWc63JAE2k/U+xWg+/z+LRamng9vRqXzkmdA=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=O5qfdxrU+YEAN1H/kaW95KTuRh0SWXBt36mKYRu1gp9Y07hRP3DKbowhA0e1DBZe2
         n7izFlfmzo9Fa9eCcfp7XOA+X2zcwBIUrKTPCrLK1cs94/MYflRNh20bajwfn21h1p
         +mww7uArHx/+FhSnUeGGqUPKYy0CIu/Wa89HiL6D5jrJ5QWuk4+zY8hAWX4YyAtMN0
         x2LO7lPg3cb9hgX8ispVUdYE7hImUDFvbcHwg/RJkSJBMecgGAPlB4J+R25k75pJqg
         OBURc773FKng3djOx0/tprxv6gOgJzBgAVHEW1cLeXytS3AEtnzPQm3LSCzXH1Ihob
         ihbiwEnqNakhQ==
Received: by mail-ed1-f69.google.com with SMTP id p2-20020a50c9420000b02903a12bbba1ebso521204edh.6
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 23:37:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PDa4Y8NlWc63JAE2k/U+xWg+/z+LRamng9vRqXzkmdA=;
        b=Aa5kez6CL9Ypp3YHx5hcScvHSHU0ThyPR39DisqGwiIBTxdNd/IImIxYUYwa5840bo
         /HkQEBhTQ1Nr9xTyOG9h80V9ggabxF6f9wBoxfOBpyUIoAPJHk0RhMpDYAEilCcnDYhP
         2isKlQMm4Xuyi2cEhpRQs26BDSXoaWb6EgitjcUq00QVXDJiaL4lwBuanEVwfwh+VMc2
         BnGYd4l7Ty+lMKOyqwSVu8H6Q6GHOgMvNfCcqipt3k3ILLhXXr0kYhKiXElpBKhobYQK
         r5gPrCu4jD+2R+AwnepqJa65VS4sj2mFm0hJ5nLr+sHiK0nx9KGGnDc+Y5iRL39KKNk9
         br9g==
X-Gm-Message-State: AOAM533Fa+q+natbFnkm+zhPxfRDFrCil03sDeKLiZl7jWGNizg8oFO+
        KBwoyw6M16Vk53XyPQ76B2VXPYe6ScGl9m3HjM3zibt3n7LZuPdzzw/aOo+aj5WPt5bbjN62eeF
        kJKqg4ajKixNene7HlfxxjoAMJuOv3KjhlinnxUE=
X-Received: by 2002:a05:6402:754:: with SMTP id p20mr8667976edy.356.1629268632268;
        Tue, 17 Aug 2021 23:37:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxfg/SuyOcY+aciBZsxSSWL3QxT/qTGK2gv6mTxMsNgzYjn9QNyBuTRbPIgXG6+QZzg4sd8bg==
X-Received: by 2002:a05:6402:754:: with SMTP id p20mr8667953edy.356.1629268632054;
        Tue, 17 Aug 2021 23:37:12 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.42.198])
        by smtp.gmail.com with ESMTPSA id gl2sm1571286ejb.110.2021.08.17.23.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:37:11 -0700 (PDT)
Subject: Re: [PATCH 2/2] dt-bindings: rng: convert Samsung Exynos TRNG to
 dtschema
To:     Lukasz Stelmach <l.stelmach@samsung.com>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-crypto@vger.kernel.org
References: <da43d243-35b0-2cc6-f8a0-a5d02c997301@canonical.com>
 <CGME20210817221734eucas1p2e4a0aa41406137b90e49230371b92ac6@eucas1p2.samsung.com>
 <dleftjtujnemx7.fsf%l.stelmach@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <1960d499-1509-ad42-94d3-f668501fb30b@canonical.com>
Date:   Wed, 18 Aug 2021 08:37:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <dleftjtujnemx7.fsf%l.stelmach@samsung.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2021 00:17, Lukasz Stelmach wrote:
> It was <2021-08-17 wto 16:07>, when Krzysztof Kozlowski wrote:
>> On 17/08/2021 14:34, Lukasz Stelmach wrote:
>>> It was <2021-08-17 wto 12:05>, when Krzysztof Kozlowski wrote:
>>>> On 17/08/2021 11:55, Lukasz Stelmach wrote:
>>>>> It was <2021-08-11 śro 10:43>, when Krzysztof Kozlowski wrote:
>>>>>> Convert Samsung Exynos SoC True Random Number Generator bindings to DT
>>>>>> schema format using json-schema.
>>>>>>
>>>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>>>>> ---
>>>>>>  .../bindings/rng/samsung,exynos5250-trng.txt  | 17 -------
>>>>>>  .../bindings/rng/samsung,exynos5250-trng.yaml | 44 +++++++++++++++++++
>>>>>>  MAINTAINERS                                   |  2 +-
>>>>>>  3 files changed, 45 insertions(+), 18 deletions(-)
>>>>>>  delete mode 100644 Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt
>>>>>>  create mode 100644 Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
>>>>>>
>>>>>> diff --git
>>>>>> a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt
>>>>>> b/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt
>>>>>> deleted file mode 100644
>>>>>> index 5a613a4ec780..000000000000
>>>>>> --- a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.txt
>>>>>> +++ /dev/null
>>>>>> @@ -1,17 +0,0 @@
>>>>>> -Exynos True Random Number Generator
>>>>>> -
>>>>>> -Required properties:
>>>>>> -
>>>>>> -- compatible  : Should be "samsung,exynos5250-trng".
>>>>>> -- reg         : Specifies base physical address and size of the registers map.
>>>>>> -- clocks      : Phandle to clock-controller plus clock-specifier pair.
>>>>>> -- clock-names : "secss" as a clock name.
>>>>>> -
>>>>>> -Example:
>>>>>> -
>>>>>> -	rng@10830600 {
>>>>>> -		compatible = "samsung,exynos5250-trng";
>>>>>> -		reg = <0x10830600 0x100>;
>>>>>> -		clocks = <&clock CLK_SSS>;
>>>>>> -		clock-names = "secss";
>>>>>> -	};
>>>>>> diff --git
>>>>>> a/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
>>>>>> b/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
>>>>>> new file mode 100644
>>>>>> index 000000000000..a50c34d5d199
>>>>>> --- /dev/null
>>>>>> +++ b/Documentation/devicetree/bindings/rng/samsung,exynos5250-trng.yaml
>>>>>> @@ -0,0 +1,44 @@
>>>>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>>>>> +%YAML 1.2
>>>>>> +---
>>>>>> +$id:
>>>>>> https://protect2.fireeye.com/v1/url?k=f38ca35b-ac179a0d-f38d2814-0cc47a31ce52-1faa1ecb65482b8a&q=1&e=8b3490f9-a5fc-4da0-b2ee-7b0aec781403&u=http%3A%2F%2Fdevicetree.org%2Fschemas%2Frng%2Fsamsung%2Cexynos5250-trng.yaml%23
>>>>>> +$schema:
>>>>>> https://protect2.fireeye.com/v1/url?k=9409519d-cb9268cb-9408dad2-0cc47a31ce52-12394c4409905980&q=1&e=8b3490f9-a5fc-4da0-b2ee-7b0aec781403&u=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23
>>>>>> +
>>>>>> +title: Samsung Exynos SoC True Random Number Generator
>>>>>> +
>>>>>> +maintainers:
>>>>>> +  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>>>>> +  - Łukasz Stelmach <l.stelmach@samsung.com>
>>>>>> +
>>>>>> +properties:
>>>>>> +  compatible:
>>>>>> +    const: samsung,exynos5250-trng
>>>>>> +
>>>>>> +  clocks:
>>>>>> +    maxItems: 1
>>>>>
>>>>> How about copying description from above into the description: property?
>>>>
>>>> But what to copy? There is no description except generic clock bindings.
>>>>
>>>
>>> The description that "was" in the txt file.
>>
>> But there was no description of fields except copy&paste of the core
>> schema. Do you describe C code like:
>>
>> ...
>> /* unsigned int is a integer number greater or equal 0 */
>> unsigned int i;
>> ...
> 
> I believe having descriptions for reg and clocks
> 
>>>>>> -- reg         : Specifies base physical address and size of the registers map.
>>>>>> -- clocks      : Phandle to clock-controller plus clock-specifier pair.
> 
> right next to properties' formal definitions is beneficial for anyone
> browsing the YAML file. If you think otherwise, oh well, I am fine with
> that.

Useful descriptions would be beneficial. Descriptions which are copy of
schema, therefore equal to explaining unsigned int, are not beneficial.
Make the document just unnecessarily bigger, are irrelevant and hide
actual important information. One of the principles is to keep things
simple. Duplicating description from schema into specific bindings is
rather the opposite of such approach.


Best regards,
Krzysztof
