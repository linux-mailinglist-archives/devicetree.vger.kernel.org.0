Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 376F2378090
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 11:54:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231334AbhEJJzy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 05:55:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231230AbhEJJzl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 05:55:41 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC72FC06134C
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 02:54:19 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id h127so13227270pfe.9
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 02:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FsG0kiz0NRABZofCxSQspiIrXqavy4umxXhfkY+/Sxk=;
        b=W+HYriAR9Do/fBW2QstFckigQIl1nRoVqh8kV8zVcpd71XHdedwgr9ODHG4afQkOIy
         ynwXu3yhnIcmMABVDj/QNeRt0F7V/f3la3pyVX+S+CEgEQdWOUMw7w57whXmk3tKqZQ+
         S7fuzxNEGgGmhiunD9+8473p2BUhLcDS4p74Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FsG0kiz0NRABZofCxSQspiIrXqavy4umxXhfkY+/Sxk=;
        b=KPmuFCEPajIF4icH+LcoePE0nxdFSudjSsaVUZWzYarFZT/aUWoqIxT9RYd7lLIIU/
         Du9FFVfZlkGyCq3bKSQHUWsrb1yXZ3HPUQ7Wh5OdTWbmWSoCwtnIkQ5w7+2VKqP++Sao
         uojbVMubjXb8BfJTwnbjsi4QVP0OdghtKm6vSO3hvPO0hHM/hFUoQ5qj35p3AAgGmeFh
         s6hYgVIWDh8TcBIWzlwG8K7VMS+oxOkkXY/AkdDY8Jk3MtH1ULlskLQkGSzozQjrmVkL
         EVdcAtMMslaBPN0W2IYwAYuOVn6pBo6ajydnjrD84GekYVkNkWgvY3VbxicE2Bb7oztF
         fnhg==
X-Gm-Message-State: AOAM530/XHvfNuOryx41vd+lEuSsRVZZWAlJAKYwneqPUfyvg47BXV+d
        bXWivY0JCmArhOJ+t7Jq7Dlxotzjirdisw==
X-Google-Smtp-Source: ABdhPJxg/TJZ+5y2PIt731ubqU/azLfvXr81y5bhcIK86/qg04ZjeJnb4kFCSue2trpXVxG9qHgFRQ==
X-Received: by 2002:a05:6a00:ac6:b029:27b:5d2:6e66 with SMTP id c6-20020a056a000ac6b029027b05d26e66mr23744647pfl.14.1620640459051;
        Mon, 10 May 2021 02:54:19 -0700 (PDT)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com. [209.85.210.171])
        by smtp.gmail.com with ESMTPSA id s22sm10473525pgk.28.2021.05.10.02.54.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 02:54:18 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id i13so13366581pfu.2
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 02:54:18 -0700 (PDT)
X-Received: by 2002:a92:6804:: with SMTP id d4mr20856971ilc.5.1620640447894;
 Mon, 10 May 2021 02:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210422081508.3942748-1-tientzu@chromium.org>
In-Reply-To: <20210422081508.3942748-1-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Mon, 10 May 2021 17:53:57 +0800
X-Gmail-Original-Message-ID: <CALiNf2_h8r6jpd1JqTwNEmW22KK8aT9B4djLKkYP7Hhnju2EKw@mail.gmail.com>
Message-ID: <CALiNf2_h8r6jpd1JqTwNEmW22KK8aT9B4djLKkYP7Hhnju2EKw@mail.gmail.com>
Subject: Re: [PATCH v5 00/16] Restricted DMA
To:     Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
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
        nouveau@lists.freedesktop.org, rodrigo.vivi@intel.com,
        thomas.hellstrom@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v6: https://lore.kernel.org/patchwork/cover/1423201/
