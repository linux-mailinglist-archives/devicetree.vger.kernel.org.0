Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 730B453F6CF
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 09:04:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232373AbiFGHEb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 03:04:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237447AbiFGHE2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 03:04:28 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFAE86AA77
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 00:04:26 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id w27so21661396edl.7
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 00:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7gB2Lu+n72JKSk+NWsYgdpQW0/Tn14DCnrqpfnWeIPQ=;
        b=Y6dxXIHm4ROzrV4FRZaA6QJfVO71/Xug+nwBvNUgn8oZ6EDNh/SBiY8aIA5O7RivOL
         SYvR6cCyXzmuWKpoa/bqDaNxAJBW/R5LK2dWwAsFMitQEIGRkegace688xlTjSQvDakX
         EtqjvOleLc71UXW+uxVf7EYFczYwtmWDsJh5vWI3kVdoA2cZ6FDG0zj9nYXLqeDWTaKY
         RLNcY9DXAh6rLsfWCyFNOGV2vZJcHurKQ9zcNf6U97ECwgm0kvUkcHdGW9Qle1Xhj67O
         NXmbAeGXyZZovfPq+8LDE+pstUL0GQc91zSxNI6/J/kiBM571Gs9nzJ6tNZzqTLqCtt6
         Kebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7gB2Lu+n72JKSk+NWsYgdpQW0/Tn14DCnrqpfnWeIPQ=;
        b=oMpOPDjc+jplaowN9JGp0o+E78el+OH0HiJNnTy9bUULqAboKs5SB6P8t9+4565Jye
         SOIEP6MtGhu1ursaWmB/qWIiUKHxx5oZQipkbZXE++hfGzufMx0ZTmrfX9EKbOoYrvf8
         uEK5aD+EMNCBQQuYdfnkvhngxVO44QHyHrP+n7OKW84jk5HGVtRGbvWTlcuXiz4ryz9R
         HIkZYycmur5zeLzkqgatNYJnkJtSx8fr2wboQsXEpao5lD/GoiyFJsmCPbGpGWtHBcME
         vTXNvjkjSGzC9JzR2ENMEoOiK3Q04U7aNxefSaU0RRpjVV+0TVkRvYImNzX3iU2/QjWU
         Fxig==
X-Gm-Message-State: AOAM5322UcOndl1wDBtEMW/lGsEjxfeEZyuzmVIEp84x1Uj/IE7jv9I8
        xSpl2wjCR0U8UxSYZj/ouC6ur/qTi3oZQg==
X-Google-Smtp-Source: ABdhPJxAgN7tnf+9uyYoLdO2cZSrLz4RJuDMikYrV7CtyktWMAWc5rD70UaK+UR4YUYZH5+ZXWnq8g==
X-Received: by 2002:aa7:c9c9:0:b0:431:962f:f61e with SMTP id i9-20020aa7c9c9000000b00431962ff61emr469000edt.189.1654585465379;
        Tue, 07 Jun 2022 00:04:25 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w14-20020a170906d20e00b006fed93bf71fsm7366054ejz.18.2022.06.07.00.04.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 00:04:24 -0700 (PDT)
Message-ID: <7f4b39ee-c314-fb35-4177-785c29019019@linaro.org>
Date:   Tue, 7 Jun 2022 09:04:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/3] dt-bindings: mfd: atmel,flexcom: Convert to
 json-schema
Content-Language: en-US
To:     Kavyasree.Kotagiri@microchip.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        Nicolas.Ferre@microchip.com, alexandre.belloni@bootlin.com,
        Claudiu.Beznea@microchip.com, UNGLinuxDriver@microchip.com
References: <20220603121802.30320-1-kavyasree.kotagiri@microchip.com>
 <20220603121802.30320-2-kavyasree.kotagiri@microchip.com>
 <ba24037d-8c31-ea35-6fc9-ed8a61118848@linaro.org>
 <CO1PR11MB4865475C31FACD142BB9752592A29@CO1PR11MB4865.namprd11.prod.outlook.com>
 <CO1PR11MB4865DEDC51BE3AAE0F8C6FDC92A59@CO1PR11MB4865.namprd11.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CO1PR11MB4865DEDC51BE3AAE0F8C6FDC92A59@CO1PR11MB4865.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2022 08:55, Kavyasree.Kotagiri@microchip.com wrote:
>>>> Convert the Atmel flexcom device tree bindings to json schema.
>>>>
>>>> Signed-off-by: Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>
>>>> ---
>>>>  .../bindings/mfd/atmel,flexcom.yaml           | 97 +++++++++++++++++++
>>>>  .../devicetree/bindings/mfd/atmel-flexcom.txt | 63 ------------
>>>>  2 files changed, 97 insertions(+), 63 deletions(-)
>>>>  create mode 100644
>>> Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
>>>>  delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-
>>> flexcom.txt
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
>>> b/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
>>>> new file mode 100644
>>>> index 000000000000..221bd840b49e
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/mfd/atmel,flexcom.yaml
>>>> @@ -0,0 +1,97 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/mfd/atmel,flexcom.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Device tree bindings for Atmel Flexcom (Flexible Serial
>>> Communication Unit)
>>>
>>> There was a v2 of the same patch to which already commented. Now you
>>> send the same patch, without comments applied as v1. This does not make
>>> any sense.
>>>
>>> Please version your patches correctly and do not ignore received feedback.
>>>
>>
>> Hi,
>>
>> FYI, lan966x flexcom chip-select driver support is moved to atmel-flexcom.c
>> rather than
>> implementing a new mux driver. So, I sent new version now with driver
>> changes in drives/mfd/atmel-flexcom.c
>> I once again gone through your v2 comments. I missed this comment
>> "s/Device tree bindings//".
>> Except that I addressed remaining all other comments for dt-bindings
>> patches.
>>>
> Hi,
> 
> Please let me know what you mean by " s/Device tree bindings//" comment?

s/X/Y/ is search and replace X with Y, so here, please remove the
"Device tree bindings" words.



Best regards,
Krzysztof
