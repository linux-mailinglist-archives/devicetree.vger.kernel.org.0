Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FF40389E15
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 08:40:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230359AbhETGmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 02:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230350AbhETGmI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 02:42:08 -0400
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2707C06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 23:40:47 -0700 (PDT)
Received: by mail-il1-x131.google.com with SMTP id m1so12606401ilg.10
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 23:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oIhFsW3yOUmKSioHfdtl49xT1nsW2ymAOSCthcMXiio=;
        b=lM9veaUv42y4nXibj1lGSdifgvjsNbUKUEol+uJziWw6kVRwnZkDD52tXqcK/vhasS
         PUDj92pN5vsIbUfabcqexhaZYlSojZJ1wq1mzK9ZTms/+1Va4jsCnNJ6mu4u4DoMsmtY
         16/lsdYHKt3Z41zBC1z7c65B0IdsqOKp+QHbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oIhFsW3yOUmKSioHfdtl49xT1nsW2ymAOSCthcMXiio=;
        b=ua1Iwx+qArezYUJ2l/tnePVdNpoOspGWU/Iss8K1xSx+nWq547QHNzOK4502LRk0ud
         ciTtg6YNT+fY5IqUUdLXoa42cKLunxTOwAOER9yAXc87VMeQSHV9lNNy8kZX4KeSN5HV
         XwP0tS8mZtXZedOZOsZzPzyf447skM+rQp3huMuhK7gK9oXe1enoJVeGN19MRd9VwWqN
         x/t24SIjWv6Kx5EUfEnx9we2o8qKOkoGoykTz2uxdsH34YFUMykhoU++3NhphpV5+Mrv
         NCv01wZBx+y6+dli7VibzPidbPePCXzoQOFv1wUbAMOTxGtru9jaIHUh2IU3VNSLTCy5
         F0xQ==
X-Gm-Message-State: AOAM531uxRIPZpxx38xd0kO9M2E8Z7ZI34yaA3Bw67zQw+6xZERlNbiX
        sTn60dq26uZRuyuX7thjEIAGAWi5fetUnw==
X-Google-Smtp-Source: ABdhPJyt6cqxaItn16968IcNB5SFWNsCiJxirRQfNmHQ5B49aUM9ZLjHOGTxYspivwNjIONFXAqJwg==
X-Received: by 2002:a05:6e02:13a8:: with SMTP id h8mr3216589ilo.82.1621492846771;
        Wed, 19 May 2021 23:40:46 -0700 (PDT)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com. [209.85.166.174])
        by smtp.gmail.com with ESMTPSA id i7sm2005021ilb.67.2021.05.19.23.40.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 23:40:46 -0700 (PDT)
Received: by mail-il1-f174.google.com with SMTP id l15so2678410ilh.1
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 23:40:45 -0700 (PDT)
X-Received: by 2002:a5d:8c82:: with SMTP id g2mr3632711ion.34.1621492834046;
 Wed, 19 May 2021 23:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-2-tientzu@chromium.org> <170a54f2-be20-ec29-1d7f-3388e5f928c6@gmail.com>
In-Reply-To: <170a54f2-be20-ec29-1d7f-3388e5f928c6@gmail.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 20 May 2021 14:40:23 +0800
X-Gmail-Original-Message-ID: <CALiNf2-9fRbH3Xs=fA+N1iRztFxeC0iTsyOSZFe=F42uwXS0Sg@mail.gmail.com>
Message-ID: <CALiNf2-9fRbH3Xs=fA+N1iRztFxeC0iTsyOSZFe=F42uwXS0Sg@mail.gmail.com>
Subject: Re: [PATCH v7 01/15] swiotlb: Refactor swiotlb init functions
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        sstabellini@kernel.org, Robin Murphy <robin.murphy@arm.com>,
        grant.likely@arm.com, xypron.glpk@gmx.de,
        Thierry Reding <treding@nvidia.com>, mingo@kernel.org,
        bauerman@linux.ibm.com, peterz@infradead.org,
        Greg KH <gregkh@linuxfoundation.org>,
        Saravana Kannan <saravanak@google.com>,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
        heikki.krogerus@linux.intel.com,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Dan Williams <dan.j.williams@intel.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-devicetree <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        linuxppc-dev@lists.ozlabs.org, xen-devel@lists.xenproject.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        Jim Quinlan <james.quinlan@broadcom.com>,
        Tomasz Figa <tfiga@chromium.org>, bskeggs@redhat.com,
        Bjorn Helgaas <bhelgaas@google.com>, chris@chris-wilson.co.uk,
        Daniel Vetter <daniel@ffwll.ch>, airlied@linux.ie,
        dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        jani.nikula@linux.intel.com, Jianxiong Gao <jxgao@google.com>,
        joonas.lahtinen@linux.intel.com, linux-pci@vger.kernel.org,
        maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
        rodrigo.vivi@intel.com, thomas.hellstrom@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 20, 2021 at 2:50 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 5/17/2021 11:42 PM, Claire Chang wrote:
