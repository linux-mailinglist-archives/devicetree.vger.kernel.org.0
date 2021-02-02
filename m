Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8C1430B4EB
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 02:56:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbhBBB4L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 20:56:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbhBBB4K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 20:56:10 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F29C061573
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 17:55:30 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id m13so21086898oig.8
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 17:55:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=px4xHV/lc9T/vZKpSw240zVsyEroYR5d5mfmRJgsVL4=;
        b=MpSMd2qlcU8YvSg7d9BMVHk1gBCDRLrID5u0t6xWjjQpN5tvEtlawfqbovDU52Q7SD
         +n4lMlHhSrVGyP+UoWBdsn/PA+98Ix1oxrORgEhn//t1OZ0gNn5CV5kfYF3N4JAUUr9/
         CED01+rVGVyJFozJSkQF5J9W6fipuKoI/R6Am3Zvdqh/GO60JzRCqIkVTrPX//RenK7V
         4g0GeS0wmeeq+Oti0NJvnqhj8IFRTtRBUZgnaG2nF/hCSyutdQLhEC0ZRQQya8sF+9bK
         7c00XJz/Jpw/dir4IcSxIB859IRbe87YDtm+InmHHLa5LKni+VJbcIOiGaj9tPk0cTFp
         D7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=px4xHV/lc9T/vZKpSw240zVsyEroYR5d5mfmRJgsVL4=;
        b=KxJmLZ8vu73eVAiPOR6nYEIcc2A/rXTTTzjXmAHgaVe325eBsXW777DJEAj17SYwkY
         t+Aj6PA+LpC43y2H1NvR3K7mLa0xbo1fWf9jqkOlghPfiAMRFZhyhd3+Fm4aZImt1BmB
         jpNbKlrmvgYHXFs7xdZCfQYScld+sIsvWrVxZjdavzARB4pGVWXZzwuG4Vo/eiYh7nFx
         77aNWPlULcQBk0QGMaCxzvdp8PY/lXuQA0RVQEuGDX3Elhvbar4hAdvnXxKeB0CwYc3U
         ssWptSORK2wzJl3YwfK4luN1YXTzrMhrQpvM+JvMAkCg3FeiZ3jufM/B2GF4ZD8Lv3sh
         ng+g==
X-Gm-Message-State: AOAM533VhqNaE/jff7h7uxUeWkpdUH/57FnoQ5Aynv5ptx+J1ijhF1Lh
        +ta9HKvQZO8k7whpj9uZQEU=
X-Google-Smtp-Source: ABdhPJykgB3Hzj0A1uMVBuKxaCHUy+yp9EcWEPj4hmDH5BTGJAZYhf4s196gnuGgRSatp+TDjPac5Q==
X-Received: by 2002:aca:1e0f:: with SMTP id m15mr1169823oic.41.1612230929727;
        Mon, 01 Feb 2021 17:55:29 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id x31sm4298703otb.4.2021.02.01.17.55.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 17:55:28 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [PATCH 2/3] watchdog: mtk_wdt: add support for 16-bit control
 registers
To:     Boris Lysov <arzamas-16@mail.ee>, devicetree@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        linux-mediatek@lists.infradead.org
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210131234425.9773-3-arzamas-16@mail.ee>
 <050f2f8e-9c3c-10e3-05ef-cd84e949b98f@roeck-us.net>
 <20210202043355.18080818@pc>
From:   Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <9f8ce570-50d3-d136-e1f2-3eccb567c939@roeck-us.net>
Date:   Mon, 1 Feb 2021 17:55:27 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210202043355.18080818@pc>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/1/21 5:33 PM, Boris Lysov wrote:
> В Sun, 31 Jan 2021 16:31:09 -0800
> Guenter Roeck <linux@roeck-us.net> пишет:
> 
>> We can't do this. With this flag enabled, the watchdog won't
>> support other SoCs, and there is nothing that prevents the flag
>> from being set for those SoCs.
>>
>> This has to be handled differently, without configuration
>> flag. Maybe use regmap for register addresses, [snip],
>> or use accessor functions in mtk_wdt_dev.
> 
> Thank you for reviewing my patch!
> 
> I will consider suggested fixes, and I will come up with better solution
> in V2. I'm beginner developer, and am still learning.
> 
>> use the compatible string to determine which regmap settings to use
> 
> I think relying on hardcoded "compatible string - settings" pairs in
> driver is not good. Whilst most Mediatek watchdogs I've seen use

So you are saying that the existing mediatek watchdog driver is not good ?
Or that it is good for setting the number of supported reset pins,
but not for setting the register width ?

> similar drivers, no one (except Mediatek itself, of course) knows for
> sure how many devices use 16-bit mode, and specifying each one in C
> code may _theoretically_ bloat it. (well, on the other hand, I've seen
> other watchdog drivers with many compatible devices listed in C code,
> and they didn't seem bloated at all)
> 
> What do you think about implementing a simple boolean flag in
> dt-binding for enabling the 16-bit operation mode? Something like
> "mediatek,watchdog-16bits" [1] , which the driver would check for in
> the `mtk_wdt_probe` and set corresponding regmaps. As result, there
> won't be a need for kernel configuration flag, and other watchdogs
> would be supported.
> 
> Most likely this idea doesn't sound good as I portray it, but I would
> still like to hear your opinion about it. Thanks.
> 

I don't like it at all, I don't see your problem, and mediatek,dma-33bits
seems to be a completely different scope (all it does is to trigger a couple
of additional writes, not control register width). On the other side,
you would have to sell it to dt maintainers, not to me.

Guenter

> References:
> [1] Mediatek UART APDMA driver uses similar flag
> called `mediatek,dma-33bits`
> Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
> 

