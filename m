Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACAF75F1315
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 22:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbiI3UBv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 16:01:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232077AbiI3UBu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 16:01:50 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDA9D15C592
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 13:01:48 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id a2so8448877lfb.6
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 13:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=U5/0vMWKU8sv7lsQh4rhQrJ1kPMZjQyHkGhLjTOGGTA=;
        b=o9vuw/S+H0tpAJGZB3OMoBzx97xkZoSgLPSsUgIH1wpTARdBDVnVeGDpXaJjwmYr0S
         NCGA20AXimkV7YPLavdavA0yEK2A+s1ltHi55rwC4EBaFsDWfa+eszCaNTHM5NOfs0sg
         bQXtPaYecSatkGAloWPktssu7uj4X+LbeGXWN7r3NyUjHJJ9QsmetjvRjRQB9p/+OzWP
         X57k2o5GXaMWnhjEG6NZKSHBZz6OFdaiKZSG2/HU2A+pUgQY8VODxoNh5yIfWbIyF3Fa
         xNWQ/PYdD5pg/VBa/x4MfIr1oAN3TpyNVEbLG0xxrwsGfTJfmmi9x+FI4Al/Kv5vLJqh
         0DFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=U5/0vMWKU8sv7lsQh4rhQrJ1kPMZjQyHkGhLjTOGGTA=;
        b=NS0vsIkoSzkykLOJejd4oSTruhF4v4z21MkMB47WiddiP5pbb24/T4TlFjP9Oqj0gB
         Vm/am52QwlzgfRgO9aYwBS/YxKK0ggWQQzJ7zCrNuJwa/pK/puRtHL+g2sSpQblLXnbX
         hiLSyrSS+hrfp7ddMLoDG2zoct2is1KTckiE/NmxJZemamWlKCgL1SG3KArS2uSC/EhG
         UdlXWl3M3QTqfjqh+XtsGlY8RHFHqwX79RjTuZhROMuZ+8ST+gQP7aLRO5VhZwFzNQFY
         8DxpYGU+zAQMDg2Sb2Xw827F1U67uyR688xxRuKoNfqFJSqI9GyKELJxlfq+bpzReJe2
         rU7Q==
X-Gm-Message-State: ACrzQf1MVqZKHx9ePTfbMRMAYm4PYIstftZrSX3vm3DODg+9I6iu5Ya/
        d5do683Ir0zqajDzFtaVkEYwkFVn2x7JkQ==
X-Google-Smtp-Source: AMsMyM4KyAWKAukfRVHW/NhZRT8J8TkxFHOJuIb3idoFRiY66sfAKAC/IxMO+qd/xHgeW1VSggr8Cw==
X-Received: by 2002:a05:6512:3084:b0:49e:2275:fbb8 with SMTP id z4-20020a056512308400b0049e2275fbb8mr3690337lfd.40.1664568107341;
        Fri, 30 Sep 2022 13:01:47 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g22-20020a19e056000000b00492eb7205b0sm403152lfj.210.2022.09.30.13.01.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 13:01:46 -0700 (PDT)
Message-ID: <1c14b73b-46fb-29e8-0fd6-1fd4d8706cbd@linaro.org>
Date:   Fri, 30 Sep 2022 22:01:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v6 2/2] dt-bindings: memory-controllers: gpmc-child: add
 wait-pin polarity
To:     Rob Herring <robh@kernel.org>,
        "B. Niedermayr" <benedikt.niedermayr@siemens.com>
Cc:     devicetree@vger.kernel.org, linux-omap@vger.kernel.org,
        rogerq@kernel.org, tony@atomide.com
References: <20220929125639.143953-1-benedikt.niedermayr@siemens.com>
 <20220929125639.143953-3-benedikt.niedermayr@siemens.com>
 <20220930194257.GA756240-robh@kernel.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220930194257.GA756240-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 21:42, Rob Herring wrote:
> On Thu, Sep 29, 2022 at 02:56:39PM +0200, B. Niedermayr wrote:
>> From: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
>>
>> The GPMC controller has the ability to configure the polarity for the
>> wait pin. The current properties do not allow this configuration.
>> This binding directly configures the WAITPIN<X>POLARITY bit
>> in the GPMC_CONFIG register by setting the gpmc,wait-pin-polarity
>> dt-property.
>>
>> Signed-off-by: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
>> ---
>>  .../bindings/memory-controllers/ti,gpmc-child.yaml         | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/memory-controllers/ti,gpmc-child.yaml b/Documentation/devicetree/bindings/memory-controllers/ti,gpmc-child.yaml
>> index 6e3995bb1630..477189973334 100644
>> --- a/Documentation/devicetree/bindings/memory-controllers/ti,gpmc-child.yaml
>> +++ b/Documentation/devicetree/bindings/memory-controllers/ti,gpmc-child.yaml
>> @@ -230,6 +230,13 @@ properties:
>>        Wait-pin used by client. Must be less than "gpmc,num-waitpins".
>>      $ref: /schemas/types.yaml#/definitions/uint32
>>  
>> +  gpmc,wait-pin-polarity:
> 
> 'gpmc' is not a vendor. Don't continue this bad pattern, use 'ti'.
> 
>> +    description: |
>> +      Set the desired polarity for the selected wait pin.
>> +      1 for active low, 0 for active high.
> 
> Well that looks backwards. I assume from the commit msg above, it's the 
> register value, but that's not what the description says. Please go with 
> the logical state here and do the inversion in the driver.

This was actually my suggestion to keep the same value as
ACTIVE_HIGH/LOW in standard GPIO flags. The DTS could reuse the defines.

Best regards,
Krzysztof

