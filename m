Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 773F12F4316
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 05:26:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725775AbhAME0W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 23:26:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725770AbhAME0W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 23:26:22 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0B80C061575
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 20:25:41 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id 6so1157936ejz.5
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 20:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Qd8hOVRYaVRyWNGRjHwo8wnN48NoVMjkXuMdDYJPYxc=;
        b=cUL+OIdnJx4G27gKvv1kHgGhT/slNCHswvbi3BuicuPQK2CUGcm0qVdh+9o8kjC/EK
         SNX+36UrRAN9XTvqxA+bDb4zE1ip5M/Md1KqkddIPS827Ih0ruD0qLwi/Bm2QcxOkH5H
         8Ph19hD0ZaKeMRKRHdsA/toCspDEeybtcuDi8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Qd8hOVRYaVRyWNGRjHwo8wnN48NoVMjkXuMdDYJPYxc=;
        b=SUrXPskI2g4Ke29NvDNvypL5Tw+sJChJylbsWjmlVTrX0Et/3tB5f3bW/5W/iqZTPh
         GM73yuqeFpp6BDU5HrX/TrajbkmNjSbOn+dplOEdkMxjnDyaGwjvlX/rfEcDZiqq1TO9
         71GvD1PI2bERPtDtIgZDucQtHRKPYPmGSNHkb+a2uBHq5av7DuF5uTGhG1VJWArQUOt+
         fMCuIYhpiPZpXcXeNzwgej8xTJISEvGr19jaxPZbdLPoj+zO4LgMg5E1fqJGIj1gFu+J
         RC3/gU42KpIenx0cWy2wU2U44yi5qB5hplBJ8kxdrdN3yQbc0bBFr5vO/D7+BhbTA+Wf
         5Lzg==
X-Gm-Message-State: AOAM530JZ7LS5MCOPSsbP9siogEuiZZkdDDo/6uSHvSYIEgEb4XlCAx0
        yvOeg7on3N6Td1mk4SIYLCA2+8Tm+qAeesIj
X-Google-Smtp-Source: ABdhPJxAGaYEfXRvQshkcQ7hq81pWA8exs1fYbwTZ8YhJzUbz7VNxWPYDmoPLL7fSKEPmGYZcP2APw==
X-Received: by 2002:a17:906:3099:: with SMTP id 25mr178765ejv.321.1610511940536;
        Tue, 12 Jan 2021 20:25:40 -0800 (PST)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com. [209.85.218.54])
        by smtp.gmail.com with ESMTPSA id ci20sm206514ejc.26.2021.01.12.20.25.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 20:25:40 -0800 (PST)
Received: by mail-ej1-f54.google.com with SMTP id g20so1191687ejb.1
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 20:25:40 -0800 (PST)
X-Received: by 2002:adf:fa86:: with SMTP id h6mr380594wrr.103.1610511938864;
 Tue, 12 Jan 2021 20:25:38 -0800 (PST)
MIME-Version: 1.0
References: <20210106034124.30560-1-tientzu@chromium.org> <d7043239-12cf-3636-4726-2e3b90917dc6@gmail.com>
 <CALiNf28sU1VtGB7LeTXExkMwQiCeg8N5arqyEjw0CPZP72R4dg@mail.gmail.com>
 <78871151-947d-b085-db03-0d0bd0b55632@gmail.com> <CALiNf29_PmLJTVLksSHp3NFAaL52idqehSMOtatJ=jaM2Muq1g@mail.gmail.com>
 <23a09b9a-70fc-a7a8-f3ea-b0bfa60507f0@gmail.com> <CAAFQd5DX=AdaYSYQbxgnrYYojkM5q7EE_Qs-BYPOiNjcQWbN1A@mail.gmail.com>
 <c7f7941d-b8bd-f0f3-4e40-b899a77188bf@gmail.com>
In-Reply-To: <c7f7941d-b8bd-f0f3-4e40-b899a77188bf@gmail.com>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Wed, 13 Jan 2021 13:25:27 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AGm4U8hD4jHmw10S7MRS1-ZUSq7eGgoUifMMyfZgP2NA@mail.gmail.com>
Message-ID: <CAAFQd5AGm4U8hD4jHmw10S7MRS1-ZUSq7eGgoUifMMyfZgP2NA@mail.gmail.com>
Subject: Re: [RFC PATCH v3 0/6] Restricted DMA
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Claire Chang <tientzu@chromium.org>,
        Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        sstabellini@kernel.org, Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Robin Murphy <robin.murphy@arm.com>, grant.likely@arm.com,
        xypron.glpk@gmx.de, Thierry Reding <treding@nvidia.com>,
        mingo@kernel.org, bauerman@linux.ibm.com, peterz@infradead.org,
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
        Jim Quinlan <james.quinlan@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 12:56 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 1/12/2021 6:29 PM, Tomasz Figa wrote:
