Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC6F9605FAA
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 14:04:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbiJTMEX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 08:04:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbiJTMET (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 08:04:19 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F2EC180580
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:04:17 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id u7so1438767qvn.13
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 05:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YIjHgbekdrLhXaNX8sPMK+VMNRdE5UzPgT2D3wtyzRQ=;
        b=qyIbV0EcV9VezHle3vZHJnj4em1DDdeqMex30KkmXi6+sRdr2rEIssIhQg4FXhZ9u9
         8Slj2qKuAm2606gsoi3o8ytUf0wXf0tF/Es8iWkLVJh+z0fM0AdeKW9gzYlzrb6IeVF9
         UDR9saj1ulerQQovuuArtWp99kiuwBjLuaK1DKBuzkfJdgiaXIit+JuoN1Ydbsw8xUP0
         wNCU7Dras7o7Mxy3+BykRsnqMXZZqa4zDLI+sI60oJsvC682gq5+z+NCEFK5o8A4azwh
         k4WtRbeyrK9KnQIP5RIK/dNshyD7ZGVRU0vs/RzzgrD+R6fh4R1rBmQ1UOxs9DD5o+Nc
         FUmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YIjHgbekdrLhXaNX8sPMK+VMNRdE5UzPgT2D3wtyzRQ=;
        b=1VgMyduqh7KQAi3yCsOLSh6FizFxboJ2DQMLKWruu86EiF9eH5GNbDnj7tA+vyIB82
         ttSX8FZTniJCoKH0LZFaMiXuWGeV4qp6iPehCZ2a6FbB3/mqcGLWB7bLD5x4c02z2ucI
         PehGsOw9PveKa6wzBkr9hNUisThoDMsYLVeCTXzjYcF3TfHEIUXYVvc4+dNQ1I53KOwm
         DIgxNydgKkUjh9aE/MUCrxwE6M65i7KhwvmkD13k3ZHGJKfu6ITo60I4IVCa/Z+kWC8A
         ewObbuaVNhigMX8Q+zZtsrx5rnBWwcJwrui8NKcGApqqARJzswtwd/cDFk/beWmpuXfc
         FnLA==
X-Gm-Message-State: ACrzQf12SmmLiNaNQwELLUfw2p7E+AYXMAVBB9g1x/vZ8BVL0RJsQM74
        cP7zDYbxbVCmmgrM+LV8XU2ZRw==
X-Google-Smtp-Source: AMsMyM6jEfplEuwXQfOfvIt5JgKv1oNIDJQs9EXcWJ+jPPAtGVT2PmC+CDmJ24XbDVtY2o/jPTeXfg==
X-Received: by 2002:a0c:f348:0:b0:4b6:8abb:aa44 with SMTP id e8-20020a0cf348000000b004b68abbaa44mr5259490qvm.24.1666267456509;
        Thu, 20 Oct 2022 05:04:16 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id l13-20020ac84a8d000000b00342f8d4d0basm5982148qtq.43.2022.10.20.05.04.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 05:04:15 -0700 (PDT)
Message-ID: <77b2cb61-2a31-39aa-69fe-a323a5e91b8d@linaro.org>
Date:   Thu, 20 Oct 2022 08:04:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 0/3] Suspending i.MX watchdog in WAIT mode
Content-Language: en-US
To:     Andrej Picej <andrej.picej@norik.com>,
        linux-watchdog@vger.kernel.org
Cc:     shawnguo@kernel.org, linux@roeck-us.net,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-imx@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, s.hauer@pengutronix.de,
        wim@linux-watchdog.org, robh+dt@kernel.org
References: <20221019111714.1953262-1-andrej.picej@norik.com>
 <5bf984f4-681c-7001-281f-f35bb7fdfc8b@linaro.org>
 <7b3bc437-6b92-4691-fd95-08e408b1c962@norik.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7b3bc437-6b92-4691-fd95-08e408b1c962@norik.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/10/2022 01:49, Andrej Picej wrote:
> Hi Krzysztof,
> 
> On 19. 10. 22 17:46, Krzysztof Kozlowski wrote:
>> On 19/10/2022 07:17, Andrej Picej wrote:
>>> The i.MX6 watchdog can't be stopped once started. This means that
>>> special hardware suspend needs to be configured when the device enters
>>> low-power modes.
>>> Usually i.MX devices have two bits which deal with this:
>>> - WDZST bit disables the timer in "deeper" low power modes and
>>> - WDW bit disables the timer in "WAIT" mode which corresponds with
>>> Linux's "freeze" low-power mode.
>>>
>>> WDZST bit support is already in place since 1a9c5efa576e ("watchdog: imx2_wdt: disable watchdog timer during low power mode").
>>> WDW bit is not common for all imx2-wdt supported devices, therefore use
>>> a new device-tree property "fsl,suspend-in-wait" which suspends the
>>> watchdog in "WAIT" mode.
>>>
>>> Andrej Picej (3):
>>>    watchdog: imx2_wdg: suspend watchdog in WAIT mode
>>>    dt-bindings: watchdog: fsl-imx: document suspend in wait mode
>>>    ARM: dts: imx6ul/ull: suspend i.MX6UL watchdog in wait mode
>>>
>>>   .../devicetree/bindings/watchdog/fsl-imx-wdt.yaml          | 5 +++++
>>
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC.  It might happen, that command when run on an older
>> kernel, gives you outdated entries.  Therefore please be sure you base
>> your patches on recent Linux kernel.
> 
> I thought I did. I run that script on linux-watchdog.git, master branch.
> I thought I should base my patches meant for watchdog subsystem there?

Maintainer's tree should be fine, but then the issue is somewhere else,
because your CC list was not complete.


Best regards,
Krzysztof

