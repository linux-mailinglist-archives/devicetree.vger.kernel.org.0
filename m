Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86E583D6906
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 23:53:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233249AbhGZVMn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 17:12:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233199AbhGZVMn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 17:12:43 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDD5FC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 14:53:10 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id a201so17227368ybg.12
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 14:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6kBp8vg6yrbqOVIKTerlcVAvXP0g+WzVUYrd5yH/+QE=;
        b=XA6S+wcg4qscUKPhrHfs9id0ov3mJw7DOLhvASuXhtr999Q3C6XmfJvxjMDGwtF5yP
         /ROSFbhTi6Bo2WJ7XqA7thr54ZyRRqBxFGPRUUpQDwu5dtF1UF2mNn2XKy0/k6KPL5HO
         BWQQP5EMcW2boq2BtlUyF+Cwh1u74WAo1zqdI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6kBp8vg6yrbqOVIKTerlcVAvXP0g+WzVUYrd5yH/+QE=;
        b=bTa48Ia7ORnL9D3Vppk2wjN865MLeT4gtWn3y+So6A4Vy+29/KpAiSbJEDApCuujRl
         CeWYFes5geBOUfxRa+zFmts50suDBFMGHVi1OSplfyh+h1ggv4iP8EFZobekTJz+pl2v
         1lGIZTEA1TGgqov98+LgO0fr1u6n4lKz5/p3NEKIkDsIVqprMbLRgfoMlx1mQIuM+w3c
         gLlOuJ8Qht0sDPCigG/5igyti3c2Dl+lXrO3Gqktx68w0LAfb3oIJPqAufSEL4BgfPmU
         E6aNgludy+nkeIlFgDQgkbX8vvDn2CZtY0Ejs9FiuQjURkHizHp/UYlf5jxl1r7er2ow
         luqQ==
X-Gm-Message-State: AOAM531fxskU5eOLh/W961LlsTVj0rskIqgTu9UytRCYJ2p0n6TzXLa2
        aJnyi2rr0kmnVuTrfxgM/TkbVeLPLalQc+73taUs
X-Google-Smtp-Source: ABdhPJw1sNKFekdI1Ln5GFGtrd+fGGKvAqudNs0O/HZL6Z2vY9+JbXh7u0IWSx+tE6iFXOzqgaQ/prFDh7B5VuUxCDI=
X-Received: by 2002:a25:d015:: with SMTP id h21mr25548749ybg.202.1627336390145;
 Mon, 26 Jul 2021 14:53:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210723214031.3251801-1-atish.patra@wdc.com> <20210723214031.3251801-2-atish.patra@wdc.com>
 <20210726065657.GA9035@lst.de>
In-Reply-To: <20210726065657.GA9035@lst.de>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Mon, 26 Jul 2021 14:52:59 -0700
Message-ID: <CAOnJCUJFOZsqC2F9sqJqYw5bLJK0fQS+w=Rp6PeM2ih=75Cxag@mail.gmail.com>
Subject: Re: [RFC 1/5] RISC-V: Implement arch_sync_dma* functions
To:     Christoph Hellwig <hch@lst.de>
Cc:     Atish Patra <atish.patra@wdc.com>,
        devicetree <devicetree@vger.kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Tobias Klauser <tklauser@distanz.ch>,
        Robin Murphy <robin.murphy@arm.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        iommu@lists.linux-foundation.org,
        Guo Ren <guoren@linux.alibaba.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 25, 2021 at 11:57 PM Christoph Hellwig <hch@lst.de> wrote:
>
> > +#ifdef CONFIG_RISCV_DMA_NONCOHERENT
> > +struct riscv_dma_cache_sync {
> > +     void (*cache_invalidate)(phys_addr_t paddr, size_t size);
> > +     void (*cache_clean)(phys_addr_t paddr, size_t size);
> > +     void (*cache_flush)(phys_addr_t paddr, size_t size);
> > +};
> > +
> > +void riscv_dma_cache_sync_set(struct riscv_dma_cache_sync *ops);
> > +#endif
>
> As told a bunch of times before: doing indirect calls here is a
> performance nightmare.  Use something that actually does perform
> horribly like alternatives.  Or even delay implementing that until
> we need it and do a plain direct call for now.
>

I was initially planning to replace this with alternatives in the
future versions. But there is no point in doing it
until we have CMO spec finalized. We also don't have any other
platform using these apart from sifive l2
cache controllers for now.

I will change these to direct for now.

> static void __dma_sync(phys_addr_t paddr, size_t size, enum dma_data_direction dir)
> > +{
> > +     if ((dir == DMA_FROM_DEVICE) && (dma_cache_sync->cache_invalidate))
> > +             dma_cache_sync->cache_invalidate(paddr, size);
> > +     else if ((dir == DMA_TO_DEVICE) && (dma_cache_sync->cache_clean))
> > +             dma_cache_sync->cache_clean(paddr, size);
> > +     else if ((dir == DMA_BIDIRECTIONAL) && dma_cache_sync->cache_flush)
> > +             dma_cache_sync->cache_flush(paddr, size);
> > +}
>
> The seletion of flush types is completely broken.  Take a look at the
> comment in arch/arc/mm/dma.c above arch_sync_dma_for_device for a good
> explanation.
>

Thanks. I will fix it.

> > +void arch_dma_prep_coherent(struct page *page, size_t size)
> > +{
> > +     void *flush_addr = page_address(page);
> > +
> > +     memset(flush_addr, 0, size);
>
> arch_dma_prep_coherent is not supposed to modify the content of
> the data.

Sorry. This was a leftover from some experimental code. It shouldn't
have been included.

> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu



-- 
Regards,
Atish
