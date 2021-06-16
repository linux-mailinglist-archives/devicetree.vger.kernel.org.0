Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 682DD3A905B
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 06:12:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbhFPEOc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 00:14:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbhFPEOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 00:14:32 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24B64C061574
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 21:12:26 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id z1so1206043ils.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 21:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=480iw3RHEmaThOE/pnDPB0pRHOKUr78KviuFxgV2m28=;
        b=ZGcLRBiht0jP6J+AXrtU54w8Uc+zr833JxnoG08K94QWWjvLCllFqXgKhb1YXYtuSI
         H2kUoXb56/euW7L5KGDSV7c5wQp5UCbd+ujOwhBYXXWkAOagA4ahf3bI5zABwigXHQRs
         2V+ulAhHs0i9h1/h3ywLUL41gakNk5ma80vrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=480iw3RHEmaThOE/pnDPB0pRHOKUr78KviuFxgV2m28=;
        b=h4gnjkfxAiR3vLRwDVpjfsTCK5VopHgR99+wpKdoX8OS0RpTFPm0bJzXzq+OeModTH
         paIbnC+BHRpiApjV4XJR8KEKMKZVuRJPgLYhGOdeO+kPTa5zGJL0LTJzMDzKNnhQ95aF
         A1gf/R8FmeEDF2e8z21UuRGpCNFe9fTvYKfppindHfi+fyO53Ibfv1gWKXXo39FMPRf3
         3/2g7PIv826LmAzh3cbf/CdtFTNk12eVVTXJHtH8oRnR/vGZ0yxDxIhmOhKMpbFsB1sV
         DTTV0g/wk60eVr+Eh6m8BJZMniMofjqZjn4lkvPtL/QOVep3CZSwsqch07tBde50ZMBA
         rRYA==
X-Gm-Message-State: AOAM530y+1oEK9jSsNlSL9eKghb9e5s1sILQ/zNcXg+0NTbpFJ8Pbu+C
        BlHi/8xG1ZZ8F6dxx+ywC5pqOf5Fbfc8Mg==
X-Google-Smtp-Source: ABdhPJznSNTEr2mQSKdxI0/VTDYVL1TLbyjFH0x/CpL8uqp9No3F77hPHLdyqNFgpqZQcsUy8IL7Uw==
X-Received: by 2002:a92:d94c:: with SMTP id l12mr1224729ilq.272.1623816745366;
        Tue, 15 Jun 2021 21:12:25 -0700 (PDT)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com. [209.85.166.176])
        by smtp.gmail.com with ESMTPSA id p10sm204630ilj.88.2021.06.15.21.12.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 21:12:25 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id z1so1206030ils.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 21:12:24 -0700 (PDT)
X-Received: by 2002:a5e:8513:: with SMTP id i19mr1992773ioj.50.1623816266935;
 Tue, 15 Jun 2021 21:04:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210616035240.840463-1-tientzu@chromium.org> <20210616035240.840463-10-tientzu@chromium.org>
In-Reply-To: <20210616035240.840463-10-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Wed, 16 Jun 2021 12:04:16 +0800
X-Gmail-Original-Message-ID: <CALiNf28=3vqAs+8HsjyBGOiPNR2F3yT6OGnLpZH_AkWqgTqgOA@mail.gmail.com>
Message-ID: <CALiNf28=3vqAs+8HsjyBGOiPNR2F3yT6OGnLpZH_AkWqgTqgOA@mail.gmail.com>
Subject: Re: [PATCH v11 09/12] swiotlb: Add restricted DMA alloc/free support
To:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     benh@kernel.crashing.org, paulus@samba.org,
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

