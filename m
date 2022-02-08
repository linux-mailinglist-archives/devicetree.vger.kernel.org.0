Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6894A4AD43D
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 10:02:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352759AbiBHJBw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 04:01:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234099AbiBHJBv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 04:01:51 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25462C03FECA
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 01:01:50 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E38563F1C6
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 09:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644310908;
        bh=6X3Cd7CM1Wrr8f+z4sbuv+5q5Ur8HKLsDoDl3wbmedI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=k8O+TItiPu2d7/LzwgVtOj4Lpo7mUd0O3GQ1AJ/BHN1fzGI2ITZM75pRcrwAjCgXy
         UfkQa5xDi/BiRQGqNRDYsKDni5h3Fj1DfzT8be8LTQVoqSkwbgavtT72qvmQQ3h6gX
         PzVpTcOXV2fJjNP4ksFUgrb5B2HVfot2iOsWiCsQEEzDIyJ1apNaeQiFYMg5yBwdOI
         YN57mP2xF6LyNaMivp2NZIIlcKJ9qSNuivJpjqXAwtTjj9zjACv65x7zHA/iyQohfm
         geykPhQ38xELTb7GPVH1RUoWARzZFQyn8gSvAg/T6GLrVJl9CKyElCnXk3b/BE0cL2
         WT5Hjc/EVfaUA==
Received: by mail-ed1-f71.google.com with SMTP id f6-20020a0564021e8600b0040f662b99ffso3386440edf.7
        for <devicetree@vger.kernel.org>; Tue, 08 Feb 2022 01:01:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=6X3Cd7CM1Wrr8f+z4sbuv+5q5Ur8HKLsDoDl3wbmedI=;
        b=YTpipMtIdBIy38S9wb+yhy/k9Kz/vYhg4/H20MwbuBQG/hAcncpw4NjbqW7MaE/rej
         1QsOk0DlXmtbjIWiP3ycFn398JMP1+U+wRGHuZklbtO2+6LlLC2DuvOKzso4FhtKp0i0
         8eQXpwJyTJx83xkOn5+MhYZefymwgnhfOQuyzjY5y/0aiJ0mKeWlhTGOSKFQYwzqYIb8
         Xub8gsD1CNNyluobZuDZVrm12HlLiPFZtd7UWRTiisu6I4EZJQ6MGrJudiSbEMN5YGWo
         yCoVN8/488CB89L3k+/XVW8WCVF2XvjcyMEywH5Wr8Gk/fASLIHbrkstMIuOAos6mJtd
         o/TQ==
X-Gm-Message-State: AOAM533uWOMoOuwMOMAPV0qf4X8RaiBuHi7tHnQT8o7PIywJHdRjHrOA
        4czsmWl8Z+kfRVcZ0uK1YYlJHxRU30XAXwA8ZvoYURr+b5N+Pb4cgVjr/2oyo7r+pNpGxTcZfBT
        Cdg9TsqWfNGQZEMSBbibMpe51rtEH0X500det2zU=
X-Received: by 2002:a17:906:ecf1:: with SMTP id qt17mr2816868ejb.481.1644310908544;
        Tue, 08 Feb 2022 01:01:48 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwnTepgwgfhWKl1j7F8MsIf3A3OvU3tKzyXvM3N6w/vnMOP+3rf4FCufkCqQPpyX8yWdotahg==
X-Received: by 2002:a17:906:ecf1:: with SMTP id qt17mr2816841ejb.481.1644310908352;
        Tue, 08 Feb 2022 01:01:48 -0800 (PST)
Received: from [192.168.0.92] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id pj22sm2710423ejb.192.2022.02.08.01.01.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Feb 2022 01:01:47 -0800 (PST)
Message-ID: <e353cec3-9839-7274-d244-5b80b5a3fe55@canonical.com>
Date:   Tue, 8 Feb 2022 10:01:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/3] dt-bindings: crypto: Convert Atmel TDES to yaml
Content-Language: en-US
To:     Tudor.Ambarus@microchip.com, herbert@gondor.apana.org.au,
        robh+dt@kernel.org
Cc:     davem@davemloft.net, Nicolas.Ferre@microchip.com,
        Claudiu.Beznea@microchip.com, alexandre.belloni@bootlin.com,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220207032405.70733-1-tudor.ambarus@microchip.com>
 <20220207032405.70733-3-tudor.ambarus@microchip.com>
 <c7e160b0-16fb-79ca-c291-05571bbe8341@canonical.com>
 <6aa72f5a-e9c2-cd8e-ab26-fc8b4ad5cc25@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <6aa72f5a-e9c2-cd8e-ab26-fc8b4ad5cc25@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2022 05:04, Tudor.Ambarus@microchip.com wrote:
> Hi, Krzysztof,
> 
> On 2/7/22 18:04, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 07/02/2022 04:24, Tudor Ambarus wrote:
>>> Convert Atmel TDES documentation to yaml format. With the conversion the
>>> clock and clock-names properties are made mandatory. The driver returns
>>> -EINVAL if "tdes_clk" is not found, reflect that in the bindings and make
>>> the clock and clock-names properties mandatory. Update the example to
>>> better describe how one should define the dt node.
>>>
>>> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
>>> ---
>>>  .../bindings/crypto/atmel,tdes.yaml           | 63 +++++++++++++++++++
>>>  .../bindings/crypto/atmel-crypto.txt          | 23 -------
>>>  2 files changed, 63 insertions(+), 23 deletions(-)
>>>  create mode 100644 Documentation/devicetree/bindings/crypto/atmel,tdes.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/crypto/atmel,tdes.yaml b/Documentation/devicetree/bindings/crypto/atmel,tdes.yaml
>>> new file mode 100644
>>> index 000000000000..7efa5e4acaa1
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/crypto/atmel,tdes.yaml
>>> @@ -0,0 +1,63 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/crypto/atmel,tdes.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Atmel Triple Data Encryption Standard (TDES) HW cryptographic accelerator
>>> +
>>> +maintainers:
>>> +  - Tudor Ambarus <tudor.ambarus@microchip.com>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: atmel,at91sam9g46-tdes
>>> +
>>
>> Same comments as for patch 1 plus one new (also applying to previous
>> one). You named the file quite generic "atmel,tdes" or "atmel,aes", but
>> what if something newer comes for at91? Maybe name it instead
>> "atmel,at91sam9-aes"?
>>
> 
> For historical reasons, the atmel-{aes,tdes,sha} drivers use their own
> fixed compatible. The differentiation between the versions of the same IP
> and their capabilities is done at run-time, by interrogating a version
> register. Thus I expect that no new compatible will be added for neither of
> these IPs.

I was not talking about compatibles. I was talking about file name. You
called it "atmel,tdes" which is quite generic. If Microchip (not
Atmel...) comes with a new type of AES/TDES/SHA block for new line of
architectures, how are you going to name the bindings?

Best regards,
Krzysztof
