Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EDD03B7FCA
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 11:17:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233847AbhF3JUU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 05:20:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233831AbhF3JUU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 05:20:20 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF851C061756
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 02:17:51 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id j199so1383948pfd.7
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 02:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SGxHKBuGZkCU1I+kyNcTwBrZAXyCdyYBNGIIT95dpcY=;
        b=PitW6imfDn0IzY3RG7JEiKUR+7Nsn4w2y1bEvPgW/HS2AbzJNtJNRONqnYjnNN01RO
         f4Cy3TS0FXR+ruq1aYhiZGEJMhWbD1l8vF9wU2uLP3NYm94onDiG0L+Sdwsda2NHyvii
         j6adVFIua9Ybkbk/RCb14aonwq2ISknAbeRG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SGxHKBuGZkCU1I+kyNcTwBrZAXyCdyYBNGIIT95dpcY=;
        b=r/r/M+ACvQyIch6wlum6i/aZ+Vdg6Kuz4AvqL+mYrOEXwh28fADTvVKN0baLYgEvRw
         2tPggioh4FaJDoDLUDYNXbCl8kcy/j6Dt+B7Abr4DqdjB20XNcN1pi3goKfiL3kQwVEp
         zcPZCiIeEJCi4THdA4aqokH7g2XWZOkxVOqOASdBoG5LTIHZbEi824zNkkwUnkk3D9eP
         8+K66jpswHeVRbKtNNvjpaaogQA5tGlc59DRrTa0Q4yqNHEoHVLzvrKzgN4NpsaapuA5
         XBicIuj/z8bIr4AAx8W77zTE4A6E1IAbEqkbgu2mfryGHvplQozDsYpsz1LZmyqww9Je
         /OWw==
X-Gm-Message-State: AOAM531eaAAVGKJ6GjSAwWMfi4tXkK3d/GHEtvbD5wlga/fc0iVq7he8
        nIMFwP+dYd2oWF4FJGDN4+EOn5XSvsARbg==
X-Google-Smtp-Source: ABdhPJxqfNQdNCk7Kq7Ry+1MRAktnugVAt6nSk7PUk3ZuWFj/qa73WpCjjVWQNgyhgQxj+RPSilhXA==
X-Received: by 2002:aa7:9216:0:b029:2e5:6989:4f1a with SMTP id 22-20020aa792160000b02902e569894f1amr34251199pfo.50.1625044671210;
        Wed, 30 Jun 2021 02:17:51 -0700 (PDT)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com. [209.85.215.180])
        by smtp.gmail.com with ESMTPSA id h76sm2473811pfe.77.2021.06.30.02.17.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jun 2021 02:17:50 -0700 (PDT)
Received: by mail-pg1-f180.google.com with SMTP id o18so1009604pgu.10
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 02:17:49 -0700 (PDT)
X-Received: by 2002:a6b:e013:: with SMTP id z19mr7163972iog.34.1625044658498;
 Wed, 30 Jun 2021 02:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210624155526.2775863-1-tientzu@chromium.org>
 <20210624155526.2775863-7-tientzu@chromium.org> <YNvMDFWKXSm4LRfZ@Ryzen-9-3900X.localdomain>
In-Reply-To: <YNvMDFWKXSm4LRfZ@Ryzen-9-3900X.localdomain>
From:   Claire Chang <tientzu@chromium.org>
Date:   Wed, 30 Jun 2021 17:17:27 +0800
X-Gmail-Original-Message-ID: <CALiNf2-a-haQN0-4+gX8+wa++52-0CnO2O4BEkxrQCxoTa_47w@mail.gmail.com>
Message-ID: <CALiNf2-a-haQN0-4+gX8+wa++52-0CnO2O4BEkxrQCxoTa_47w@mail.gmail.com>
Subject: Re: [PATCH v15 06/12] swiotlb: Use is_swiotlb_force_bounce for
 swiotlb data bouncing
To:     Nathan Chancellor <nathan@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        Stefano Stabellini <sstabellini@kernel.org>,
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
        Jim Quinlan <james.quinlan@broadcom.com>,
        Tomasz Figa <tfiga@chromium.org>, bskeggs@redhat.com,
        Bjorn Helgaas <bhelgaas@google.com>, chris@chris-wilson.co.uk,
        Daniel Vetter <daniel@ffwll.ch>, airlied@linux.ie,
        dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        jani.nikula@linux.intel.com, Jianxiong Gao <jxgao@google.com>,
        joonas.lahtinen@linux.intel.com, linux-pci@vger.kernel.org,
        maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
        rodrigo.vivi@intel.com, thomas.hellstrom@linux.intel.com,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Qian Cai <quic_qiancai@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 30, 2021 at 9:43 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Thu, Jun 24, 2021 at 11:55:20PM +0800, Claire Chang wrote:
> > Propagate the swiotlb_force into io_tlb_default_mem->force_bounce and
> > use it to determine whether to bounce the data or not. This will be
> > useful later to allow for different pools.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > Reviewed-by: Christoph Hellwig <hch@lst.de>
> > Tested-by: Stefano Stabellini <sstabellini@kernel.org>
> > Tested-by: Will Deacon <will@kernel.org>
> > Acked-by: Stefano Stabellini <sstabellini@kernel.org>
>
> This patch as commit af452ec1b1a3 ("swiotlb: Use is_swiotlb_force_bounce
> for swiotlb data bouncing") causes my Ryzen 3 4300G system to fail to
> get to an X session consistently (although not every single time),
> presumably due to a crash in the AMDGPU driver that I see in dmesg.
>
> I have attached logs at af452ec1b1a3 and f127c9556a8e and I am happy
> to provide any further information, debug, or test patches as necessary.

Are you using swiotlb=force? or the swiotlb_map is called because of
!dma_capable? (https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/kernel/dma/direct.h#n93)

`BUG: unable to handle page fault for address: 00000000003a8290` and
the fact it crashed at `_raw_spin_lock_irqsave` look like the memory
(maybe dev->dma_io_tlb_mem) was corrupted?
The dev->dma_io_tlb_mem should be set here
(https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/pci/probe.c#n2528)
through device_initialize.

I can't tell what happened from the logs, but maybe we could try KASAN
to see if it provides more clue.

Thanks,
Claire

>
> Cheers,
> Nathan
