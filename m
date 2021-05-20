Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9046F389E0C
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 08:39:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbhETGk4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 02:40:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbhETGkx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 02:40:53 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C4ECC061760
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 23:39:32 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id k19so12055576qta.2
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 23:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e/NSxqpkIDrHAb8EdngT+J5y92xOhsZUELUZeumbo14=;
        b=XZhu4NB364LO5HgzFR5xaRq+2+Ny8I/tbuM557W/djcP2WZR5/YY1P3k16G0KqQZ5g
         9wOC75EFGAaEHt77aJ4y5qFZynUNK1/otklqj7so1biOf1FGROrwm/ILpXyxkwLvM+aC
         k3452c8bAQ6BEmJklQOi+zYSoBDbgxiFQQFO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e/NSxqpkIDrHAb8EdngT+J5y92xOhsZUELUZeumbo14=;
        b=lkIf6AxMkep6/1QAtlVMNwCDm3uCBKjAjFd+drAd/lBrwWpwGiVoYgb/CNXV7Yu9c5
         tLi2kAVoCXWZbQMt+nGxkm2p7xHD05UwWjOeuxGEiLfG2ACi9J6Pe2xs8bUQdHPkHDcf
         h29jcmEBSBDmbWmfquV6UPfq87nPyjKamuBI0+48TZoxTBPirLruA8JwDfjG018iyoHj
         XABMZnDieKY+HIN93MiPnrLttUuQYQGSbJos8Oi7r2v8DlNB7hWIU5NxQmeXflYI9DOn
         OImRCXwSFZL9ZSF8KmrXVERYUl2eWEvIHuFI8F6zFZ23/tWNBOhS+13hgDE+clX0jfoS
         qVfg==
X-Gm-Message-State: AOAM532unIyA/XyGEk1Gtp4ufZ1j/MMR5pe9sf4Yz5FhttjWtwxhZFh9
        xvVFfKGmZbtyo7X0EfM/xWbEK7jbVbwbCQ==
X-Google-Smtp-Source: ABdhPJxdQc4VfuZJJfiKrozzvmE0JSC+gsCfT5y27fi3zFsx4fHAYKqGLBVn+EfNNQy05ZR4gFq8yQ==
X-Received: by 2002:ac8:5419:: with SMTP id b25mr3404574qtq.328.1621492770791;
        Wed, 19 May 2021 23:39:30 -0700 (PDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com. [209.85.160.180])
        by smtp.gmail.com with ESMTPSA id r125sm1433376qkf.24.2021.05.19.23.39.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 23:39:30 -0700 (PDT)
Received: by mail-qt1-f180.google.com with SMTP id 1so12069379qtb.0
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 23:39:30 -0700 (PDT)
X-Received: by 2002:a05:6638:14ce:: with SMTP id l14mr3931980jak.90.1621492759440;
 Wed, 19 May 2021 23:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-5-tientzu@chromium.org> <ae050c36-8179-e465-84f0-e46c361bd71e@gmail.com>
In-Reply-To: <ae050c36-8179-e465-84f0-e46c361bd71e@gmail.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 20 May 2021 14:39:08 +0800
X-Gmail-Original-Message-ID: <CALiNf29jpi7=UKFPc7TK8wiNbq6TL=Uj-Mvmj9HRvOLnr-r_Ow@mail.gmail.com>
Message-ID: <CALiNf29jpi7=UKFPc7TK8wiNbq6TL=Uj-Mvmj9HRvOLnr-r_Ow@mail.gmail.com>
Subject: Re: [PATCH v7 04/15] swiotlb: Add restricted DMA pool initialization
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

