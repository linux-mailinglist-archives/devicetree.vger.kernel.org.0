Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BEBA4979C9
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 08:50:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241916AbiAXHuB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 02:50:01 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:41760
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232455AbiAXHt6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jan 2022 02:49:58 -0500
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5CCFF3F1A3
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 07:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643010596;
        bh=hKmvn2EoYf7YnUau65urQ+B42XJ4hxu5EUImPMPZJrY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=dkzXA8PzM1N+o6Ng4fc+qU8OTC1dprbxYaCETcG3KKNRKHdrFBC554SynrTF9N0VJ
         s9Lgx/BnrzHaJ2yzZ7gw5SCmt+qrPxBRsWU29Wcue9BCmWzd1c3CxJvf8hyKkIqqT8
         8jTslLdLByiI0dSY462Z65p930TpaH1dfMyPei4VnSW3lqS3BLVDEBczdGofU9A+oP
         RZ5S6nIv8WVn9Vvxf/mLWLVanHYYLeJOIOLQgC0EWvbFQudkHgwk4Yfj2yrcbXwYCV
         eG9oAFx/R1nUy1gT1cGjTFdD+XI4oGIXDiFh0T95yrE/OXlrHmSui+wMy4cnyVgy6P
         RZz1ctzDkLdaw==
Received: by mail-wm1-f69.google.com with SMTP id bg32-20020a05600c3ca000b00349f2aca1beso10276994wmb.9
        for <devicetree@vger.kernel.org>; Sun, 23 Jan 2022 23:49:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hKmvn2EoYf7YnUau65urQ+B42XJ4hxu5EUImPMPZJrY=;
        b=SfjDnKxY2Vu7N+fyBeuKABoyHo6WK3ffg0kR3bZtxtyDJpz9jbuw2fsRzDw5A8R11p
         dSaallu9qTiJyk1wa4gNo/RXADFBjhbm2F2yJ5J/KsQgLRsTQw6qjGSYvaumWB9UpeWV
         eOjoJITX8LBJcAdgJNMZukEkERJ/2L42FibLLbf6ZOmtFjXY8Lfx5/JQTh1OO5E5ZLPc
         if1ZTcru5+MkfJHVoCZ45eJGBstAYPU+UytTzeUpXlk6CtDX4QoSPifpc8dj4tUd1+Wm
         24J6NocWHaZCJmMu8VbTf0+31ZV1c3PFrC2OGzlNOxL8096bVar5zkp2vgxbUuIF222e
         9fiw==
X-Gm-Message-State: AOAM532fYE3CRPzqQ8w2tmkyLjdEmMbee1Lj2XjwCgMdIx2M6ub75fhJ
        vAXdodG7CoxHIYAm6vqFTImOUa2VUdLHNDfNbjcusUjWORtxblLyvc83tpve4pYSRtYPq2R4nl1
        jhRqd8TGFkscBZHmHuc0bdNDfDtLXvYg+jod9+ko=
X-Received: by 2002:a5d:65d0:: with SMTP id e16mr12613760wrw.67.1643010596068;
        Sun, 23 Jan 2022 23:49:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwIcnH15AU66jsAisZSr3fkWw8w6vsjdp8aAT+bk5H4F86P8SAZvjK6IXPkfLT58mMfJo2OZA==
X-Received: by 2002:a5d:65d0:: with SMTP id e16mr12613733wrw.67.1643010595853;
        Sun, 23 Jan 2022 23:49:55 -0800 (PST)
Received: from [192.168.0.52] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id d200sm17545981wmd.28.2022.01.23.23.49.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jan 2022 23:49:54 -0800 (PST)
Message-ID: <f04f128f-af7b-93df-0452-4c0e915f2eb7@canonical.com>
Date:   Mon, 24 Jan 2022 08:49:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 3/4] mfd: dt-bindings: google,cros-ec: reference
 Samsung SPI bindings
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>
References: <20220120175747.43403-1-krzysztof.kozlowski@canonical.com>
 <20220120175747.43403-4-krzysztof.kozlowski@canonical.com>
 <YenkV2rgEXQJ6Bc5@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <YenkV2rgEXQJ6Bc5@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2022 23:38, Rob Herring wrote:
> On Thu, Jan 20, 2022 at 06:57:46PM +0100, Krzysztof Kozlowski wrote:
>> The ChromeOS Embedded Controller appears on boards with Samsung Exynos
>> SoC, where Exynos SPI bindings expect controller-data node.  Reference
>> newly added dtschema for this property.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  .../bindings/mfd/google,cros-ec.yaml          | 29 ++++++++++---------
>>  1 file changed, 16 insertions(+), 13 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
>> index 58a1a9405228..66a995bbbbe9 100644
>> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
>> @@ -31,7 +31,7 @@ properties:
>>  
>>    controller-data:
>>      description:
>> -      SPI controller data, see bindings/spi/spi-samsung.txt
>> +      SPI controller data, see bindings/spi/samsung,spi-peripheral-props.yaml
>>      type: object
> 
> We should be able to drop all of this if unevaluatedProperties is used.
> 
>>  
>>    google,cros-ec-spi-pre-delay:
>> @@ -148,18 +148,21 @@ patternProperties:
>>  required:
>>    - compatible
>>  
>> -if:
>> -  properties:
>> -    compatible:
>> -      contains:
>> -        enum:
>> -          - google,cros-ec-i2c
>> -          - google,cros-ec-rpmsg
>> -then:
>> -  properties:
>> -    google,cros-ec-spi-pre-delay: false
>> -    google,cros-ec-spi-msg-delay: false
>> -    spi-max-frequency: false
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - google,cros-ec-i2c
>> +              - google,cros-ec-rpmsg
>> +    then:
>> +      properties:
>> +        google,cros-ec-spi-pre-delay: false
>> +        google,cros-ec-spi-msg-delay: false
>> +        spi-max-frequency: false
>> +
>> +  - $ref: /schemas/spi/samsung,spi-peripheral-props.yaml
> 
> SPI device schemas should reference spi-peripheral-props.yaml only. 
> spi-peripheral-props.yaml in turn should reference all the vendor 
> specific peripheral property schemas.
> 
> You should be able to do just:
> 
> else:
>   $ref: /schemas/spi/spi-peripheral-props.yaml

I tried now with your changes (no controller-data and else-ref), but
dt_binding_check complains:

linux/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml:
'additionalProperties' is a required property

	hint: A schema without a "$ref" to another schema must define all
properties and use "additionalProperties"

	from schema $id: http://devicetree.org/meta-schemas/base.yaml#


Which makes sense because only one part - SPI devices - get the ref to
spi-perpheral-props.

Best regards,
Krzysztof
