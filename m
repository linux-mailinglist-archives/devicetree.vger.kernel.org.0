Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7865345B2E9
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 04:55:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240234AbhKXD6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 22:58:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231185AbhKXD6l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 22:58:41 -0500
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 734C4C061574
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 19:55:32 -0800 (PST)
Received: by mail-il1-x133.google.com with SMTP id i9so1207989ilu.1
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 19:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/926FuVicfVC1nK0FVXtvbHMwYM36BbozQFkXoWswMk=;
        b=baWredfSFOMml8i0WHnqdj/WGSDAxeAgzkAmd1thTn9aNwNroqW+LAEdqtpecxvh+b
         tCXRUWrN47euOGjLHG7G3uJjFPwytNu/aK/96hIfHSB0xYg3UOLmBcTijw1YMNgbqG93
         r7Ua1tBOsOazX8ohB69fkXFcgQ1isqMA9u8bE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/926FuVicfVC1nK0FVXtvbHMwYM36BbozQFkXoWswMk=;
        b=azyww77hHwuRcXGmBZhgRNf3Du+CDdg/CMvvzZfbKDLeN9NYJ2iYdjIaklizHQRm08
         UGJCmPs9EQ4kwRfFR4NSGbrEWtlFu2HcW1r6wDWbPZtxivV2XbUNwqhJhuoRAHTLfC3F
         lgyayLm9U38MxmFQJhcd1XgumfNn7q1h4izB4W78fU/Zw/UIG/DmDNouwiu0pd42LAiu
         X1b1PF8iIK11FKhwWvCrFJmAHgwh9AVckycZZG2TY1r3dLLiOwNOkcOHOKlpF7xeVrdw
         LHPwlGQXj2JG9B42zqIO8RoQiLKEJQgKOnXWwidhBiJGCYYPXuTwIpPujFdubsTV/zrS
         V/Rg==
X-Gm-Message-State: AOAM533MI9OFPUHGeCbs/OIbMVPhzXgXtSh7MCK/uN2m32EOVm8l2xOw
        WmhwPMY/YIX7InhfMfvYx7zEk/bajUrnVk5+yf+kqw==
X-Google-Smtp-Source: ABdhPJzWS1uYf8FWo45Cg3tq/AFpg6d/7sMCQWCP67g5+L5DT9Ag8Vsgz85lfPSTKmIcrxXnM+BisytQv2Zb2NcXTnM=
X-Received: by 2002:a05:6e02:1a63:: with SMTP id w3mr9334649ilv.230.1637726131600;
 Tue, 23 Nov 2021 19:55:31 -0800 (PST)
MIME-Version: 1.0
References: <20211123112104.3530135-1-hsinyi@chromium.org> <75ea1026-63e5-165a-9e07-27b5ac4c7579@arm.com>
In-Reply-To: <75ea1026-63e5-165a-9e07-27b5ac4c7579@arm.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 24 Nov 2021 11:55:05 +0800
Message-ID: <CAJMQK-gHpmfedbRfR-1ZNLw0LpRDJHYoKLd-k3kvkqFf8vnD4A@mail.gmail.com>
Subject: Re: [PATCH 0/3] Allow restricted-dma-pool to customize IO_TLB_SEGSIZE
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Christoph Hellwig <hch@infradead.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        - <devicetree-spec@vger.kernel.org>, devicetree@vger.kernel.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, senozhatsky@chromium.org,
        tfiga@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 23, 2021 at 7:58 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2021-11-23 11:21, Hsin-Yi Wang wrote:
> > Default IO_TLB_SEGSIZE (128) slabs may be not enough for some use cases.
> > This series adds support to customize io_tlb_segsize for each
> > restricted-dma-pool.
> >
> > Example use case:
> >
> > mtk-isp drivers[1] are controlled by mtk-scp[2] and allocate memory through
> > mtk-scp. In order to use the noncontiguous DMA API[3], we need to use
> > the swiotlb pool. mtk-scp needs to allocate memory with 2560 slabs.
> > mtk-isp drivers also needs to allocate memory with 200+ slabs. Both are
> > larger than the default IO_TLB_SEGSIZE (128) slabs.
>
> Are drivers really doing streaming DMA mappings that large? If so, that
> seems like it might be worth trying to address in its own right for the
> sake of efficiency - allocating ~5MB of memory twice and copying it back
> and forth doesn't sound like the ideal thing to do.
>
> If it's really about coherent DMA buffer allocation, I thought the plan
> was that devices which expect to use a significant amount and/or size of
> coherent buffers would continue to use a shared-dma-pool for that? It's
> still what the binding implies. My understanding was that
> swiotlb_alloc() is mostly just a fallback for the sake of drivers which
> mostly do streaming DMA but may allocate a handful of pages worth of
> coherent buffers here and there. Certainly looking at the mtk_scp
> driver, that seems like it shouldn't be going anywhere near SWIOTLB at all.
>
mtk_scp on its own can use the shared-dma-pool, which it currently uses.
The reason we switched to restricted-dma-pool is that we want to use
the noncontiguous DMA API for mtk-isp. The noncontiguous DMA API is
designed for devices with iommu, and if a device doesn't have an
iommu, it will fallback using swiotlb. But currently noncontiguous DMA
API doesn't work with the shared-dma-pool.

vb2_dc_alloc() -> dma_alloc_noncontiguous() -> alloc_single_sgt() ->
__dma_alloc_pages() -> dma_direct_alloc_pages() ->
__dma_direct_alloc_pages() -> swiotlb_alloc().


> Robin.
>
> > [1] (not in upstream) https://patchwork.kernel.org/project/linux-media/cover/20190611035344.29814-1-jungo.lin@mediatek.com/
> > [2] https://elixir.bootlin.com/linux/latest/source/drivers/remoteproc/mtk_scp.c
> > [3] https://patchwork.kernel.org/project/linux-media/cover/20210909112430.61243-1-senozhatsky@chromium.org/
> >
> > Hsin-Yi Wang (3):
> >    dma: swiotlb: Allow restricted-dma-pool to customize IO_TLB_SEGSIZE
> >    dt-bindings: Add io-tlb-segsize property for restricted-dma-pool
> >    arm64: dts: mt8183: use restricted swiotlb for scp mem
> >
> >   .../reserved-memory/shared-dma-pool.yaml      |  8 +++++
> >   .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |  4 +--
> >   include/linux/swiotlb.h                       |  1 +
> >   kernel/dma/swiotlb.c                          | 34 ++++++++++++++-----
> >   4 files changed, 37 insertions(+), 10 deletions(-)
> >
