Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90A442ED5F6
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 18:47:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728843AbhAGRql (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 12:46:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728642AbhAGRqk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 12:46:40 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7793C0612F8
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 09:46:00 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id r4so3904702pls.11
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 09:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BpWY74vWVa1L8Raewx13V4/TopbXG6j16e2kYWK8TMo=;
        b=RjsCv0SB3G2nr2VhqjbT5oDz8W7DNBKHdnzTnNqkj1iJof0+bV7fP3DrwRkndy/u4k
         Ygt4ObgL6c6fDwINAZBbrt6q9Nyu03KM8Jtf+6CaIHJDQhHurg1bvBaIn5xYb5DYi3P3
         O7pPyZUh0Fpetb+g793rmuwtHVk+BC0HuhiVQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BpWY74vWVa1L8Raewx13V4/TopbXG6j16e2kYWK8TMo=;
        b=Tnxbbn/kdcy9wiPbzj7dabpMKLUaoiXSkPcya6GY3cAYqMFOpSybioyCGK02kdOQIT
         6Pjs0eBD8c2IzvbkA8q97qEtTsgqdkbbNo8sJjZTNKoXO7V7irnL+31Vd8otq8fX3s5I
         chPKPeCCHe8joOHqP/BCoTxsLUHJz5moOsltKlqEnVP2GV5piXHT+3hzOgfogOfcsLyZ
         QTnJ91KN3TXmrIzBJXiIDlrl+P84peAMUgZHbrhWry707cg1/Qf6GsQCBR5I73cZTj6K
         d+B+PMd+nE6idURYyWd5d6P8HMG7FrQm9EKuA6zdNbYQmNugPuDbbo9xX7NgN/+HbijT
         GVDQ==
X-Gm-Message-State: AOAM532H2ntTPnhwEbZkz/DvvPbuHbn7VlU04GRkrWi2Umf1jGts9kUI
        cSiD8cbDb47CiSux1QEXWWi1Tf9QT3sGNEDO
X-Google-Smtp-Source: ABdhPJyE388yOzsd217l6AiTA1+BVz3k18KGjeZl26r4pNoueaeqDA36yEa8xA83PCDN5cKM5wJcwQ==
X-Received: by 2002:a17:902:6bca:b029:dc:34e1:26b1 with SMTP id m10-20020a1709026bcab02900dc34e126b1mr10522plt.52.1610041560033;
        Thu, 07 Jan 2021 09:46:00 -0800 (PST)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com. [209.85.215.169])
        by smtp.gmail.com with ESMTPSA id i25sm6856511pgb.33.2021.01.07.09.45.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:45:59 -0800 (PST)
Received: by mail-pg1-f169.google.com with SMTP id z21so5443729pgj.4
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 09:45:59 -0800 (PST)
X-Received: by 2002:a92:c206:: with SMTP id j6mr9799328ilo.189.1610041168940;
 Thu, 07 Jan 2021 09:39:28 -0800 (PST)
MIME-Version: 1.0
References: <20210106034124.30560-1-tientzu@chromium.org> <20210106034124.30560-3-tientzu@chromium.org>
 <20210106185241.GA109735@localhost.localdomain>
In-Reply-To: <20210106185241.GA109735@localhost.localdomain>
From:   Claire Chang <tientzu@chromium.org>
Date:   Fri, 8 Jan 2021 01:39:18 +0800
X-Gmail-Original-Message-ID: <CALiNf2-HDf6tFcvVgCttr-ta=88ZMH=OvB5XoryTPc6MNvwV+Q@mail.gmail.com>
Message-ID: <CALiNf2-HDf6tFcvVgCttr-ta=88ZMH=OvB5XoryTPc6MNvwV+Q@mail.gmail.com>
Subject: Re: [RFC PATCH v3 2/6] swiotlb: Add restricted DMA pool
To:     Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <joro@8bytes.org>, will@kernel.org,
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
        linuxppc-dev@lists.ozlabs.org,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <iommu@lists.linux-foundation.org>,
        xen-devel@lists.xenproject.org, Tomasz Figa <tfiga@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Greg and Konrad,

This change is intended to be non-arch specific. Any arch that lacks DMA access
control and has devices not behind an IOMMU can make use of it. Could you share
why you think this should be arch specific?

Thanks!
