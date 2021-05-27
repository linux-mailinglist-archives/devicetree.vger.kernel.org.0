Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2E30392E3F
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 14:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234523AbhE0Mu4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 08:50:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234025AbhE0Mu4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 08:50:56 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75030C061760
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 05:49:23 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id h15so140323ilr.2
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 05:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t9nQbEpq5kzp2vshpX/2KDY0MEdzNS47SlLJX4RAhzA=;
        b=XnDncQEfy0WK93TP5b5iaOvQy6p3tli5hK7U2lnqkRYfpimdp+9WScU0B/bVffV6lu
         KHvuv/cILlR7hwxjPwG4fSm8TLb0M0uiiQtfQGCy1lJiDeCNSlZdr9ro+4UoS7qK25VN
         Vwx6crrIG7NXb3xhmTS0AaKdDSprMjL64yAgA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t9nQbEpq5kzp2vshpX/2KDY0MEdzNS47SlLJX4RAhzA=;
        b=CTUQTGginpUQo5ApU0KTeBU81caMPVPzhAAFKfcrVC92GC7VxnL4lK7bclaBGuW2Xu
         hT4BOWSouWNM3Y08Ei79hG4uZeh5GKN16NOXstcRvvO+M8UmLwGTAGHi0ZfpnCGn33dN
         aCzBf1W4OwPjKD03WI2/DqtKPqLxuXdHlCwb3A3XrKybcOiyAEf683llFMh4hyIl3UWp
         joUvsIwYR723cDkLk9Etv83hXxtqonQmcjCTGVt2TBYwxqwPxjwUe9jp/T+I8s6rF9n6
         IM9qCDtkA1wwg3WOfsd2JR/7bsRkX1nDY9/qRT3EJUAgtNISgPpq3KEf6s45rjMVX1T2
         6X5A==
X-Gm-Message-State: AOAM530APcfhVKwuC1XAhW/8C89ysbl6rn1WJEwwmIOmRlENR2lmY/8K
        L4/EHO1hp08ubZ76YtMfPKu3Mh4Quq7xgg==
X-Google-Smtp-Source: ABdhPJyUURYF1Qq1T2sld7DTTdDED4KlZqRylTTZ00fpdb71b1a+f1OyZBJ92L2+nkEAbvfNFRtF0Q==
X-Received: by 2002:a05:6e02:c5:: with SMTP id r5mr2835275ilq.48.1622119762506;
        Thu, 27 May 2021 05:49:22 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com. [209.85.166.45])
        by smtp.gmail.com with ESMTPSA id u18sm1141820ilb.51.2021.05.27.05.49.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 05:49:21 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id d25so330438ioe.1
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 05:49:21 -0700 (PDT)
X-Received: by 2002:a92:2907:: with SMTP id l7mr2908573ilg.64.1622119750871;
 Thu, 27 May 2021 05:49:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-15-tientzu@chromium.org> <20210526121322.GA19313@willie-the-truck>
 <20210526155321.GA19633@willie-the-truck> <CALiNf2_sVXnb97++yWusB5PWz8Pzfn9bCKZc6z3tY4bx6-nW8w@mail.gmail.com>
 <20210527113456.GA22019@willie-the-truck>
In-Reply-To: <20210527113456.GA22019@willie-the-truck>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 27 May 2021 20:48:59 +0800
X-Gmail-Original-Message-ID: <CALiNf2_Qk5DmZSJO+jv=m5V-VFtmL9j0v66UY6qKmM-2pr3tRQ@mail.gmail.com>
Message-ID: <CALiNf2_Qk5DmZSJO+jv=m5V-VFtmL9j0v66UY6qKmM-2pr3tRQ@mail.gmail.com>
Subject: Re: [PATCH v7 14/15] dt-bindings: of: Add restricted DMA pool
To:     Will Deacon <will@kernel.org>
Cc:     heikki.krogerus@linux.intel.com, thomas.hellstrom@linux.intel.com,
        peterz@infradead.org, benh@kernel.crashing.org,
        joonas.lahtinen@linux.intel.com, dri-devel@lists.freedesktop.org,
        chris@chris-wilson.co.uk, grant.likely@arm.com, paulus@samba.org,
        Frank Rowand <frowand.list@gmail.com>, mingo@kernel.org,
        sstabellini@kernel.org, Saravana Kannan <saravanak@google.com>,
        mpe@ellerman.id.au,
        "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
        Christoph Hellwig <hch@lst.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        bskeggs@redhat.com, linux-pci@vger.kernel.org,
        xen-devel@lists.xenproject.org,
        Thierry Reding <treding@nvidia.com>,
        intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
        linux-devicetree <devicetree@vger.kernel.org>,
        Jianxiong Gao <jxgao@google.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        maarten.lankhorst@linux.intel.com, airlied@linux.ie,
        Dan Williams <dan.j.williams@intel.com>,
        linuxppc-dev@lists.ozlabs.org, jani.nikula@linux.intel.com,
        Rob Herring <robh+dt@kernel.org>, rodrigo.vivi@intel.com,
        Bjorn Helgaas <bhelgaas@google.com>,
        boris.ostrovsky@oracle.com,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        jgross@suse.com, Nicolas Boichat <drinkcat@chromium.org>,
        Greg KH <gregkh@linuxfoundation.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        Jim Quinlan <james.quinlan@broadcom.com>, xypron.glpk@gmx.de,
        Robin Murphy <robin.murphy@arm.com>, bauerman@linux.ibm.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 7:35 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, May 27, 2021 at 07:29:20PM +0800, Claire Chang wrote:
> > On Wed, May 26, 2021 at 11:53 PM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Wed, May 26, 2021 at 01:13:22PM +0100, Will Deacon wrote:
> > > > On Tue, May 18, 2021 at 02:42:14PM +0800, Claire Chang wrote:
> > > > > @@ -138,4 +160,9 @@ one for multimedia processing (named multimedia-memory@77000000, 64MiB).
> > > > >             memory-region = <&multimedia_reserved>;
> > > > >             /* ... */
> > > > >     };
> > > > > +
> > > > > +   pcie_device: pcie_device@0,0 {
> > > > > +           memory-region = <&restricted_dma_mem_reserved>;
> > > > > +           /* ... */
> > > > > +   };
> > > >
> > > > I still don't understand how this works for individual PCIe devices -- how
> > > > is dev->of_node set to point at the node you have above?
> > > >
> > > > I tried adding the memory-region to the host controller instead, and then
> > > > I see it crop up in dmesg:
> > > >
> > > >   | pci-host-generic 40000000.pci: assigned reserved memory node restricted_dma_mem_reserved
> > > >
> > > > but none of the actual PCI devices end up with 'dma_io_tlb_mem' set, and
> > > > so the restricted DMA area is not used. In fact, swiotlb isn't used at all.
> > > >
> > > > What am I missing to make this work with PCIe devices?
> > >
> > > Aha, looks like we're just missing the logic to inherit the DMA
> > > configuration. The diff below gets things working for me.
> >
> > I guess what was missing is the reg property in the pcie_device node.
> > Will update the example dts.
>
> Thanks. I still think something like my diff makes sense, if you wouldn't mind including
> it, as it allows restricted DMA to be used for situations where the PCIe
> topology is not static.
>
> Perhaps we should prefer dev->of_node if it exists, but then use the node
> of the host bridge's parent node otherwise?

Sure. Let me add in the next version.

>
> Will
