Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E09F755BA8
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 08:28:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231679AbjGQG2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 02:28:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231293AbjGQG2W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 02:28:22 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E52C410DA
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:28:04 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9891c73e0fbso847782166b.1
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689575282; x=1692167282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g95ImAOv3GgK0GpjAzOClKviSQVPX7slmMjb9FKPgog=;
        b=VtvXM7e/GE78fPNOyrYoDcCcPcb6WUt8MDO9ogXzlKh4Lg9LMqfFmojPSY8+6UsF0B
         qE/u/K96Un2jlMGEAZuTAWXfIwH2bx1sG9yFACcYHiMsT2fCmBN7Pd4jYHkXgldu6TsJ
         u07UMTS2+WXOr/AUKP4gCabVQaHJf+pQdATwRiWdyvSnct6v9HKoVRyb04zErZdK6xWa
         yvGToMMprF5ySw9B5U66RVjjqhbDpmQldpenRGicTJOl/IGln5/ZqFR74bmOF3waWSwY
         AwYZ30iysaAl3wTWnov557D79aA8iAtbp3L3yNwEKeHvN8aqhVAQ04U28+38edZzxCmf
         oUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689575282; x=1692167282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g95ImAOv3GgK0GpjAzOClKviSQVPX7slmMjb9FKPgog=;
        b=SORdfbGxWb6PfaXtTdBQCFJ8R+IJm8tnEfYQpKObA5wY8u58LC3YtIpMcsJ5OVxniV
         vCeugQufSZpz6KMn7Qy4yaZUN8bikQug1BdHytJlGCNpOoaK4k1/NumvS+eel1uUsTOW
         KX6DHsfJNrVj7YVh1O+G5baUidPAAA1zFK30Q8w2407A2RqO8L64pXYo9173GatFkXMl
         Fg9RXsi5xnqAx++p5q35z9hRA1PS3XiFgcs5uNxUrI/fuTia/hAXBx9Ic0522x7hfigY
         Kvotu84T79rUphbxykEvzehN3yaeI1Og8WuIVsXTqx5mUOmN9YW4KBnilSwZUUDS1Dr2
         by7Q==
X-Gm-Message-State: ABy/qLZzYD7fTAryqMgcJ1Veoewy5+Ivsr8W2RaExIVyw2QWlP5h1y6E
        afRicfEIg8jA4O7A99WCpKHysg==
X-Google-Smtp-Source: APBJJlFzgtEkhcJ8uj0H6/7W6EI9PyNWILKrL8k0UI+btFseTwwA+eYkesHxO7R/CL2KACDMZDzVmw==
X-Received: by 2002:a17:907:970a:b0:98d:4b97:acc8 with SMTP id jg10-20020a170907970a00b0098d4b97acc8mr11930029ejc.25.1689575282268;
        Sun, 16 Jul 2023 23:28:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id s21-20020a170906355500b0098de7d28c34sm8704851eja.193.2023.07.16.23.27.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jul 2023 23:28:01 -0700 (PDT)
Message-ID: <625a92b8-b629-a4ef-6176-635e1b7885db@linaro.org>
Date:   Mon, 17 Jul 2023 08:27:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 0/3] Add support for WDIOF_CARDRESET on TI AM65x
Content-Language: en-US
To:     "Li, Hua Qian" <HuaQian.Li@siemens.com>,
        "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
        "linux@roeck-us.net" <linux@roeck-us.net>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
Cc:     "kristo@kernel.org" <kristo@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "huaqianlee@gmail.com" <huaqianlee@gmail.com>,
        "nm@ti.com" <nm@ti.com>, "vigneshr@ti.com" <vigneshr@ti.com>,
        "Kiszka, Jan" <jan.kiszka@siemens.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "Su, Bao Cheng" <baocheng.su@siemens.com>,
        "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>
References: <20230717040723.1306374-1-huaqian.li@siemens.com>
 <f5ff9616-c71c-f71e-ce4a-7b9fa7055bb4@linaro.org>
 <e57e5d8efc3107b5f2c4e66492650b9d0c17b898.camel@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e57e5d8efc3107b5f2c4e66492650b9d0c17b898.camel@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 08:24, Li, Hua Qian wrote:
> On Mon, 2023-07-17 at 08:16 +0200, Krzysztof Kozlowski wrote:
>> On 17/07/2023 06:07, huaqian.li@siemens.com wrote:
>>> From: Li Hua Qian <huaqian.li@siemens.com>
>>>
>>> The watchdog hardware of TI AM65X platform does not support
>>> WDIOF_CARDRESET feature, add a reserved memory to save the watchdog
>>> reset cause, to know if the board reboot is due to a watchdog
>>> reset.
>>>
>>> Signed-off-by: Li Hua Qian <huaqian.li@siemens.com>
>>> ---
>>> Changes in v4:
>>> - Fix the coding style.
>>> - Add usage note for the reserved memory.
>>> - Link to v3:
>>>  
>>> https://lore.kernel.org/linux-watchdog/20230713095127.1230109-1-huaqian.li@siemens.com
>>
>> Much more changed. You added example in the bindings which no one
>> asked
>> for. Then you added multiple fake review tags to all the patches.
>>
>> Best regards,
>> Krzysztof
>>
> Hi,
> 
> Sorry for the wrong statement. I missed some key information and
> missunderstood `Reviewed-by`, I treated `Reviewed-by` as `Who
> has reviewed`.

But you don't have even that information who has reviewed! Where do you
see any reviews coming from me for patch #2? Where do you see reviews
from Rob for patch #3?

Best regards,
Krzysztof

