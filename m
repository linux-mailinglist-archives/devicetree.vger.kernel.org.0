Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D870645A88
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 14:17:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbiLGNRG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 08:17:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbiLGNRF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 08:17:05 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D52EC578E5
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 05:17:03 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id s10so6843828ljg.1
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 05:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QJj/BV9+roCYMepXfcW3k2KLwpTwBT5zfzBg+gwa4MQ=;
        b=ES3NhZSnGtAafBm1DQAH6YLXGhhY48N6b7bC3+1/N+nv8QuwyD3FeAQq/Bu2Juu0sS
         RIjr0E5Mraz8CsGdDIda4GgJADpbC6yKrn2gbQsDgejeFj93RWHWeXUde8dFL3ufUAUq
         mvid46rS6Bpx4x2okNLFhLI2mWD8oqQ+aLPb3khf3wmXvznPKjxN8eUqBTN5oQAJ1mBn
         vh8cToPgY570pI1Z0HUPmEpDeq8hhxj6PMm/KEZiho8/TnV0xoZAT17cTuIY+T/SS4TQ
         ZvOlP+3v/DoniioqWGMhU9H7J+/R+elTIICQlcfWGqnYhF5eDvHbIprJT0d+NhJ/EEEj
         8HUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QJj/BV9+roCYMepXfcW3k2KLwpTwBT5zfzBg+gwa4MQ=;
        b=7joEwcPNftaGtGTypZvdryaDmLKEnQgWAqxfTFvuWxI0JwPVaJ54B1cReVdTSqot/a
         oO7Mh0d/a3z40aOIXjSTRZXWSwuNotcKFYNP5TFah5iUUSSXjARhwcY7WDGD66pq86sD
         z+H4fluAxpnPnF6Xfd7Af+Wx9JCtl06ZuFLbFhu0rnujOwL8ekCb+XAMpYs7o/asM/pV
         WwURhPrB/tFQ7/02R/cBoiz9uWwxZHPIjy/RMsuFt0tllJZiyNyJoNYxEPmg51AoCQ6j
         btei+4nLrKlI9uQC/OcxpWH2E8QDFsgq1CHYj5c/H8AZXB0hU1yuHl2VrI/kOt96C+fu
         lxlQ==
X-Gm-Message-State: ANoB5pmXMEFhPbrI9zq+VJREl50rlCACXSH29pFUBWq7YhzYoHClBvUM
        e+44g+zU8kTnTRSST1TeCmKujg==
X-Google-Smtp-Source: AA0mqf6G5pWNd4H5JfUbCf9FsbhhD2sl0e/zzKG2x1U+MEU+OaM+VgE+Xcp0spPgvuprlhTM/6ciXA==
X-Received: by 2002:a05:651c:1952:b0:26f:dfb2:9b9c with SMTP id bs18-20020a05651c195200b0026fdfb29b9cmr27009629ljb.461.1670419022197;
        Wed, 07 Dec 2022 05:17:02 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j19-20020a056512345300b004b549ad99adsm1906986lfr.304.2022.12.07.05.17.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Dec 2022 05:17:01 -0800 (PST)
Message-ID: <94a01bb6-5ef6-2825-0e82-701af46531d7@linaro.org>
Date:   Wed, 7 Dec 2022 14:17:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v11 5/6] dt-bindings: media: wave5: add yaml devicetree
 bindings
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sebastian Fricke <sebastian.fricke@collabora.com>,
        linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     kernel@collabora.com, bob.beckett@collabora.com,
        hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.com,
        nas.chung@chipsnmedia.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221207121350.66217-1-sebastian.fricke@collabora.com>
 <20221207121350.66217-6-sebastian.fricke@collabora.com>
 <48d60bd0-4de1-4a5e-eca1-1f8a9303cce0@linaro.org>
In-Reply-To: <48d60bd0-4de1-4a5e-eca1-1f8a9303cce0@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/12/2022 13:31, Krzysztof Kozlowski wrote:
> On 07/12/2022 13:13, Sebastian Fricke wrote:
>> From: Robert Beckett <bob.beckett@collabora.com>
>>
>> Add bindings for the wave5 chips&media codec driver
>>
>> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> 
> What's happening with this patch? Where is the changelog? Why it is v11
> and first time I see it? And why it is v11 with basic mistakes and lack
> of testing?!? I would assume that v11 was already seen and tested...
> 
> 
>> ---
>>  .../devicetree/bindings/cnm,wave5.yml         | 72 +++++++++++++++++++
>>  1 file changed, 72 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/cnm,wave5.yml
> 
> Wrong directory. It wasn't here at all before, so I am really confused
> how this could happen.
> 
> Subject: drop redundant pieces: yaml, devicetree and bindings.
> 
> 
>>
>> diff --git a/Documentation/devicetree/bindings/cnm,wave5.yml b/Documentation/devicetree/bindings/cnm,wave5.yml
>> new file mode 100644
>> index 000000000000..01dddebb162e
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/cnm,wave5.yml
>> @@ -0,0 +1,72 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/wave5.yaml#
> 
> You clearly did not test them before sending.
> 
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Chips&Media Wave 5 Series multi-standard codec IP
>> +
>> +maintainers:
>> +  - Nas Chung <nas.chung@chipsnmedia.com>
>> +  - Robert Beckett <bob.beckett@collabora.com>
>> +  - Sebastian Fricke <sebastian.fricke@collabora.com>
>> +
>> +description: |-
>> +  The Chips&Media WAVE codec IP is a multi format video encoder/decoder
>> +
>> +properties:
>> +  compatible:
>> +    anyOf:
> 
> Please start from example-schema or other recently approved bindings. No
> anyOf.
> 
>> +      - items:
> 
> No items...
> 
>> +        - enum:
>> +            - cnm,cm511-vpu
>> +            - cnm,cm517-vpu
>> +            - cnm,cm521-vpu
>> +            - cnm,cm521c-vpu
>> +            - cnm,cm521c-dual-vpu
> 
> What's the difference between this and one above?
> 
>> +            - cnm,cm521e1-vpu
>> +            - cnm,cm537-vpu

One more question - why "vpu" suffixes?

Best regards,
Krzysztof

