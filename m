Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E03A73AD770
	for <lists+devicetree@lfdr.de>; Sat, 19 Jun 2021 05:44:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232016AbhFSDqU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 23:46:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233574AbhFSDqG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 23:46:06 -0400
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CC54C061574
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 20:43:56 -0700 (PDT)
Received: by mail-io1-xd2c.google.com with SMTP id d9so353772ioo.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 20:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zO5LL7Owrsk50u85z5NQdq/+aN2FoxcpBADlxiwbwtc=;
        b=GoMVApQGRvRIO7blwwZSLVX7KnEaLUsgQiZnYGnQ8mp+79muo9lTEuES+H8kLhS8xC
         djxEq6nvfo+uAAf09DzdZIJgtSBquVbHx1Yy7Zj9ycZDtCn5PRIixQGHzFvC0S0QErMk
         dzuQb1UZyozHrgC7e811z9kAB0L/tg8WkvJDw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zO5LL7Owrsk50u85z5NQdq/+aN2FoxcpBADlxiwbwtc=;
        b=bcgLasXFnmgg0xRW0ZmyMOPGIGfVcjM6IHpUYhlzfI7n0X/kA49miEjf8/QB5mNTFT
         L1wZedKnGQQD401jvThCfO8ZKIr+HY16+1+GQbSG4IlW3SLQkX04RjO+6dOBpipRgLGZ
         zO6oY2LPegd1X1ZKkfGAetI17qnd3mw49V8wVHMbVAlCXtcLODIE0B4OVTdlzp5JrbZO
         oI4XHh/Qz7eQs2xPRnNJ1ZkqyplQEAvBUAfnjTPaupOyy0+Ahv1gbhD94nrp0OOAxcZW
         of/+Ieu7uUWreO0UH859/C8kiOfV+Sj6HJYUl3sLi8HnuJBl11+jRXXEsCK2w87ekHlT
         k+ow==
X-Gm-Message-State: AOAM532cePVCbo5SJGfyMerIYYu410CJ4B09/Fh+EOi2OAgKwnFcbtQE
        1g0nWPCkj5XjVRwuB7Ra38BwBYtQ6g1hxA==
X-Google-Smtp-Source: ABdhPJzAGc85uY/8UriUWlQCn0O/DaU7J5o9wQrMg1r+fEkJxpsndqRzHuOlNNznSlJIlS6uK3HLsA==
X-Received: by 2002:a05:6638:349f:: with SMTP id t31mr6323065jal.95.1624074235455;
        Fri, 18 Jun 2021 20:43:55 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com. [209.85.166.51])
        by smtp.gmail.com with ESMTPSA id l13sm746934ilc.29.2021.06.18.20.43.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 20:43:55 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id b14so9205546iow.13
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 20:43:54 -0700 (PDT)
X-Received: by 2002:a05:6602:50:: with SMTP id z16mr10626949ioz.155.1624074224014;
 Fri, 18 Jun 2021 20:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210617062635.1660944-1-tientzu@chromium.org> <CALiNf2_qF7OY0LHToNYx0E79BWMt2n7=nepPPLf+7YV3=KFEyw@mail.gmail.com>
In-Reply-To: <CALiNf2_qF7OY0LHToNYx0E79BWMt2n7=nepPPLf+7YV3=KFEyw@mail.gmail.com>
From:   Claire Chang <tientzu@chromium.org>
Date:   Sat, 19 Jun 2021 11:43:33 +0800
X-Gmail-Original-Message-ID: <CALiNf289bo1WzEWWapzeQ8xYiH8s1qgDkpHVgy=PgAmv6rvGnQ@mail.gmail.com>
Message-ID: <CALiNf289bo1WzEWWapzeQ8xYiH8s1qgDkpHVgy=PgAmv6rvGnQ@mail.gmail.com>
Subject: Re: [PATCH v13 00/12] Restricted DMA
To:     Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
        boris.ostrovsky@oracle.com, jgross@suse.com,
        Christoph Hellwig <hch@lst.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     benh@kernel.crashing.org, paulus@samba.org,
        "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, grant.likely@arm.com,
        xypron.glpk@gmx.de, Thierry Reding <treding@nvidia.com>,
        mingo@kernel.org, bauerman@linux.ibm.com, peterz@infradead.org,
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

v14: https://lore.kernel.org/patchwork/cover/1448954/
