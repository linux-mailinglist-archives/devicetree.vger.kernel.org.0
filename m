Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 943163872BE
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 08:58:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345034AbhERG7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 02:59:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235627AbhERG7Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 02:59:24 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32AADC061573
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 23:58:06 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id c10so4266826iob.1
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 23:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=okFGSzwxy3Xl1EDwrbsZ6bJWGdPaUEKxSezi4/SE71A=;
        b=KvboTWH6SCfdQ7LLxm6vH9xhTNNbPkylAhr3iqPQWH1QNODKOLIbMt/OYjboWMwVvr
         +KD/UQeQoUETk6OK7TCWS0Utmt5EvBfWbA4IzzRRuwJkDy5Qi3ICeWOTChp1Py6zaNQt
         fa1WHS9ymuIo1ivMcIga1N5vVpkmfX46UnGI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=okFGSzwxy3Xl1EDwrbsZ6bJWGdPaUEKxSezi4/SE71A=;
        b=me0uh88Zy7oQXtzXbqLA9NgL2P/IEphIYRM9hWSX8Q4UVfeF9BXlxCl2YA50Sbh3jl
         Qh6gdCRVcvrZfDdPKX67BCGAF120E1L+/pxn/c+g+7ibmMcRJhqZeJ1KB/uIU/8HysBJ
         atS2AEvnJLanIg+fMejxCGiZH1+ge1/ueY6g8KRAXixOdp1YBOQl0T2uRiRIRBwXSK5J
         87Sye9tkXuoFCwbvGMaQcQEONxvUSugeFH12p0OMXc47mrhLefVmyLEV8RqUIgbdhcko
         WRpe+Y3W8sNQCBXouwrYoYMXWIuBnSHqnme6N5BlWCkzNqrtA2PUx4wfUBs4spel0YAL
         EHVg==
X-Gm-Message-State: AOAM533oHom5Yjo1TcTDqcWo9i0p7e+OB9XWIjK43e+WJ4S2f1dVYzzu
        D1DsoNZMCDg2TLL/Ijm4ldKUmfP7EL3h0A==
X-Google-Smtp-Source: ABdhPJwC5+sucdy8sYiC90E6D3n21VwFC+TJWW9pPNuX6geAk/MMrpZ/SuNC1sDwRAP6ChcKNyZFPg==
X-Received: by 2002:a6b:f218:: with SMTP id q24mr3149105ioh.156.1621321085340;
        Mon, 17 May 2021 23:58:05 -0700 (PDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com. [209.85.166.172])
        by smtp.gmail.com with ESMTPSA id h11sm10506147ilo.72.2021.05.17.23.58.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 23:58:05 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id k4so4528893ili.4
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 23:58:04 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a4d:: with SMTP id u13mr3011800ilv.64.1621320723564;
 Mon, 17 May 2021 23:52:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org> <20210518064215.2856977-6-tientzu@chromium.org>
In-Reply-To: <20210518064215.2856977-6-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Tue, 18 May 2021 14:51:52 +0800
X-Gmail-Original-Message-ID: <CALiNf28ke3c91Y7xaHUgvJePKXqYA7UmsYJV9yaeZc3-4Lzs8Q@mail.gmail.com>
Message-ID: <CALiNf28ke3c91Y7xaHUgvJePKXqYA7UmsYJV9yaeZc3-4Lzs8Q@mail.gmail.com>
Subject: Re: [PATCH v7 05/15] swiotlb: Add a new get_io_tlb_mem getter
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

Still keep this function because directly using dev->dma_io_tlb_mem
will cause issues for memory allocation for existing devices. The pool
can't support atomic coherent allocation so we need to distinguish the
per device pool and the default pool in swiotlb_alloc.
