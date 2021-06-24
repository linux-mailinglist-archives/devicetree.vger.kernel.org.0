Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6A2D73B271E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jun 2021 08:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230523AbhFXGIU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 02:08:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230464AbhFXGIU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 02:08:20 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4752C061574
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 23:06:01 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id o5so6500669iob.4
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 23:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=osJqntoZHJL8VeQbE2d8Gx1TrOiajWQXazXH9w70kIY=;
        b=f09JHaTt6yY9HlwcujpzmyCJbvbUoIE0cZNa0aICkCK68T/rODYze/6/aKRkuFqgtc
         aQSgGc4CEL1bXaOSKVo+xlBop7hH5m1EqqxXbZi8VyWUJmFL6g6BM4X4ZMkMlYffhkXb
         itPPZk67YIl+8XjGG/C0lboNwjIIr80wXQ+NM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=osJqntoZHJL8VeQbE2d8Gx1TrOiajWQXazXH9w70kIY=;
        b=hKj7PdCN8rk65ExDnJ5t+cYDN5L/XsRKuLfhdPe7fY3v2zJ+caHUzFXd1Sqp5wNud1
         hNIW/PugGta7Xysr2viPoTToBg7p736+KDK9aBvo65VE+lHL9x6r/sBmZWYrEaBSZq0d
         cdkLEZXFT1Emw1jGkqMF9MjRrnt9nJBaMMft9j9kSJg4iJrTA3kLsDO+pRjI4R9ZqU0t
         BuUjK7aE4FAiB9RnNxGJM3k9KP/EaArZ9V4199pV4PSMA7C/9V8Vy4C7/Gi/q+/PhHvp
         IfjqdaIrhv1v0q4vj0DeeEiVjrXHJRmEhUQyGPOGJ7gI2E17JE/2S7Sf2Dl+0ivlTBbj
         HgsQ==
X-Gm-Message-State: AOAM5301G45HDT1MN1FyWy321Lpxo8If/m/vjDHNZjb/mGt3YIKvPeat
        h8ssWVpjO7RJbtD4l2VcSCkMqcCreh//lg==
X-Google-Smtp-Source: ABdhPJx6/8kIn7AcOCpq2Fb7JZvgz9rKLUT/L+GqGLHxeLiTEa0y4PlPm4TM6jb0Yg4I0sleHUohbA==
X-Received: by 2002:a05:6638:379d:: with SMTP id w29mr3198885jal.2.1624514760952;
        Wed, 23 Jun 2021 23:06:00 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by smtp.gmail.com with ESMTPSA id x11sm1154946ilc.40.2021.06.23.23.06.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jun 2021 23:06:00 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id d9so6489743ioo.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jun 2021 23:06:00 -0700 (PDT)
X-Received: by 2002:a92:750c:: with SMTP id q12mr2332407ilc.303.1624514749926;
 Wed, 23 Jun 2021 23:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210619034043.199220-1-tientzu@chromium.org> <20210619034043.199220-7-tientzu@chromium.org>
 <76c3343d-72e5-9df3-8924-5474ee698ef4@quicinc.com> <20210623183736.GA472@willie-the-truck>
 <19d4c7a2-744d-21e0-289c-a576e1f0e6f3@quicinc.com> <20210624054315.GA25381@lst.de>
In-Reply-To: <20210624054315.GA25381@lst.de>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 24 Jun 2021 14:05:39 +0800
X-Gmail-Original-Message-ID: <CALiNf288ZLMhY3E8E3N+z9rkwi1viWNLm1wwMEwT4rNwh3FfwQ@mail.gmail.com>
Message-ID: <CALiNf288ZLMhY3E8E3N+z9rkwi1viWNLm1wwMEwT4rNwh3FfwQ@mail.gmail.com>
Subject: Re: [PATCH v14 06/12] swiotlb: Use is_swiotlb_force_bounce for
 swiotlb data bouncing
To:     Christoph Hellwig <hch@lst.de>
Cc:     Qian Cai <quic_qiancai@quicinc.com>, Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
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
        Tom Lendacky <thomas.lendacky@amd.com>,
        Robin Murphy <robin.murphy@arm.com>, bauerman@linux.ibm.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 24, 2021 at 1:43 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Jun 23, 2021 at 02:44:34PM -0400, Qian Cai wrote:
> > is_swiotlb_force_bounce at /usr/src/linux-next/./include/linux/swiotlb.h:119
> >
> > is_swiotlb_force_bounce() was the new function introduced in this patch here.
> >
> > +static inline bool is_swiotlb_force_bounce(struct device *dev)
> > +{
> > +     return dev->dma_io_tlb_mem->force_bounce;
> > +}
>
> To me the crash looks like dev->dma_io_tlb_mem is NULL.  Can you
> turn this into :
>
>         return dev->dma_io_tlb_mem && dev->dma_io_tlb_mem->force_bounce;
>
> for a quick debug check?

I just realized that dma_io_tlb_mem might be NULL like Christoph
pointed out since swiotlb might not get initialized.
However,  `Unable to handle kernel paging request at virtual address
dfff80000000000e` looks more like the address is garbage rather than
NULL?
I wonder if that's because dev->dma_io_tlb_mem is not assigned
properly (which means device_initialize is not called?).
