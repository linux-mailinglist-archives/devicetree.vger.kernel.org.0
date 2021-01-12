Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 135E32F294B
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 08:56:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731220AbhALHyt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 02:54:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729397AbhALHyt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 02:54:49 -0500
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFA86C061575
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 23:54:08 -0800 (PST)
Received: by mail-qk1-x736.google.com with SMTP id z11so1137606qkj.7
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 23:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j7gLFMlxBCQENVWtNxS2npLHFlF1Oh0HPmJ2b4uXz4E=;
        b=Muj3J6AUcKeWXk2QVKpBxfCJmD1ZNU3ECoTrLMhnZ3l10BcmT1KWV3KJZVJiyjnmgp
         tXnYNLGybukalejR/JL4Ccq0hthA+yksiWl3Xj9n38DlJXhcHL4x7k7Hi60j74u9oC5X
         xVXg0JvakYs/Mgnk3DB5tWgDJ2Wm5qz5NT8oI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j7gLFMlxBCQENVWtNxS2npLHFlF1Oh0HPmJ2b4uXz4E=;
        b=FqB056+Nzd3+y2BUi90PcORPajUco0F5PPah8cczXTKLMNGVJfUDnl0JCGf8MxjfY3
         XNj3i8XTWLCOY+LIFY2rHuBYMc0ifOw3l7kbhUynhJFpFxwXKB3k7ZMZv16yI+5zcGkK
         I945Dnd2iglUwd8UtNjtEDgIrfRVZbz0Byx8VyroeJJmNCFD62pbNpxupvAx+8CayWyZ
         5ujYrgIIncu+wo8pIed1kgPgZO8ZZyyUS4E8HQCHZI9iX4RmvY4VzV+LO8iGY3AEy7GC
         RH7Eqz9bSl2NOpXxM3Q1Fx32QjDajx34h+im1mZx5BuT82/v1I/LBitW3KnYYWBIAyYR
         +xJA==
X-Gm-Message-State: AOAM533yLOUszOcfhptqXdwFaUrCY9Y8BbAT/vQ327oj4ij17OLAJWL4
        iYVoDO2vVg7NKQ4W1UkPeAbqStEnaSnNNx3d
X-Google-Smtp-Source: ABdhPJxv0p92EvrBOuBQ+5btBv5xX6ahe1a7TjKoaoeu79d7te+OPDVplTl196NlF6ncmQH74P3Bvg==
X-Received: by 2002:a05:620a:1206:: with SMTP id u6mr3079946qkj.209.1610438048074;
        Mon, 11 Jan 2021 23:54:08 -0800 (PST)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com. [209.85.222.181])
        by smtp.gmail.com with ESMTPSA id i3sm811697qtd.95.2021.01.11.23.54.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 23:54:07 -0800 (PST)
Received: by mail-qk1-f181.google.com with SMTP id z11so1137582qkj.7
        for <devicetree@vger.kernel.org>; Mon, 11 Jan 2021 23:54:07 -0800 (PST)
X-Received: by 2002:a05:6638:c52:: with SMTP id g18mr3073726jal.84.1610437670186;
 Mon, 11 Jan 2021 23:47:50 -0800 (PST)
MIME-Version: 1.0
References: <20210106034124.30560-1-tientzu@chromium.org> <20210106034124.30560-6-tientzu@chromium.org>
 <20210106185757.GB109735@localhost.localdomain> <CALiNf2_dV13jbHqLt-r1eK+dtOcAKBGcWQCVMQn+eL6MuOrETQ@mail.gmail.com>
 <20210107180032.GB16519@char.us.oracle.com> <4cce7692-7184-9b25-70f2-b821065f3b25@gmail.com>
In-Reply-To: <4cce7692-7184-9b25-70f2-b821065f3b25@gmail.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Tue, 12 Jan 2021 15:47:39 +0800
X-Gmail-Original-Message-ID: <CALiNf29Kqr1WP3BEjX-y5Xtife7AinqiXAcRD2g4eB9isTaXfQ@mail.gmail.com>
Message-ID: <CALiNf29Kqr1WP3BEjX-y5Xtife7AinqiXAcRD2g4eB9isTaXfQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 5/6] dt-bindings: of: Add restricted DMA pool
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        Joerg Roedel <joro@8bytes.org>, will@kernel.org,
        Frank Rowand <frowand.list@gmail.com>,
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
        linuxppc-dev@lists.ozlabs.org, xen-devel@lists.xenproject.org,
        Tomasz Figa <tfiga@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 8, 2021 at 2:15 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 1/7/21 10:00 AM, Konrad Rzeszutek Wilk wrote:
> >>>
> >>>
> >>>  - Nothing stops the physical device from bypassing the SWIOTLB buffer.
> >>>    That is if an errant device screwed up the length or DMA address, the
> >>>    SWIOTLB would gladly do what the device told it do?
> >>
> >> So the system needs to provide a way to lock down the memory access, e.g. MPU.
> >
> > OK! Would it be prudent to have this in the description above perhaps?
>
> Yes this is something that must be documented as a requirement for the
> restricted DMA pool users, otherwise attempting to do restricted DMA
> pool is no different than say, using a device private CMA region.
> Without the enforcement, this is just a best effort.

Will add in the next version.

> --
> Florian
