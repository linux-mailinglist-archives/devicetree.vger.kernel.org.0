Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17C1E3B3355
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 17:59:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232280AbhFXQBk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 12:01:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231761AbhFXQBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 12:01:39 -0400
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62071C061574
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 08:59:20 -0700 (PDT)
Received: by mail-io1-xd36.google.com with SMTP id o5so8901806iob.4
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 08:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OUC0E76X92PmzUvBM3M58z5qjgzPKxJvrlMYIlH3t/A=;
        b=V1DUMk4pWXUrJHEg/9Kd4ukoLxbJGeXfb8ZAhSFnF6RVbF8t2Z5J1ymG4niuoHNq4v
         lR13PRE87YP1jrN3LaPEaViS+9EA9qGG/k81iCPvzgmr34ySIt4SvvmFKyoWhdSPE98X
         KaxkIr3Pk6gTC5BkELMIeQJS2sWcVoDywrhkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OUC0E76X92PmzUvBM3M58z5qjgzPKxJvrlMYIlH3t/A=;
        b=DNf5SskU01zFEdCD9NH4dFJTBwTbkt7vxCegy2ZACsP6V6UYjLLQcLzaPiE+UdZ0bf
         u8rpSBdyPfCGXC6rohfXHaNq2enNKbdcXqrwIvGTl+rov8knpXRjK5AzVR1DA/md14f6
         cyDZT60dmHCdM+Fkaa+T1FBP5nISJ8K16IWq17tLCPLSBFYydqN7gpHEZhTj3yJgQSCc
         Vrvs+sKezfo8D2oFfS9vuKk7Opavpf6AmHzaC5/eOvlK1+b5gAgGcnkhOmP97cPhd3t+
         aTv+2uMzZg8qgNLMZFRpJZ6tdfu8yO228SL7EkvezvFThjc6oA11ayMd6Pgii47TjQON
         2cLA==
X-Gm-Message-State: AOAM530q6CVOyNQgzkaNv5f3aO49go4sxx4v1F0jS/Qw5AiLnExXydXL
        cAgnT411BUnMcvTazaNSsClFvrUaegYp0w==
X-Google-Smtp-Source: ABdhPJykwZDFPioQt5szaisOC3Ush1+k+rdea1f3Da1MRjqxVsuEFNqzgI4U3m+XhRUZDuBh8dHeHg==
X-Received: by 2002:a02:cbd9:: with SMTP id u25mr5299602jaq.49.1624550359042;
        Thu, 24 Jun 2021 08:59:19 -0700 (PDT)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com. [209.85.166.171])
        by smtp.gmail.com with ESMTPSA id l11sm2030447ilo.77.2021.06.24.08.59.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 08:59:18 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id h3so6820537ilc.9
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 08:59:18 -0700 (PDT)
X-Received: by 2002:a92:9509:: with SMTP id y9mr4122371ilh.18.1624550347935;
 Thu, 24 Jun 2021 08:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <76c3343d-72e5-9df3-8924-5474ee698ef4@quicinc.com>
 <20210623183736.GA472@willie-the-truck> <19d4c7a2-744d-21e0-289c-a576e1f0e6f3@quicinc.com>
 <20210624054315.GA25381@lst.de> <CALiNf288ZLMhY3E8E3N+z9rkwi1viWNLm1wwMEwT4rNwh3FfwQ@mail.gmail.com>
 <364e6715-eafd-fc4a-e0af-ce2a042756b4@arm.com> <20210624111855.GA1382@willie-the-truck>
 <452155d2-c98e-23f6-86d6-3a2ff2e74783@arm.com> <20210624114829.GB1382@willie-the-truck>
 <43ec9dd6-12c0-98ec-8d5d-b2904292721e@quicinc.com> <YNSq56zyJ7EYdTcI@char.us.oracle.com>
In-Reply-To: <YNSq56zyJ7EYdTcI@char.us.oracle.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 24 Jun 2021 23:58:57 +0800
X-Gmail-Original-Message-ID: <CALiNf2_WCVodEZJz9PaCTgk_c8LpOAcD4=YZTLDMVyorJs3ESQ@mail.gmail.com>
Message-ID: <CALiNf2_WCVodEZJz9PaCTgk_c8LpOAcD4=YZTLDMVyorJs3ESQ@mail.gmail.com>
Subject: Re: [PATCH v14 06/12] swiotlb: Use is_swiotlb_force_bounce for
 swiotlb data bouncing
