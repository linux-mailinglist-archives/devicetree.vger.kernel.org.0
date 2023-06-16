Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8CB2732A06
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 10:38:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242529AbjFPIis (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 04:38:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231469AbjFPIio (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 04:38:44 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FBC42D6A
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 01:38:42 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-985b04c46caso62881266b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 01:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686904721; x=1689496721;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pZEfJSYnwqLnbdKTWIKySlr4932iv0cggheuIvgWyaQ=;
        b=nQs/n0SJ5phrJogsv3awLm5NSsFpgx4QUySC4eBNCwYCX7s8emhUdNGSM9snOJdx0c
         1zEUnqrTovNcGgKvluiNirHj11V8MoyLMltmeu//J4RTVBkqyU64WjlX/k+M0yFT1ZtJ
         hgwjE1bXhP65N4phVOn3TEvR5G9ZaAaVLL102Y3muCgEW70I9qiDbbRPDVfIbcs2tVlf
         +iBQQF1JpqAh0sdJsWZb1GHGZ9ihiQ+zQKUf66AcwvZszqqrROAUS0fDSO5cYnkd93uY
         DmqzqH14PX/hR6GbIZHDdSb/R1Qfrf2mwJ7YeZCnmDHCyoq5acbIXyOi99xfw5Y9O/XJ
         uJSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686904721; x=1689496721;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pZEfJSYnwqLnbdKTWIKySlr4932iv0cggheuIvgWyaQ=;
        b=dvnXCU9eiGXkvNuMYBepf0BPDlApyWUc/Oq18en0smu7yHX7oXcXe89q43PkHhuz7d
         NrMSqCOtr+bm2Gq9tfVvWBqI+O5iLCZqxIawUaxAtQHnenbqJHXvigHk//4kPkq9zOh9
         YIs4PDFvooft7AhrdfAHO1p3p/Si0qBjiJoy/WzGa95/spgPTPfmhVCc44GJFIltDEOM
         XvuWBVEe3TGXfUW1C3WKRLF4hJ9ya+FcFK87zSydVTqeE/3hsgRVMXU1F8zOfnsP6jHX
         NlxNtq3Xu1oLWQCKULp+qWtq0/kE4ZgidbnmNHhslwa5znvP/rc5YZ4ndq/xq3cAcCRS
         k06w==
X-Gm-Message-State: AC+VfDzny+Thh462Hhf+fsAZPep6Z25sw2yIwmaAc+h8etZM1fker0ym
        /ysR0H2U5PKdTPo9w+XWXPLRFT6fPBaGA18FkBk=
X-Google-Smtp-Source: ACHHUZ4Ie2Po3MUDE6dj9CrV/HK9CiJ0NB9rm5vu9DTI7XghCArJ3u4gjKsWFnHbluQdq8m01/fx6A==
X-Received: by 2002:a17:907:7287:b0:973:93e3:bc9a with SMTP id dt7-20020a170907728700b0097393e3bc9amr1522867ejc.6.1686904721006;
        Fri, 16 Jun 2023 01:38:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id m25-20020a170906235900b00982aec29db1sm1684992eja.126.2023.06.16.01.38.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 01:38:40 -0700 (PDT)
Message-ID: <29a9f4a4-b205-d341-bc34-10829af2996a@linaro.org>
Date:   Fri, 16 Jun 2023 10:38:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v9 3/3] dt-bindings: mtd: marvell-nand: Convert to YAML DT
 scheme
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        "richard@nod.at" <richard@nod.at>,
        "vigneshr@ti.com" <vigneshr@ti.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "andrew@lunn.ch" <andrew@lunn.ch>,
        "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
        "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Vadym Kochan <vadym.kochan@plvision.eu>
References: <20230615040447.3484564-1-chris.packham@alliedtelesis.co.nz>
 <20230615040447.3484564-4-chris.packham@alliedtelesis.co.nz>
 <f16e742f-e6f2-9761-e70d-e0e7cadcba4a@linaro.org>
 <1863cd53-9846-def2-ee5f-f4a51160ed8d@alliedtelesis.co.nz>
 <781c1db2-ecca-901a-4e11-7f7c68cf744d@linaro.org>
 <20230616102414.222dde21@xps-13>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616102414.222dde21@xps-13>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 10:24, Miquel Raynal wrote:
> Hi Krzysztof,
> 
> krzysztof.kozlowski@linaro.org wrote on Fri, 16 Jun 2023 10:15:31 +0200:
> 
>> On 15/06/2023 23:06, Chris Packham wrote:
>>>>  
>>>>> +
>>>>> +properties:
>>>>> +  compatible:
>>>>> +    oneOf:
>>>>> +      - items:
>>>>> +          - const: marvell,armada-8k-nand-controller
>>>>> +          - const: marvell,armada370-nand-controller
>>>>> +      - enum:
>>>>> +          - marvell,armada-8k-nand-controller  
>>>> This is wrong. 8k cannot be both: compatible and not compatible with
>>>> 370. It's not someone's cat to be in both states at the same time...  
>>>
>>> The correct state (IMHO, Miquel correct me if I'm wrong) is `compatible 
>>> = "marvell,armada-8k-nand-controller";`  as there are some 8K specific 
>>> requirements that aren't present on the 370 (specifically the 
>>> system-controller and the 2nd clock).   
>>
>> Presence of specific requirements does not invalidate compatibility. Two
>> devices are compatible if the 8k can bind and work with 370 compatible
>> string, even if this means some lower performance or less features (e.g.
>> subset of features).
> 
> Quoting myself from 2019 (comment in the driver):
> "Some SoCs like A7k/A8k need to enable manually the NAND controller,
> gated clocks and reset bits to avoid being bootloader dependent."
> 
> So can the 8k controller work using a 370 compatible : yes, if the
> booloader enabled the NAND controller already, no otherwise. But in
> practice it is the same controller.
> 
> Given this information I don't know whether it makes sense to qualify
> the 8k controller compatible with the 370 compatible or not.

Indeed, a bit tricky decision. For me they could stay compatible,
because apparently programming model is the same or similar.

Best regards,
Krzysztof

