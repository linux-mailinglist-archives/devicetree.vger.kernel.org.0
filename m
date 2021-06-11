Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 827AB3A45A3
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 17:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231222AbhFKPof (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 11:44:35 -0400
Received: from mail-io1-f44.google.com ([209.85.166.44]:34341 "EHLO
        mail-io1-f44.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231174AbhFKPoe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 11:44:34 -0400
Received: by mail-io1-f44.google.com with SMTP id 5so31610541ioe.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 08:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AzuwWZVb0hvYDmhYzyjXOdcnRd7gmJwLqOExosCeDwM=;
        b=IRqkW7akj902Qmh2dpTJs35MbbbyYdNh845FqGa90ZgwGlX/fY4AEM0E2Tq/OkUGrx
         VVpf/9sUsDrF+Qmi4N27tWzf7jckOIK7UvGuS34GnQEYg0G4BU1Idcj7Q7ryrjHTdpBh
         ql1llzJVDf1YUXhBMlreUDeIOuUDsqa6G9X1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AzuwWZVb0hvYDmhYzyjXOdcnRd7gmJwLqOExosCeDwM=;
        b=oA4jgWEow/0o8wTqy8QywUg/kOfRLEeeYHCRFa2vpuAbcZm+RVszayJMoSXxbAKyCT
         HZ+eNVvpvgl7+mjraKyZcs6NV/QMTIBneurehf1WQXOfYUFja0IPXhp7KvuB0S2NMWLO
         9W8Ptvu7O+YN/wgb1ebnZAelgo0tgU1+w2MxFeftALr4vU1WjcqvSVVg5TKt/opDdmLE
         rjSGx5jiIGZnxTSzx/TzZ/emDj61wIdUWtngu/U/J4lK42Dbw3gfA4V/vmv1G5VQdTKU
         GtyvnjZ1gv26w0UrOYzK///GaQzRut2WB3yOwbVQXyoj7SAF9ugnQDu/rAXD/nJH+o2T
         6dgQ==
X-Gm-Message-State: AOAM531cAqRWg4r6x9RGQ4k5pLwdcuDzsYWk4tbhgjd+ZG5H1axAiQfs
        2wiNygAyZ2O9q0phEgMZLw/kAm7k596cWA==
X-Google-Smtp-Source: ABdhPJyfItpZZIhK4BsvLH47vhhtECNGqD2R2TfWDnr9VazR4E+Zu1QfJcRtOW/Q+FW9jnAqxoj4fA==
X-Received: by 2002:a02:a41a:: with SMTP id c26mr4227277jal.87.1623426096537;
        Fri, 11 Jun 2021 08:41:36 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com. [209.85.166.41])
        by smtp.gmail.com with ESMTPSA id f3sm3285353ilk.78.2021.06.11.08.41.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 08:41:36 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id q3so8360580iop.11
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 08:41:36 -0700 (PDT)
X-Received: by 2002:a05:6638:e81:: with SMTP id p1mr4464281jas.84.1623425710461;
 Fri, 11 Jun 2021 08:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210611152659.2142983-1-tientzu@chromium.org> <20210611152659.2142983-7-tientzu@chromium.org>
In-Reply-To: <20210611152659.2142983-7-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Fri, 11 Jun 2021 23:34:59 +0800
X-Gmail-Original-Message-ID: <CALiNf28OT2L1qcH4dKK8mb0=uCyaKDHW7r=LrC9MTJw0PSzSbw@mail.gmail.com>
Message-ID: <CALiNf28OT2L1qcH4dKK8mb0=uCyaKDHW7r=LrC9MTJw0PSzSbw@mail.gmail.com>
Subject: Re: [PATCH v9 06/14] swiotlb: Update is_swiotlb_active to add a
 struct device argument
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

I don't have the HW to verify the change. Hopefully I use the right
device struct for is_swiotlb_active.
