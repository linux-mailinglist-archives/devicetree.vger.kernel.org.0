Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C81049C570
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 09:41:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231307AbiAZIlW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 03:41:22 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:45718
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230519AbiAZIlW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 26 Jan 2022 03:41:22 -0500
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 14EE23F1D1
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 08:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643186481;
        bh=MvhbiN5MMNYU7hqMrRzTsXC+uHqIqDEC2OOeXTzdnqc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=L5Iy/VAE3/DKDsHqny9Rxx9mI8q666/ioGSv0Fe1gU90SdGuPUoUvd96+xPqArCtM
         yifZTVgXxwyu7fZe4a9Me6esL7DdAwp9dsvzbsaM/NiroS1wA07RHPt70ytg02acaM
         GTINx7dXHPH4YPmqUH3BXB5TidL1XsavxWi87mqspo9pVJc3QJVRZFK1jN+rME5fe4
         T5/ibX3//gcPCcOBm49k3QWfCiKm47xU1YjvVvAkc9xA9zwkYZLJ5NUPmUIDnFyhWv
         +cIXdCwWhj9n58y7kIi1AYHRwduqx+j3XkVSi/YHXG8Ubg6kKP8zacYlN5UjV/2oMQ
         Z8AxMHR5WCd0g==
Received: by mail-wm1-f70.google.com with SMTP id z2-20020a05600c220200b0034d2eb95f27so2926308wml.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 00:41:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MvhbiN5MMNYU7hqMrRzTsXC+uHqIqDEC2OOeXTzdnqc=;
        b=ahEs1cqnNSEa5/1szfAScQTmOkLRy+yscT8unBQTY2KWUXzsqTju+FoF8GfafEbEmI
         mXAvtOxOYkABHjD4lyk1x0gtpiUnpBma/09FYKjJVIcqtxiaHQlrufGqB2ylYoKaBwl4
         wQKBu+5evO/fobzh1ZJoD3IBnq9ur+aQeOFGs5YY2ZwwoQ3sf2eVSOZUQNHcPiUnbMzH
         EmcnfieS8zrNA6f+CZ9uWpbM8SODgEOdPifS9PYUTPjmcISs0r1E12iIDl+EQ3lmZEyv
         rfdKYAV5KrsPy6ILaX/uLLM061aYMXzbVH1zTDWa0cznSAUYUIyUR2FOQzgZhapn5ksH
         2CYA==
X-Gm-Message-State: AOAM530SNXBI1K8Gfjr9Maw7rR6HrS3hA2AepQbOP4rMVARJT1svYeJB
        GoQvzhN4FytGJBQEY2kpeCIYnCmhBPU2NdyCq43A3AQYtFKHuFhpb2ztaXd9Y8ZAOf5YWeUqra/
        P6uVpGnogNXl6yjj2OG49/9KVTkf3/75cHQAAWX4=
X-Received: by 2002:adf:e806:: with SMTP id o6mr22473398wrm.331.1643186480502;
        Wed, 26 Jan 2022 00:41:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyXoHj/4QvKRm5T7/Y0OI0y/w1oCu75F3OpZukCWWW0CNuv4ZALkAKZdf7YGevstvuatonoDA==
X-Received: by 2002:adf:e806:: with SMTP id o6mr22473374wrm.331.1643186480309;
        Wed, 26 Jan 2022 00:41:20 -0800 (PST)
Received: from [192.168.0.60] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v124sm2588509wme.30.2022.01.26.00.41.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 00:41:19 -0800 (PST)
Message-ID: <2f4dd91a-e4ad-2559-f65e-914561de4047@canonical.com>
Date:   Wed, 26 Jan 2022 09:41:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] Adding architectural support for HPE's GXP BMC. This is
 the first of a series of patches to support HPE's BMC with Linux Kernel.
