Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE33D6C594A
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 23:08:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229806AbjCVWIy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 18:08:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229726AbjCVWIx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 18:08:53 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E3DC211C8
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 15:08:51 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id cy23so78823238edb.12
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 15:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679522930;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1RxQhs+5nT1cGEF+S7KHo2MbnC6V2bW37uYGjO3EbSk=;
        b=Kxo9nBriywbT/ZZJ69nQMJsy/l+ISCYFaMxbFJTi9o48mBS4fu48Gi6+4K3zk34TGp
         bUjI5CeaNBhu+vNyNwmgY7JnqStF3zsskMzQtUgwf7t8dwBV+z7fXehynKHTcbTunfqO
         /yko5qbSvmgR4KkV/7RCHWaVNAeDpByBsUBg4EsiX9kTS+G+KDPOhtFrCDawy/qq4LOk
         99zEm0jKmHhPwdf4LcnJTvhHpw3MTiH1klmRvEhAfOfkPPuCNgFCBiX6WC2jsRhh4xhk
         WpJLcf26nXvfwmJKWPpT7jny1fNatALqUeNwm7iDVBoe0pvn8/symosMinx+aq5iFjPj
         rNuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679522930;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1RxQhs+5nT1cGEF+S7KHo2MbnC6V2bW37uYGjO3EbSk=;
        b=a7Hho4A8+sDPR+E/R3427i1ZUo0Uwcf/bOPErA95ELN/lLsxZfzsfnAuJjYZtylsJR
         9WPWYNlfNauptYq22h0i+Rq5mkBzzuoVBuB/y2HC7SBP/ANWThpRzMhvHxCxOqMW8zOe
         wStSpggBUrL38mw+N/g4cOH6dtkYHN6diT6qQvGQZe8P8RugyGpkOgu3aqabqbD7newg
         zZwUqEKssBUV8C1ofKNUF1eosMcBqCmadqV9AiNqW7ms9XdRtxIySnGAyD5mBEgLExj3
         7AAYz4IXDOf6lRmqeGSoLIvR6o21BJhD+aY2poNghvw6LuN/KsCKx3oeaoEbBe7u8UTZ
         dwIg==
X-Gm-Message-State: AO0yUKU6AkWgM5Lhk4Nck4t6ELvoxqiCzrOO2fCY1P7k1emJTOriQHIC
        QWvEb8/Gcqir/YlfEdyzUnF0yg==
X-Google-Smtp-Source: AK7set/Fr87Q+Bfj84amA7PAxDha0PEt5/lwIrkT4BrdW7rkal7BI+EOnYTYTYtm2ybRfZ/EXIAmLw==
X-Received: by 2002:aa7:d7c4:0:b0:500:47ed:9784 with SMTP id e4-20020aa7d7c4000000b0050047ed9784mr3952702eds.14.1679522929785;
        Wed, 22 Mar 2023 15:08:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:626d:5729:6e71:4c22? ([2a02:810d:15c0:828:626d:5729:6e71:4c22])
        by smtp.gmail.com with ESMTPSA id a18-20020a50c312000000b004c06f786602sm8345627edb.85.2023.03.22.15.08.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 15:08:49 -0700 (PDT)
Message-ID: <6cf27e09-af76-34a5-1913-77165866480b@linaro.org>
Date:   Wed, 22 Mar 2023 23:08:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [EXT] Re: [PATCH v3 1/3] dt-bindings: usb: cdns-imx8qm: add
 imx8qm cdns3 glue bindings
Content-Language: en-US
To:     Frank Li <frank.li@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
References: <20230321151951.2784286-1-Frank.Li@nxp.com>
 <20230321151951.2784286-2-Frank.Li@nxp.com>
 <1ce3bf91-6bef-b4c1-1ec9-3a345518efeb@linaro.org>
 <AM6PR04MB483828FC1083E3C98930DF6488869@AM6PR04MB4838.eurprd04.prod.outlook.com>
 <b5d67af0-ed08-e243-2c0c-92f1f002e552@linaro.org>
 <AM6PR04MB483841E17BEEE4F9EC596DBA88869@AM6PR04MB4838.eurprd04.prod.outlook.com>
 <835cda64-5d42-1ff3-aa8f-0802fe3d705f@linaro.org>
 <AM6PR04MB48383C58EF1D9CFD8F7C401E88869@AM6PR04MB4838.eurprd04.prod.outlook.com>
 <24767874-0b26-78c8-43c2-6cc3adb901f8@linaro.org>
 <AM6PR04MB4838ECE2917EF132943830EA88869@AM6PR04MB4838.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AM6PR04MB4838ECE2917EF132943830EA88869@AM6PR04MB4838.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/03/2023 22:57, Frank Li wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Wednesday, March 22, 2023 4:43 PM
