Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 632F83F7540
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 14:44:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240282AbhHYMpC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 08:45:02 -0400
Received: from mail-ua1-f49.google.com ([209.85.222.49]:41970 "EHLO
        mail-ua1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbhHYMpB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 08:45:01 -0400
Received: by mail-ua1-f49.google.com with SMTP id 75so15028607uav.8
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 05:44:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hDHLjWKPUbj57/Gp8d2jgssIb66YUQ5Pm3ux2drPJDE=;
        b=DA2BUMhMk0dJCSTI2UfZH8hTXQiyfWP3BDMvVYCgjkHuR8CdPtW61cuOpDi20bpQYu
         2acjKji/HgSEltGaVpeE/JspMaiDSsJ8V4NyEygG6VZXkg+GYWisPxzM9Bs4G/R1SSeT
         OcNpbZMMyOr50mc2xPeBeandsjAtBqyrF8MZnh1LfNLQV53S3T8Kub/2nGrtjZYf3cO7
         42h4jqzQrFNz0ex98f0Q1UxdAb+qULE/nSw3/O58ZQ8CDnsHIvvWiYKzNjusbR82nfUz
         bP56UuJ+8uInJHDdR5Q9YA9b6dsQoObT6OfbrVFhhFgkqVIfG9M5kOERNmodUcJpk6v1
         aoTQ==
X-Gm-Message-State: AOAM531vL4jIVhTOaLsmgGLcXIjTntuMu+tjpia6Yj1x0m1IPhU2V5MO
        zKa/8l1wvfCEsGEbq9C3j8iHrEz5nKHUjxmLp2Y=
X-Google-Smtp-Source: ABdhPJzSJWzYKEl/60x+KwoB+j8+ijP9JWhDv8jLmrzeXy/gPn5roWjoOEjugWdI90nb/j9fBUEnj8PvSyHPw6yBW7c=
X-Received: by 2002:ab0:2989:: with SMTP id u9mr1201161uap.122.1629895455628;
 Wed, 25 Aug 2021 05:44:15 -0700 (PDT)
MIME-Version: 1.0
References: <f6eabbbce0fba6da3da0264c1e1cf23c01173999.1629884393.git.geert+renesas@glider.be>
 <CAL_JsqJg=3iVNqOS2scFf34WvnXKzB5sR_quZaGgSECKttXUug@mail.gmail.com>
In-Reply-To: <CAL_JsqJg=3iVNqOS2scFf34WvnXKzB5sR_quZaGgSECKttXUug@mail.gmail.com>
From:   Geert Uytterhoeven <geert@linux-m68k.org>
Date:   Wed, 25 Aug 2021 14:44:03 +0200
Message-ID: <CAMuHMdWdgOjeBJY1ANf28yZZUEpA2oT9numFNVtN0AnLTqQG_w@mail.gmail.com>
Subject: Re: [PATCH] of: fdt: Rename reserve_elfcorehdr() to fdt_reserve_elfcorehdr()
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Wed, Aug 25, 2021 at 2:21 PM Rob Herring <robh+dt@kernel.org> wrote:
> On Wed, Aug 25, 2021 at 4:40 AM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> >
> > On ia64/allmodconfig:
> >
> >     drivers/of/fdt.c:609:20: error: conflicting types for 'reserve_elfcorehdr'; have 'void(void)'
> >       609 | static void __init reserve_elfcorehdr(void)
> >           |                    ^~~~~~~~~~~~~~~~~~
> >     arch/ia64/include/asm/meminit.h:43:12: note: previous declaration of 'reserve_elfcorehdr' with type 'int(u64 *, u64 *)' {aka 'int(long long unsigned int *, long long unsigned int *)'}
> >        43 | extern int reserve_elfcorehdr(u64 *start, u64 *end);
> >           |            ^~~~~~~~~~~~~~~~~~
>
> There's no need for the ia64 version to be non-static. Just needs a
> forward declaration.
>
> arch/ia64/include/asm/meminit.h:extern int reserve_elfcorehdr(u64
> *start, u64 *end);
> arch/ia64/kernel/setup.c:       if (reserve_elfcorehdr(&rsvd_region[n].start,
> arch/ia64/kernel/setup.c:int __init reserve_elfcorehdr(u64 *start, u64 *end)

I know ;-)

https://lore.kernel.org/r/fe236cd73b64abc4abd03dd808cb015c907f4c8c.1629884459.git.geert+renesas@glider.be/

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
