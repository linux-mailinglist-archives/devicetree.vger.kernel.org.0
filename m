Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E1624BCE40
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 12:42:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237190AbiBTLmy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 06:42:54 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236495AbiBTLmx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 06:42:53 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2A822ACD
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 03:42:32 -0800 (PST)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7C7C73FDC7
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 11:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645357351;
        bh=o2BZTZUqbj/n7i9reyFZoNn64d0OySHScMS04/ePEFY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ShBnhGtgeR7uApu//0XzctU1DeMxqF7/BMv/kpESjk5JGIFNBKu7JEaAiA95I2476
         vmtzgcz7Ld2Zzq38VP3ssnFyougyposteil7PAz5YH/Z4wqzpGUU8oUN9lDgU1hb/I
         HOlHmURbNzOkDvvTmxaYDADwRVMYKEAal4YHWcRCMmZfLSHW2mzxp2Zqnwk1YwFZZO
         Exrw4mCX84LH09rQpXiesS5fqht44DJBxZIGororhcgYE3VBsAxcQUHgZOKb5gca8L
         xuht/g45bY+g+RxECCV5NScEq9NgcJDPqFuL+mUabS7wficVD8JyiTDIgFv38/fHxW
         641dTN+I4qENA==
Received: by mail-wr1-f72.google.com with SMTP id g11-20020adfa48b000000b001e57dfb3c38so5784460wrb.2
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 03:42:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=o2BZTZUqbj/n7i9reyFZoNn64d0OySHScMS04/ePEFY=;
        b=skwDaReJKm8gT1fwBVdUbdclXJU+aGBDjolgvJsuIPIbuV4iGH+anj8M5UCZv78YmJ
         tGDerrurwM4aNzlFOCAcnRVAVhrGw4P1PCDEdC8yWa1dU5gwQKWkQPuRNGfvQQGAmruw
         8OSIEGHMnDoc/MyconZVloyfhw3LVps7hKk36czZAd/X0TOsJIPzOPorfEBFlfhw9EGS
         BDrGe8NDVwJDQ5Zv80/HilwewXSSLpsHyFmAaL0JeClEyL4MxIE4eh4pS08TCz3IZPIi
         72IbRAZt9WXhjsuG0vAfDoZWj0QQ4yGnFSJJyVKyYiKpYp93D3ZPVgpQyWPSD85ApqnT
         cRBA==
X-Gm-Message-State: AOAM532z3BOI5lyp6BT7b52Zu8qPnCbrzeacGuJvbZ0jxadi0Q5q6F9P
        tR5zns0dX7yImmk2Y/HrYaP0b9Uf5QlFIOtgyhf4lqgcu+zvhs/rv0WIiQ11mJhwbvzkgHErncc
        d3A/sOG6UvE4mWWIAQBHzSw53Eg7cuOwQwGw4E38=
X-Received: by 2002:adf:c38e:0:b0:1e4:a236:14bf with SMTP id p14-20020adfc38e000000b001e4a23614bfmr12033884wrf.427.1645357350861;
        Sun, 20 Feb 2022 03:42:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwfsYo4GwUA1+Km9MI4HVMy2sCPrjyWlwi5jX5paio6IB4iiHrEaJoo204gv97MNCIvOELM6g==
X-Received: by 2002:adf:c38e:0:b0:1e4:a236:14bf with SMTP id p14-20020adfc38e000000b001e4a23614bfmr12033870wrf.427.1645357350618;
        Sun, 20 Feb 2022 03:42:30 -0800 (PST)
Received: from [192.168.0.117] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id z17sm4585962wmf.11.2022.02.20.03.42.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Feb 2022 03:42:30 -0800 (PST)
Message-ID: <836e3c76-0d4a-6592-5a9f-c664fb056d23@canonical.com>
Date:   Sun, 20 Feb 2022 12:42:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 2/3] dt-bindings:iio:amplifiers: add ada4250 doc
Content-Language: en-US
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Antoniu Miclaus <antoniu.miclaus@analog.com>, robh+dt@kernel.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220214094115.48548-1-antoniu.miclaus@analog.com>
 <20220214094115.48548-2-antoniu.miclaus@analog.com>
 <69cc2a64-c273-f2f6-b25b-73fc2248bb18@canonical.com>
 <20220220114816.50a57225@jic23-huawei>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220220114816.50a57225@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/02/2022 12:48, Jonathan Cameron wrote:
> On Sun, 20 Feb 2022 11:53:55 +0100
> Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com> wrote:
> 
>> On 14/02/2022 10:41, Antoniu Miclaus wrote:
>>> Add device tree bindings for the ADA4250 driver.  
>>
>> Please put the bindings patch as first in the series.
>>
>>>
>>> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
>>> ---
>>>  .../bindings/iio/amplifiers/adi,ada4250.yaml  | 48 +++++++++++++++++++
>>>  1 file changed, 48 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/iio/amplifiers/adi,ada4250.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/iio/amplifiers/adi,ada4250.yaml b/Documentation/devicetree/bindings/iio/amplifiers/adi,ada4250.yaml
>>> new file mode 100644
>>> index 000000000000..22283ab48903
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/iio/amplifiers/adi,ada4250.yaml
>>> @@ -0,0 +1,48 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/iio/amplifiers/adi,ada4250.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: ADA4250 Programmable Gain Instrumentation Amplifier
>>> +
>>> +maintainers:
>>> +  - Antoniu Miclaus <antoniu.miclaus@analog.com>
>>> +
>>> +description: |
>>> +  Precision Low Power, 110kHz, 26uA, Programmable Gain Instrumentation Amplifier.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - adi,ada4250
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  avdd-supply: true  
>>
>> Needs a description, not a true.
> 
> For a generic supply where all we really have is a name, I'm not sure
> a description adds anything.  Of course, if there is more info that can be provided
> a description is great to have.

Hm, OK, if the description would be "AVDD supply", then indeed does not
make much sense.

> 
>>
>> As Jonathan said, you should allow spi-max-frequency (so
>> spi-max-frequency: true).
>>
>> No io-channel-cells?
> 
> I'm not sure you'd have a consumer of this type of device, so
> it may not make sense...

OK.


Best regards,
Krzysztof
