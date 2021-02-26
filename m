Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0354326031
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 10:38:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhBZJhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 04:37:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230315AbhBZJgv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 04:36:51 -0500
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B038C061574
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 01:36:11 -0800 (PST)
Received: by mail-io1-xd2a.google.com with SMTP id p16so9013252ioj.4
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 01:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E8MT/YBSt9+GOAVKSt/z+/x/oAmJs4mba4MVCW+FEPI=;
        b=YlJGaB2HjeORjhsgYOy8pctb9+8JkGl/ZdIRVJcfQxCMoR62lL7XtrY95NgsqhINjE
         lSgvnnp9tfO6u1oKErjW0g+HTDOG3GFiOyn5d4dJiyFIJKbzFBupmPEB/V7jXmUb4d2q
         N9u5qLxflCWFXhFfzUGrtIkZV0aKvT2pOtERk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E8MT/YBSt9+GOAVKSt/z+/x/oAmJs4mba4MVCW+FEPI=;
        b=jKGHQOGqDokQnfu/Or26E7c0/z+aLeH9PFHyaAHmxGH73YEF293fKZme0iPXScAOdh
         FUfhAf1xbFmO5LC7vsvCkdzYDdI1s9zgYxhPf0uhc7hpVlN+aGbk/+S8NM0RVvUIYbAK
         apBovt9hZQaXkwswM4r+ynVTFJERYjwf08m2K+gaoJoUFG7xvFtu+Zj5BN6NbYgvoIAs
         F9p+93YNFsim4COtEkvjGNVA2PX/xus/W5sxVDn6TzQAHGZD9+kzFg6zLACI9zQAheDU
         cYVVjQr41JHDgXvK7LG6vWDIptdZ4UY507Y0LFRUwW81cLemQSXjVEXwmhqjVK7bw3I7
         v41A==
X-Gm-Message-State: AOAM53068HcV91B1zyxitd+LvvLRISfmJ22L1tQXh7zpkpK5Xk0FXHy0
        oylGjywzA18/z3Uz9CeWNCUZS8qjgnFqDQ==
X-Google-Smtp-Source: ABdhPJwYse2FClzJBIIoLtTebbmrHOCh1E1DgQ9IZJzoBMcvETFmV5h0HmJZnT8Voot8SH0bqIKjxg==
X-Received: by 2002:a05:6638:96c:: with SMTP id o12mr2085481jaj.24.1614332170911;
        Fri, 26 Feb 2021 01:36:10 -0800 (PST)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com. [209.85.166.41])
        by smtp.gmail.com with ESMTPSA id y27sm5290181iox.38.2021.02.26.01.36.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 01:36:10 -0800 (PST)
Received: by mail-io1-f41.google.com with SMTP id e2so5715936iog.0
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 01:36:09 -0800 (PST)
X-Received: by 2002:a02:b61a:: with SMTP id h26mr2057255jam.90.1614332168202;
 Fri, 26 Feb 2021 01:36:08 -0800 (PST)
MIME-Version: 1.0
References: <20210209062131.2300005-1-tientzu@chromium.org>
 <20210209062131.2300005-13-tientzu@chromium.org> <CALiNf298+DLjTK6ALe0mYrRuCP_LtztMGuQQCS90ubDctbS0kw@mail.gmail.com>
 <20210226051740.GB2072@lst.de>
In-Reply-To: <20210226051740.GB2072@lst.de>
From:   Claire Chang <tientzu@chromium.org>
Date:   Fri, 26 Feb 2021 17:35:57 +0800
X-Gmail-Original-Message-ID: <CALiNf29tSQ1R8zh35neQWuWqDPek+Jr8QzyPQQvTsW2cZBMEUw@mail.gmail.com>
Message-ID: <CALiNf29tSQ1R8zh35neQWuWqDPek+Jr8QzyPQQvTsW2cZBMEUw@mail.gmail.com>
Subject: Re: [PATCH v4 12/14] swiotlb: Add restricted DMA alloc/free support.
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
        Jim Quinlan <james.quinlan@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 26, 2021 at 1:17 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Fri, Feb 26, 2021 at 12:17:50PM +0800, Claire Chang wrote:
> > Do you think I should fix this and rebase on the latest linux-next
> > now? I wonder if there are more factor and clean up coming and I
> > should wait after that.
>
> Here is my preferred plan:
>
>  1) wait for my series to support the min alignment in swiotlb to
>     land in Linus tree
>  2) I'll resend my series with the further swiotlb cleanup and
>     refactoring, which includes a slightly rebased version of your
>     patch to add the io_tlb_mem structure
>  3) resend your series on top of that as a baseline
>
> This is my current WIP tree for 2:
>
>   http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/swiotlb-struct

Sounds good to me. Thanks!