On Wed, Jun 16, 2021 at 11:54 AM Claire Chang <tientzu@chromium.org> wrote:
>
> Add the functions, swiotlb_{alloc,free} to support the memory allocation
> from restricted DMA pool.
>
> The restricted DMA pool is preferred if available.
>
> Note that since coherent allocation needs remapping, one must set up
> another device coherent pool by shared-dma-pool and use
> dma_alloc_from_dev_coherent instead for atomic coherent allocation.
>
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/linux/swiotlb.h | 15 +++++++++++++
>  kernel/dma/direct.c     | 50 ++++++++++++++++++++++++++++++-----------
>  kernel/dma/swiotlb.c    | 45 +++++++++++++++++++++++++++++++++++--
>  3 files changed, 95 insertions(+), 15 deletions(-)
>
> diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> index efcd56e3a16c..2d5ec670e064 100644
> --- a/include/linux/swiotlb.h
> +++ b/include/linux/swiotlb.h
> @@ -156,4 +156,19 @@ static inline void swiotlb_adjust_size(unsigned long size)
>  extern void swiotlb_print_info(void);
>  extern void swiotlb_set_max_segment(unsigned int);
>
> +#ifdef CONFIG_DMA_RESTRICTED_POOL
> +struct page *swiotlb_alloc(struct device *dev, size_t size);
> +bool swiotlb_free(struct device *dev, struct page *page, size_t size);
> +#else
> +static inline struct page *swiotlb_alloc(struct device *dev, size_t size)
> +{
> +       return NULL;
> +}
> +static inline bool swiotlb_free(struct device *dev, struct page *page,
> +                               size_t size)
> +{
> +       return false;
> +}
> +#endif /* CONFIG_DMA_RESTRICTED_POOL */
> +
>  #endif /* __LINUX_SWIOTLB_H */
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 3713461d6fe0..da0e09621230 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -75,6 +75,15 @@ static bool dma_coherent_ok(struct device *dev, phys_addr_t phys, size_t size)
>                 min_not_zero(dev->coherent_dma_mask, dev->bus_dma_limit);
>  }
>
> +static void __dma_direct_free_pages(struct device *dev, struct page *page,
> +                                   size_t size)
> +{
> +       if (IS_ENABLED(CONFIG_DMA_RESTRICTED_POOL) &&
> +           swiotlb_free(dev, page, size))
> +               return;
> +       dma_free_contiguous(dev, page, size);
> +}
> +
>  static struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>                 gfp_t gfp)
>  {
> @@ -86,7 +95,16 @@ static struct page *__dma_direct_alloc_pages(struct device *dev, size_t size,
>
>         gfp |= dma_direct_optimal_gfp_mask(dev, dev->coherent_dma_mask,
>                                            &phys_limit);
> -       page = dma_alloc_contiguous(dev, size, gfp);
> +       if (IS_ENABLED(CONFIG_DMA_RESTRICTED_POOL)) {
> +               page = swiotlb_alloc(dev, size);
> +               if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
> +                       __dma_direct_free_pages(dev, page, size);
> +                       return NULL;
> +               }
> +       }
> +
> +       if (!page)
> +               page = dma_alloc_contiguous(dev, size, gfp);
>         if (page && !dma_coherent_ok(dev, page_to_phys(page), size)) {
>                 dma_free_contiguous(dev, page, size);
>                 page = NULL;
> @@ -142,7 +160,7 @@ void *dma_direct_alloc(struct device *dev, size_t size,
>                 gfp |= __GFP_NOWARN;
>
>         if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
> -           !force_dma_unencrypted(dev)) {
> +           !force_dma_unencrypted(dev) && !is_dev_swiotlb_force(dev)) {
>                 page = __dma_direct_alloc_pages(dev, size, gfp & ~__GFP_ZERO);
>                 if (!page)
>                         return NULL;
> @@ -155,18 +173,23 @@ void *dma_direct_alloc(struct device *dev, size_t size,
>         }
>
>         if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED) &&
> -           !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> -           !dev_is_dma_coherent(dev))
> +           !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev) &&
> +           !is_dev_swiotlb_force(dev))
>                 return arch_dma_alloc(dev, size, dma_handle, gfp, attrs);

Just noticed that after propagating swiotlb_force setting into
io_tlb_default_mem->force, the memory allocation behavior for
swiotlb_force will change (i.e. always skipping arch_dma_alloc and
dma_direct_alloc_from_pool).

>
>         /*
>          * Remapping or decrypting memory may block. If either is required and
>          * we can't block, allocate the memory from the atomic pools.
> +        * If restricted DMA (i.e., is_dev_swiotlb_force) is required, one must
> +        * set up another device coherent pool by shared-dma-pool and use
> +        * dma_alloc_from_dev_coherent instead.
>          */
>         if (IS_ENABLED(CONFIG_DMA_COHERENT_POOL) &&
>             !gfpflags_allow_blocking(gfp) &&
>             (force_dma_unencrypted(dev) ||
> -            (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev))))
> +            (IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> +             !dev_is_dma_coherent(dev))) &&
> +           !is_dev_swiotlb_force(dev))
>                 return dma_direct_alloc_from_pool(dev, size, dma_handle, gfp);

And here.

