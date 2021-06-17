Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B53D73AAC9A
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 08:41:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbhFQGn1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 02:43:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbhFQGn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Jun 2021 02:43:27 -0400
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A9B3C061574
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 23:41:20 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id s26so1920648ioe.9
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 23:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IqsCA/yjikDS1aCYzllqiH9HoLVcQQhYIn5qSeonABE=;
        b=GiFPgetacPTJVsGZ3MFWgSvQPnCdoTJhc4FxcdhnTR1mIKLWNYkC5qsclOh1Nu4T0t
         2JBHLcEHEvZiTaAAwPJzRshEva/oe1afpxIyCNXuS6Yc5SEiWBAid4ULBNFnG08bi+4b
         5Y3w62S7YQM/biDmcuEcWF0r86zBUuRahetbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IqsCA/yjikDS1aCYzllqiH9HoLVcQQhYIn5qSeonABE=;
        b=PPdo9GC1hBODkJoeSIhGgv0agv26Y7RKZhW+FAwv7pUJfWODM/Bdh7odaf1uZKKs8M
         KOw88cj2OIXvnBEYoO+kRMoahaZDcQpRM0fS0yokhKwtXMf10tXmspkfXYEJRDuCi2lU
         MQ+qG9euWpkXR5FHgA7pIusjWeLcKIvbaizTFxvZ5Pm1kmKPvc9ZtEk09lliFMJ7hB3V
         +QcGs8z8boVZFOXpxx0zbccJwbzKxh0QrNYw/RqK7i1CHUmZJoOpn08UhXNo0rWVGVlt
         V7aUg0jTqUN50wZhvvLTms3M5HHFmWdz4O64UQls7dAOOc1GK417FMWSmkHaHzvc7DB5
         +o4A==
X-Gm-Message-State: AOAM530Lz4YA0lTOOJ6kguO2AmAoT9K7qWzJYc2Kb2dCjMH637lLQXc2
        v7Wu/EwHZWqmFAJ5JAqhW3RFex9g710TGQ==
X-Google-Smtp-Source: ABdhPJw+z6phr28vHFfpJhviMvq1EKK1FY7cmbal8NJv0MMlZSyeIkKul5UkA+bX2p5tovI2zhdnuw==
X-Received: by 2002:a05:6638:2285:: with SMTP id y5mr3072552jas.19.1623912079610;
        Wed, 16 Jun 2021 23:41:19 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com. [209.85.166.49])
        by smtp.gmail.com with ESMTPSA id s22sm2605365ioa.11.2021.06.16.23.41.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 23:41:19 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id a6so1988096ioe.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 23:41:19 -0700 (PDT)
X-Received: by 2002:a05:6602:2344:: with SMTP id r4mr2559955iot.69.1623912068770;
 Wed, 16 Jun 2021 23:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210616062157.953777-1-tientzu@chromium.org> <20210616120837.GA22783@willie-the-truck>
In-Reply-To: <20210616120837.GA22783@willie-the-truck>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 17 Jun 2021 14:40:57 +0800
X-Gmail-Original-Message-ID: <CALiNf28SSxhs_+9Oq=pyOc7OWWDyWrtZLUqXKQKin6dRyXwo=w@mail.gmail.com>
Message-ID: <CALiNf28SSxhs_+9Oq=pyOc7OWWDyWrtZLUqXKQKin6dRyXwo=w@mail.gmail.com>
Subject: Re: [PATCH v12 00/12] Restricted DMA
To:     Will Deacon <will@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        Christoph Hellwig <hch@lst.de>,
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

v13: https://lore.kernel.org/patchwork/cover/1448001/
