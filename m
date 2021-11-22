Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9488C459031
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 15:28:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239619AbhKVObo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Nov 2021 09:31:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239459AbhKVObo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Nov 2021 09:31:44 -0500
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com [IPv6:2607:f8b0:4864:20::92d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0290BC061574
        for <devicetree@vger.kernel.org>; Mon, 22 Nov 2021 06:28:38 -0800 (PST)
Received: by mail-ua1-x92d.google.com with SMTP id o1so36921710uap.4
        for <devicetree@vger.kernel.org>; Mon, 22 Nov 2021 06:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/E3uKxxPIs2ubwdVZtTzo1foFL6fCHKNfRARNuggBXE=;
        b=kxnve2GnBwQaB1g2BHgPVwQ4els9pJ+eVIRJKtFhnfJ2nFMZQnwpZenzfC1ffzaSnr
         s5dsWS0LsqqybkCJ90dOyhe8FFJ/X6UaGg4V5ICtAWBeQ11gmK6wkgcmmdgjKiX5bPTA
         s4Yi4z7m1PFDVz13/3IE7ddvw0IVDNtWYxG+zSUPVg1kCmrpaZO4ylw05pGooX3GTCUS
         HyLWFprL9+i+oor3UVSEtcZMv/GYbEQdXhUzZGqIo5ZXPVV1EFvRgqon/iqEQHzDDMhm
         qPPnEcGrFarUfW9Z3Q0V7zxQPGf3IfjkV6UZzjUgAbNNsXA36MgbkiB9g1ZM5++ENJhg
         GXXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/E3uKxxPIs2ubwdVZtTzo1foFL6fCHKNfRARNuggBXE=;
        b=svuUcLijvLdwp5yBmxgBkIB4KHs+ip69RuIh4w+u/zKTPxLf2QdUK2ZBDtzhyNXjnA
         VUhz6YRmaChacv3ouhu68zNpZ882C4JiriMv5nnU1HiMS9y8B8CAW+jE/VbEaGfxPN47
         sRidht5w3BDTHwpV89fO4w8AXi7C+osVne7X41O4bfDa8Xt0xqBt9q+NFPuJRWm43OQN
         5Ds/inrcUPV5yOd70XnIVb0IZHoBGfJw60DvB5N+hxYvn7pQSzhRunMEU5guvFt3BMPg
         VlQtCLIrB6D18+5oYzSxCX4CZIRgpXWm/GF8Vb/YvpOwHh1kxPsP9Q3hDmu487djGVJD
         JVmg==
X-Gm-Message-State: AOAM5335mPQqsF4LRO3hyt+TQf/uG94eFkWNBV5OPUAb7WKJEyfFNqAz
        mG6ISxQs3oeUbVBXmSJpprabTXHKO9u56U3k5SOL8w==
X-Google-Smtp-Source: ABdhPJwRi6nu9yfhmM0weGxaCLFZCjyTCxMGHRHVtu3J3/NkznhwEQIU/+1RSQRW2G+boEB28b/0iTAi7Ta6jnwQevA=
X-Received: by 2002:a05:6102:3ece:: with SMTP id n14mr133343441vsv.55.1637591317116;
 Mon, 22 Nov 2021 06:28:37 -0800 (PST)
MIME-Version: 1.0
References: <20211121232741.6967-1-semen.protsenko@linaro.org>
 <CGME20211121232757eucas1p243a2e8fe3747fff4113d03aa473e71a7@eucas1p2.samsung.com>
 <20211121232741.6967-6-semen.protsenko@linaro.org> <b1ce8a8e-d8aa-f9e5-27db-fa1455ea00f0@samsung.com>
In-Reply-To: <b1ce8a8e-d8aa-f9e5-27db-fa1455ea00f0@samsung.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Mon, 22 Nov 2021 16:28:25 +0200
Message-ID: <CAPLW+4nrXDBQzbALNRMVZGaSiasAbSdfOj-K31CDNdEUSAT4Mw@mail.gmail.com>
Subject: Re: [PATCH 5/6] clk: samsung: exynos850: Register clocks early
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     David Virag <virag.david003@gmail.com>,
        =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Nov 2021 at 12:00, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> On 22.11.2021 00:27, Sam Protsenko wrote:
> > /* Register Offset definitions for CMU_CORE (0x12000000) */
> > @@ -1014,24 +1060,12 @@ static int __init exynos850_cmu_probe(struct platform_device *pdev)
> >  {
> >       const struct samsung_cmu_info *info;
> >       struct device *dev = &pdev->dev;
> > -     struct device_node *np = dev->of_node;
> >
> >       info = of_device_get_match_data(dev);
> > -     exynos850_init_clocks(np, info->clk_regs, info->nr_clk_regs);
> > -     samsung_cmu_register_one(np, info);
> >
> > -     /* Keep bus clock running, so it's possible to access CMU registers */
> > -     if (info->clk_name) {
> > -             struct clk *bus_clk;
> > -
> > -             bus_clk = clk_get(dev, info->clk_name);
> > -             if (IS_ERR(bus_clk)) {
> > -                     pr_err("%s: could not find bus clock %s; err = %ld\n",
> > -                            __func__, info->clk_name, PTR_ERR(bus_clk));
> > -             } else {
> > -                     clk_prepare_enable(bus_clk);
> > -             }
> > -     }
>
>
> > +     /* Early clocks are already registered using CLK_OF_DECLARE_DRIVER() */
> > +     if (info != &peri_cmu_info)
> > +             exynos850_register_cmu(dev, dev->of_node, info);
> >
>
> Do you still need this test? How about just removing "samsung,exynos850-cmu-peri"
> from exynos850_cmu_of_match[] ?
>

It'll be needed later, when I get to adding PM ops to platform driver,
as CMU_PERI is part of Power Domains. But you are right, it's not
needed right now. Will re-send this patch separately soon.

> --
> Regards,
> Sylwester