On Thu, May 20, 2021 at 2:54 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 5/17/2021 11:42 PM, Claire Chang wrote:
> > Add the initialization function to create restricted DMA pools from
> > matching reserved-memory nodes.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >  include/linux/device.h  |  4 +++
> >  include/linux/swiotlb.h |  3 +-
> >  kernel/dma/swiotlb.c    | 76 +++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 82 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/linux/device.h b/include/linux/device.h
> > index 38a2071cf776..4987608ea4ff 100644
> > --- a/include/linux/device.h
> > +++ b/include/linux/device.h
> > @@ -416,6 +416,7 @@ struct dev_links_info {
> >   * @dma_pools:       Dma pools (if dma'ble device).
> >   * @dma_mem: Internal for coherent mem override.
> >   * @cma_area:        Contiguous memory area for dma allocations
> > + * @dma_io_tlb_mem: Internal for swiotlb io_tlb_mem override.
> >   * @archdata:        For arch-specific additions.
> >   * @of_node: Associated device tree node.
> >   * @fwnode:  Associated device node supplied by platform firmware.
> > @@ -521,6 +522,9 @@ struct device {
> >  #ifdef CONFIG_DMA_CMA
> >       struct cma *cma_area;           /* contiguous memory area for dma
> >                                          allocations */
> > +#endif
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +     struct io_tlb_mem *dma_io_tlb_mem;
> >  #endif
> >       /* arch specific additions */
> >       struct dev_archdata     archdata;
> > diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> > index 216854a5e513..03ad6e3b4056 100644
> > --- a/include/linux/swiotlb.h
> > +++ b/include/linux/swiotlb.h
> > @@ -72,7 +72,8 @@ extern enum swiotlb_force swiotlb_force;
> >   *           range check to see if the memory was in fact allocated by this
> >   *           API.
> >   * @nslabs:  The number of IO TLB blocks (in groups of 64) between @start and
> > - *           @end. This is command line adjustable via setup_io_tlb_npages.
> > + *           @end. For default swiotlb, this is command line adjustable via
> > + *           setup_io_tlb_npages.
> >   * @used:    The number of used IO TLB block.
> >   * @list:    The free list describing the number of free entries available
> >   *           from each index.
> > diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> > index b849b01a446f..1d8eb4de0d01 100644
> > --- a/kernel/dma/swiotlb.c
> > +++ b/kernel/dma/swiotlb.c
> > @@ -39,6 +39,13 @@
> >  #ifdef CONFIG_DEBUG_FS
> >  #include <linux/debugfs.h>
> >  #endif
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +#include <linux/io.h>
> > +#include <linux/of.h>
> > +#include <linux/of_fdt.h>
> > +#include <linux/of_reserved_mem.h>
> > +#include <linux/slab.h>
> > +#endif
> >
> >  #include <asm/io.h>
> >  #include <asm/dma.h>
> > @@ -690,3 +697,72 @@ static int __init swiotlb_create_default_debugfs(void)
> >  late_initcall(swiotlb_create_default_debugfs);
> >
> >  #endif
> > +
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +static int rmem_swiotlb_device_init(struct reserved_mem *rmem,
> > +                                 struct device *dev)
> > +{
> > +     struct io_tlb_mem *mem = rmem->priv;
> > +     unsigned long nslabs = rmem->size >> IO_TLB_SHIFT;
> > +
> > +     if (dev->dma_io_tlb_mem)
> > +             return 0;
> > +
> > +     /*
> > +      * Since multiple devices can share the same pool, the private data,
> > +      * io_tlb_mem struct, will be initialized by the first device attached
> > +      * to it.
> > +      */
> > +     if (!mem) {
> > +             mem = kzalloc(struct_size(mem, slots, nslabs), GFP_KERNEL);
> > +             if (!mem)
> > +                     return -ENOMEM;
> > +
> > +             if (PageHighMem(pfn_to_page(PHYS_PFN(rmem->base)))) {
> > +                     kfree(mem);
> > +                     return -EINVAL;
>
> This could probably deserve a warning here to indicate that the reserved
> area must be accessible within the linear mapping as I would expect a
> lot of people to trip over that.

Ok. Will add it.

>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> --
> Florian