> > Add a new function, swiotlb_init_io_tlb_mem, for the io_tlb_mem struct
> > initialization to make the code reusable.
> >
> > Note that we now also call set_memory_decrypted in swiotlb_init_with_tbl.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >  kernel/dma/swiotlb.c | 51 ++++++++++++++++++++++----------------------
> >  1 file changed, 25 insertions(+), 26 deletions(-)
> >
> > diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> > index 8ca7d505d61c..d3232fc19385 100644
> > --- a/kernel/dma/swiotlb.c
> > +++ b/kernel/dma/swiotlb.c
> > @@ -168,9 +168,30 @@ void __init swiotlb_update_mem_attributes(void)
> >       memset(vaddr, 0, bytes);
> >  }
> >
> > -int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
> > +static void swiotlb_init_io_tlb_mem(struct io_tlb_mem *mem, phys_addr_t start,
> > +                                 unsigned long nslabs, bool late_alloc)
> >  {
> > +     void *vaddr = phys_to_virt(start);
> >       unsigned long bytes = nslabs << IO_TLB_SHIFT, i;
> > +
> > +     mem->nslabs = nslabs;
> > +     mem->start = start;
> > +     mem->end = mem->start + bytes;
> > +     mem->index = 0;
> > +     mem->late_alloc = late_alloc;
> > +     spin_lock_init(&mem->lock);
> > +     for (i = 0; i < mem->nslabs; i++) {
> > +             mem->slots[i].list = IO_TLB_SEGSIZE - io_tlb_offset(i);
> > +             mem->slots[i].orig_addr = INVALID_PHYS_ADDR;
> > +             mem->slots[i].alloc_size = 0;
> > +     }
> > +
> > +     set_memory_decrypted((unsigned long)vaddr, bytes >> PAGE_SHIFT);
> > +     memset(vaddr, 0, bytes);
>
> You are doing an unconditional set_memory_decrypted() followed by a
> memset here, and then:
>
> > +}
> > +
> > +int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
> > +{
> >       struct io_tlb_mem *mem;
> >       size_t alloc_size;
> >
> > @@ -186,16 +207,8 @@ int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
> >       if (!mem)
> >               panic("%s: Failed to allocate %zu bytes align=0x%lx\n",
> >                     __func__, alloc_size, PAGE_SIZE);
> > -     mem->nslabs = nslabs;
> > -     mem->start = __pa(tlb);
> > -     mem->end = mem->start + bytes;
> > -     mem->index = 0;
> > -     spin_lock_init(&mem->lock);
> > -     for (i = 0; i < mem->nslabs; i++) {
> > -             mem->slots[i].list = IO_TLB_SEGSIZE - io_tlb_offset(i);
> > -             mem->slots[i].orig_addr = INVALID_PHYS_ADDR;
> > -             mem->slots[i].alloc_size = 0;
> > -     }
> > +
> > +     swiotlb_init_io_tlb_mem(mem, __pa(tlb), nslabs, false);
>
> You convert this call site with swiotlb_init_io_tlb_mem() which did not
> do the set_memory_decrypted()+memset(). Is this okay or should
> swiotlb_init_io_tlb_mem() add an additional argument to do this
> conditionally?

I'm actually not sure if this it okay. If not, will add an additional
argument for it.

> --
> Florian
