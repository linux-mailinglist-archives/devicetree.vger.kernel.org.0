Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25020532918
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 13:34:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236058AbiEXLeT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 07:34:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235799AbiEXLeT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 07:34:19 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBCA18BD36
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 04:34:17 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id p22so30290219lfo.10
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 04:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uZXl4RLzzhryYGc4tfKASYNpJNQsDtpLhwIbhtBkN3M=;
        b=F0L95uV9E/AgMjCwe/WYoZXPBgf+yhKojr2kVa/MF4G527YdhqKjf5Q5Mv33jX2wjv
         8um03WQLBpIuJmNpyW1rrq6pqd7ivlxlyg1PrupURv1xG17IMWvBwBeZu9kTd+LHA0Tz
         h5OrSzx1SZfPBfWP/F7dg8OHGsyp8CN5Hcvb0F9yWYY6b5XISZM1TCUoh4AjpWUCIgRR
         Nb1ypQ1vICq4UmE5ua0Ay+Catlm5Vnlx9Xg9GXX0B23/SCG+R0l19PoP9KA+w36yNG+m
         BA9zVgqQFeJTh9PyxYLU2HYSTzBlDV4dzhh8qNuiScCk3f1/OMcdWcMNsRcVVn8BsTXT
         hV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uZXl4RLzzhryYGc4tfKASYNpJNQsDtpLhwIbhtBkN3M=;
        b=UXuqZfvNQzBgdfc5k9DTYa0Len/OfbIe3JJt6h3aVAAHYFTITDPxyK4wysH6YJfx6a
         rI0jzeqsPReEJzJzmKqDYfHf0XrfKMClharUjf+087VFqjYAKV632FIGbl98jUGLOMZx
         ZkgzsDi4A3sCtNptVseV+41L3W3+jlgC3svzyMsb+gMdpszm0ztIcZnzH+DwJk9CvzZ8
         iELvAwSxp2rCAPjf+KUHIfyWj9dUSvLC0hv4jsJCRXlo3UVsayIxADwhcJa090Q/acrE
         68+pNlB5ilFKOunKUMAEjNU6pmUJEW3AwRmaNrJTxJQ2gS7Rn7xhWQrGoihI3d69iXeE
         aSxQ==
X-Gm-Message-State: AOAM532rmPcjwyJTxF/skyMEo055Zlug1oU3ak3ZvOYR07akYJ/zUOyd
        W54KBKyLwdd/ThdN2Mnz6erdDw==
X-Google-Smtp-Source: ABdhPJw4SRDFxPfuEXUDRQ9DhN6jntw+xx1j8+l9XIR4Izuz22pyXEpmTAY0If5aRfg7SVPU9apKOQ==
X-Received: by 2002:a05:6512:b9f:b0:478:5bf0:67f9 with SMTP id b31-20020a0565120b9f00b004785bf067f9mr12209045lfv.313.1653392056241;
        Tue, 24 May 2022 04:34:16 -0700 (PDT)
Received: from [172.20.68.48] ([91.221.145.6])
        by smtp.gmail.com with ESMTPSA id i22-20020a2e8656000000b0024f3d1daed0sm2451344ljj.88.2022.05.24.04.34.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 04:34:15 -0700 (PDT)
Message-ID: <f42f4b45-f8cb-8855-8814-5dfaaf446d4a@linaro.org>
Date:   Tue, 24 May 2022 13:34:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/7] dt-bindings: soc: add bindings for i.MX93 SRC
Content-Language: en-US
To:     Peng Fan <peng.fan@nxp.com>,
        "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "mturquette@baylibre.com" <mturquette@baylibre.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc:     Aisheng Dong <aisheng.dong@nxp.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
References: <20220523113029.842753-1-peng.fan@oss.nxp.com>
 <20220523113029.842753-2-peng.fan@oss.nxp.com>
 <c2882212-aa1e-4614-c982-43e6c793b34a@linaro.org>
 <DU0PR04MB9417F22B607C95BDAB84C01488D79@DU0PR04MB9417.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DU0PR04MB9417F22B607C95BDAB84C01488D79@DU0PR04MB9417.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/05/2022 12:37, Peng Fan wrote:
>> Subject: Re: [PATCH 1/7] dt-bindings: soc: add bindings for i.MX93 SRC
>>
>> On 23/05/2022 13:30, Peng Fan (OSS) wrote:
>>> From: Peng Fan <peng.fan@nxp.com>
>>>
>>> Add bindings for i.MX93 System Reset Controller(SRC). SRC supports
>>> resets and power gating for mixes.
>>>
>>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
>>> ---
>>>  .../bindings/soc/imx/fsl,imx93-src.yaml       | 88
>> +++++++++++++++++++
>>>  include/dt-bindings/power/imx93-power.h       | 11 +++
>>>  2 files changed, 99 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/soc/imx/fsl,imx93-src.yaml
>>
>> File should be in respective subsystem, so probably power/reset?
> 
> ok, will put under power.
> 
>>
>>>  create mode 100644 include/dt-bindings/power/imx93-power.h
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-src.yaml
>>> b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-src.yaml
>>> new file mode 100644
>>> index 000000000000..d45c1458b9c1
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-src.yaml
>>> @@ -0,0 +1,88 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
>>> +---
>>> +$id:
>>> +> > +title: NXP i.MX9 System Reset Controller
>>> +
>>> +maintainers:
>>> +  - Peng Fan <peng.fan@nxp.com>
>>> +
>>> +description: |
>>> +  The System Reset Controller (SRC) is responsible for the generation
>>> +of
>>> +  all the system reset signals and boot argument latching.
>>> +
>>> +  Its main functions are as follows,
>>> +  - Deals with all global system reset sources from other modules,
>>> +    and generates global system reset.
>>> +  - Responsible for power gating of MIXs (Slices) and their memory
>>> +    low power control.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - const: fsl,imx93-src
>>> +      - const: syscon
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  slice:
>>
>> Why do you need this subnode, instead of listing domains here?
> 
> I follow
> Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> 
> There are several slices in SRC, just like there are many pgcs in gpcv2.

Wait, but you have only one slice and you do no allow more of them. The
same as for gpcv2 - there is only one pgc. What's the point of that node?

> 
> 
>>
>>> +    type: object
>>> +    description: list of power domains provided by this controller.
>>> +
>>
>> Hm, what about address/size cells? Is syscon schema bringing these?
> 
> The slice submode should have address/size cells, but I not
> meet yaml/dtbs check error. Will add it.
> 
> Not sure syscon bringing or not.
> 
>>
>>> +    patternProperties:
>>> +      "power-domain@[0-9]$":
>>> +        type: object
>>
>> Missing ref to power-domain.yaml
> 
> Ok.
> 
>>
>>> +        properties:
>>> +
>>> +          '#power-domain-cells':
>>> +            const: 0
>>> +
>>> +          reg:
>>> +            description: |
>>> +              Power domain index. Valid values are defined in
>>> +              include/dt-bindings/power/imx93-power.h for fsl,imx93-src
>>> +            maxItems: 1
>>> +
>>> +          clocks:
>>> +            description: |
>>> +              A number of phandles to clocks that need to be enabled
>>> +              during domain power-up sequencing to ensure reset
>>> +              propagation into devices located inside this power domain.
>>> +            minItems: 1
>>> +            maxItems: 5
>>> +
>>> +        required:
>>> +          - '#power-domain-cells'
>>> +          - reg
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - slice
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/clock/imx93-clock.h>
>>> +    #include <dt-bindings/power/imx93-power.h>
>>> +
>>> +    src@44460000 {
>>
>> reset-controller
>> or some other generic node name.
> 
> It is not a single reset or power domain controller,
> Currently linux driver just use it as a power domain
> controller.

Then maybe system-controller.

> 
> Thanks,
> Peng.
> 
>>
>>> +        compatible = "fsl,imx93-src", "syscon";
>>> +        reg = <0x44460000 0x10000>;
>>> +
>>> +        slice {
>>> +                #address-cells = <1>;
>>> +                #size-cells = <0>;
>>> +
>>> +                mediamix: power-domain@0 {
>>
>> Best regards,
>> Krzysztof


Best regards,
Krzysztof
