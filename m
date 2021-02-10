Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85E3231655D
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 12:39:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbhBJLjk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 06:39:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbhBJLiC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 06:38:02 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29185C061756
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 03:37:20 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id u14so2126254wri.3
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 03:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tAlt2AWMRf+ppapnfIwS3IIQSTyeAdGOjz/xqXMAQy8=;
        b=mVTGUnzQMGuNLnKKHydMVOuXLhU+BJUTKWqI2GhhILiy4LsCHu8NOM4LEaMWSDSnw6
         3oVP1xUcpqkIPqxRvexjgQ0N0gnAtdmbF6/7Y07O6DOf3g2wBG4wm6b+B1CSYtJ/cZCY
         y4z7rBuMWdKqUzWaQAU4U70J9R8qoCKxbIHC1upCeY7ZkIhP6HLHQF6pyohninyFjKH3
         aLoT58U4bdxkGz8o2nbY+KQ3iWo7xMVbatOfJw2Dwm140YlRB9ZXqZPMD5Z2vzYeKCW0
         D3JbJXCFYVDdD9zCHJ/yS9q96Orkl5iYx2bLh8U4X/8jjcBzRtEper3/Dd2u4A+17cic
         7dpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tAlt2AWMRf+ppapnfIwS3IIQSTyeAdGOjz/xqXMAQy8=;
        b=p2L92fHsCitaWpvcoltxvyEHaz2IZ336yV+MWyha/LeC7zeWHClheGZM7iJrCnIyHJ
         ydOIWlO1fWm3EUfIMFap5zOSRomQ4y6Xpazw9f6DQV9xShEq9FNdjp6ytuVkreBMzcuh
         sty8thyfMNXRMNKjhmqfJjyAzM+WIjHGASEEunAWYkVC0OrB1gU19JN+uvwy+g5kJLim
         DszNFomudPrmVuH0o2Hp8ttrwUbD2B0BUM2/froRzzglZvR9e2huXW6rTKDAPheyfm5K
         jG19JWxtMU8IvZt0oUW6wXX513Z8qd7DpyZA7OegRhVDfjoJ2e8lTlZLOP4hfQLg6isZ
         n2Fw==
X-Gm-Message-State: AOAM532f8OzwTHfUoFNApG2RFn94Ld55JGvtM18kbJzQM4hpMOK+IJ6+
        DxzWl5w7v9eGigzg1mGmHJg=
X-Google-Smtp-Source: ABdhPJzyaZ5hER8iYOoD7B0dMNiH1h5hjCjbKV8kOPK2BhNic61kBShxM+HPX5G8APC3BXiWUwxsCw==
X-Received: by 2002:adf:fc48:: with SMTP id e8mr3213836wrs.154.1612957038930;
        Wed, 10 Feb 2021 03:37:18 -0800 (PST)
Received: from ziggy.stardust (static-188-169-27-46.ipcom.comunitel.net. [46.27.169.188])
        by smtp.gmail.com with ESMTPSA id z15sm2490795wrs.25.2021.02.10.03.37.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 03:37:18 -0800 (PST)
Subject: Re: [PATCH 2/3] watchdog: mtk_wdt: add support for 16-bit control
 registers
To:     Boris Lysov <arzamas-16@mail.ee>,
        Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, linux-mediatek@lists.infradead.org
References: <20210131234425.9773-1-arzamas-16@mail.ee>
 <20210131234425.9773-3-arzamas-16@mail.ee>
 <050f2f8e-9c3c-10e3-05ef-cd84e949b98f@roeck-us.net>
 <20210202043355.18080818@pc>
From:   Matthias Brugger <matthias.bgg@gmail.com>
Message-ID: <f73f3d85-5f2e-21a3-5ce0-02f384ffa660@gmail.com>
Date:   Wed, 10 Feb 2021 12:37:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210202043355.18080818@pc>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 02/02/2021 02:33, Boris Lysov wrote:
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
> similar drivers, no one (except Mediatek itself, of course) knows for
> sure how many devices use 16-bit mode, and specifying each one in C
> code may _theoretically_ bloat it. (well, on the other hand, I've seen
> other watchdog drivers with many compatible devices listed in C code,
> and they didn't seem bloated at all)

We enable 16 bit access for "mediatek,mt6577-wdt" if we have a new SoC that also
needs 16 bit access, most probably we can just update the binding documentation
by adding the new SoC with a fallback to mt6577:

"mediatek,mt1234-wdt", "mediatek,mt6577-wdt": for MT1234

As no binding to mt1234 is present in the driver, the mt6577 one will be used.

Regards,
Matthias
