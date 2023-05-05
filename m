Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A56C6F80D2
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 12:33:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229904AbjEEKds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 06:33:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjEEKdr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 06:33:47 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B4641942E
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 03:33:43 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-958bb7731a9so282452166b.0
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 03:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683282822; x=1685874822;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uXbOOaa6lHbagpOulw6nIxkN2Wmina7h5BUiyCXcztM=;
        b=NJrqYB8uKiGMlgsd2fARPmr4O8iRq1t54pzg1unkONXxX2v5yrs5/9s4YPiZvuv+HN
         KISqmIStuVk/oZarPWdRnmbK6FzxTb/F94w6DiCpLXvvFfO0xSCpxVrZsrroytDLyGMY
         03DNL1HvJSjxgZad8+ZJxdh8OPv2/vO5DeYC8LreBkpoUxo7btCYJ4pxXYhsAXhjLT17
         VIu2MxdBzbrKMYtWin+CQM/v0gwGdL3wR/aiZIBJVpTaG3XmzlbQeCBkLfwQKR2VpxJQ
         DjEzSuL4FiykJxdelcpIJcnYIRNqiJxJkKtz3ykb6ZiNPn84/sONzg9qANLyj2o3EhPl
         Y2GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683282822; x=1685874822;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uXbOOaa6lHbagpOulw6nIxkN2Wmina7h5BUiyCXcztM=;
        b=lcvjZMWZDSQ7mF9FD9Y5EZ1PwVu6gpEAB/CLTb4UL/uwbPWtgf4BycVSPFa1ZbZbE9
         mT8U7AjyROI+KPMZ8LcSAugb9XJhis1s7EZ15bZzVgzIjHv+bRxaUXCJzkNl6RD1x6OF
         nr60qu79G5elxWsAi9cObfX3xuIs/h4EI+Z2D9OXS0KvFV1e1GI9SWj4dcd3mbuxnozZ
         3E+rbrtlECgI3uDq1O+Yyrn5MYMM4F6nxujVvz/C4QjQk0dfOx5WUZIIgxYumVY4MBvX
         7cX+8eo/PbDfybcL1YCZNQLlEj3pjOK5NpzTXKuIlMK34MM5Yx5Edu1ZeFZDP2vpS0zQ
         j1EA==
X-Gm-Message-State: AC+VfDzhNXyCyggR/i8gvcnI2JwBmxEz0a9Ulck397Dx9j/4RukkAl85
        VB2bPitk+JsytEK5wK+eTudt7w==
X-Google-Smtp-Source: ACHHUZ5b7aZIVjg8UcKiVXBMvxmz47RDGI4+bjQTJt6Oc1hwmedlKlda+yIeBN/NaT6oPCx0jeIDlg==
X-Received: by 2002:a17:907:2ce3:b0:94f:2d38:896b with SMTP id hz3-20020a1709072ce300b0094f2d38896bmr695179ejc.53.1683282821891;
        Fri, 05 May 2023 03:33:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:52e:24ce:bbc1:127d? ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id n19-20020a17090625d300b0094a82a236cbsm764707ejb.129.2023.05.05.03.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 03:33:41 -0700 (PDT)
Message-ID: <d9c0bef4-de7a-2a0d-17b1-822978d27177@linaro.org>
Date:   Fri, 5 May 2023 12:33:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [EXT] Re: [PATCH 1/2 v5] dt-bindings: watchdog: marvell GTI
 system watchdog driver
Content-Language: en-US
To:     Bharat Bhushan <bbhushan2@marvell.com>,
        "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
        "linux@roeck-us.net" <linux@roeck-us.net>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <linux-kernel@vger.kernel.org, sgoutham@marvell.com>
 <20230503121016.6093-1-bbhushan2@marvell.com>
 <9911bb17-e8f7-b552-7056-a26b3194c416@linaro.org>
 <DM5PR1801MB1883A469C355797CE4A6E83CE36D9@DM5PR1801MB1883.namprd18.prod.outlook.com>
 <bb52dbb7-7225-552c-2daa-688aa304a9a0@linaro.org>
 <DM5PR1801MB18835D6D376910DA60B36D5FE36D9@DM5PR1801MB1883.namprd18.prod.outlook.com>
 <e1760ba6-4200-4fa0-5298-f76575522764@linaro.org>
 <DM5PR1801MB1883EE6116A2D63660871F8DE3729@DM5PR1801MB1883.namprd18.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DM5PR1801MB1883EE6116A2D63660871F8DE3729@DM5PR1801MB1883.namprd18.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2023 09:55, Bharat Bhushan wrote:
>>>>> Different platform have different number of GTI timers, for example
>>>>> some
>>>> platform have total 64 timer and other have 32 timers.
>>>>> So which GTI timer will be used for watchdog will depend on
>>>>> platform. So
>>>> added this property to enable this driver on platforms.
>>>>
>>>> This should be deducted from compatible.
>>>
>>> If I understood correctly, we should add different compatible for each soc and
>> use same to get the information we tried to get using "wdt-timer-index"
>> property, is that correct?
>>>
>>> But each series have many socs (10s) and GTI hardware is same except number
>> of timers they supports, so should we add that many compatibles or add a
>> property like this?
>>
>> Same story every time... and was discussed many, many times on the lists.
>>
>> https://urldefense.proofpoint.com/v2/url?u=https-
>> 3A__elixir.bootlin.com_linux_v6.1-
>> 2Drc1_source_Documentation_devicetree_bindings_writing-2Dbindings.rst-
>> 23L42&d=DwICaQ&c=nKjWec2b6R0mOyPaz7xtfQ&r=PAAlWswPe7d8gHlGbCLmy
>> 2YezyK7O3Hv_t2heGnouBw&m=3aeejmHQ5C8TyLM5odlaq6KnLYHt4PhpJp70FQa
>> qbNf7w15KFHA3fmeDR2V-en4m&s=FKeW5tpOG-
>> CJoV_JKuqTa0k_tRrYWAQZG1UfqlW3c74&e=
>>
>> You need anyway SoC specific compatibles. Once you add proper compatibles,
>> you will see that property is not needed.
> 
> Also on a given soc, firmware can configure one of 64 timer to be used as system watchdog time then compatible will not work.

Can't you query the firmware for that? Or can't you just choose first
unused timer? DT is for non-discoverable properties.

Best regards,
Krzysztof

