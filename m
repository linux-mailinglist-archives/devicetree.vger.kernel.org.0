Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D3953F74FF
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 14:21:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240683AbhHYMVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 08:21:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:34226 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240602AbhHYMVp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 25 Aug 2021 08:21:45 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF3F460F92
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 12:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1629894060;
        bh=XGpnL7KuNQk0xAQVk7AuLTvp103UYtyqAmiSPY85z3Y=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=p8NHMh6UklkboCXQKKX2dA2OrAYU++J/Iuyw9VqVXCmLW3DdGb4A1T17NNTv3DGmb
         Z7xJtx+2+a2MKcwj+KxEF/XmSWSI6YY8y2SmlAXCGYMFbZ3MdxmTodlvFv0Y6HNM6x
         tDtXN/dn7kzlvDmSNi2VmqB0q+p+r7+yrMJs/wcG8D93nHQcygI9fAOC5Tw2TEjAU0
         c+oD2Z0JSAaRs/Mg/Vie3GB5UktJuM8Qif1JVrG9t0+paakSw2LZJmWexKDcSC+gt2
         k3dl1ODyPGFNaxxf9YfwhLdGmTmsE5ODzdJ/IIWqNog7Tt0f0dXd9uOv9IOp6LyVT9
         Ep5DhTo29LUbQ==
Received: by mail-ej1-f52.google.com with SMTP id u14so26294624ejf.13
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 05:20:59 -0700 (PDT)
X-Gm-Message-State: AOAM530yKCiK6XvjIEsgurg+ywhjAU11J494EyE2TepJK5ZB1AoXeLRZ
        q+e8b3qNkLMVrcY2BquS/cVm+y6cm4dWJRCXtw==
X-Google-Smtp-Source: ABdhPJyUSCw4wbbr/lr395+jYr1Nf21Xe7vUkirUHpgjTkFhbyI9ljR0kGx/oZJ4cGZTDWKJU5JM3qz7SGnnLFnmol0=
X-Received: by 2002:a17:906:8cd:: with SMTP id o13mr46502504eje.341.1629894058558;
 Wed, 25 Aug 2021 05:20:58 -0700 (PDT)
MIME-Version: 1.0
References: <f6eabbbce0fba6da3da0264c1e1cf23c01173999.1629884393.git.geert+renesas@glider.be>
In-Reply-To: <f6eabbbce0fba6da3da0264c1e1cf23c01173999.1629884393.git.geert+renesas@glider.be>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 25 Aug 2021 07:20:46 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJg=3iVNqOS2scFf34WvnXKzB5sR_quZaGgSECKttXUug@mail.gmail.com>
Message-ID: <CAL_JsqJg=3iVNqOS2scFf34WvnXKzB5sR_quZaGgSECKttXUug@mail.gmail.com>
Subject: Re: [PATCH] of: fdt: Rename reserve_elfcorehdr() to fdt_reserve_elfcorehdr()
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
        kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 25, 2021 at 4:40 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> On ia64/allmodconfig:
>
>     drivers/of/fdt.c:609:20: error: conflicting types for 'reserve_elfcorehdr'; have 'void(void)'
>       609 | static void __init reserve_elfcorehdr(void)
>           |                    ^~~~~~~~~~~~~~~~~~
>     arch/ia64/include/asm/meminit.h:43:12: note: previous declaration of 'reserve_elfcorehdr' with type 'int(u64 *, u64 *)' {aka 'int(long long unsigned int *, long long unsigned int *)'}
>        43 | extern int reserve_elfcorehdr(u64 *start, u64 *end);
>           |            ^~~~~~~~~~~~~~~~~~

There's no need for the ia64 version to be non-static. Just needs a
forward declaration.

arch/ia64/include/asm/meminit.h:extern int reserve_elfcorehdr(u64
*start, u64 *end);
arch/ia64/kernel/setup.c:       if (reserve_elfcorehdr(&rsvd_region[n].start,
arch/ia64/kernel/setup.c:int __init reserve_elfcorehdr(u64 *start, u64 *end)

Rob