>
>         /* we always manually zero the memory once we are done */
> @@ -237,7 +260,7 @@ void *dma_direct_alloc(struct device *dev, size_t size,
>                         return NULL;
>         }
>  out_free_pages:
> -       dma_free_contiguous(dev, page, size);
> +       __dma_direct_free_pages(dev, page, size);
>         return NULL;
>  }
>
> @@ -247,15 +270,15 @@ void dma_direct_free(struct device *dev, size_t size,
>         unsigned int page_order = get_order(size);
>
>         if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
> -           !force_dma_unencrypted(dev)) {
> +           !force_dma_unencrypted(dev) && !is_dev_swiotlb_force(dev)) {
>                 /* cpu_addr is a struct page cookie, not a kernel address */
>                 dma_free_contiguous(dev, cpu_addr, size);
>                 return;
>         }
>
>         if (!IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED) &&
> -           !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
> -           !dev_is_dma_coherent(dev)) {
> +           !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) && !dev_is_dma_coherent(dev) &&
> +           !is_dev_swiotlb_force(dev)) {
>                 arch_dma_free(dev, size, cpu_addr, dma_addr, attrs);
>                 return;
>         }
> @@ -273,7 +296,7 @@ void dma_direct_free(struct device *dev, size_t size,
>         else if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_CLEAR_UNCACHED))
>                 arch_dma_clear_uncached(cpu_addr, size);
>
> -       dma_free_contiguous(dev, dma_direct_to_page(dev, dma_addr), size);
> +       __dma_direct_free_pages(dev, dma_direct_to_page(dev, dma_addr), size);
>  }
>
>  struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
> @@ -283,7 +306,8 @@ struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
>         void *ret;
>
>         if (IS_ENABLED(CONFIG_DMA_COHERENT_POOL) &&
> -           force_dma_unencrypted(dev) && !gfpflags_allow_blocking(gfp))
> +           force_dma_unencrypted(dev) && !gfpflags_allow_blocking(gfp) &&
> +           !is_dev_swiotlb_force(dev))
>                 return dma_direct_alloc_from_pool(dev, size, dma_handle, gfp);
>
>         page = __dma_direct_alloc_pages(dev, size, gfp);
> @@ -310,7 +334,7 @@ struct page *dma_direct_alloc_pages(struct device *dev, size_t size,
>         *dma_handle = phys_to_dma_direct(dev, page_to_phys(page));
>         return page;
>  out_free_pages:
> -       dma_free_contiguous(dev, page, size);
> +       __dma_direct_free_pages(dev, page, size);
>         return NULL;
>  }
>
> @@ -329,7 +353,7 @@ void dma_direct_free_pages(struct device *dev, size_t size,
>         if (force_dma_unencrypted(dev))
>                 set_memory_encrypted((unsigned long)vaddr, 1 << page_order);
>
> -       dma_free_contiguous(dev, page, size);
> +       __dma_direct_free_pages(dev, page, size);
>  }
>
>  #if defined(CONFIG_ARCH_HAS_SYNC_DMA_FOR_DEVICE) || \
> diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> index fec4934b9926..6ad85b48f101 100644
> --- a/kernel/dma/swiotlb.c
> +++ b/kernel/dma/swiotlb.c
> @@ -462,8 +462,9 @@ static int swiotlb_find_slots(struct device *dev, phys_addr_t orig_addr,
>
>         index = wrap = wrap_index(mem, ALIGN(mem->index, stride));
>         do {
> -               if ((slot_addr(tbl_dma_addr, index) & iotlb_align_mask) !=
> -                   (orig_addr & iotlb_align_mask)) {
> +               if (orig_addr &&
> +                   (slot_addr(tbl_dma_addr, index) & iotlb_align_mask) !=
> +                           (orig_addr & iotlb_align_mask)) {
>                         index = wrap_index(mem, index + 1);
>                         continue;
>                 }
> @@ -702,3 +703,43 @@ static int __init swiotlb_create_default_debugfs(void)
>  late_initcall(swiotlb_create_default_debugfs);
>
>  #endif
> +
> +#ifdef CONFIG_DMA_RESTRICTED_POOL
> +struct page *swiotlb_alloc(struct device *dev, size_t size)
> +{
> +       struct io_tlb_mem *mem = dev->dma_io_tlb_mem;
> +       phys_addr_t tlb_addr;
> +       int index;
> +
> +       /*
> +        * Skip io_tlb_default_mem since swiotlb_alloc doesn't support atomic
> +        * coherent allocation. Otherwise might break existing devices.
> +        * One must set up another device coherent pool by shared-dma-pool and
> +        * use dma_alloc_from_dev_coherent instead for atomic coherent
> +        * allocation to avoid memory remapping.
> +        */
> +       if (!mem || mem == io_tlb_default_mem)
> +               return NULL;
> +
> +       index = swiotlb_find_slots(dev, 0, size);
> +       if (index == -1)
> +               return NULL;
> +
> +       tlb_addr = slot_addr(mem->start, index);
> +
> +       return pfn_to_page(PFN_DOWN(tlb_addr));
> +}
> +
> +bool swiotlb_free(struct device *dev, struct page *page, size_t size)
> +{
> +       phys_addr_t tlb_addr = page_to_phys(page);
> +
> +       if (!is_swiotlb_buffer(dev, tlb_addr))
> +               return false;
> +
> +       swiotlb_release_slots(dev, tlb_addr);
> +
> +       return true;
> +}
> +
> +#endif /* CONFIG_DMA_RESTRICTED_POOL */
> --
> 2.32.0.272.g935e593368-goog
>
