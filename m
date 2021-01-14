Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E600F2F5CE4
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 10:08:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727805AbhANJHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 04:07:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727274AbhANJHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 04:07:04 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D6C3C061575
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 01:06:22 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id cq1so2740224pjb.4
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 01:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r2clGFKfMvWdEL24a/hrPW/SoKgcT/5YZOK8G2tupLA=;
        b=X7SGbsqsGRlUtP0PJCg54RJ4TAlmaAHUG3xPdqjVb0oScLVfStGatbndpS03GsNgnP
         Ay7KF7sGV28MuK8UBUQD50tmV7MICCg9iHgn3dDmdiN2V0+w2jb02zv0Fvhtiq/Aou7X
         FWO4E0ky5/69bheieFiKWNwRnHzuorBEbyewE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r2clGFKfMvWdEL24a/hrPW/SoKgcT/5YZOK8G2tupLA=;
        b=rgro34/WwSEvYSo1eZlkuCLFiRSPmYSF0A1M0DDY0gNzjaRYkRYjJ4wVmWRz9UZQyk
         S5LQ1VEqFjeqPsk9wK9hqordNJngQ6ZMpBWEbgHh+1ZMUl0/88qDGE1gZ2XKu+AYSDi+
         iGzLThAmzDjxWo26P0PwNrZ+cNiIA83cOMLY+581dj5xC3UnrLKU3L8bLqL2HMIrfrd+
         MyrffZLAIt3P2OSqeEq04wXLCJ9sJtJARoQmvJ7YMWqnoL9aIM8AUMao3PxvsKYMPJAR
         Vz8DAmgJsg443Z5+Y5eqVJ7FCcz5r9sAXo4Okn3U6SEkgPdhmJdLM5dmjLBAI5hKVdr2
         LsPg==
X-Gm-Message-State: AOAM531+cIM2/kvvC0BsBgdjkDYrQDsxNT+qYX5mS7WmX+u9LQi9XbNz
        YvX1IcrrI+3A29lNLZvbniN2NW6sgfKIHQ==
X-Google-Smtp-Source: ABdhPJyXZSPcjuKljh9RVQuI4oWCWkFCLzMveSdRoJ6m+X3Xa8Z6My0/h9dX/I4yM2GnkRurAd/J1g==
X-Received: by 2002:a17:90a:ae02:: with SMTP id t2mr3941136pjq.169.1610615181877;
        Thu, 14 Jan 2021 01:06:21 -0800 (PST)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com. [209.85.210.179])
        by smtp.gmail.com with ESMTPSA id z6sm4804944pfj.22.2021.01.14.01.06.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 01:06:21 -0800 (PST)
Received: by mail-pf1-f179.google.com with SMTP id m6so2970115pfm.6
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 01:06:20 -0800 (PST)
X-Received: by 2002:a92:ce8f:: with SMTP id r15mr4926327ilo.303.1610615178346;
 Thu, 14 Jan 2021 01:06:18 -0800 (PST)
MIME-Version: 1.0
References: <20210106034124.30560-1-tientzu@chromium.org> <20210106034124.30560-3-tientzu@chromium.org>
 <20210113124209.GA1383@lst.de>
In-Reply-To: <20210113124209.GA1383@lst.de>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 14 Jan 2021 17:06:07 +0800
X-Gmail-Original-Message-ID: <CALiNf2-a6JpbeyfCoGdjFAbguxwW5kn1r_Oq6yr+k1rGum7O8Q@mail.gmail.com>
Message-ID: <CALiNf2-a6JpbeyfCoGdjFAbguxwW5kn1r_Oq6yr+k1rGum7O8Q@mail.gmail.com>
Subject: Re: [RFC PATCH v3 2/6] swiotlb: Add restricted DMA pool
To:     Christoph Hellwig <hch@lst.de>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <joro@8bytes.org>, will@kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        sstabellini@kernel.org,
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

On Wed, Jan 13, 2021 at 8:42 PM Christoph Hellwig <hch@lst.de> wrote:
>
> > +#ifdef CONFIG_SWIOTLB
> > +     struct io_tlb_mem       *dma_io_tlb_mem;
> >  #endif
>
> Please add a new config option for this code instead of always building
> it when swiotlb is enabled.
>
> > +static int swiotlb_init_io_tlb_mem(struct io_tlb_mem *mem, phys_addr_t start,
> > +                                size_t size)
>
> Can you split the refactoring in swiotlb.c into one or more prep
> patches?
>
> > +static int rmem_swiotlb_device_init(struct reserved_mem *rmem,
> > +                                 struct device *dev)
> > +{
> > +     struct io_tlb_mem *mem = rmem->priv;
> > +     int ret;
> > +
> > +     if (dev->dma_io_tlb_mem)
> > +             return -EBUSY;
> > +
> > +     if (!mem) {
> > +             mem = kzalloc(sizeof(*mem), GFP_KERNEL);
> > +             if (!mem)
> > +                     return -ENOMEM;
>
> What is the calling convention here that allows for a NULL and non-NULL
> private data?

Since multiple devices can share the same pool, the private data,
io_tlb_mem struct, will be initialized by the first device attached to
it.
This is similar to rmem_dma_device_init() in kernel/dma/coherent.c.
I'll add a comment for it in next version.
