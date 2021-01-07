Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 163ED2ED60B
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 18:51:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728081AbhAGRuJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 12:50:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726436AbhAGRuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 12:50:09 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30EBFC0612F9
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 09:49:38 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id t22so4321933pfl.3
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 09:49:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6Eoqk68P1Bcb0VR3W1zmVx5ceWjyA10pZm4KhVQJdAs=;
        b=GM+iTlQ3BQkvH1ob8TdUxcmAsi46pi2mtWELHUgZFyyPO+EndHkxYi6Efkg3O18Tku
         edQt8UB0Llti6Epm5pi7gQD7Rvjj2XwfVndg2ehauNbNVLy3PAXR8NhD8ppHMDSgrEjB
         eTe/tAn9d2RFhHsPSUNMdpOJeoKvJtOqJ4IiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6Eoqk68P1Bcb0VR3W1zmVx5ceWjyA10pZm4KhVQJdAs=;
        b=UEvxCnST4zdv/cDavt7bkM2FTDNeFW0T49Smlho0mOERGjh/s3l0ujsyDFA/gh3z1w
         KHRS47INh7OqCWtRx1QqzSaGUXPeAi8Z8PfDIWANzWpsxJodTCObicF10N9oOEVkH2zW
         Watuu6hj3SLfiy7A7eISpbC5TGWhfD7bqEF6eMeFSPlD4Mxy75oGycXUPuJTju7j/Ywu
         KN4Dt4yooCLsxpCyx46i2hqkw0YimrQ2t1goCdLZQHy6zQ3f1OlngY7iwrtQBf7qbcMI
         R0Cls9zhqPIF4ANLgH2FEC9Hn48g9VZH0o/fpjeVtrdRBWg/ACFOvDjqWhYjedeHV2oK
         H7gg==
X-Gm-Message-State: AOAM530wM1CG+CkvDMujdgT9nvfZXLrQELsDaY/2I3N56bTYMWHd1CBP
        dxypwnM3j9PY3GqoKFRNo2BkaFzcgpJOvrXd
X-Google-Smtp-Source: ABdhPJwIeq5dUSyo0oUWTcAsisgWEZ7Oj8Q669C0oaw/v6hDW2RO6VHw9U+IMcsQD367qr2AjmpMVQ==
X-Received: by 2002:a63:c441:: with SMTP id m1mr2898007pgg.353.1610041777436;
        Thu, 07 Jan 2021 09:49:37 -0800 (PST)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com. [209.85.210.181])
        by smtp.gmail.com with ESMTPSA id q23sm7337084pgm.89.2021.01.07.09.49.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:49:37 -0800 (PST)
Received: by mail-pf1-f181.google.com with SMTP id 11so4311949pfu.4
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 09:49:36 -0800 (PST)
X-Received: by 2002:a92:d592:: with SMTP id a18mr8620iln.64.1610041335740;
 Thu, 07 Jan 2021 09:42:15 -0800 (PST)
MIME-Version: 1.0
References: <20210106034124.30560-1-tientzu@chromium.org> <d7043239-12cf-3636-4726-2e3b90917dc6@gmail.com>
In-Reply-To: <d7043239-12cf-3636-4726-2e3b90917dc6@gmail.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Fri, 8 Jan 2021 01:42:04 +0800
X-Gmail-Original-Message-ID: <CALiNf28sU1VtGB7LeTXExkMwQiCeg8N5arqyEjw0CPZP72R4dg@mail.gmail.com>
Message-ID: <CALiNf28sU1VtGB7LeTXExkMwQiCeg8N5arqyEjw0CPZP72R4dg@mail.gmail.com>
Subject: Re: [RFC PATCH v3 0/6] Restricted DMA
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <joro@8bytes.org>, will@kernel.org,
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
        Nicolas Boichat <drinkcat@chromium.org>,
        Jim Quinlan <james.quinlan@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 7, 2021 at 2:48 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> Hi,
>
> First of all let me say that I am glad that someone is working on a
> upstream solution for this issue, would appreciate if you could CC and
> Jim Quinlan on subsequent submissions.

