Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B77F590D67
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 10:30:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234259AbiHLIa3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 04:30:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231627AbiHLIa2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 04:30:28 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E41E21056B
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 01:30:26 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id x10so273922ljq.4
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 01:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=DiGq++8L+onGlbzyqSifDwiKR7o1FzZbcbbtnv3rVuA=;
        b=SH+X5cbxpgc5TySGkww8khFDFEUxB5zO7WG2WO3wclK6Xr37YjEMpFPR6kM/Rh28za
         RC9rgAnIGwRN/w9XlihbU4SqQHMAvkObAFCGSg3AySKx4AAIVaVoDkQdjOBFzEBJzoln
         Ihqn2sgglfpekHM27kQwrF9ZME2ZKw6JzZ9+HjgRjImVPrdT+2J403VVCyqBXqdWcyI/
         pEIFhMyZTcgJeTEskdQjL28eIHhuHJDsKDp/nI/Ro0acEV45QN4wSvu+lWMv9WPmeqXx
         7BtiDoHQ3ZGHoAJXEC8DAW+FA3dAOPm6ohdyo0aCafaaO3qqjo61AXUKRefqYjw0Dw1m
         qlyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=DiGq++8L+onGlbzyqSifDwiKR7o1FzZbcbbtnv3rVuA=;
        b=hpPTSm8Wt43CJTFwzuTXM1UHxjKoRbQmjwCffF2Vdp0que67sYnpwNtmJE64xJ4+6X
         hyNs3L7HiPJe+yLH0aXa8jSZQ+9nFy+IzfoeAF7sPThFOJ7pHLuCpYv1YSOraF2bSaMC
         CYz8rKzPkc/Zdbgv9tx2lKI3ygbH61K7VoY5+IvIzRJvJJXKJwOHWDz0x9GxLJxhMTEW
         CSzKAN+3XQXXrHzs0kqABntcuH6foKRcQHdRhy+WXbXwZa4qoE9yzHQbeTWFNcpT92Gm
         CTX1L0YfYMSCeZqizk0FeAXkxiNY8AW6x2QfvxF0BQljxU/QOdmu0V/5N+I8gKvXwftf
         fIAw==
X-Gm-Message-State: ACgBeo1z57ogbin7BFQAUQyKl7BoyhSbK1T1t9jPy/yxoKeAdZMENWu3
        yx2mz0TgDFMb1BWrsIiyjTiRgw==
X-Google-Smtp-Source: AA6agR490Fje+0RZ9nk8vN+xnLWyRcUgRMfN6sb/V25nFrMySDrQMtC7bcbMjipBBsPw2gwOYHf0pg==
X-Received: by 2002:a2e:a808:0:b0:25f:f326:f2ab with SMTP id l8-20020a2ea808000000b0025ff326f2abmr927859ljq.152.1660293025328;
        Fri, 12 Aug 2022 01:30:25 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id m7-20020a056512014700b0048ad80a6d07sm132049lfo.170.2022.08.12.01.30.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 01:30:24 -0700 (PDT)
Message-ID: <33877eba-1d59-8e3a-4486-751ab9f955e8@linaro.org>
Date:   Fri, 12 Aug 2022 11:30:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [EXT] Re: [PATCH v4 1/3] dt-bindings: gpio: Add imx scu gpio
 driver bindings
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
        "brgl@bgdev.pl" <brgl@bgdev.pl>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>
References: <20220811124135.95299-1-shenwei.wang@nxp.com>
 <20220811124135.95299-2-shenwei.wang@nxp.com>
 <db3020ef-7321-e171-b5bc-9c1795c2cced@linaro.org>
 <AM9PR04MB82741882E177387DB95AE3B589649@AM9PR04MB8274.eurprd04.prod.outlook.com>
 <01c832c4-6631-4865-30b3-7f060e27a7ff@linaro.org>
 <AM9PR04MB82747D7D07C481CC6981993189649@AM9PR04MB8274.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM9PR04MB82747D7D07C481CC6981993189649@AM9PR04MB8274.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/08/2022 18:30, Shenwei Wang wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Thursday, August 11, 2022 10:11 AM
>> To: Shenwei Wang <shenwei.wang@nxp.com>; robh+dt@kernel.org;
>> krzysztof.kozlowski+dt@linaro.org; linus.walleij@linaro.org; brgl@bgdev.pl;
>> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
>> festevam@gmail.com; dl-linux-imx <linux-imx@nxp.com>
>> Cc: devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
>> gpio@vger.kernel.org; linux-arm-kernel@lists.infradead.org; imx@lists.linux.dev
>> Subject: Re: [EXT] Re: [PATCH v4 1/3] dt-bindings: gpio: Add imx scu gpio driver
>> bindings
>>
>> Caution: EXT Email
>>
>> On 11/08/2022 17:52, Shenwei Wang wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Sent: Thursday, August 11, 2022 9:36 AM
>>>> To: Shenwei Wang <shenwei.wang@nxp.com>; robh+dt@kernel.org;
>>>> krzysztof.kozlowski+dt@linaro.org; linus.walleij@linaro.org;
>>>> brgl@bgdev.pl; shawnguo@kernel.org; s.hauer@pengutronix.de;
>>>> kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx
>>>> <linux-imx@nxp.com>
>>>> Cc: devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
>>>> gpio@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>>>> imx@lists.linux.dev
>>>> Subject: [EXT] Re: [PATCH v4 1/3] dt-bindings: gpio: Add imx scu gpio
>>>> driver bindings
>>>>> diff --git
>>>>> a/Documentation/devicetree/bindings/gpio/fsl,imx-sc-gpio.yaml
>>>>> b/Documentation/devicetree/bindings/gpio/fsl,imx-sc-gpio.yaml
>>>>> new file mode 100644
>>>>> index 000000000000..a1b024cddc97
>>>>> --- /dev/null
>>>>> +++ b/Documentation/devicetree/bindings/gpio/fsl,imx-sc-gpio.yaml
>>>>> +description: |
>>>>> +  This module provides the standard interface to control the
>>>>> +  resource pins in SCU domain on i.MX8 platforms.
>>>>> +
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    enum:
>>>>> +      - fsl,imx8qxp-sc-gpio
>>>>
>>>> Now the filename does not match compatible. Use the same compatible
>>>> as filename.
>>>
>>> The subnodes under fsl,scu.yaml have their own naming rule. For
>>> example, the watchdog compatible is "fsl,imx-sc-wdt", but the file name is
>> "fsl,scu-wdt.yaml".
>>
>> The other files have for example fsl,imx-sc-wdt, so they match compatible.
> 
> I don't see the file fsl,imx-sc-wdt you mentioned under the watchdog directory.
> 
> $ ls fsl*
> fsl-imx7ulp-wdt.yaml  fsl-imx-wdt.yaml  fsl,scu-wdt.yaml

Eh, they looked similar enough that I did not spot it during review.
fsl,scu-wdt.yaml should be named fsl,imx-sc-wdt.yaml, of course.


Best regards,
Krzysztof
