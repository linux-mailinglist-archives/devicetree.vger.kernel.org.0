Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED7E361ECD1
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 09:25:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231167AbiKGIZE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 03:25:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231149AbiKGIZC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 03:25:02 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4C7B14095
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 00:24:57 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id b9so15046696ljr.5
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 00:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a7jSps+xljJcOYW2KMIn7rfPJZq4OWAFrCWvqFYuWac=;
        b=d9nblmJ6KkTeWjeGlksqOSvBf0WQumF0FJnhrY//Jrl8fLbsUJauz5+g9IIhiOvD7V
         rPkKPnDGqiSLRDX4Qctx7jVwm5ypdayg0JH4slItjEKg5rhE34FxJoc81lEyl+HiWFCc
         7gHJ5ICcTVcPfPJAYnCRoLhwCjJ6BJKj0zjI1psuZ1bCZ3YKe2Z7E9W1134BVWzq+Vat
         yfBB6QKaoc/bLqoAnmp3hEfQycR6YBUw/xb1SMwJS/uvNCx9EqlAuwbzhs5WKa1iRZPk
         6sRJ4Y1Am1ej8h0RncZiT8mxpY66HHKLXpXqlYtP+lFxhKd5SmQJ0Tzd0ts8aWxx0FxA
         J69A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a7jSps+xljJcOYW2KMIn7rfPJZq4OWAFrCWvqFYuWac=;
        b=1Wh2PIw1hokDl6y42IA6kfnWe3/6E+RSlHDZgT0GNU2tFi0gobrvqjLqEtddMm4+ju
         h8CSOkH1leNjLARvKHczzU+e+MA318rvapebzvvD5KCx0n/Mb1WFdPnIPTWVGNSv6i/H
         viVKOo2SACiuawJ5DCYV29XfqTBoCnyYr4o6o2sEDlW41w9UJNT59SCQp5gEk0UP0cYS
         qLak1eJBF6y4I7l9Oc8TQmsCwxnQTu6TRMtFBB5ylTwi1MRCCWpm3P4itxGx1y6nJHMu
         TcJvcbgEAsoXUM86FqhO59A941CFXDwA4EMIQ4XEP+EW0a7KN5sZ4RzxKItlTcMC1KWM
         UjxQ==
X-Gm-Message-State: ACrzQf1AlIOY31DepCMeXw1WG4tELY1Pg1xuQ67THWWxd6yeRUwsfv0q
        +PZHBEumgTcqTxiVMUNgUJSQBA==
X-Google-Smtp-Source: AMsMyM6R78xqbjUxKwrm997zbtLMewEvbYbQJkWCRE5DsAmUqBPC6JN4/TE6GB2t3nGmM5v0CoWuvg==
X-Received: by 2002:a2e:940f:0:b0:26f:c160:6ddc with SMTP id i15-20020a2e940f000000b0026fc1606ddcmr18004014ljh.164.1667809496017;
        Mon, 07 Nov 2022 00:24:56 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id y5-20020a2eb005000000b0026fb4458c5fsm1108169ljk.44.2022.11.07.00.24.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 00:24:54 -0800 (PST)
Message-ID: <250e8acd-cf5d-f6f2-2d89-e0fd58a14424@linaro.org>
Date:   Mon, 7 Nov 2022 09:24:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/2] dt-bindings: media: i2c: Add IMX519 CMOS sensor
 binding
Content-Language: en-US
To:     lee <lee@arducam.com>
Cc:     linux-media@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, devicetree@vger.kernel.org
References: <20221103110424.00007a48@arducam.com>
 <4556aebd-1296-bb08-2cd7-3d92571ed71b@linaro.org>
 <20221107104202.00002f0f@arducam.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221107104202.00002f0f@arducam.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/11/2022 03:42, lee wrote:
> On Thu, 3 Nov 2022 09:05:05 -0400
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
> Hi,
> Thanks a lot for detailed comments and suggestions for revisions,there is one place where I have some doubts.
>> On 02/11/2022 23:04, lee wrote:
>>> Add YAML device tree binding for IMX519 CMOS image sensor, and
>>> the relevant MAINTAINERS entries.
>>>
>>> Signed-off-by: Lee Jackson <lee@arducam.com>  
>>
>> Your From does not match fully SoB.
>>
>>> ---
>>>  .../bindings/media/i2c/sony,imx519.yaml       | 107
>>> ++++++++++++++++++ MAINTAINERS                                   |
>>>  9 ++ 2 files changed, 116 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/media/i2c/sony,imx519.yaml
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/media/i2c/sony,imx519.yaml
>>> b/Documentation/devicetree/bindings/media/i2c/sony,imx519.yaml new
>>> file mode 100644 index 000000000000..9b6cda96f613 --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx519.yaml
>>> @@ -0,0 +1,107 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/media/i2c/sony,imx519.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Sony 1/2.5-Inch 16Mpixel CMOS Digital Image Sensor
>>> +
>>> +maintainers:
>>> +  - Lee Jackson <lee@arducam.com>
>>> +
>>> +description: |-
>>> +  The Sony IMX519 is a 1/2.5-inch CMOS active pixel digital image
>>> sensor
>>> +  with an active array size of 4656H x 3496V. It is programmable
>>> through
>>> +  I2C interface. The I2C address is fixed to 0x1A as per sensor
>>> data sheet.
>>> +  Image data is sent through MIPI CSI-2, which is configured as
>>> either 2 or
>>> +  4 data lanes.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: sony,imx519
>>> +
>>> +  reg:
>>> +    description: I2C device address  
>>
>> Skip description.
>>
>>> +    maxItems: 1
>>> +
>>> +  clocks:
>>> +    maxItems: 1
>>> +
>>> +  VDIG-supply:  
>>
>> Use lower case names.
> 
> Here we refer to other drivers (imx219), they are all uppercase, is lowercase mandatory?

Lowercase is the convention. Just because some other driver used
uppercase is not really correct argument. If other driver has bug, you
also copy it?


Best regards,
Krzysztof

