Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA2484FE0B8
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242807AbiDLMqx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:46:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346277AbiDLMqI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:46:08 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E93F27CB29
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:10:22 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id k23so36883940ejd.3
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ocK32DG0lOhYPfJ1YNBplhX2lk9puVGzCXiGTBbg2g0=;
        b=zUfO7dUDyEBOMKX/21JxI4KgtNEBSIGnuEa6nfW/JP01yAr4h8QOycO5YVvWUP5Zir
         2nxISBVeQSUyW+QLzP1vR8SGrd9GPcNkuUR++POk5+s7UXEpGYCF12p31LEIV37btsmV
         fQr2zCOQoJy+LumPIH+Amqy4CB4D5gL6NTJ4L2Vbq+pmcI9Ha02nPoEfiQYSvSTKsPPD
         NSiYcHUP+eilX1Q7Ouv0uuy7tHxu7fdOqeklHLJwvkQ8eG4TAWPvF6+NJLtK5utrffIg
         YWT5BQl0WpfzHDcQACXma3BRqUrvwiaVZnaW1Q4N1KU808JiPrNNrd8HzBOQPJ1tSuvK
         6dCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ocK32DG0lOhYPfJ1YNBplhX2lk9puVGzCXiGTBbg2g0=;
        b=WtbSoH6ylpuz00eX8zWLioLd+HAPSZuRdQFbmucz0MNZhojG4o4YlP6ZGreKWbGRcT
         uzpH1oQQvyazyxDzIrQ5R9apcrUjDWqRP00aaPF0SxVZwbFYGQg9Y/Qd7ljTIx0gKxHv
         fZdzFqT+25o/6n9fXJew4YqdjJzHS92L52XP266RzMMrv4QRL8xbgxAOQy5IzoHQID6i
         /R11waNBONBEGieFvKgGO0CJ0vvvj+9iamHf4KyQYscOcXpkzDItqZ3ODyWt8AT2Vbgw
         REHyZr2rQtXacU71tphCxbVUvReKfvMs5wDYShDPaYQcaJF3Wam6Lw2RjnTmd0DQhm7P
         HfkA==
X-Gm-Message-State: AOAM533RJdUPXmCCSy39RZL7Ss1SRiFemZRAyrO3+8k6wM/am0dpOL7D
        NDZiXmy4CFIkpeheE54qZw7m0Q==
X-Google-Smtp-Source: ABdhPJxUTJZ7wUn3u5SGl6HSKEmB8eB1NKh1QPd6JHIZhHDlEq/LDm25RNe5j/qDCqcQ96Akok+PsQ==
X-Received: by 2002:a17:906:4fd5:b0:6e8:76d0:e0eb with SMTP id i21-20020a1709064fd500b006e876d0e0ebmr12688399ejw.412.1649765418537;
        Tue, 12 Apr 2022 05:10:18 -0700 (PDT)
Received: from [192.168.0.195] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id w14-20020a509d8e000000b0041cd217726dsm13327476ede.4.2022.04.12.05.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 05:10:18 -0700 (PDT)
Message-ID: <25feb189-4d97-f9b1-518e-69aae9a274e0@linaro.org>
Date:   Tue, 12 Apr 2022 14:10:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 5/9] dt-bindings: clk: mpfs: add defines for two new
 clocks
Content-Language: en-US
To:     Conor.Dooley@microchip.com, mturquette@baylibre.com,
        sboyd@kernel.org, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        palmer@rivosinc.com, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     Daire.McNamara@microchip.com, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220411085916.941433-1-conor.dooley@microchip.com>
 <20220411085916.941433-6-conor.dooley@microchip.com>
 <d49f38e7-5fd9-4e9a-cc20-2c839eb53712@linaro.org>
 <2e1b0207-dfb3-4cc5-d306-d2b0c6ed8cfd@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2e1b0207-dfb3-4cc5-d306-d2b0c6ed8cfd@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2022 14:04, Conor.Dooley@microchip.com wrote:
> On 12/04/2022 11:47, Krzysztof Kozlowski wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 11/04/2022 10:59, Conor Dooley wrote:
>>> The RTC reference and MSSPLL were previously not documented or defined,
>>> as they were unused. Add their defines to the PolarFire SoC header.
>>>
>>> Fixes: 2145bb687e3f ("dt-bindings: clk: microchip: Add Microchip PolarFire host binding")
>>> Reviewed-by: Daire McNamara <daire.mcnamara@microchip.com>
>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>>> ---
>>>   include/dt-bindings/clock/microchip,mpfs-clock.h | 5 ++++-
>>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/include/dt-bindings/clock/microchip,mpfs-clock.h b/include/dt-bindings/clock/microchip,mpfs-clock.h
>>> index 73f2a9324857..3cba46b9191f 100644
>>> --- a/include/dt-bindings/clock/microchip,mpfs-clock.h
>>> +++ b/include/dt-bindings/clock/microchip,mpfs-clock.h
>>> @@ -1,15 +1,18 @@
>>>   /* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>>>   /*
>>>    * Daire McNamara,<daire.mcnamara@microchip.com>
>>> - * Copyright (C) 2020 Microchip Technology Inc.  All rights reserved.
>>> + * Copyright (C) 2020-2022 Microchip Technology Inc.  All rights reserved.
>>>    */
>>>
>>>   #ifndef _DT_BINDINGS_CLK_MICROCHIP_MPFS_H_
>>>   #define _DT_BINDINGS_CLK_MICROCHIP_MPFS_H_
>>>
>>> +#define CLK_MSSPLL   34
>>
>> You have some weird order here. Shouldn't it be under CLK_RTCREF?
> 
> Yeah numerically weirdly ordered - I grouped the clocks by type:
> MSSPLL is a pll, CPU/AXI/AHB/RTC are all dividers & the rest are on/off
> toggles. I'd've prefered to have renumbered the whole list, but that
> didn't feel like a good idea.
> 
> Additionally MSSPLL is the source for CLK_{CPI,AXI,AHB} so I put it at
> the top. I have no particular preference, so if you want them reordered
> so that MSSPLL is under RTCREF just say the word :)

Hm, are these in the same clock controller (device, not driver)? If yes,
then please order them numerically. Pretty often one binding header have
IDs for several clock controllers, so then it's a different case.


Best regards,
Krzysztof
