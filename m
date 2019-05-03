Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 296AC12C43
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 13:23:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726887AbfECLXZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 07:23:25 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:41600 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726372AbfECLXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 07:23:25 -0400
Received: by mail-lf1-f66.google.com with SMTP id d8so4141729lfb.8
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 04:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FcmHPfvEkgCRhs8MwoURUl12UTs7GZp3rUDQq2z45EE=;
        b=aXCH1J6xY+/I0fRBC5l2TkylR8ncaSqF0iH9iRdZifa30uW4FbL+VAmirt/NHu6BQq
         d527HighZnr4tXz0jSTC3xXYTXIB6vN0ud+aUEW1qqrVJqLzUgYMqaL4/uJdMBZggtKw
         4sdy6zGXHwMMGB1hA7qBBtJUeo7AfS8X8g/hg+L2RpKPHRMfehAoUYU0BbRd6usYRO9A
         fqKrjy//b+ku/HRJc2ZWXQSCmc6QEpl89ATotIsRO7rUK+V8fuH5f4n76TcLPkJL/lcW
         igcFDxUCnBLDYfE0uTd2ZJ2q0ZEnpUvSvQw9Q+syZhIjM4NQQ8/avuy7eKts80CRI9Ni
         M5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FcmHPfvEkgCRhs8MwoURUl12UTs7GZp3rUDQq2z45EE=;
        b=Cp0xHMud4oyLb3nGvT5AsyUkK+Exxz2+dbupGoTNGWR5Uo7kPnzEMDx9U2Z+DGJEPF
         hzhuxokAiHxK8Dntwz9ioOG1nR0MnoMPdDddxLhQCZ0sD2mrET5vGZ4c+dOmOlwPMwEP
         9kkLyy+7CHVCJMgDkryrmeTwIy0PqiR3NB8TmoqlsoXzlA+PXWj/XuNY5bwCrtHCDkbV
         OPSlGVOfyZu0qyHq/RBs4c7vxl3hfElo+xlZvPryev5dI7tuA1PsxBhKDO9dqQ3GDGJ7
         mb7bF9JcI4dj8ivcF0mDmoM1SjAC0I6NPo2jjtIcUj0sigseAx0LAjH2+pQRkFzB/H8z
         D9YQ==
X-Gm-Message-State: APjAAAVzt4UP2yLS9kiyF/GkqF/alDZWIcFcsj9CH2WyJtZxC/3GS00d
        1vb65oq4bT04Sm4W/LLBqkn9IEUm0SOCNc/g1aXi4g==
X-Google-Smtp-Source: APXvYqyXKDOaZl5gMrFAmM7l9HtHHujY7b3HVhWKSjCAqLiTX2MO5kn5v/977JIG5Y2u0JLrhJzi0ShM6hTwtf55OsY=
X-Received: by 2002:a19:f001:: with SMTP id p1mr5110685lfc.27.1556882603201;
 Fri, 03 May 2019 04:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <1556793293-21019-1-git-send-email-yash.shah@sifive.com>
 <1556793293-21019-3-git-send-email-yash.shah@sifive.com> <a92e356d-aadc-2c4f-8b23-3d732e7aa58a@ti.com>
In-Reply-To: <a92e356d-aadc-2c4f-8b23-3d732e7aa58a@ti.com>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Fri, 3 May 2019 16:52:46 +0530
Message-ID: <CAJ2_jOEBDyG_7THdbGzny3gAmijGSQGV7eUO8MBwQaTgqKdN5g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] RISC-V: sifive_l2_cache: Add L2 cache controller
 driver for SiFive SoCs
To:     "Andrew F. Davis" <afd@ti.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-kernel@vger.kernel.org, aou@eecs.berkeley.edu,
        mark.rutland@arm.com, robh+dt@kernel.org,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 2, 2019 at 7:07 PM Andrew F. Davis <afd@ti.com> wrote:
>
> On 5/2/19 6:34 AM, Yash Shah wrote:
> > The driver currently supports only SiFive FU540-C000 platform.
> >
> > The initial version of L2 cache controller driver includes:
> > - Initial configuration reporting at boot up.
> > - Support for ECC related functionality.
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  arch/riscv/mm/Makefile          |   1 +
> >  arch/riscv/mm/sifive_l2_cache.c | 221 ++++++++++++++++++++++++++++++++++++++++
> >  2 files changed, 222 insertions(+)
> >  create mode 100644 arch/riscv/mm/sifive_l2_cache.c
> >
> > diff --git a/arch/riscv/mm/Makefile b/arch/riscv/mm/Makefile
> > index eb22ab4..1523ee5 100644
> > --- a/arch/riscv/mm/Makefile
> > +++ b/arch/riscv/mm/Makefile
> > @@ -3,3 +3,4 @@ obj-y += fault.o
> >  obj-y += extable.o
> >  obj-y += ioremap.o
> >  obj-y += cacheflush.o
> > +obj-y += sifive_l2_cache.o
> > diff --git a/arch/riscv/mm/sifive_l2_cache.c b/arch/riscv/mm/sifive_l2_cache.c
> > new file mode 100644
> > index 0000000..923ab34
> > --- /dev/null
> > +++ b/arch/riscv/mm/sifive_l2_cache.c
> > @@ -0,0 +1,221 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * SiFive L2 cache controller Driver
> > + *
> > + * Copyright (C) 2018-2019 SiFive, Inc.
> > + *
> > + */

...

> > +static unsigned int l2_datfail_count(void)
> > +{
> > +     return readl(l2_base + SIFIVE_L2_DATECCFAIL_COUNT);
> > +}
>
> Do you really need all these single line functions? Below in several
> spots you use the readl directly, just do that everywhere.

Ok. Will remove these single line functions.
Thanks for your comments.

- Yash

>
> Andrew
>