Content-Language: en-US
To:     "Verdun, Jean-Marie" <verdun@hpe.com>,
        Arnd Bergmann <arnd@arndb.de>,
        "Hawkins, Nick" <nick.hawkins@hpe.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Shawn Guo <shawnguo@kernel.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Hao Fang <fanghao11@huawei.com>,
        "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Mark Rutland <mark.rutland@arm.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Anshuman Khandual <anshuman.khandual@arm.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <nick.hawkins@hpe.com>
 <20220125194609.32314-1-nick.hawkins@hpe.com>
 <CAK8P3a0ccoH_sNE9eWxQnWHEWNBPFL6k4k6mku=cHs_fRfnL-w@mail.gmail.com>
 <CA8148A1-578E-4621-9714-45AB391C353A@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CA8148A1-578E-4621-9714-45AB391C353A@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/01/2022 02:49, Verdun, Jean-Marie wrote:
> Hello Arnd,
> 
> I work with Nick on upstreaming the initial code for our GXP asic. Many thanks for your feedbacks.
> 
> We will update accordingly. I must admit that I am a little bit lost regarding the process we shall follow to introduce a new SoC. We took the path to send first the DT side and then the drivers through a set of patch per driver. Andrew, seems to guide us into a direction where we shall have a very small DT initially and we will expand it in a step by step manner when we will get drivers approved, this might lead us into a process which might be very sequential. What is the best recommendation to follow ? Either way is ok on our side, I am just looking at the easiest solution for the code Maintainers.

The current DTS patch won't pass checkpatch because you have around 30
undocumented compatibles. The process does not have to be sequential -
quite contrary - rather parallel with several submission happening the
same time. The point is that we need to see the bindings and check
whether your DTS complies with them. Actually the check should be done
by you with dtbs_check, but let's say we also look at it.

Your patch with full-blown DTS and drivers is also good approach, except
there are no drivers sent. For example:
https://lore.kernel.org/?q=hpe%2Cgxp-i2c
https://lore.kernel.org/?q=hpe%2Cgxp-wdt
If you want to avoid building DTS sequentially, no problem, just send
the bindings and DTS.

Andrew's approach is much more flexible because it allows you to discuss
the bindings while not postponing the core part of DTS.


> 
> Most of this code is intended to be used with OpenBMC and u-boot. We didn't have yet upstream anything into the bootloader, and wanted to follow a step by step approach by initially publishing into the kernel (that explain why some init also are still hardcoded in the case the bootloader doesn't provide the data, that is still work in progress, but we can have end user testing the infrastructure). We have a very small user space environment to validate that the kernel boot properly by using u-root, before getting OpenBMC fully loaded. Last but not least, as this is a BMC code, which is new to our end users, it would be just great to have default fall back if the u-boot environment is not properly setup (roughly we could code the MAC address into the umac driver, or the DT to address such cases). We plan to update uboot in the next couple of days by the way. 
> 
> We do not use dtsi at all for the moment, as we are generating a dtb out of the dts file and load it into our SPI image. Probably not the best approach, but this is the way it is implemented currently. The dtb is compiled outside the kernel tree for the moment using dtc compiler. We will add that step into the dts boot Makefile, it make sense. Does the dtsi is mandatory for every SoC ? I can build one if needed. But as this SoC is a BMC, the current dts is an example of what shall be configured. Many other datas related to the hardware target platform are defined into OpenBMC layers while we build for various ProLiant servers. We wanted our kernel code being readily testable that is why we have that generic dts. (GPIOS mapping is machine dependent)

The commit misses description, so I actually don't know how the
architecture looks like. For most of SoC, there is a DTSI because the
SoC is being put on different boards/products. It allows clear
separation between SoC (which could be reused) and board. If you have
only a DTS, then:
1. Where is the SoC here? How it can be re-used by different board?
2. Is it only one DTS per entire sub-architecture? No more boards? Only
one product? No even revisions or improved versions?

Best regards,
Krzysztof
