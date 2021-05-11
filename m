Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D037937AC55
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 18:49:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230435AbhEKQuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 12:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231230AbhEKQuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 12:50:20 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D20FEC061574
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:49:13 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id v13so17731098ilj.8
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ll12iwWOH+g7rF+Qcvmc/ZPVWK50RY5A+TnwOnViek8=;
        b=jF9yywweDau5byF0sr7SVkFA9hoYDaWzF8iy+wyA9wHf9oOaCvA+67rLL4jVjSY9gn
         QoY25mdgO7IV1eEXpAEk5s63+vTygeFS39HRXfLrmhNXD74fIDm9qeLodCWWHbiJG3ic
         G2KrYNbeLupAhGANRLweLDvdOuGV9VrSQUJi8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ll12iwWOH+g7rF+Qcvmc/ZPVWK50RY5A+TnwOnViek8=;
        b=Pu5ig19EFv3tGl3RxvK/hiXNQQlw/i1EXhxbn+GGs8Zh+rlhRy7AGlJhh91q/+JrtB
         OcA4FqgIGR6ExTDEOGygsFDKR1JL+9VLKNCBfmDRjgsW2sYdkdBZT2aRxjuaJ00BFl7u
         +q9iJ3t3uIHeoDJkIHCYWJXn+SKEJmOe9w5+0VebeF7rNHCw0XMZcp5j5ziZ0esIC7IR
         JH8L4zBVyC3Z5T/LqfyO4u+HHQyZimp7W3QsYqemoT9lfQnOXcZqk4ZiZGR+attGnczf
         +xl8st93rHhjYfD5WYDE5Aa2KVV7cGyhM9E02H+Q9elr+Lao551L8nHU+H7xD0h/r1Q1
         qYUg==
X-Gm-Message-State: AOAM531TM7+LGhdb17tjwn96M/ztvSwqq4Z6tB6J7jXGLoNr5N9fHBNe
        9aVR+/ExYGLjgqTlBVROXJGRDj7wPBqt3A==
X-Google-Smtp-Source: ABdhPJyG93cmvHbvrTxBsRknagA6FwsAwfZ3xTUA0kGeR2trpyXL5zpPniInrBHYDfqJOSYhw1tMhA==
X-Received: by 2002:a92:cec3:: with SMTP id z3mr26924940ilq.179.1620751753041;
        Tue, 11 May 2021 09:49:13 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com. [209.85.166.54])
        by smtp.gmail.com with ESMTPSA id l19sm7665814ioj.11.2021.05.11.09.49.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 09:49:12 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id p11so18766381iob.9
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:49:12 -0700 (PDT)
X-Received: by 2002:a05:6e02:e82:: with SMTP id t2mr17831684ilj.18.1620751359226;
 Tue, 11 May 2021 09:42:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210510095026.3477496-1-tientzu@chromium.org>
 <20210510095026.3477496-5-tientzu@chromium.org> <20210510150256.GC28066@lst.de>
In-Reply-To: <20210510150256.GC28066@lst.de>
From:   Claire Chang <tientzu@chromium.org>
Date:   Wed, 12 May 2021 00:42:28 +0800
X-Gmail-Original-Message-ID: <CALiNf28jgAU7zN4pwgPKgaecM-KXRHHqwHj4sPXVf_3M0-goMQ@mail.gmail.com>
Message-ID: <CALiNf28jgAU7zN4pwgPKgaecM-KXRHHqwHj4sPXVf_3M0-goMQ@mail.gmail.com>
Subject: Re: [PATCH v6 04/15] swiotlb: Add restricted DMA pool initialization
To:     Christoph Hellwig <hch@lst.de>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
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
        nouveau@lists.freedesktop.org, rodrigo.vivi@intel.com,
        thomas.hellstrom@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 10, 2021 at 11:03 PM Christoph Hellwig <hch@lst.de> wrote:
>
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +#include <linux/io.h>
> > +#include <linux/of.h>
> > +#include <linux/of_fdt.h>
> > +#include <linux/of_reserved_mem.h>
> > +#include <linux/slab.h>
> > +#endif
>
> I don't think any of this belongs into swiotlb.c.  Marking
> swiotlb_init_io_tlb_mem non-static and having all this code in a separate
> file is probably a better idea.

Will do in the next version.

>
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
> > +     /* Since multiple devices can share the same pool, the private data,
> > +      * io_tlb_mem struct, will be initialized by the first device attached
> > +      * to it.
> > +      */
>
> This is not the normal kernel comment style.

Will fix this in the next version.

>
> > +#ifdef CONFIG_ARM
> > +             if (!PageHighMem(pfn_to_page(PHYS_PFN(rmem->base)))) {
> > +                     kfree(mem);
> > +                     return -EINVAL;
> > +             }
> > +#endif /* CONFIG_ARM */
>
> And this is weird.  Why would ARM have such a restriction?  And if we have
> such rstrictions it absolutely belongs into an arch helper.

Now I think the CONFIG_ARM can just be removed?
The goal here is to make sure we're using linear map and can safely
use phys_to_dma/dma_to_phys.

>
> > +             swiotlb_init_io_tlb_mem(mem, rmem->base, nslabs, false);
> > +
> > +             rmem->priv = mem;
> > +
> > +#ifdef CONFIG_DEBUG_FS
> > +             if (!debugfs_dir)
> > +                     debugfs_dir = debugfs_create_dir("swiotlb", NULL);
> > +
> > +             swiotlb_create_debugfs(mem, rmem->name, debugfs_dir);
>
> Doesn't the debugfs_create_dir belong into swiotlb_create_debugfs?  Also
> please use IS_ENABLEd or a stub to avoid ifdefs like this.

Will move it into swiotlb_create_debugfs and use IS_ENABLED in the next version.