To:     Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Cc:     Qian Cai <quic_qiancai@quicinc.com>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Christoph Hellwig <hch@lst.de>,
        Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>,
        Frank Rowand <frowand.list@gmail.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        heikki.krogerus@linux.intel.com, thomas.hellstrom@linux.intel.com,
        peterz@infradead.org, benh@kernel.crashing.org,
        joonas.lahtinen@linux.intel.com, dri-devel@lists.freedesktop.org,
        chris@chris-wilson.co.uk, grant.likely@arm.com, paulus@samba.org,
        mingo@kernel.org, Jianxiong Gao <jxgao@google.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Saravana Kannan <saravanak@google.com>, xypron.glpk@gmx.de,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        bskeggs@redhat.com, linux-pci@vger.kernel.org,
        xen-devel@lists.xenproject.org,
        Thierry Reding <treding@nvidia.com>,
        intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
        linux-devicetree <devicetree@vger.kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, airlied@linux.ie,
        maarten.lankhorst@linux.intel.com, linuxppc-dev@lists.ozlabs.org,
        jani.nikula@linux.intel.com,
        Nicolas Boichat <drinkcat@chromium.org>,
        rodrigo.vivi@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
        Dan Williams <dan.j.williams@intel.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        Jim Quinlan <james.quinlan@broadcom.com>,
        Tom Lendacky <thomas.lendacky@amd.com>, bauerman@linux.ibm.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 24, 2021 at 11:56 PM Konrad Rzeszutek Wilk
<konrad.wilk@oracle.com> wrote:
>
> On Thu, Jun 24, 2021 at 10:10:51AM -0400, Qian Cai wrote:
> >
> >
> > On 6/24/2021 7:48 AM, Will Deacon wrote:
> > > Ok, diff below which attempts to tackle the offset issue I mentioned as
> > > well. Qian Cai -- please can you try with these changes?
> >
> > This works fine.
>
> Cool. Let me squash this patch in #6 and rebase the rest of them.
>
> Claire, could you check the devel/for-linus-5.14 say by end of today to
> double check that I didn't mess anything up please?

I just submitted v15 here
(https://lore.kernel.org/patchwork/cover/1451322/) in case it's
helpful.
I'll double check of course. Thanks for the efforts!

>
> Will,
>
> Thank you for generating the fix! I am going to run it on x86 and Xen
> to make sure all is good (granted last time I ran devel/for-linus-5.14
> on that setup I didn't see any errors so I need to double check
> I didn't do something silly like run a wrong kernel).
>
>
> >
> > >
> > > Will
> > >
> > > --->8
> > >
> > > diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
> > > index 175b6c113ed8..39284ff2a6cd 100644
> > > --- a/include/linux/swiotlb.h
> > > +++ b/include/linux/swiotlb.h
> > > @@ -116,7 +116,9 @@ static inline bool is_swiotlb_buffer(struct device *dev, phys_addr_t paddr)
> > >
> > >  static inline bool is_swiotlb_force_bounce(struct device *dev)
> > >  {
> > > -       return dev->dma_io_tlb_mem->force_bounce;
> > > +       struct io_tlb_mem *mem = dev->dma_io_tlb_mem;
> > > +
> > > +       return mem && mem->force_bounce;
> > >  }
> > >
> > >  void __init swiotlb_exit(void);
> > > diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> > > index 44be8258e27b..0ffbaae9fba2 100644
> > > --- a/kernel/dma/swiotlb.c
> > > +++ b/kernel/dma/swiotlb.c
> > > @@ -449,6 +449,7 @@ static int swiotlb_find_slots(struct device *dev, phys_addr_t orig_addr,
> > >                 dma_get_min_align_mask(dev) & ~(IO_TLB_SIZE - 1);
> > >         unsigned int nslots = nr_slots(alloc_size), stride;
> > >         unsigned int index, wrap, count = 0, i;
> > > +       unsigned int offset = swiotlb_align_offset(dev, orig_addr);
> > >         unsigned long flags;
> > >
> > >         BUG_ON(!nslots);
> > > @@ -497,7 +498,7 @@ static int swiotlb_find_slots(struct device *dev, phys_addr_t orig_addr,
> > >         for (i = index; i < index + nslots; i++) {
> > >                 mem->slots[i].list = 0;
> > >                 mem->slots[i].alloc_size =
> > > -                       alloc_size - ((i - index) << IO_TLB_SHIFT);
> > > +                       alloc_size - (offset + ((i - index) << IO_TLB_SHIFT));
> > >         }
> > >         for (i = index - 1;
> > >              io_tlb_offset(i) != IO_TLB_SEGSIZE - 1 &&
> > >
