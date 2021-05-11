Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E6BF37AC52
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 18:48:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231204AbhEKQts (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 12:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230484AbhEKQts (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 12:49:48 -0400
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com [IPv6:2607:f8b0:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3207C061574
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:48:40 -0700 (PDT)
Received: by mail-il1-x12f.google.com with SMTP id c3so17748292ils.5
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I574vs+oxpmw2RaQkdeqT3TmVa8C0vE6HCQzgLmVaEk=;
        b=EO4zcKQD13cnMpJi5k5sqZg36m/uhjFrv+x7tUEK/JnHkDgZTOULzljGCah93D1FN5
         SwmaT+lt9As201TL9V65C0BiJShCnGyDe8UgjgY5Jm1YBpkuQxrN8+e9OJjS8RpeP4ih
         4tasAkIoShr42ndvrMVih2QtviIwqYbb0WQHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I574vs+oxpmw2RaQkdeqT3TmVa8C0vE6HCQzgLmVaEk=;
        b=liDaBntISCyCy0fCmLw1/7nRnt1YFdLhj9gQjmxBRWrnZPok48K04wSIOJgnWOLZgi
         6NqUJhq4Jqwo7GdVm/E0ss45kVP8XenskZlBKKDaZoyKAjkcSJA/1qQzSALsqfFTCR36
         guk2Vr9Drv+dBPTriTcUL1YG9fov6oyFPmhNxuoSLOYHL2SlWVLsQ8ZYQ278R+HeWOC4
         nFMnHAdOihz8vzmQvY6vFds2dGieFLbTOG5on6FiFlIT77KpncasxONKl9snt+U7gq8M
         thIoFJLKePN8jhOdtcl/5xMvRJOdy3xmNWAlXaiPu06nhrvA70ExJ3zMej28iZWcvFzI
         lcOg==
X-Gm-Message-State: AOAM532r8q8NYxtYQxhbP4hKYvLItZuMCOJC+0beMBRRrY7mhHgVT6X8
        tRJoZbPQBiFK2jqOonRAfVX7EhKGYgF3GA==
X-Google-Smtp-Source: ABdhPJxwhdsVH74H251Gpa2LM9N+VfHRbbFCFTmn2u/IrSUXSKBeY5yVwrMn6lwacAYRUZT7zm2H+A==
X-Received: by 2002:a92:3002:: with SMTP id x2mr28637757ile.116.1620751720096;
        Tue, 11 May 2021 09:48:40 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com. [209.85.166.50])
        by smtp.gmail.com with ESMTPSA id r16sm9903001ila.1.2021.05.11.09.48.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 09:48:39 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id d24so8917886ios.2
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 09:48:39 -0700 (PDT)
X-Received: by 2002:a92:6804:: with SMTP id d4mr27241366ilc.5.1620751346868;
 Tue, 11 May 2021 09:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210510095026.3477496-1-tientzu@chromium.org>
 <20210510095026.3477496-9-tientzu@chromium.org> <20210510150516.GE28066@lst.de>
In-Reply-To: <20210510150516.GE28066@lst.de>
From:   Claire Chang <tientzu@chromium.org>
Date:   Wed, 12 May 2021 00:42:15 +0800
X-Gmail-Original-Message-ID: <CALiNf2-x8Gw0TPLdeRnfPmUTeuK9dsLbDXN4hPnc08y21uuUXQ@mail.gmail.com>
Message-ID: <CALiNf2-x8Gw0TPLdeRnfPmUTeuK9dsLbDXN4hPnc08y21uuUXQ@mail.gmail.com>
Subject: Re: [PATCH v6 08/15] swiotlb: Bounce data from/to restricted DMA pool
 if available
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

On Mon, May 10, 2021 at 11:05 PM Christoph Hellwig <hch@lst.de> wrote:
>
> > +static inline bool is_dev_swiotlb_force(struct device *dev)
> > +{
> > +#ifdef CONFIG_DMA_RESTRICTED_POOL
> > +     if (dev->dma_io_tlb_mem)
> > +             return true;
> > +#endif /* CONFIG_DMA_RESTRICTED_POOL */
> > +     return false;
> > +}
> > +
>
> >       /* If SWIOTLB is active, use its maximum mapping size */
> >       if (is_swiotlb_active(dev) &&
> > -         (dma_addressing_limited(dev) || swiotlb_force == SWIOTLB_FORCE))
> > +         (dma_addressing_limited(dev) || swiotlb_force == SWIOTLB_FORCE ||
> > +          is_dev_swiotlb_force(dev)))
>
> This is a mess.  I think the right way is to have an always_bounce flag
> in the io_tlb_mem structure instead.  Then the global swiotlb_force can
> go away and be replace with this and the fact that having no
> io_tlb_mem structure at all means forced no buffering (after a little
> refactoring).

Will do in the next version.
