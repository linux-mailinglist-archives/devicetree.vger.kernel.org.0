Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12DD65A606E
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 12:14:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiH3KOA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 06:14:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbiH3KNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 06:13:30 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E84710541
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 03:10:22 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id w8so5775263lft.12
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 03:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=EgnDZawayll/TZ+ocCBlj4vzfhU1iWcXae1blePHBeI=;
        b=pQPWKaV07CHWz5hl5ve9Mj3xCOzwiOV/diab5zIdgaaw/UjGMdEIQqdvm5wj3cYvIX
         +Zm2hwL2j9HxaUayBUC3mHfqwsNUmQPJb6mh0oBOvqsT2e162F1rl+B3zZ9R+5m7rkqW
         M3MLbfrWoo8KUEQ/DL1Uf/9cr5vnrK58GEzm5lL6oi9FYWyDXU2waXoJz4YTVVufvmm5
         /oskk+OGSFfysz2tTxUQhUc+X3grEoBoS3P9Kt5HZQOQrai31SHdioBoJY6vRzAG9M7c
         jmj1uiIrdULzgMHvObn6jDBWz9aTrEU0phbNDPZMpJobT+fB+WeycnNC83rw/Bwsu5v2
         x3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=EgnDZawayll/TZ+ocCBlj4vzfhU1iWcXae1blePHBeI=;
        b=MlnCdw81uTxlGOPcC+Qq45GQkLYQZIocnxMGOeIjATWn9a+rBBYg3maY96v2YZeijy
         BlQ99wRQHytWsjGQb3fMlhNg18LIOGQ+iyNqAShugD6/LeZbg6Q0BpQkctaw+MIfJIiQ
         RcO+Yod2XRDEzGV3Uxlq+gPHJHSG2EkNRHcVCObG7MiX1M6oHzUouee74gIrG8SEGMPY
         DLaMP8XmOg+nevKRRHc6JBfk5eEeCOdDZFLr0z85tn9qbcp1yOBWV7mj6u5KHmtMm9IE
         IU1/q18lGB114DlRpm0F2Jbz2bvZl4UK747vnwp7dmJc8soCMbJ8k6wC1ivNYRWY4dYJ
         NvWA==
X-Gm-Message-State: ACgBeo35bI5xqmaZ8ZhUKUp9nEQVgUUN941ic9CfAkRqBKvmX6AIXRXM
        tSXXgWQynBu1QjQvEVmI64vrCcpPRkriRZ6iX3s=
X-Google-Smtp-Source: AA6agR6abuAS5upLveqHIvJ7T72ZEkevibkm46Oky+6kWT+BFztbk1BBuuWRwkW4nBy132uOrL5irA==
X-Received: by 2002:ac2:52ad:0:b0:492:d8ae:364f with SMTP id r13-20020ac252ad000000b00492d8ae364fmr6919677lfm.249.1661854219242;
        Tue, 30 Aug 2022 03:10:19 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id m9-20020ac24249000000b00492f37e428asm1562479lfl.172.2022.08.30.03.10.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 03:10:18 -0700 (PDT)
Message-ID: <fa987e2a-cd48-b08b-d191-419624699dc9@linaro.org>
Date:   Tue, 30 Aug 2022 13:10:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: lan9662-otpc: document Lan9662 OTPC
Content-Language: en-US
To:     Horatiu Vultur <horatiu.vultur@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, UNGLinuxDriver@microchip.com
References: <20220825204041.1485731-1-horatiu.vultur@microchip.com>
 <20220825204041.1485731-2-horatiu.vultur@microchip.com>
 <96da4897-7b55-84d5-8f1d-892e116153df@linaro.org>
 <20220826073103.kkotbaxc3latculo@soft-dev3-1.localhost>
 <bb0331e7-2203-e8cb-70b6-5d43bf6a0aaf@linaro.org>
 <20220829063557.3ntgt6uqblgew3r3@soft-dev3-1.localhost>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220829063557.3ntgt6uqblgew3r3@soft-dev3-1.localhost>
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

On 29/08/2022 09:35, Horatiu Vultur wrote:
> The 08/26/2022 20:37, Krzysztof Kozlowski wrote:
>>
>> On 26/08/2022 10:31, Horatiu Vultur wrote:
>>> The 08/26/2022 09:42, Krzysztof Kozlowski wrote:
>>>
>>> Hi Krzysztof,
>>>
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    items:
>>>>> +      - const: microchip,lan9662-otpc
>>>>> +      - const: microchip,lan9668-otpc
>>>>
>>>> Does not look like you tested the bindings. Please run `make
>>>> dt_binding_check` (see
>>>> Documentation/devicetree/bindings/writing-schema.rst for instructions).
>>>>
>>>> This won't work...
>>>
>>> You are right. That was a silly mistake on my side.
>>>
>>> It should be:
>>> ---
>>> properties:
>>>   compatible:
>>>     enum:
>>>       - microchip,lan9662-otpc
>>>       - microchip,lan9668-otpc
>>> ---
>>> Because what I want to achive is to be able to use any of
>>> string(microchip,lan9662-otpc or microchip,lan9668-otpc) as compatible
>>> string.
>>>
>>> Or this is not the correct change?
>>> At least with this change dt_binding_check is happy.
>>
>> This would be correct from syntax point of view, however maybe not the
>> best choice from functional point of view. How you wrote the driver and
>> bindings, these devices are compatible, so why this is not expressed as
>> compatible devices?
> 
> OK, so then it should be something like this?
> ---
> properties:
>   compatible:
>     items:
>        - const: microchip,lan9662-otpc
>        - const: microchip,lan9668-otpc
> ---
> 

I would expect:

oneOf:
  - items:
       - const: microchip,lan9668-otpc
       - const: microchip,lan9662-otpc
  - enum:
       - microchip,lan9662-otpc

(but you need to fix indentation)

Best regards,
Krzysztof
