Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA480367C64
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 10:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235314AbhDVIVW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 04:21:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235304AbhDVIVV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 04:21:21 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E279C06138B
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:20:47 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id u8so33138552qtq.12
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BktECYBH/xHVGxDXNo4Rc6r/8IEdgyWc2mDrQ18gIJM=;
        b=BC2Z7dWmz0+RdT/XQKgh1K4ZkXJWhtVP5f0aeqau16cKa9TxEulrDttNm/OJj6Mh7t
         UyOvttg8zei2cv/nltxGkE0p3bcuSz0WfMCJrDJbCm50bzbAxl15NHtEWBdONDfWW0Bm
         8ytbqnnr0G3b0l9nz1ILNC8uPEz+czqvEKbV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BktECYBH/xHVGxDXNo4Rc6r/8IEdgyWc2mDrQ18gIJM=;
        b=jYYE6mNvV5Ra0/I6lwkgRVFlQ5ZBx+DcL7Tvg+twTUydiLa8sLJFnIZVl51ms8URWw
         dKcmneKIkIFo+47qrOEBdjG5kb3wsRB95p3YTypW8ozI5Fny6hdByxxYa5FGoHXmhdtv
         qsAv+OC3GnszyhgUqj8eiWUVdwB2eM3r9/QPZeu0LBWiv9mRtft9jjTUYgjw7T3IqJ6O
         XS59bQ47ScThz0SmFEnT7BH0EL9kiwyObyawXUu1AsMENN1LP914+AJSHxGp95hDgK6E
         GInDJIhfPd/0pWjDSvFMnoDedz1vMHeVNR0ekifLGcSzFFYELax1TVxBNL9/SmcQ31nr
         9uLQ==
X-Gm-Message-State: AOAM532eEOpEAXZ2p5z3K/5vnnRhRC1sp8ywMeEyYzEY8FAvZzog7j56
        T6mvUKI+cgYCBzMJJ4q1Rdxfm/Gurv/PUw==
X-Google-Smtp-Source: ABdhPJweSDMz39NsntZSOCZeDzmoOg6QNBZ8wX1siACsYhwLg2TU3O/OWS+B6wulhzhF0dyAJ9FA0g==
X-Received: by 2002:ac8:60c8:: with SMTP id i8mr1891445qtm.63.1619079646499;
        Thu, 22 Apr 2021 01:20:46 -0700 (PDT)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com. [209.85.222.178])
        by smtp.gmail.com with ESMTPSA id e12sm1703970qtj.81.2021.04.22.01.20.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 01:20:46 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id 8so11763297qkv.8
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:20:46 -0700 (PDT)
X-Received: by 2002:a05:6638:34a0:: with SMTP id t32mr2134909jal.10.1619079635295;
 Thu, 22 Apr 2021 01:20:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210209062131.2300005-1-tientzu@chromium.org>
In-Reply-To: <20210209062131.2300005-1-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 22 Apr 2021 16:20:24 +0800
X-Gmail-Original-Message-ID: <CALiNf29cMK_j2NF3sbzMJLsss0v8fcvWMkQULHViQVebmdmTsQ@mail.gmail.com>
Message-ID: <CALiNf29cMK_j2NF3sbzMJLsss0v8fcvWMkQULHViQVebmdmTsQ@mail.gmail.com>
Subject: Re: [PATCH v4 00/14] Restricted DMA
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

v5 here: https://lore.kernel.org/patchwork/cover/1416899/ to rebase
onto Christoph's swiotlb cleanups.
