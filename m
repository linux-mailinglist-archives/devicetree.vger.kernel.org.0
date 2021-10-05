Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 20A8042250D
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 13:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234227AbhJELiR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 07:38:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233862AbhJELiP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 07:38:15 -0400
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com [IPv6:2607:f8b0:4864:20::e36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F31FC061753
        for <devicetree@vger.kernel.org>; Tue,  5 Oct 2021 04:36:24 -0700 (PDT)
Received: by mail-vs1-xe36.google.com with SMTP id f2so22370878vsj.4
        for <devicetree@vger.kernel.org>; Tue, 05 Oct 2021 04:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fbUrctBKF1q2sRHPfrxPaFZV6eVVnBEbm2AjMWQx1J8=;
        b=vNcozf2V7CBmO3wgShgy8OiWUKPbUz6wjnSDrxeu3/go7vUY7Cp9uB37og1u0TJejg
         GfAFNpgZlwVyjj8rE77gMsKhtBefzGSjNk+ADIJQEWxi4edZxPH/cnDmlyG8TgOr3QLl
         BqgTEWM+k6pEDUmhxAMW1AGT/UDb1nfz+lFCje5CquyiY/1Y3/xaWKf9BusY1D9KxCYG
         dyDIg/qua8rZiOiCiTnOeyAHpB751d59JXqFdzUgbEycBPpVNnyDEAOg8Zu7yTgG5n5K
         24Am8mHO8I/M/0KTFWWREbbPuZTSMjLMOZW6JhUbBvy2vpBt4TU5MBl6bqVNOV/OkvFF
         n01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fbUrctBKF1q2sRHPfrxPaFZV6eVVnBEbm2AjMWQx1J8=;
        b=Wn2l9mfnc8mfu7sttiNrHptB/KP7y7zOwzAUJu58DMyX2A8YVJI7zzScm3U0jt7lVc
         THdvAE4D1GlAiC75YRYQIoq1slhFq96j7F9vJLVxAkzVUx0j+7yUNvZulL8hD9RvCHE7
         IDWazwfvfn+A99peqOjrmzHahMe4wpqiNyddrod5Sx3cIY+tr4tUl80uMHnWvVZ2e8RH
         +PXRzcA8R4kQ1Khg1aylJ2geNlj5SpoH7B5oxlUVD6b9Y20LCJuM1clChcjY2FXE9Zhx
         OzKWH6uSGhYmNOK2g39OT6dQAE0RTBwa9zIuplne+SFjT43M4RXsnqNhskqL40Ah1bA9
         a6pA==
X-Gm-Message-State: AOAM531l21Ux2EzHIqiySyxxIIdIq++jkf+EHFqLH86gzcI20ECV139y
        wGfOtlnhum+pD+AW8J4p7jluBJOH3VqpP4bm6xtLKQ==
X-Google-Smtp-Source: ABdhPJyXsDJFqKaDflnYIDcHflEgkdJaebxTVjcU4aa5qBIzEZojilMzGQI0T8ry8dqfIPcOqyiIfB693fyiZ0tMOmU=
X-Received: by 2002:a67:d91b:: with SMTP id t27mr8819214vsj.55.1633433783316;
 Tue, 05 Oct 2021 04:36:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210914155607.14122-1-semen.protsenko@linaro.org>
 <CGME20210914155639eucas1p2b65f35fcbd2b3fde7d4e7541ac6d76d3@eucas1p2.samsung.com>
 <20210914155607.14122-7-semen.protsenko@linaro.org> <1d884e38-ac8c-6f0c-ad27-243c5c4b9b9b@samsung.com>
In-Reply-To: <1d884e38-ac8c-6f0c-ad27-243c5c4b9b9b@samsung.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Tue, 5 Oct 2021 14:36:11 +0300
Message-ID: <CAPLW+4n0DX3gn=Ntat39EUO-L2t=SR_=Nr3LtznN4XsNrc=OWA@mail.gmail.com>
Subject: Re: [PATCH 6/6] clk: samsung: Introduce Exynos850 clock driver
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Ryu Euiyoul <ryu.real@samsung.com>, Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        =?UTF-8?Q?Pawe=C5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 15 Sept 2021 at 16:07, Sylwester Nawrocki
<s.nawrocki@samsung.com> wrote:
>
> On 14.09.2021 17:56, Sam Protsenko wrote:
> > +static void __init exynos850_cmu_top_init(struct device_node *np)
> > +{
> > +     exynos850_init_clocks(np, top_clk_regs, ARRAY_SIZE(top_clk_regs));
> > +     samsung_cmu_register_one(np, &top_cmu_info);
> > +}
> > +
> > +CLK_OF_DECLARE(exynos850_cmu_top, "samsung,exynos850-cmu-top",
> > +            exynos850_cmu_top_init);
>
> Was there anything preventing you from making it a platform driver instead?
>

Can you please elaborate on benefits of adding platform driver? I
don't implement PM ops for now, and I can see that clk-exynos7.c does
not add platform driver as well... clk-exynos5433.c seems to use
platform_driver for PM ops only.

> --
> Regards,
> Sylwester