> > Hi Florian,
> >
> > On Wed, Jan 13, 2021 at 3:01 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >>
> >> On 1/11/21 11:48 PM, Claire Chang wrote:
> >>> On Fri, Jan 8, 2021 at 1:59 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >>>>
> >>>> On 1/7/21 9:42 AM, Claire Chang wrote:
> >>>>
> >>>>>> Can you explain how ATF gets involved and to what extent it does help,
> >>>>>> besides enforcing a secure region from the ARM CPU's perpsective? Does
> >>>>>> the PCIe root complex not have an IOMMU but can somehow be denied access
> >>>>>> to a region that is marked NS=0 in the ARM CPU's MMU? If so, that is
> >>>>>> still some sort of basic protection that the HW enforces, right?
> >>>>>
> >>>>> We need the ATF support for memory MPU (memory protection unit).
> >>>>> Restricted DMA (with reserved-memory in dts) makes sure the predefined memory
> >>>>> region is for PCIe DMA only, but we still need MPU to locks down PCIe access to
> >>>>> that specific regions.
> >>>>
> >>>> OK so you do have a protection unit of some sort to enforce which region
> >>>> in DRAM the PCIE bridge is allowed to access, that makes sense,
> >>>> otherwise the restricted DMA region would only be a hint but nothing you
> >>>> can really enforce. This is almost entirely analogous to our systems then.
> >>>
> >>> Here is the example of setting the MPU:
> >>> https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/mediatek/mt8183/drivers/emi_mpu/emi_mpu.c#L132
> >>>
> >>>>
> >>>> There may be some value in standardizing on an ARM SMCCC call then since
> >>>> you already support two different SoC vendors.
> >>>>
> >>>>>
> >>>>>>
> >>>>>> On Broadcom STB SoCs we have had something similar for a while however
> >>>>>> and while we don't have an IOMMU for the PCIe bridge, we do have a a
> >>>>>> basic protection mechanism whereby we can configure a region in DRAM to
> >>>>>> be PCIe read/write and CPU read/write which then gets used as the PCIe
> >>>>>> inbound region for the PCIe EP. By default the PCIe bridge is not
> >>>>>> allowed access to DRAM so we must call into a security agent to allow
> >>>>>> the PCIe bridge to access the designated DRAM region.
> >>>>>>
> >>>>>> We have done this using a private CMA area region assigned via Device
> >>>>>> Tree, assigned with a and requiring the PCIe EP driver to use
> >>>>>> dma_alloc_from_contiguous() in order to allocate from this device
> >>>>>> private CMA area. The only drawback with that approach is that it
> >>>>>> requires knowing how much memory you need up front for buffers and DMA
> >>>>>> descriptors that the PCIe EP will need to process. The problem is that
> >>>>>> it requires driver modifications and that does not scale over the number
> >>>>>> of PCIe EP drivers, some we absolutely do not control, but there is no
> >>>>>> need to bounce buffer. Your approach scales better across PCIe EP
> >>>>>> drivers however it does require bounce buffering which could be a
> >>>>>> performance hit.
> >>>>>
> >>>>> Only the streaming DMA (map/unmap) needs bounce buffering.
> >>>>
> >>>> True, and typically only on transmit since you don't really control
> >>>> where the sk_buff are allocated from, right? On RX since you need to
> >>>> hand buffer addresses to the WLAN chip prior to DMA, you can allocate
> >>>> them from a pool that already falls within the restricted DMA region, right?
> >>>>
> >>>
> >>> Right, but applying bounce buffering to RX will make it more secure.
> >>> The device won't be able to modify the content after unmap. Just like what
> >>> iommu_unmap does.
> >>
> >> Sure, however the goals of using bounce buffering equally applies to RX
> >> and TX in that this is the only layer sitting between a stack (block,
> >> networking, USB, etc.) and the underlying device driver that scales well
> >> in order to massage a dma_addr_t to be within a particular physical range.
> >>
> >> There is however room for improvement if the drivers are willing to
> >> change their buffer allocation strategy. When you receive Wi-Fi frames
> >> you need to allocate buffers for the Wi-Fi device to DMA into, and that
> >> happens ahead of the DMA transfers by the Wi-Fi device. At buffer
> >> allocation time you could very well allocate these frames from the
> >> restricted DMA region without having to bounce buffer them since the
> >> host CPU is in control over where and when to DMA into.
> >>
> >
> > That is, however, still a trade-off between saving that one copy and
> > protection from the DMA tampering with the packet contents when the
> > kernel is reading them. Notice how the copy effectively makes a
> > snapshot of the contents, guaranteeing that the kernel has a
> > consistent view of the packet, which is not true if the DMA could
> > modify the buffer contents in the middle of CPU accesses.
>
> I would say that the window just became so much narrower for the PCIe
> end-point to overwrite contents with the copy because it would have to
> happen within the dma_unmap_{page,single} time and before the copy is
> finished to the bounce buffer.

Not only. Imagine this:

a) Without bouncing:

- RX interrupt
- Pass the packet to the network stack
- Network stack validates the packet
- DMA overwrites the packet
- Network stack goes boom, because the packet changed after validation

b) With bouncing:

- RX interrupt
- Copy the packet to a DMA-inaccessible buffer
- Network stack validates the packet
- Network stack is happy, because the packet is guaranteed to stay the
same after validation

Best regards,
Tomasz
