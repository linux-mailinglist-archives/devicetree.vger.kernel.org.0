Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B031755C8E
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 09:17:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbjGQHRg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 03:17:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229962AbjGQHRf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 03:17:35 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1098B188
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 00:17:34 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-993d1f899d7so606092466b.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 00:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689578252; x=1692170252;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bears7qmNayvkyvSpBGDpm7cFMqEk6Zkcv4MJmrzivQ=;
        b=aWIEP+GLIsj6qBQrfye4O6KdMlc2qKtB32OyZA2VFueZ5QZN29/hBHS27zxvGgKxOg
         iSRDxIpisCiiJTUHUr84An8ZbzsFfO+2uYn0EPv0PeO/F8+Wvh0a5jNdkmZDILZAHJil
         byToVJMTf2ofRHSI1g4tbnvDobal6tp4DTzc6P5u1fPebj+KtP3J5eknOpFHekW7q5Ic
         vzlBlMKAwjF0O/GZraJk5MtIwbPIvjKgUJctxmxzfufvd1QWFBGaJy5JZ+uh2AS7nRkW
         /StRDER/OLu7sORA1So1RlF2/tUhVACimQXFJRcR7s0m1fl9LtsUHAslCUKwIr1jwaVE
         kbhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689578252; x=1692170252;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bears7qmNayvkyvSpBGDpm7cFMqEk6Zkcv4MJmrzivQ=;
        b=JJkU7PjZC7yLiOCHMA0BLvz0NJOr3m4zESF00n/cBr9AIY3s6spgO/yCzt/t21LXT3
         kTSZsAlDk55v+CbZGUyVjn0v2skyLgXXwOx58gHY6Ylutao4UofSr/AWaKif4FeKnNs8
         H/FzTmh1s2QYDOmlK5ODoEFmEe8vPkmWjHPcGParm9xkgTbSne/HGgBTI5GPeF1guM5E
         xB8JPxl6kensGzTOE5mQ8baqtG4SPjAi/7uXsIQTTMoq/9DuBYkTvXAIZ44xao8HikBX
         8HLaR86K64SllKWVC3q1lT6HBNuV0VAvcfLPlMiHTp25s5xzPwDx6rVzxgQTuuS927Fr
         XYHg==
X-Gm-Message-State: ABy/qLYS0aTBl1iiTtJeh7fvcpdSeUGvdlYoBgXWurXOqYviQKmc3Exx
        mM7aXee67Jakmrj06bpJ2vWxPQ==
X-Google-Smtp-Source: APBJJlG7DAUOZJcM6TGPHYOHzO7eUSejpitgzW5kbOUSMAkSlJidQ4O0kpPl0UaXyIVdczM0v8gttA==
X-Received: by 2002:a17:907:7894:b0:993:8899:a3ac with SMTP id ku20-20020a170907789400b009938899a3acmr10121867ejc.74.1689578252560;
        Mon, 17 Jul 2023 00:17:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id um10-20020a170906cf8a00b0098e78ff1a87sm8745082ejb.120.2023.07.17.00.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 00:17:32 -0700 (PDT)
Message-ID: <46bccbca-1343-aed4-4dfe-eb5182b8f6a1@linaro.org>
Date:   Mon, 17 Jul 2023 09:17:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v2_0/2=5d_add_mcp4728_I2C_DAC_driver?=
 =?UTF-8?B?4oCL?=
Content-Language: en-US
To:     Andrea Collamati <andrea.collamati@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        William Breathitt Gray <william.gray@linaro.org>,
        Angelo Dureghello <angelo.dureghello@timesys.com>,
        Fabio Estevam <festevam@gmail.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <0414e2e4-a17d-3435-e9e7-35b110233a6d@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0414e2e4-a17d-3435-e9e7-35b110233a6d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/07/2023 23:26, Andrea Collamati wrote:
> Dear Krzysztof
> 
> I release a V2 version. I hope I have understood all your requests.
> See below.
> 
>> 2. Please use scripts/get_maintainers.pl to get a list of necessary
>> people and lists to CC (and consider --no-git-fallback argument). It
>> might happen, that command when run on an older kernel, gives you
>> outdated entries. Therefore please be sure you base your patches on
>> recent Linux kernel.
>>
> I was using branch master git://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git but

Should be fine. I still doubt that you used it, though. If you got
Conor's email, then for sure you should have got my email.

> 
> I saw it was too old. I switched to branch testing.
>> 6. mcp or MCP? What is this? Proper title is missing... also no
>> description.
>>
> I don't know whether using small o capital letters. Usually manufacturers use capital letter to identify the component
> but kernel drivers use lowercase in code.

Use what is in datasheet.

>>
>> Shouldn't this binding be just merged with existing mcp4725? Are you
>> sure it's not similar device, IOW, are you sure you do not have vref supply?
>>
> Unfortunately they are not that similar. MCP4728 has two vref choices:
> 
> - Use Vdd (power supply) as Vref
> 
> - User Internal 2.048 V Vref source.

Exactly the same as existing mcp4726, so what is the problem?


Best regards,
Krzysztof

