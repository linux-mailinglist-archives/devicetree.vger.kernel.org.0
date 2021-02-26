Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCD4325C79
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 05:19:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbhBZESq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 23:18:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbhBZESp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 23:18:45 -0500
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DF6FC06174A
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 20:18:05 -0800 (PST)
Received: by mail-qt1-x836.google.com with SMTP id a2so5838289qtw.12
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 20:18:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fDTKQXWPODousjcFxfPrAdhXiScgfthwkHIVsnIoPbM=;
        b=abTtJIMMZ8KToSFWbjzFi32HOkPDN2rxZ+IfBv+eO62ap/dN702Uq0mU9oHC9j+snt
         vnVWV+5jH/p/0R+4U10lm2zTMAo+mTTld64KVC2G+prj4nocAzeugJM4VE5FsldHI9zg
         D677137O5m7d9bvVpQQ+IkqHWrA56M7YEa+Ng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fDTKQXWPODousjcFxfPrAdhXiScgfthwkHIVsnIoPbM=;
        b=c4DxVkefLvCfiU/qYaECDNzN1N77ZIcHZRpUMDVUEp8wMQBPv7Y1kP5uW2bJKWkhqo
         a/6+ATPJ5EaYSrjN0gMxQmv635d+QokHPWAO0+x6pe9jbW4LjeJW1Y/wPy5kpaKyRH7C
         lXNHiDpkUWT8Fn1boFBvovpRpdcijsla+R7WosprOi452k8e/mnwcefsaWC0CU6icFEa
         hnSS6gusXWmU9HeJqrWddlbVmXGGBkMniF3oDnSCcR6f5LxkoePx/1XmxV1H/eVCPwac
         yJPL3mBw2OQ/1qH7qlfh7i0uQ7aarhjYI+z1j7egquoe+GZNJ7+B0HH+oPYER1bTiBL0
         y8oA==
X-Gm-Message-State: AOAM530dPI0CkW6Ol4nNW48C4uXNUgK19PY0oMkjDbJ8vim5a/fqgA+j
        Rq6xthLDyBTF8co8e5p865/2tuzIHzbHGg==
X-Google-Smtp-Source: ABdhPJxO2QIQHOJpr36nYA0nAMSoLJryPKwDX3lYaNgR+LbFUjN2HmMdUxlq0/EwfqhBxLUyaSq+WA==
X-Received: by 2002:aed:3943:: with SMTP id l61mr1262909qte.392.1614313084248;
        Thu, 25 Feb 2021 20:18:04 -0800 (PST)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com. [209.85.222.176])
        by smtp.gmail.com with ESMTPSA id 136sm5444896qko.12.2021.02.25.20.18.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 20:18:03 -0800 (PST)
Received: by mail-qk1-f176.google.com with SMTP id x124so8008262qkc.1
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 20:18:03 -0800 (PST)
X-Received: by 2002:a05:6638:5:: with SMTP id z5mr1097392jao.84.1614313081344;
 Thu, 25 Feb 2021 20:18:01 -0800 (PST)
MIME-Version: 1.0
References: <20210209062131.2300005-1-tientzu@chromium.org> <20210209062131.2300005-13-tientzu@chromium.org>
In-Reply-To: <20210209062131.2300005-13-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Fri, 26 Feb 2021 12:17:50 +0800
X-Gmail-Original-Message-ID: <CALiNf298+DLjTK6ALe0mYrRuCP_LtztMGuQQCS90ubDctbS0kw@mail.gmail.com>
Message-ID: <CALiNf298+DLjTK6ALe0mYrRuCP_LtztMGuQQCS90ubDctbS0kw@mail.gmail.com>
Subject: Re: [PATCH v4 12/14] swiotlb: Add restricted DMA alloc/free support.
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
        Jim Quinlan <james.quinlan@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> index fd9c1bd183ac..8b77fd64199e 100644
> --- a/kernel/dma/swiotlb.c
> +++ b/kernel/dma/swiotlb.c
> @@ -836,6 +836,40 @@ late_initcall(swiotlb_create_default_debugfs);
>  #endif
>
>  #ifdef CONFIG_DMA_RESTRICTED_POOL
> +struct page *dev_swiotlb_alloc(struct device *dev, size_t size, gfp_t gfp)
> +{
> +       struct swiotlb *swiotlb;
> +       phys_addr_t tlb_addr;
> +       unsigned int index;
> +
> +       /* dev_swiotlb_alloc can be used only in the context which permits sleeping. */
> +       if (!dev->dev_swiotlb || !gfpflags_allow_blocking(gfp))

Just noticed that !gfpflags_allow_blocking(gfp) shouldn't be here.

Hi Christoph,

Do you think I should fix this and rebase on the latest linux-next
now? I wonder if there are more factor and clean up coming and I
should wait after that.

Thanks,
Claire
