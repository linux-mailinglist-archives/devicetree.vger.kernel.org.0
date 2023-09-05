Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC31F79282E
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 18:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229723AbjIEQV6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 12:21:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354303AbjIEKii (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 06:38:38 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EDC6E8
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 03:38:35 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-977e0fbd742so334032266b.2
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 03:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693910314; x=1694515114; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4WKpCpzUJa8iRluzL4OMCEUy6exJH98L6niCS735SFI=;
        b=QGvjM3JR/MttzXfj4LbMqEsQe92IMOSuD+hjNzPOZSLzrFcerItkxlkQLOwCITfybP
         c0TGlCXNZoRJXmLGyBAx30JYb17ckKFXsZeBoted2CDM7P6DyHFialzzOw32xGT7Z6xv
         ZciEo3FjKk5dzl7vDoeQybN8Oy9tevA0gcdy/t/o8wax4ZrXf1dNLa0EuwjV7jBClGk5
         cvnX13xUI3017rCcrXd81veMYoympfE92JQdL4Q08igLOv/nsqlNxq5RG33bf6/zdVb7
         jFUBEsFBNhac51nlmra/8NSuuYeVA/LV9MKk8kJBqpNDA5Xz42rQZdtUTEqn2BZ4lgl1
         jkAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693910314; x=1694515114;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4WKpCpzUJa8iRluzL4OMCEUy6exJH98L6niCS735SFI=;
        b=XqWo8V8h4o+BcYuavpcLbsTdqYT4T9PaCI7eSd9dWGaijY3WUXaTGC4MGOUt73zBKV
         B8qFc3Sp0lynbGwCCKoibIuNd3UqgtaPUTpPCOk2LMGUO6CkEp7hWAB2HCtRy3mpLhB6
         mSh9Ab9lmdhJjHnzpMGCvhf7EOrlYdeaYQULzHOT4XTeYFfYwK5HqjhuISTmsjRRtzxb
         TUa6suIBcKLE6ENB7po0AG5uqbpFKUnTlrWNH8MxgKy9Z9zDzPLUqQTYBsDILeLCmrQs
         1Nqrrd0eHN6fknpo6riLA9/hUM5SMjgtNxseTHylopTNyH52ZMH7BlALqGWt4z52xzHR
         oVig==
X-Gm-Message-State: AOJu0Yxgo8MNFNiB5ZtPBXqJ6tcAgXpcFCxAPDrSkfkE8ECkzFmfk64e
        uBpkoXJAE5u9utgbLNhdgUhz/Q==
X-Google-Smtp-Source: AGHT+IGDPbqZkn81hlAaihoCBFF4Kq/KErYZluh4+aPmtASgvaAQ5tkK7GxPPmEKCJnHVZaZn7mygQ==
X-Received: by 2002:a17:906:319a:b0:9a5:d095:a8e4 with SMTP id 26-20020a170906319a00b009a5d095a8e4mr8946249ejy.1.1693910313669;
        Tue, 05 Sep 2023 03:38:33 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id ss22-20020a170907c01600b00992e14af9c3sm7437367ejc.143.2023.09.05.03.38.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Sep 2023 03:38:33 -0700 (PDT)
Message-ID: <a0f0ab97-2333-542a-327f-f5711136b35a@linaro.org>
Date:   Tue, 5 Sep 2023 12:38:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 1/2] ARM: dts: aspeed: Minerva: Add Facebook Minerva
 (AST2600) BMC
Content-Language: en-US
To:     PeterYin <peteryin.openbmc@gmail.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     cosmo.chou@quantatw.com, potin.lai@quantatw.com,
        daniel-hsu@quantatw.com
References: <20230830090212.3880559-1-peteryin.openbmc@gmail.com>
 <20230830090212.3880559-2-peteryin.openbmc@gmail.com>
 <b9cbe9be-b03e-6c7a-d06c-b75b012b5b25@linaro.org>
 <18b78489-6a12-a09f-620d-985be747f9da@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <18b78489-6a12-a09f-620d-985be747f9da@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,WEIRD_QUOTING
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2023 11:55, PeterYin wrote:
> 
> On 8/30/23 17:44, Krzysztof Kozlowski wrote:
>> On 30/08/2023 11:02, peteryin wrote:
>>> Add linux device tree entry related to
>>> Minerva specific devices connected to BMC SoC.
>>>
>>> Signed-off-by: peteryin <peteryin.openbmc@gmail.com>
>> To clarify: your full name or known identity is "peteryin"?
>>
>>> ---
>>>   arch/arm/boot/dts/Makefile                    |   1 +
>>>   .../boot/dts/aspeed-bmc-facebook-minerva.dts  | 385 ++++++++++++++++++
>>>   2 files changed, 386 insertions(+)
>>>   create mode 100644 arch/arm/boot/dts/aspeed-bmc-facebook-minerva.dts
>>>
>>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>>> index 9e1d7bf3cff6..edb0b2105333 100644
>>> --- a/arch/arm/boot/dts/Makefile
>>> +++ b/arch/arm/boot/dts/Makefile
>>> @@ -1604,6 +1604,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>>   	aspeed-bmc-facebook-wedge400.dtb \
>>>   	aspeed-bmc-facebook-yamp.dtb \
>>>   	aspeed-bmc-facebook-yosemitev2.dtb \
>>> +	aspeed-bmc-facebook-minerva.dtb \
>> Nothing improved here.
>>
>>>   	aspeed-bmc-ibm-bonnell.dtb \
>>>   	aspeed-bmc-ibm-everest.dtb \
>>>   	aspeed-bmc-ibm-rainier.dtb \
>>
>>> +	"","","","","","","","",
>>> +	/*O0-O3 line 224-231*/
>>> +	"","","","","","","","",
>>> +	/*O4-O7 line 232-239*/
>>> +	"","","","","","","","",
>>> +	/*P0-P3 line 240-247*/
>>> +	"","","","","","","","",
>>> +	/*P4-P7 line 248-255*/
>>> +	"","","","","","","","";
>>> +};
>>> +
>> Nor here.
>>
>> This is a friendly reminder during the review process.
>>
>> It seems my previous comments were not fully addressed. Maybe my
>> feedback got lost between the quotes, maybe you just forgot to apply it.
>> Please go back to the previous discussion and either implement all
>> requested changes or keep discussing them.
>>
> Could you please clarify for me?
> 
> Are you asking if the last line should not have a blank line, or I can't 
> set a comment for the sgpio line like this:

6 or 7 versions ago I said:
"Still redundant blank line."
so it is about stray blank line.

https://lore.kernel.org/all/9f499fe5-db59-f4c8-6a50-93725b7287fd@linaro.org/

Best regards,
Krzysztof

