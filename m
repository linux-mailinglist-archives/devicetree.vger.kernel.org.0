Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F9B53A7FD7
	for <lists+devicetree@lfdr.de>; Tue, 15 Jun 2021 15:31:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231565AbhFONdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Jun 2021 09:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231265AbhFONcw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Jun 2021 09:32:52 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A987C061574
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 06:30:47 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id a6so43464362ioe.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 06:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UDZeAXhtUGNxVigPWnCAmqvhZ5xmOZkpwoxu/kotpBc=;
        b=BkGuougKdpvJFSjPDCYcuDM+EfC9+Z6Iw8t63OKFUyvGcy9WEOaTZOyzUjDtlqxxWx
         b+f6+GiSSKCn4V8zlclen8CemZkaZyLB8FJKB0g3go6na2Mkb6J76IEsPQg2PB5YFP++
         oJX8/uFYscqhRRWgaBEXbZGZq7TD88YFqCsf4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UDZeAXhtUGNxVigPWnCAmqvhZ5xmOZkpwoxu/kotpBc=;
        b=XsMzlOq0sZoEW6ch2hwcNVK6gg+Lb6JYhNAaXzPS9d0z4lTZGb19j42TiLy3BRqXKm
         eUvH3cmI7IW8OeHOzRJQVq0NhFfB921FH5+bQTB8INGiK6f9wJQVJADwdoJfx11qumcm
         8LPZL35wHGTf+cDM0dKv//j9KqFsMtXgY3ZDrZ0CAz52k43ni6JbtZJMS19aelIpAHid
         2fljfyvTmVXkmYShTOgkWGYNXFuFQyY4xS6IBDt2suRlSR9PNUoi42kInHH01kIfCI/x
         MU+VrIRuPuK2/53AWNphLPdfROs2/IlEmvCfV8qA2NvzzLei66fUp1p5aS/smgqdxa3q
         I+Tw==
X-Gm-Message-State: AOAM533pguVry0JnGOSTREGjJVsE0QMRIizYyKQCdumEroieXWpFKig+
        cP0Hs34Pv9+puoQ9V86qKarpTu4l91FRyg==
X-Google-Smtp-Source: ABdhPJwqlon/5cCqL5r0Y2awQU67ruDRAzRDT9GCwcMQc1ojd3i5aeCBdyn4wnWIVQ1xHDNj+teOMA==
X-Received: by 2002:a02:cba7:: with SMTP id v7mr2969848jap.11.1623763847009;
        Tue, 15 Jun 2021 06:30:47 -0700 (PDT)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com. [209.85.166.178])
        by smtp.gmail.com with ESMTPSA id i12sm9138085ilk.22.2021.06.15.06.30.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 06:30:46 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id z1so15329568ils.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jun 2021 06:30:46 -0700 (PDT)
X-Received: by 2002:a05:6e02:219d:: with SMTP id j29mr17936278ila.64.1623763835517;
 Tue, 15 Jun 2021 06:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210611152659.2142983-1-tientzu@chromium.org>
In-Reply-To: <20210611152659.2142983-1-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Tue, 15 Jun 2021 21:30:24 +0800
X-Gmail-Original-Message-ID: <CALiNf28fb4rZ0Afun8wAWRYJY4gqc+-vRvDBZT3x2JgSPL_iVQ@mail.gmail.com>
Message-ID: <CALiNf28fb4rZ0Afun8wAWRYJY4gqc+-vRvDBZT3x2JgSPL_iVQ@mail.gmail.com>
Subject: Re: [PATCH v9 00/14] Restricted DMA
To:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     benh@kernel.crashing.org, paulus@samba.org,
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
        Jim Quinlan <james.quinlan@broadcom.com>,
        Tomasz Figa <tfiga@chromium.org>, bskeggs@redhat.com,
        Bjorn Helgaas <bhelgaas@google.com>, chris@chris-wilson.co.uk,
        Daniel Vetter <daniel@ffwll.ch>, airlied@linux.ie,
        dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        jani.nikula@linux.intel.com, Jianxiong Gao <jxgao@google.com>,
        joonas.lahtinen@linux.intel.com, linux-pci@vger.kernel.org,
        maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
        rodrigo.vivi@intel.com, thomas.hellstrom@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v10 here: https://lore.kernel.org/patchwork/cover/1446882/
