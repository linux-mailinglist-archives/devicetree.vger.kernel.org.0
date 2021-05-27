Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04CB2392EC4
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 15:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236269AbhE0NCJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 09:02:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235676AbhE0NCE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 09:02:04 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC7AAC061761
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 06:00:31 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id v18so7377qvx.10
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 06:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tgPMjyY5jAkXYAxU2M6Xs7JOfdHxgDuWupSEgAOvuBU=;
        b=HyAvfwEBrieOghAofexhSawgJJukm2YnQ2fAt2CFdEKEbDS1O9qhSu7HLdewyRfCVz
         gEA6t08wyk35Bk0UPING6Rrv8blJD9d3z2B2GuwI2wJTrYZe4msm0UUHcQ98yGMgAfAw
         jsaa2ecYO9Gel1C3uwINW+EKRzQM0HGE52Gr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tgPMjyY5jAkXYAxU2M6Xs7JOfdHxgDuWupSEgAOvuBU=;
        b=cby2zxp/FGqqZVKwSczHMOp4E53SzCx4OumfugyHuzddL+xy4nzMOvlhwIO37WPTbx
         s0coypvVlPnqHBd/T450n9Mda2/G7iW7FycSzOic49rCll7TV10A467YaVsCN5E3BMfo
         vY3iRkyeugAAa7m9bUlJdvIc0ilmzmo04+cPv6PQOvBC84fwH0WqTERAzbNJcmig2XGh
         h4W6iXO0BzSKP706NwIF/lPhQtV89H7pnrrDjPvrlIg8LyDWA3bI1qR+SkxcW1k9RZI1
         iIuHaoEyYT68oQ0zK0HUz6AuaM1bmNIW56GpVSRIKTjaTZiUMmCsR+ojPU1mTlx1wX1Q
         EhcA==
X-Gm-Message-State: AOAM533r045dnfienTscE4YIOPfbeSp+N+mWGlDHRcn7+DUhEjAWQqK1
        DJJfiwZYNCnWYKDWvtzT6tPgmG9qhYxL3g==
X-Google-Smtp-Source: ABdhPJxubJC8iRet3czdp2gUl+oUu/goXe6Z5KAi9fbhx9v0+ZYscAC42CkcVw1AdVxkUlqKp5DLGQ==
X-Received: by 2002:a05:6214:8f2:: with SMTP id dr18mr3628475qvb.25.1622120430680;
        Thu, 27 May 2021 06:00:30 -0700 (PDT)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com. [209.85.160.182])
        by smtp.gmail.com with ESMTPSA id q13sm1343571qkn.10.2021.05.27.06.00.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 May 2021 06:00:30 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id c10so82643qtx.10
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 06:00:30 -0700 (PDT)
X-Received: by 2002:a02:a505:: with SMTP id e5mr3414377jam.10.1622120419476;
 Thu, 27 May 2021 06:00:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
In-Reply-To: <20210518064215.2856977-1-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 27 May 2021 21:00:07 +0800
X-Gmail-Original-Message-ID: <CALiNf2-dUFSCOz4=jmEm8ZcX+zQXKzo6yPg31iLLLG3FAr+g1w@mail.gmail.com>
Message-ID: <CALiNf2-dUFSCOz4=jmEm8ZcX+zQXKzo6yPg31iLLLG3FAr+g1w@mail.gmail.com>
Subject: Re: [PATCH v7 00/15] Restricted DMA
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

v8 here: https://lore.kernel.org/patchwork/cover/1437112/
