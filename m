Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 858EC40C1A9
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 10:24:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236700AbhIOIZ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 04:25:56 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46630
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231728AbhIOIZ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 04:25:56 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1062A4028B
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 08:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631694277;
        bh=jH5yqZdy0poBMayuZGGYMX7sqt3HTnu/3+K0ZeEsCPk=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=rvsBoM5hXP/ROal7lSPOY5nmCailY+6GI4ig7XhKJC6XQucDLAv56usAPq6R+mQpG
         TT1RT1ywPpzpSBjlV5Je0l4/w25Sr784656cZSWppbeyTWfeUhHpVfyqx66f3U0lhe
         pVExi94/RWsryNPljlGTAVrwmP/eNwzqF+uYQWt9d8qh8e56JVM8opWGAcHNukfoTO
         5/O5Yn66uowJCzx+0liE8ZpZEURsRfIbrbl/vFiBUPmS7Aa3Z74w1xagm3/SebGlfL
         nKgrt2v2cIIM5d8Km2G/obRqKybUGB8Ld25JIRa2cRiJMdoFYe+etC8D5IcC8rXLz8
         cq/Rc7Dw8++pQ==
Received: by mail-ed1-f71.google.com with SMTP id z6-20020a50cd06000000b003d2c2e38f1fso1175585edi.1
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 01:24:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jH5yqZdy0poBMayuZGGYMX7sqt3HTnu/3+K0ZeEsCPk=;
        b=j2XLRhGG3IGOIeI9SCFH4jQDGVh/a5iKmW//pBe3H3/3IH0AqoShT7aHFOH9qg7Twg
         WU4iMnZLkk4cOhLxg9A8YqO6nTOBKgKmAvLGSrwDnIQ/W5ze5LdkcC+lCLT+aFkhvh/8
         ePtfHsiog5hw9IU1G8mln5ysPOhGtn4dcYIdzkHYXqSDNTbNNLcxagvVS2kbtfSzJIa1
         6YnJ1TzAw6AiRR+WB1ya/NvbfRS46xnYXM4/D3U70THCCAAM9ornG733AvHSDV48BrDF
         F3K03n0Up1NIXupV94A96pN6c6F4o8WMg+UoLcKorJSd/Ct2zezpZzYzAY9vOzFxLK0M
         Fb2g==
X-Gm-Message-State: AOAM5312zjHzTlA9AUtC7SZiKoAd2/y1Nw0N3WRbS3MGzrRZfirhtHW7
        ybZuPaG0pSL1as4bmqFPXIJsQpS0bZ8d8ho4/gd6xkebGsxMTliHoNPIeM+KQsfqKiIs8BC0sUE
        rSeCR3I0itdAXQpq4nR9QbSSJSuJTVbhosK4p4ac=
X-Received: by 2002:a17:907:d23:: with SMTP id gn35mr24610922ejc.556.1631694276566;
        Wed, 15 Sep 2021 01:24:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzsVkw4c2rpKq/jC9r7maHh5NKfix2SH8toBQTvS0RrkMXOk3q+BW0FeTzs/ZNQvvCu8pb6OQ==
X-Received: by 2002:a17:907:d23:: with SMTP id gn35mr24610904ejc.556.1631694276399;
        Wed, 15 Sep 2021 01:24:36 -0700 (PDT)
Received: from [192.168.3.211] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id d3sm6658015edv.87.2021.09.15.01.24.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 01:24:35 -0700 (PDT)
Subject: Re: [PATCH 2/6] clk: samsung: clk-pll: Implement pll0822x PLL type
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     Ryu Euiyoul <ryu.real@samsung.com>, Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
References: <20210914155607.14122-1-semen.protsenko@linaro.org>
 <20210914155607.14122-3-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <47e5b93a-27b4-2188-7b1e-fd2c1b2379d3@canonical.com>
Date:   Wed, 15 Sep 2021 10:24:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210914155607.14122-3-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/09/2021 17:56, Sam Protsenko wrote:
> pll0822x PLL is used in Exynos850 SoC for top-level integer PLLs. The
> code was derived from very similar pll35xx type, with next differences:
> 
> 1. Lock time for pll0822x is 150*P_DIV, when for pll35xx it's 270*P_DIV
> 2. It's not suggested in Exynos850 TRM that S_DIV change doesn't require
>    performing PLL lock procedure (which is done in pll35xx
>    implementation)
> 
> When defining pll0822x type, CON3 register offset should be provided as
> a "con" parameter of PLL() macro, like this:
> 
>     PLL(pll_0822x, 0, "fout_shared0_pll", "oscclk",
>         PLL_LOCKTIME_PLL_SHARED0, PLL_CON3_PLL_SHARED0,
>         exynos850_shared0_pll_rates),
> 
> To define PLL rates table, one can use PLL_35XX_RATE() macro, e.g.:
> 
>     PLL_35XX_RATE(26 * MHZ, 1600 * MHZ, 800, 13, 0)
> 
> as it's completely appropriate for pl0822x type and there is no sense in
> duplicating that.
> 
> If bit #1 (MANUAL_PLL_CTRL) is not set in CON1 register, it won't be
> possible to set new rate, with next error showing in kernel log:
> 
>     Could not lock PLL fout_shared1_pll
> 
> That can happen for example if bootloader clears that bit beforehand.
> PLL driver doesn't account for that, so if MANUAL_PLL_CTRL bit was
> cleared, it's assumed it was done for a reason and it shouldn't be
> possible to change that PLL's rate at all.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/clk/samsung/clk-pll.c | 91 +++++++++++++++++++++++++++++++++++
>  drivers/clk/samsung/clk-pll.h |  1 +
>  2 files changed, 92 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