Sure!

>
> On 1/5/21 7:41 PM, Claire Chang wrote:
> > This series implements mitigations for lack of DMA access control on
> > systems without an IOMMU, which could result in the DMA accessing the
> > system memory at unexpected times and/or unexpected addresses, possibly
> > leading to data leakage or corruption.
> >
> > For example, we plan to use the PCI-e bus for Wi-Fi and that PCI-e bus is
> > not behind an IOMMU. As PCI-e, by design, gives the device full access to
> > system memory, a vulnerability in the Wi-Fi firmware could easily escalate
> > to a full system exploit (remote wifi exploits: [1a], [1b] that shows a
> > full chain of exploits; [2], [3]).
> >
> > To mitigate the security concerns, we introduce restricted DMA. Restricted
> > DMA utilizes the existing swiotlb to bounce streaming DMA in and out of a
> > specially allocated region and does memory allocation from the same region.
> > The feature on its own provides a basic level of protection against the DMA
> > overwriting buffer contents at unexpected times. However, to protect
> > against general data leakage and system memory corruption, the system needs
> > to provide a way to restrict the DMA to a predefined memory region (this is
> > usually done at firmware level, e.g. in ATF on some ARM platforms).
>
> Can you explain how ATF gets involved and to what extent it does help,
> besides enforcing a secure region from the ARM CPU's perpsective? Does
> the PCIe root complex not have an IOMMU but can somehow be denied access
> to a region that is marked NS=0 in the ARM CPU's MMU? If so, that is
> still some sort of basic protection that the HW enforces, right?

We need the ATF support for memory MPU (memory protection unit).
Restricted DMA (with reserved-memory in dts) makes sure the predefined memory
region is for PCIe DMA only, but we still need MPU to locks down PCIe access to
that specific regions.

>
> On Broadcom STB SoCs we have had something similar for a while however
> and while we don't have an IOMMU for the PCIe bridge, we do have a a
> basic protection mechanism whereby we can configure a region in DRAM to
> be PCIe read/write and CPU read/write which then gets used as the PCIe
> inbound region for the PCIe EP. By default the PCIe bridge is not
> allowed access to DRAM so we must call into a security agent to allow
> the PCIe bridge to access the designated DRAM region.
>
> We have done this using a private CMA area region assigned via Device
> Tree, assigned with a and requiring the PCIe EP driver to use
> dma_alloc_from_contiguous() in order to allocate from this device
> private CMA area. The only drawback with that approach is that it
> requires knowing how much memory you need up front for buffers and DMA
> descriptors that the PCIe EP will need to process. The problem is that
> it requires driver modifications and that does not scale over the number
> of PCIe EP drivers, some we absolutely do not control, but there is no
> need to bounce buffer. Your approach scales better across PCIe EP
> drivers however it does require bounce buffering which could be a
> performance hit.

Only the streaming DMA (map/unmap) needs bounce buffering.
I also added alloc/free support in this series
(https://lore.kernel.org/patchwork/patch/1360995/), so dma_direct_alloc() will
try to allocate memory from the predefined memory region.

As for the performance hit, it should be similar to the default swiotlb.
Here are my experiment results. Both SoCs lack IOMMU for PCIe.

PCIe wifi vht80 throughput -

  MTK SoC                  tcp_tx     tcp_rx    udp_tx   udp_rx
  w/o Restricted DMA  244.1     134.66   312.56   350.79
  w/ Restricted DMA    246.95   136.59   363.21   351.99

  Rockchip SoC           tcp_tx     tcp_rx    udp_tx   udp_rx
  w/o Restricted DMA  237.87   133.86   288.28   361.88
  w/ Restricted DMA    256.01   130.95   292.28   353.19

The CPU usage doesn't increase too much either.
Although I didn't measure the CPU usage very precisely, it's ~3% with a single
big core (Cortex-A72) and ~5% with a single small core (Cortex-A53).

Thanks!

>
> Thanks!
> --
> Florian
