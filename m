Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8C8F74FED7
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 07:44:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231856AbjGLFo5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 01:44:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231858AbjGLFow (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 01:44:52 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CFF2173D
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 22:44:50 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-992af8b3b1bso833901666b.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 22:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689140689; x=1691732689;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5ouZomYFgUHpn/YJmr1JiZF0xkGrMDaTDJYudY8dp4M=;
        b=bvDjgm22UvS4P5aJYtI62PvGyl3FefCo0qkEKllhFf6M4CdzUxiqL695Nir4SdFfbA
         6SVBVj/eKAYHpyeS+YzXy5d2+6wdeUN2HfM0alKa1+Ggbe8pJx+7Je8YdnbsCJNCggzc
         X+YLurn9JM15dKsZPa4E4n8vwzdp0I5+wPblHPV4SDls9D6ReHgldmd1LwUos56CRwtw
         hACkG0wvBKCbvcB4u3C9DPZltjjbiEVUG0x3tR993eJtZuA6/xumm9ZkQ7O0UsLsk6nP
         Lg9DFChGsxhJ76cau5ShQDg67+lo5aUm3dQnT4kdXC2koBJS9kqb5MgYSm1aebGRfgqi
         sw3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689140689; x=1691732689;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ouZomYFgUHpn/YJmr1JiZF0xkGrMDaTDJYudY8dp4M=;
        b=b74qaxjJnn7xgO18ODkrf/NpOhaUcBsMX7me+VD288SzIExkhv7LQYW1IkdDxlM/TQ
         /P73tn4Xd8g3hg+4G7VxtAL03o1vJ3LHjkq/7eH6E11NvKItqwt1iRdOyZwpDZDEMoZU
         Zf/8Bw50sjWphKeTP7nYpt2VmW2wtuZuf+hy0qT5ZVp6BdN/A6RBWa+AX2NZ8tylNBLz
         QVb60q3tCeLtfhXJRpqnJosj7qkX7Lxck7cITPTS9p6V7oRgy53IdVuLBzn9YsQBSl2q
         IEk4LlHqhbaf+zLk94kU1HPVnEgNeweSLnbmKybmuXay69Vr/RCi152G9T8KdZfjKH0e
         Fr6g==
X-Gm-Message-State: ABy/qLZo9SQh92tTIh1GlTQkH79p/i2D+niyIKLtUg2ThMd0p1PkG2fX
        7jVT30xuW3VOWqmkkn/8FB0EyQ==
X-Google-Smtp-Source: APBJJlHpKjhGOrY5gOYh/iHBm8gwLfa++FYIuS61a3m8tRrnYlnMMtS51wSD8v3uSldBMX6yMpTdog==
X-Received: by 2002:a17:907:c8f:b0:98d:b73b:b5f2 with SMTP id gi15-20020a1709070c8f00b0098db73bb5f2mr17159701ejc.71.1689140689368;
        Tue, 11 Jul 2023 22:44:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id d20-20020a170906371400b0098e2eaec395sm2049867ejc.130.2023.07.11.22.44.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 22:44:48 -0700 (PDT)
Message-ID: <1e3b4fa4-6de7-e7bb-f1f7-266a73d87fb0@linaro.org>
Date:   Wed, 12 Jul 2023 07:44:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v5 1/5] arm64: dts: ti: k3-j784s4-main: Add system
 controller and SERDES lane mux
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>, Jayesh Choudhary <j-choudhary@ti.com>
Cc:     vigneshr@ti.com, krzysztof.kozlowski+dt@linaro.org, afd@ti.com,
        s-vadapalli@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230710101705.154119-1-j-choudhary@ti.com>
 <20230710101705.154119-2-j-choudhary@ti.com>
 <23833669-b9f7-94aa-ea42-56843842cba6@linaro.org>
 <d0fce3b5-222c-fc0f-ba16-988e4cc0520e@ti.com>
 <20230711153144.jvofubaez5uoog5p@unmanaged>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230711153144.jvofubaez5uoog5p@unmanaged>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2023 17:31, Nishanth Menon wrote:
> On 12:01-20230711, Jayesh Choudhary wrote:
>>
>>
>> On 10/07/23 17:13, Krzysztof Kozlowski wrote:
>>> On 10/07/2023 12:17, Jayesh Choudhary wrote:
>>>> From: Siddharth Vadapalli <s-vadapalli@ti.com>
>>>>
>>>> The system controller node manages the CTRL_MMR0 region.
>>>> Add serdes_ln_ctrl node which is used for controlling the SERDES lane mux.
>>>>
>>>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>>>> [j-choudhary@ti.com: Add reg property to fix dtc warning]
>>>> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
>>>> ---
>>>>   arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi | 23 ++++++++++++++++++++++
>>>>   1 file changed, 23 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>>>> index 2ea0adae6832..68cc2fa053e7 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-main.dtsi
>>>> @@ -5,6 +5,9 @@
>>>>    * Copyright (C) 2022 Texas Instruments Incorporated - https://www.ti.com/
>>>>    */
>>>> +#include <dt-bindings/mux/mux.h>
>>>> +#include <dt-bindings/mux/ti-serdes.h>
>>>
>>> Why? What do you use from that binding?
>>>
>>
>> Missed idle-state in the mux-controller node here for default values.
>> I will wait for more feedback and then re-spin the series.
> 
> btw, I am wondering if ti-serdes.h should even exist in dt-bindings -
> are any of the macros used in the driver? or should this follow the
> pinctrl style macros that could happily reside in arch/arm64/boot/dts/ti
> ?

I don't see any usage in drivers, which is a clear indication that it
might not be suitable for bindings. What are these values? Look like
some register values, which there is little sense in making a binding.

Best regards,
Krzysztof

