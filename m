Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4888C3B3A33
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 02:42:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232663AbhFYAoV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 20:44:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229712AbhFYAoV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Jun 2021 20:44:21 -0400
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 673DCC061574
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 17:42:00 -0700 (PDT)
Received: by mail-io1-xd31.google.com with SMTP id g22so10663038iom.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 17:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EqlrFHdkETA6GW6RTp23OD25mZ9+t6ZRMvVFoaOPoUc=;
        b=bWcnQFoaV8XnWx2CmMqEub8uZpXzFMse4FkKs/6K7fAcmnfM33tj2MQVZVMqk8lHor
         cnCu5fEy9K2Coqappl8ZOF4ctPyliF3MamPmCDoyKpou7w8OAoAQjHS8393soCVU2vwe
         MHeea8kRyeqRwy1slhC35EkQWOKLuZs+gqotQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EqlrFHdkETA6GW6RTp23OD25mZ9+t6ZRMvVFoaOPoUc=;
        b=KeuZ3OrarUfXsRwJBqv2F/+CTRpeLdrYlIdyyFR8M1kG0StFVXx0+AIFA4ehspIuTN
         LPnxOph7ogUYQV1t5WpPcLYh5I5WdSFuIwEoxRNAtxxnse1OeJbeZUoUsEcTCqVKWwWM
         uLquKKfae6iQBwc2ZI40rp5+vvwSznlxe2e1uEqHOC7SS+hZs20Xa1Z1mzWbagG0Hgbd
         5FkvAMBQDjHCvEoYtEtCeCBMil2XkZIDuW3eIYnjYgLf+zIR7R4Aw/halrJMpDj0BSes
         3Pin8bgDzbgpEuEGxnr2V1AYmu4P/perztKqeHX1C2yTCSQZySP1VXYLekC+DQOpWHs8
         LUjQ==
X-Gm-Message-State: AOAM531CT16UltgHTWnXSFPKBv7uYr546I1q3wrOCp/uBLfcJg8dtvso
        Wlf8QIvraAXUFwCHfuiC8icoTmmDZmuIcA==
X-Google-Smtp-Source: ABdhPJzGRHC5BA8LVccQtTsysA36bzt1QFLV5K0r6hEOqDvStQy3C45dzvwOI6nUF92fVnT0UmfBRg==
X-Received: by 2002:a05:6602:1243:: with SMTP id o3mr6354608iou.13.1624581719252;
        Thu, 24 Jun 2021 17:41:59 -0700 (PDT)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com. [209.85.166.182])
        by smtp.gmail.com with ESMTPSA id m13sm2976811ila.80.2021.06.24.17.41.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 17:41:58 -0700 (PDT)
Received: by mail-il1-f182.google.com with SMTP id i13so3992339ilu.4
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 17:41:58 -0700 (PDT)
X-Received: by 2002:a05:6602:1546:: with SMTP id h6mr6334034iow.34.1624581707960;
 Thu, 24 Jun 2021 17:41:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210624155526.2775863-1-tientzu@chromium.org> <YNTa1C5uvz+qWryf@char.us.oracle.com>
In-Reply-To: <YNTa1C5uvz+qWryf@char.us.oracle.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Fri, 25 Jun 2021 08:41:37 +0800
X-Gmail-Original-Message-ID: <CALiNf297ep9C8-3s=F-xRDud=QB9geMfCMKTqLzPJKEdYnfbXQ@mail.gmail.com>
Message-ID: <CALiNf297ep9C8-3s=F-xRDud=QB9geMfCMKTqLzPJKEdYnfbXQ@mail.gmail.com>
Subject: Re: [PATCH v15 00/12] Restricted DMA
To:     Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
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

On Fri, Jun 25, 2021 at 3:20 AM Konrad Rzeszutek Wilk
<konrad.wilk@oracle.com> wrote:
>
> On Thu, Jun 24, 2021 at 11:55:14PM +0800, Claire Chang wrote:
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
> > usually done at firmware level, e.g. MPU in ATF on some ARM platforms [4]).
> >
> > [1a] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_4.html
> > [1b] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_11.html
> > [2] https://blade.tencent.com/en/advisories/qualpwn/
> > [3] https://www.bleepingcomputer.com/news/security/vulnerabilities-found-in-highly-popular-firmware-for-wifi-chips/
> > [4] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/mediatek/mt8183/drivers/emi_mpu/emi_mpu.c#L132
> >
> > v15:
> > - Apply Will's diff (https://lore.kernel.org/patchwork/patch/1448957/#1647521)
> >   to fix the crash reported by Qian.
> > - Add Stefano's Acked-by tag for patch 01/12 from v14
>
> That all should be now be on
>
> https://git.kernel.org/pub/scm/linux/kernel/git/konrad/swiotlb.git/
> devel/for-linus-5.14 (and linux-next)
>

devel/for-linus-5.14 looks good. Thanks!
