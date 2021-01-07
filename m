Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 461682ED5EF
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 18:46:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728821AbhAGRqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 12:46:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726650AbhAGRqT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 12:46:19 -0500
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DD8FC0612F4
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 09:45:39 -0800 (PST)
Received: by mail-il1-x12e.google.com with SMTP id t3so3425217ilh.9
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 09:45:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+0HS3c+10kITlDelN9sS9O+z0w2Ups5kLpisbgPnIuQ=;
        b=TmrbFqeMmnksB1vaMhBMwmgHvojsvOdZ6TLQjSgGvlt9aJwr9bFzrlNmZkoEKaXZrA
         BzhRl+J0o1KlSCMk8lZODbp2N6pkKBO2ZLOdx2Na4jfQSKA1o8yFNpUtcIwDAMJ6DBdH
         07WtF3X92be4zrXT7ssItC8OK2EEQXGttgp4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+0HS3c+10kITlDelN9sS9O+z0w2Ups5kLpisbgPnIuQ=;
        b=tN4jWcUCUhQJwx8GXdGUJ2PEdDpfIvqfEGROHg127NmACEBBx8JRbVGA+IeSOAPSn0
         r3lJIU9LuDsQFYAMWHH46M90c3/hbP1bj6LP0tG1a0CM7UCufYAQ2WuwiBqYnRGodZR7
         GBjzeavD2OFnKyLl8dA+nScMlFzGD/5DwFRyDk8/WhKGPqWJ5KuOyA9Bxy2YqgYQTNfr
         kBpA+HM+q2GDLjtRbtgvCvVYxQ5/OMeQKi5nbE2hbGOfXdDtnTwmOl2Vul6W0s1uQasx
         ejsOCzY22F0neNP5MaWOeHl+RQuv5SJVwOlEqVbVjQHYWYbQDVA/30a7yCU79cyR0cf6
         hKTA==
X-Gm-Message-State: AOAM531MXqXb4Bd+LETAzAaRSqkMqrg/qX/9YSPvTcsmhSJcUOKRyHyq
        05YT8JKOVGxfpixK+JqfOEDx8rdz3/m5fsS8
X-Google-Smtp-Source: ABdhPJzdkVxuZsRvS+SPlxjcZWDR0aY6cWQhAD0GLQPEydFMs9yLJxi14qkX8/9PvL87A1Zo8UgdWQ==
X-Received: by 2002:a92:cb44:: with SMTP id f4mr9920097ilq.131.1610041538376;
        Thu, 07 Jan 2021 09:45:38 -0800 (PST)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com. [209.85.166.174])
        by smtp.gmail.com with ESMTPSA id s1sm3855767iot.0.2021.01.07.09.45.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:45:38 -0800 (PST)
Received: by mail-il1-f174.google.com with SMTP id x15so7571814ilq.1
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 09:45:37 -0800 (PST)
X-Received: by 2002:a92:9ada:: with SMTP id c87mr10270546ill.5.1610041194703;
 Thu, 07 Jan 2021 09:39:54 -0800 (PST)
MIME-Version: 1.0
References: <20210106034124.30560-1-tientzu@chromium.org> <20210106034124.30560-6-tientzu@chromium.org>
 <20210106185757.GB109735@localhost.localdomain>
