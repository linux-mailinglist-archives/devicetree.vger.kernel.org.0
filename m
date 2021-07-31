Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7665C3DC46C
	for <lists+devicetree@lfdr.de>; Sat, 31 Jul 2021 09:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230338AbhGaH3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Jul 2021 03:29:46 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:41052
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229715AbhGaH3q (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 31 Jul 2021 03:29:46 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id B287A3F234
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 07:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627716579;
        bh=7szpzek0sYJQJU9q3jPOrpIZQhKhL2Waoumc2yNvU78=;
        h=To:Cc:References:From:Subject:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=gK78iDW31WXNAKEY4Te/5C3LOWAvuswD7dRowoPNOqIa7S7gKSrL/h4sAjkLqOmO4
         690GdyEGZKfaksZdIxDQ1bhvZLp0inZ7qBzjfR/FNodDiojeXoiH3dvv+/uho0iY4K
         uL2Gwcr5PesTeHH0lexDebXVRP8SM9tRaBgBTQsWaGyKQUdwLU95OZ3GPzDLWLyOA5
         mQAi3umgoOZLfoCSHXlqlNfzh/nrx6B9srMGjZ47Oho4xhDRjxlI1Lcz9akh46w8r6
         sTrfPNVbyRMVPs4y2HaRSeOBvxQwVyITfQOvCW8h4iQqVXJYMnjtMHOR/WbbXat/Bq
         qcoorMFnGj/fg==
Received: by mail-ed1-f72.google.com with SMTP id cm18-20020a0564020c92b02903bc7f21d540so4337484edb.13
        for <devicetree@vger.kernel.org>; Sat, 31 Jul 2021 00:29:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7szpzek0sYJQJU9q3jPOrpIZQhKhL2Waoumc2yNvU78=;
        b=BisUga6uF7xDupAqAmh8cl+1F/dYlgpb0CJMDF537VKTQcb2hpW1OSv5m13ny/y36t
         HNQqE7W5KZqUJd4Ma4elgo+U0YZ5cHhUFY//Ybhz+GEjxkcr/xQ09QIbVOGcc5kvlhr5
         c4nJOjzkWwTC97Fv7P383jm4zazeIbK7x/iISwyhf65vY/0uDzOL3TgdkiRZ6AhHt2W+
         OPxkXDjaxLRu4b1xvInr6+vuNs2ARPGV5PxEUsCC0I6LYsFgI2ERGiTVPJm238x6uRq2
         rDP+HQyOWR/p9r5hYaXPxx9w2j8+43Sp/OELfWrPNsacyzcfI+W7YHGqSb4Ak+A1eO+X
         5ppA==
X-Gm-Message-State: AOAM532QHaK5Y3+w/AYnEBNyg0gwzI5FxUZ9ei/u0HPO43sZ+WWdt1eM
        itfZ4McQfGfX/9jmYHA92ky0QlBVYNdwZDAYmaSau9dRfyiU+45HEfQP/xw8nUbLhwOsL115T5u
        fNpLqsPOHBnb8/WANX4xbL/PCr7Qb51lFsOQfuOM=
X-Received: by 2002:a05:6402:299:: with SMTP id l25mr7768589edv.283.1627716579288;
        Sat, 31 Jul 2021 00:29:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxUxBOyxyGNdZMeniqKHPWuWGs2AKaZZj7ShbIHSxUlg3RJCNhhDtExvwhxpbohpRLzf5RItQ==
X-Received: by 2002:a05:6402:299:: with SMTP id l25mr7768575edv.283.1627716579171;
        Sat, 31 Jul 2021 00:29:39 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id v13sm1361312ejh.62.2021.07.31.00.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 00:29:38 -0700 (PDT)
To:     Sam Protsenko <semen.protsenko@linaro.org>
Cc:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Jiri Slaby <jirislaby@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Charles Keepax <ckeepax@opensource.wolfsonmicro.com>,
        Ryu Euiyoul <ryu.real@samsung.com>,
        Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>
References: <20210730144922.29111-1-semen.protsenko@linaro.org>
 <5e35b0a7-13aa-3c62-ca49-14af2fcb2a08@canonical.com>
 <c3486111-0ec9-9679-d2a2-68b2f33a2450@canonical.com>
 <CAPLW+4kbnJEBkc0D=RWt59JxBan8X1uDy6sSXBiYAq8N9FDV6A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: Re: [PATCH 00/12] Add minimal support for Exynos850 SoC
Message-ID: <13f166bb-7103-25d5-35a6-8ec53a1f1817@canonical.com>
Date:   Sat, 31 Jul 2021 09:29:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAPLW+4kbnJEBkc0D=RWt59JxBan8X1uDy6sSXBiYAq8N9FDV6A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2021 21:02, Sam Protsenko wrote:
> Hi Krzysztof,
> 
> On Fri, 30 Jul 2021 at 20:21, Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
>> On 30/07/2021 17:18, Krzysztof Kozlowski wrote:
>>> On 30/07/2021 16:49, Sam Protsenko wrote:
>>>> This patch series adds initial platform support for Samsung Exynos850
>>>> SoC [1]. With this patchset it's possible to run the kernel with BusyBox
>>>> rootfs as a RAM disk. More advanced platform support (like MMC driver
>>>> additions) will be added later. The idea is to keep the first submission
>>>> minimal to ease the review, and then build up on top of that.
>>>>
>>>> [1] https://www.samsung.com/semiconductor/minisite/exynos/products/mobileprocessor/exynos-850/
>>>>
>>>
>>> Great work!
>>>
> 
> Thanks, Krzysztof! And thank you for reviewing the whole series.
> 
>>> What's the SoC revision number (should be accessible via
>>> /sys/bus/soc/devices/soc0/)? Recent wrap in numbering of Exynos chips
>>> might bring confusion...
> 
> # cat /sys/devices/soc0/revision
> 0

soc_id but you're right it won't be set for unknown SoCs. You need to
extend drivers/soc/samsung/exynos-chipid.c to parse new values (E3830000
for product ID) and maybe new register offsets (previous offset is 0x0,
for 3830 is 0x10 I think). Also revision mask might change.

>> Judging by vendor's sources it is quite confusing. It looks mostly like
>> Exynos3830 but in few other cases it uses Exynos9 compatibles (Exynos9,
>> Exynos9820). Only in few places there is Exynos850. Marketing department
>> made it so confusing...  The revision embedded in SoC would be very
>> interesting.
>>
> 
> As I understand, this SoC is called Exynos850 everywhere now.
> Exynos3830 is its old name, not used anymore. As you noticed from
> patch #2, it shares some definitions with Exynos9 SoC, so I guess some
> software is similar for both architectures. Not sure about hardware
> though, never worked with Exynos9 CPUs. Anyway, I asked Samsung
> representatives about naming, and it seems like we should stick to
> "Exynos850" name, even in code.


Since the chip identifies itself as E3830000, I would prefer naming
matching real product ID instead of what is pushed by marketing or sales
representatives. The marketing names don't have to follow any
engineering rules, they can be changed and renamed. Sales follows rather
money and corporate rules, not consistency for upstream project.


Best regards,
Krzysztof
