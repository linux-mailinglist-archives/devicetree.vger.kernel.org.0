Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E24478B5DE
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 19:05:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229936AbjH1REv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 13:04:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232776AbjH1REd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 13:04:33 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90F9EE48
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 10:04:06 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b962c226ceso52119321fa.3
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 10:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693242242; x=1693847042;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QSrl3cpJZO7aZE1Yxm4SqizpgYezcJgEGdHLm/P1iHs=;
        b=lqjR0mwnxlPfB3pZZdRkYcRA08lVepuq2/IwI7osHmBf9u3A9XsUC7/xwycOdqGTar
         khkXWOuhJwFJjxWWW4QkAZ5RN5wN03kONq56+tDV7MpAD0waPigqUG5MyCfYY14a8Oyy
         Tel7vsTpWp0Gt/EAE33ldeTOCML3K5zo9QZHAxWw5uA30dT1LP7nCs0VEVsk09SISUnO
         1cXGCJBTQTk2efnaGsO6jbCVnbLzzPssKcagk/fkEtB0XCe9Nc2SLJaNeo9EarZvBGsA
         8zuGvdfFF0qPIKXgbC3OwUxnVWTwBHj32+NUE9mO/YgKhxDJpBcKpQ4/QuwKKYn0CiZc
         Zg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693242242; x=1693847042;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QSrl3cpJZO7aZE1Yxm4SqizpgYezcJgEGdHLm/P1iHs=;
        b=YM1Y3sQU1OzxwNuZX3bhRg5Bq1+HiZNJINCeJxNGCt/leM9Lqjj0LMtMooKKBSwOSO
         MW7TTWjnIrppcaD20plLUVyO8NxbkveP+Ozxup5JHTrR7ugIkIS3/3Ru/Z4MQi+MOzur
         wNGk3lBbOtlbnbMfmZaVkeXcP2ODzSDX2LXpHiQPZ0pzwtEBLGI3VcAJrM51/SBv6fXs
         d/FBvbQ/G3KbuG2cXA7NYfXQOvT3wdsvKxqXPZNJXmEgczDg0so68I+AFLtbXyWe5ZNg
         j/00gftwJn6V2Gw69/OL61jzlUY106uZzSWatZAitCRZnQU+wL+MSQvCtGu6yauXtI29
         CAmg==
X-Gm-Message-State: AOJu0YzCkru8vX/ke7Q1ghPcUQcH64SYvCZJrIWXjPwutNuLmFSydzSR
        9gEUC2x8mJbUJubGEmWC/TrxmhVCOWBwXTFkuYo=
X-Google-Smtp-Source: AGHT+IHIT+tfWoWiJtAo3hCcci7b4CvANX2Cx8WSzh19VQKIWj08H73waLFC5u9mbATceAcPTpS8WQ==
X-Received: by 2002:a2e:9c51:0:b0:2bc:d8cb:59fe with SMTP id t17-20020a2e9c51000000b002bcd8cb59femr11545709ljj.8.1693242242437;
        Mon, 28 Aug 2023 10:04:02 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id d12-20020a170906344c00b00982a92a849asm4860999ejb.91.2023.08.28.10.04.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 10:04:01 -0700 (PDT)
Message-ID: <119f56c8-5f38-eb48-7157-6033932f0430@linaro.org>
Date:   Mon, 28 Aug 2023 19:04:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/3] clk: twl: add clock driver for TWL6032
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>
Cc:     Stephen Boyd <sboyd@kernel.org>, bcousson@baylibre.com,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        mturquette@baylibre.com, robh+dt@kernel.org, tony@atomide.com
References: <20230819134147.456060-1-andreas@kemnade.info>
 <20230819134147.456060-3-andreas@kemnade.info>
 <a65a7d976be4212ef71fe32c4ed2dacb.sboyd@kernel.org>
 <20230823165159.108875d0@aktux>
 <9edcfc47-ed89-8074-6bde-d747ae73de25@linaro.org>
 <20230828182412.16d4aea6@aktux>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230828182412.16d4aea6@aktux>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 18:24, Andreas Kemnade wrote:
> Hi,
> 
> On Thu, 24 Aug 2023 09:04:28 +0200
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>>>>> +
>>>>> +MODULE_DESCRIPTION("Clock driver for TWL Series Devices");
>>>>> +MODULE_ALIAS("platform:twl-clk");    
>>>>
>>>> This alias is unnecessary?
>>>>  
>>> The question is whether this driver should have a separate dt
>>> node (and if a separate node, then one per clock as the clk-palmas
>>> driver) or not. See Rob's review of the binding document.
>>> So we have basically #clock-cells = <1>; in the twl parent
>>> and a call to mfd_add_device() there in the former case and I guess
>>> that alias is needed then.
>>>   
>>
>> You should not need the alias in any of these cases. platform alias for
>> platform driver means you have incomplete tables and use alias instead
>> of tables. Preference is to use tables.
> 
> Is there a general consensus that MODULE_ALIAS("platform:.*") should be
> exorcised? Of course for this new driver I will avoid it now anyways.

Whether "general" I don't know, but I was removing it quite a lot in the
past. I think I removed all at some point, now I guess we have them back :/.

MODULE_ALIAS is not the correct way to solve module matching problem. ID
table with the correct way. Alias is just a workaround which now works,
but later might stop (e.g. ID table will come with additional features).

Best regards,
Krzysztof