>> To: Frank Li <frank.li@nxp.com>
>> Cc: devicetree@vger.kernel.org; festevam@gmail.com; imx@lists.linux.dev;
>> kernel@pengutronix.de; krzysztof.kozlowski+dt@linaro.org; linux-arm-
>> kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>; linux-
>> kernel@vger.kernel.org; robh+dt@kernel.org; s.hauer@pengutronix.de;
>> shawnguo@kernel.org
>> Subject: Re: [EXT] Re: [PATCH v3 1/3] dt-bindings: usb: cdns-imx8qm: add
>> imx8qm cdns3 glue bindings
>>
>> Caution: EXT Email
>>
>> On 22/03/2023 22:40, Frank Li wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Sent: Wednesday, March 22, 2023 4:38 PM
>>>> To: Frank Li <frank.li@nxp.com>
>>>> Cc: devicetree@vger.kernel.org; festevam@gmail.com;
>> imx@lists.linux.dev;
>>>> kernel@pengutronix.de; krzysztof.kozlowski+dt@linaro.org; linux-arm-
>>>> kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>; linux-
>>>> kernel@vger.kernel.org; robh+dt@kernel.org; s.hauer@pengutronix.de;
>>>> shawnguo@kernel.org
>>>> Subject: Re: [EXT] Re: [PATCH v3 1/3] dt-bindings: usb: cdns-imx8qm: add
>>>> imx8qm cdns3 glue bindings
>>>>
>>>> Caution: EXT Email
>>>>
>>>> On 22/03/2023 22:36, Frank Li wrote:
>>>>>
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>> Sent: Wednesday, March 22, 2023 4:32 PM
>>>>>> To: Frank Li <frank.li@nxp.com>
>>>>>> Cc: devicetree@vger.kernel.org; festevam@gmail.com;
>>>> imx@lists.linux.dev;
>>>>>> kernel@pengutronix.de; krzysztof.kozlowski+dt@linaro.org; linux-arm-
>>>>>> kernel@lists.infradead.org; dl-linux-imx <linux-imx@nxp.com>; linux-
>>>>>> kernel@vger.kernel.org; robh+dt@kernel.org;
>> s.hauer@pengutronix.de;
>>>>>> shawnguo@kernel.org
>>>>>> Subject: Re: [EXT] Re: [PATCH v3 1/3] dt-bindings: usb: cdns-imx8qm:
>> add
>>>>>> imx8qm cdns3 glue bindings
>>>>>>
>>>>>> Caution: EXT Email
>>>>>>
>>>>>> On 22/03/2023 15:34, Frank Li wrote:
>>>>>>>
>>>>>>>
>>>>>>>> -----Original Message-----
>>>>>>>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>>>> Sent: Wednesday, March 22, 2023 2:32 AM
>>>>>>>> To: Frank Li <frank.li@nxp.
>>>>>>>>> +      - const: usb3_aclk
>>>>>>>>> +      - const: usb3_ipg_clk
>>>>>>>>> +      - const: usb3_core_pclk
>>>>>>>>> +
>>>>>>>>> +  assigned-clocks:
>>>>>>>>> +    items:
>>>>>>>>> +      - description: Phandle and clock specifoer of
>>>>>>>> IMX_SC_PM_CLK_MST_BUS.
>>>>>>>>
>>>>>>>> Drop useless pieces so "Phandle and clock specifoer of " and name
>> the
>>>>>>>> hardware, not the syntax.
>>>>>>>>
>>>>>>>>> +
>>>>>>>>> +  assigned-clock-rates:
>>>>>>>>> +    items:
>>>>>>>>> +      - description: Should be in Range 100 - 600 Mhz.
>>>>>>>>
>>>>>>>> That's better but I still do not understand why do you need it in the
>>>>>>>> bindings. You never actually answered this question.
>>>>>>>
>>>>>>> I am not sure 100% sure the reason.
>>>>>>> I think difference system target's  axi bus frequency is difference,
>>>>>>> And just one time work, needn't software to manage it.
>>>>>>> Following other driver's code style may be another reason.
>>>>>>
>>>>>> That's the reason of heaving it in DTS. But I am asking about bindings.
>>>>>> You do understand you define here interface?
>>>>>
>>>>> I defined here is descript AXI frequency for usb controller. Supposed
>>>> difference
>>>>> Platform will have difference working frequency.
>>>>
>>>> I don't understand how does this answer my concerns of having it in DT
>>>> bindings. If you do not add it, you "will have difference working
>>>> frequency", so what's the point?
>>>
>>> For example: imx8qxp, it need set to 250Mhz,  i.MX8QM need set to
>> 200Mhz.
>>> Maybe future chip can set to 400Mhz.
>>
>> And? So as you can see you will still have different frequencies, so
>> what's the point? What is the benefit? Dunno, maybe we do not understand
>> each other, because I don't think you are answering my questions at all.
> 
> Benefit: New chip just need change dts file for the same IP, like change base
> Reg address and irq number.  

To remind - the question was:
"That's better but I still do not understand why do you need it in the
bindings."
If you drop it from the bindings the benefit is still there, so what do
you want to prove?

> 
> Your question is:  "why need this assigned-clock-rates IMX_SC_PM_CLK_MST_BUS property?"

This was the previous thread. Now, related but slightly different, why
do you still need it in the bindings?


> My answer: it is one of hardware property, like reg base address and irq number.

Sure, it is, I know, and bindings already allow it. Just look at many
DTS and their bindings. Do you see the bindings defining this property?
No. So why do you think it is needed here? I am asking this since like 6
emails and your answers are not related to bindings at all.

> 
> If can't match your expectation, can you change another words or provide me an example?  

Yeah, just open several DTS and look for assigned-clock, then open their
bindings and answer - why do you need to add it to the binding but all
other bindings did not have to? If you have the answer, sure, bring
these parts of bindings.

Best regards,
Krzysztof

