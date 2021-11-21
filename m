Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1AF74586CB
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 23:50:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234410AbhKUWx7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 17:53:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234438AbhKUWx6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 17:53:58 -0500
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43E4AC061748
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 14:50:53 -0800 (PST)
Received: by mail-ua1-x929.google.com with SMTP id y5so32842851ual.7
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 14:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XNxyApHmzoloPcX+vMBKB5Jvh3J/sKajeBWBVF8j2mg=;
        b=phuVyz5YJhIJtky7/WjGpT8/OLWei9xm6LFHezy+qwi+Y1kkr24EFLwblCrE6goy6W
         6WShVK4R6TAxn2Rs3yhTq68ypf8yrL7Vfskvs8znECGZmArQJRJIm9Xc8B/BJo204QZy
         /9gx5FrwwlC4sPr9Nmh56XQGwEvjcW3t0Regui6UAlzr1KWGuCY9uSP47J+vzIgMV+Tj
         zsfm7E5nqIwBw95pmNsdj/q4QMXMXmO55APqRffFR60hMZVM9nkTgt6lUKlDdVjxqzWU
         NEAv1hC4Z+xKv6b9T7RLIDGF+NRbslQDZxp9TipCM/EvnPMhmr3Lh3hYuHLbIcLCg1A5
         t0nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XNxyApHmzoloPcX+vMBKB5Jvh3J/sKajeBWBVF8j2mg=;
        b=o46K7/0y6Mw+E1qIunyhTan5t21+7TPa/9uUVzunsVmbC/OVej1qDbBb5wW+Gunbjf
         O+QV2OYxrUUoX3qas+Q34QI5v+XEWbkgLLRPMOVVC4MKtPqUco6hXQM6K5jLGK9g2y7p
         AFHam9eGzz2fL2v8Urq+uPqtVPIqw8iYM2XBFIbxkF4ww52J7SR4e/f934RaHBUmk3yh
         jZFrwMoLHN6TGZKjPC5zeCTJhAXkOVsl0KMTMJGSX0sAipbB69A5bxZjyqPZLrqPIMYz
         oF46OS4E4CiKtIbaE6i0R7mM1rxTRVvRtTozsmhvi8Z8/B45DqYh6SDKqdq32wdaVgA6
         FmZg==
X-Gm-Message-State: AOAM532e3mHHAyBuDjHRTilVW42pl/UTRix7hGFG1ivpRym/OJrLxM15
        3KReP/N4VLlIW9j4QihBox+71IS2U6/FLOufeNOCKA==
X-Google-Smtp-Source: ABdhPJzyWuXlGtONiX3E5FV/pCAzZ/aDkZTGGh7DGCxlBdDleo3OtlEzo/Qq8Nwy0bJh4ewIgqEo7Yfyc80oBNNa+Q4=
X-Received: by 2002:ab0:458e:: with SMTP id u14mr76906339uau.104.1637535052359;
 Sun, 21 Nov 2021 14:50:52 -0800 (PST)
MIME-Version: 1.0
References: <CGME20211025161302eucas1p2f50ef29a0bba69c13deaf1ad31a8439c@eucas1p2.samsung.com>
 <20211025161254.5575-1-semen.protsenko@linaro.org> <fcc939e6-50b4-1847-c738-db940d0c5bd4@samsung.com>
 <CAPLW+4nnyPAMRcAzDjJ-uygm8bjncNp_rTLKdY5cywcpf5vg=w@mail.gmail.com> <b5ac9e36-235c-906c-9f95-80dabd971be5@kernel.org>
In-Reply-To: <b5ac9e36-235c-906c-9f95-80dabd971be5@kernel.org>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Mon, 22 Nov 2021 00:50:40 +0200
Message-ID: <CAPLW+4kMK=CpRPd10hpWcY0PN72BjjA7Vh6WAvvtUHUhknEVsQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] clk: samsung: exynos850: Register clocks early
To:     Sylwester Nawrocki <snawrocki@kernel.org>
Cc:     Sumit Semwal <sumit.semwal@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 20 Nov 2021 at 19:38, Sylwester Nawrocki <snawrocki@kernel.org> wrote:
>
> On 20.11.2021 17:47, Sam Protsenko wrote:
> >>> @@ -920,8 +929,12 @@ static int __init exynos850_cmu_probe(struct platform_device *pdev)
> >>>        struct device_node *np = dev->of_node;
> >>>
> >>>        info = of_device_get_match_data(dev);
> >>> -     exynos850_init_clocks(np, info->clk_regs, info->nr_clk_regs);
> >>> -     samsung_cmu_register_one(np, info);
> >>> +
> >>> +     /* Early clocks are already registered using CLK_OF_DECLARE_DRIVER() */
> >>> +     if (info != &peri_cmu_info) {
> >>> +             exynos850_init_clocks(np, info->clk_regs, info->nr_clk_regs);
> >>> +             samsung_cmu_register_one(np, info);
> >>> +     }
> >> Don't you also need to register early CMU_TOP, which provides clocks
> >> for CMU_PERI? I'm afraid it might not work properly when you register
> >> CMU_PERI clocks early and only later in probe() you enable parent clock
> >> required for the already registered clocks to be usable.
>
> > Good point, I'll do that in v2. Not sure how I missed that dependency
> > point, but thank you for noticing that. Guess it only works for me
> > because clocks are already enabled in bootloader, and I'm using
> > "clk_ignore_unused" param for now.
> >
> >> How about registering also CMU_TOP early and enabling parent clock
> >> also in OF_CLK_DECLARE init callback, i.e. using either OF_CLK_DECLARE
> >> or platform driver for a CMU?
> >>
> > If you mean doing clk_prepare_enable() for "dout_peri_bus" clock in
> > exynos850_cmu_peri_init(), I don't think it's possible. clk_get()
> > needs "struct device *dev", and we only have that in platform driver
> > probe. Trying to pass dev=NULL won't work, so that's why I'm enabling
> > parent clocks in platform driver probe.
>
> Sorry, I didn't notice it earlier, actually CMU_TOP is already being
> initialized with OF_CLK_DECLARE.
>

No worries, I forgot about that too, as you can see :-D But yeah, I'll
keep that as is then. So I'll only make parent clock enabled early.

> You could use of_clk_get() to get the clock, the consumer clock indexes
> are fixed and defined in the DT binding. There is also
> of_clk_get_by_name() which works similarly to clk_get().
>

Thanks for the suggestion! I'll go with of_clk_get_by_name(), it's
more natural as we already have parent clock name stored, so it can be
used in more general way.

This patch is superseded by next series (going to submit that soon):
    [PATCH 0/6] clk: samsung: exynos850: Clock driver improvements

>
