Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94CDB37AC31
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 18:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231800AbhEKQnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 12:43:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231792AbhEKQnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 12:43:53 -0400
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05C98C06174A
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:42:47 -0700 (PDT)
Received: by mail-io1-xd34.google.com with SMTP id p8so18725074iol.11
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k6jrKLJf+SUK032/zz9tWYcN5Rhay3mFZvhqIWgxNBs=;
        b=L/Y31OZjVAvXas4gAOFGDpY1O+WckxTleHtLR2a6rScOLannRZ4axVg75JGljNN3EA
         40xB287W01zuvyDHYZFS2WLSs1CG9A82KNV8OVT7o92X2FrRRw8J292qbL27/DexCkE7
         qg4XvM9gaQyzYYNGyObKTqbnr0WqygwnwiYxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k6jrKLJf+SUK032/zz9tWYcN5Rhay3mFZvhqIWgxNBs=;
        b=sbtpVgp/Njru7lj9QZeXdUy3zv1YdREJ5nBxaJi3SSNE6rE7vIS44H6A/mysNM6JEy
         ZTnv0vV/UxGQHaiiq89zUXSbz5Q/KidClYqfggbSjt8Sn0sX9BIl5AOHiBaGcdw2T1aR
         82IxFDmYL2+b/dvyocxcZRVtTpQuULkH//JgTJ6HtAK12URkByuRBYHR57rlKrGVWE7B
         FQWBzIsph9a9tdcbYnAnxG8ICpfug3Icj9P5F2FhtN3JajnleZrUZ01NHtV1tIsHagIg
         ZrQlt4kfUp41CMDNxVI1+qq6Tk1mJcI7qTfu264bSSGRWKPHTcJHf/AExqsMZU2FBJ8D
         W+pA==
X-Gm-Message-State: AOAM530M6cVkUGaWyIzNN4W++NBhMPqY031z8DCIT3wEzOZ/uuIOLTPU
        gccb1t2wHk4oSE/9A48uGDscBQp5KVBZmw==
X-Google-Smtp-Source: ABdhPJyZ1/mTaiReAiXLqDdC9UrmpqlqbmBQ5JUIR3Wfl0jmFfE8scfku0YEv2M2QOIXQDQQfuG91w==
X-Received: by 2002:a05:6638:3395:: with SMTP id h21mr27806222jav.44.1620751366021;
        Tue, 11 May 2021 09:42:46 -0700 (PDT)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com. [209.85.166.175])
        by smtp.gmail.com with ESMTPSA id f12sm9951372ils.50.2021.05.11.09.42.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 09:42:45 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id p15so17733518iln.3
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:42:44 -0700 (PDT)
X-Received: by 2002:a6b:7b08:: with SMTP id l8mr22174004iop.50.1620751352978;
 Tue, 11 May 2021 09:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210510095026.3477496-1-tientzu@chromium.org>
 <20210510095026.3477496-6-tientzu@chromium.org> <20210510150342.GD28066@lst.de>
In-Reply-To: <20210510150342.GD28066@lst.de>
From:   Claire Chang <tientzu@chromium.org>
Date:   Wed, 12 May 2021 00:42:22 +0800
X-Gmail-Original-Message-ID: <CALiNf2_7mHuMG5DTQD0GsriN=vuX0ytyUn4rxEmsK2iP3PKV+w@mail.gmail.com>
Message-ID: <CALiNf2_7mHuMG5DTQD0GsriN=vuX0ytyUn4rxEmsK2iP3PKV+w@mail.gmail.com>
Subject: Re: [PATCH v6 05/15] swiotlb: Add a new get_io_tlb_mem getter
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
> > +static inline struct io_tlb_mem *get_io_tlb_mem(struct device *dev)
> > +{
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +     if (dev && dev->dma_io_tlb_mem)
> > +             return dev->dma_io_tlb_mem;
> > +#endif /* CONFIG_DMA_RESTRICTED_POOL */
> > +
> > +     return io_tlb_default_mem;
>
> Given that we're also looking into a not addressing restricted pool
> I'd rather always assign the active pool to dev->dma_io_tlb_mem and
> do away with this helper.

Where do you think is the proper place to do the assignment? First
time calling swiotlb_map? or in of_dma_configure_id?
