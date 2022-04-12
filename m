Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21D234FE696
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 19:10:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357243AbiDLRM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 13:12:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357229AbiDLRMz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 13:12:55 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 230E84AE3F
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 10:10:37 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id k23so38597602ejd.3
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 10:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tMeG91UsHNrr1jeURVpZbmaohRl615AR2PfwG+NbeOY=;
        b=W15pYa9ziqyAmV1HDCWHwRBRTqSvEu/iOCz92WY5pNesraZw1EIXwkODapHvkpfWQF
         bN3aiY1CcNT/hQwQbxjwitUYoYN43PMoVPbVEKQxZ6YXG9ozUXVPamy5pkaWawwPmGyv
         oSolzNetAiUpnYTeqgPtRZnqXzaOWyjChvqAEde5vCprALDckGhhBt3eGbBJfxGiktxY
         k62OI5TowS0z/igbMvQF5ObocGgMiJ1JJrZX7fYKHLZzF7cm3Zr797FMLMumza6PjI6t
         6tqsai9+0MDoGfPZRQOY1vDhhpzTT5giiyM+bV4eQOW4eZukRlXtTWc+pBIAJMS+t1MW
         D9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tMeG91UsHNrr1jeURVpZbmaohRl615AR2PfwG+NbeOY=;
        b=ofY50vhTBrCRPSHkkUdvrpT9F6NhJk3jQF0A2zrEt2zlUNCtdpk2BXvKxvRDyaZLEI
         amG7s0HYB5oLiCh08JPErL5g8AffwKkXImPvQ+FySLdo/zzhp/xeY3Y6LMBYjHf0yBN5
         3RdbQc/gr1Vws/opnYoI5h4bV9VaHVCAKutULcCDwLlXAIIoyQIt2SRaKIARNqgOoMJw
         Yl5xLp0mC8IZd8oBzzccwi87ktEbZL8Fy8zUj92QeD+wGzpUWbMy7q5VKncc/OFFWngn
         0QKOzt1KGyIYhYktqoEPWSFNNH8rWUgCUt6ZShgorM/b9msx2bC+WtQwLfuJcDef+Jhy
         xnPA==
X-Gm-Message-State: AOAM533uDAC90rSy0ys7U2rex+EKpv4GPG3bUVblrk4xJUaHMNGag8ZW
        Mugpd2D7UqAhh6TcY8nhm4RkhRLvkcW5giS+
X-Google-Smtp-Source: ABdhPJyW6jA3Sb1IAzTFPzNcXRxHllkbhigW34XX0ozquIGx3DHlGVvuMIBsx2RWUYdKx7U5B6SZJQ==
X-Received: by 2002:a17:907:960f:b0:6e8:8df9:ce3a with SMTP id gb15-20020a170907960f00b006e88df9ce3amr10579415ejc.211.1649783435680;
        Tue, 12 Apr 2022 10:10:35 -0700 (PDT)
Received: from [192.168.0.198] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id lb4-20020a170907784400b006e0d13f65e5sm13334706ejc.167.2022.04.12.10.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 10:10:35 -0700 (PDT)
Message-ID: <ba518d4d-0f92-0d34-029c-c477c84db81d@linaro.org>
Date:   Tue, 12 Apr 2022 19:10:34 +0200
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
 <25feb189-4d97-f9b1-518e-69aae9a274e0@linaro.org>
 <74695e55-0b59-9236-be19-b02060ad4177@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <74695e55-0b59-9236-be19-b02060ad4177@microchip.com>
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

On 12/04/2022 14:26, Conor.Dooley@microchip.com wrote:
>>> Additionally MSSPLL is the source for CLK_{CPI,AXI,AHB} so I put it at
>>> the top. I have no particular preference, so if you want them reordered
>>> so that MSSPLL is under RTCREF just say the word :)
>>
>> Hm, are these in the same clock controller (device, not driver)? If yes,
>> then please order them numerically. Pretty often one binding header have
>> IDs for several clock controllers, so then it's a different case.
> 
> Not *quite* sure what you mean by device. There is only one SoC that
> this header applies to, but in the actual design the MSSPLL is in one
> block, the RTC divider in another and CLK_CPU -> CLK_CFM in a third.

By device I meant here part of Soc responsible for clocks which could be
called a self-containing block. Pretty often such block maps to a Linux
"struct device" or some wrapper around it (e.g. clock-controller
device). For example such "self-containing block" has device node in DTS.

Judging by your description, these will be different blocks / device
nodes in DTS?

Best regards,
Krzysztof