In-Reply-To: <20210106185757.GB109735@localhost.localdomain>
From:   Claire Chang <tientzu@chromium.org>
Date:   Fri, 8 Jan 2021 01:39:43 +0800
X-Gmail-Original-Message-ID: <CALiNf2_dV13jbHqLt-r1eK+dtOcAKBGcWQCVMQn+eL6MuOrETQ@mail.gmail.com>
Message-ID: <CALiNf2_dV13jbHqLt-r1eK+dtOcAKBGcWQCVMQn+eL6MuOrETQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 5/6] dt-bindings: of: Add restricted DMA pool
To:     Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <joro@8bytes.org>, will@kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        sstabellini@kernel.org, Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Robin Murphy <robin.murphy@arm.com>, grant.likely@arm.com,
        xypron.glpk@gmx.de, Thierry Reding <treding@nvidia.com>,
        mingo@kernel.org, bauerman@linux.ibm.com, peterz@infradead.org,
        Greg KH <gregkh@linuxfoundation.org>,
        Saravana Kannan <saravanak@google.com>,
        rafael.j.wysocki@intel.com, heikki.krogerus@linux.intel.com,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        rdunlap@infradead.org, dan.j.williams@intel.com,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-devicetree <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        linuxppc-dev@lists.ozlabs.org,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <iommu@lists.linux-foundation.org>,
        xen-devel@lists.xenproject.org, Tomasz Figa <tfiga@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 7, 2021 at 2:58 AM Konrad Rzeszutek Wilk
<konrad.wilk@oracle.com> wrote:
>
> On Wed, Jan 06, 2021 at 11:41:23AM +0800, Claire Chang wrote:
> > Introduce the new compatible string, restricted-dma-pool, for restricted
> > DMA. One can specify the address and length of the restricted DMA memory
> > region by restricted-dma-pool in the device tree.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >  .../reserved-memory/reserved-memory.txt       | 24 +++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
> > index e8d3096d922c..44975e2a1fd2 100644
> > --- a/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
> > +++ b/Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
> > @@ -51,6 +51,20 @@ compatible (optional) - standard definition
> >            used as a shared pool of DMA buffers for a set of devices. It can
> >            be used by an operating system to instantiate the necessary pool
> >            management subsystem if necessary.
> > +        - restricted-dma-pool: This indicates a region of memory meant to be
> > +          used as a pool of restricted DMA buffers for a set of devices. The
> > +          memory region would be the only region accessible to those devices.
> > +          When using this, the no-map and reusable properties must not be set,
> > +          so the operating system can create a virtual mapping that will be used
> > +          for synchronization. The main purpose for restricted DMA is to
> > +          mitigate the lack of DMA access control on systems without an IOMMU,
> > +          which could result in the DMA accessing the system memory at
> > +          unexpected times and/or unexpected addresses, possibly leading to data
> > +          leakage or corruption. The feature on its own provides a basic level
> > +          of protection against the DMA overwriting buffer contents at
> > +          unexpected times. However, to protect against general data leakage and
> > +          system memory corruption, the system needs to provide way to restrict
> > +          the DMA to a predefined memory region.
>
> Heya!
>
> I think I am missing something obvious here so please bear with my
> questions:
>
>  - This code adds the means of having the SWIOTLB pool tied to a specific
>    memory correct?

It doesn't affect the existing SWIOTLB. It just utilizes the existing SWIOTLB
code to create another DMA pool tied to a specific memory region for a given set
of devices. It bounces the streaming DMA (map/unmap) in and out of that region
and does the memory allocation (dma_direct_alloc) from the same region.

>
>
>  - Nothing stops the physical device from bypassing the SWIOTLB buffer.
>    That is if an errant device screwed up the length or DMA address, the
>    SWIOTLB would gladly do what the device told it do?

So the system needs to provide a way to lock down the memory access, e.g. MPU.

>
>  - This has to be combined with SWIOTLB-force-ish to always use the
>    bounce buffer, otherwise you could still do DMA without using
>    SWIOTLB (by not hitting the criteria for needing to use SWIOTLB)?

Since restricted DMA is for the devices that are not behind an IOMMU, I change
the criteria
`if (unlikely(swiotlb_force == SWIOTLB_FORCE))`
to
`if (unlikely(swiotlb_force == SWIOTLB_FORCE) || dev->dma_io_tlb_mem)`
in dma_direct_map_page().

Also, even if SWIOTLB=force, the restricted DMA pool is preferred if available
(get_io_tlb_mem in https://lore.kernel.org/patchwork/patch/1360995/).

Thanks!
