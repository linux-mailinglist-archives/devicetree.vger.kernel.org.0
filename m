Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE2633AAC65
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 08:32:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230064AbhFQGek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Jun 2021 02:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229915AbhFQGec (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Jun 2021 02:34:32 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25DC2C061574
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 23:32:25 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id s19so1916620ioc.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 23:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IqsCA/yjikDS1aCYzllqiH9HoLVcQQhYIn5qSeonABE=;
        b=kDczImboY2eVAJ3+sYnRR25HrludaTlIxUHPV26t7zvADYlkn+EAot8vmNZFxS6ckk
         NyqXP6vgSOkhkXMigW38BKTSHGkozev95CT8sd0RyYFWHSEXQf1vzK9yA5xbK5UPbuEq
         Bn0NNhaz+a2zeBhstpYyx1baPQ8VKdD07y9nQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IqsCA/yjikDS1aCYzllqiH9HoLVcQQhYIn5qSeonABE=;
        b=OV385Py9EKGnOHaVjEOvHkYtBsNTt9bRBNrYQzr+vJlFAqCAxUGls+kw/1bdrEum7p
         SJn9c2YF3B9kAqoWYhy7RTllyDFX+vecQrlOU2lz1VUP8/V2LCr+irXQdMNA34EVGfx2
         Gn3SYJXWIYewvCunmowIJZZkjFyCtp8KdgxR62pnckAEK4yh6hbhTTglCZnrRz0NzUa9
         DucLWS1EGNU1f0IJVQm3p6cTy6Ze09oNR2suibvJaXu/OlQdUKcd2WLyVWazAwS5J09a
         rnFYjMNU/XUGKeP7+dudYJ9jv5m5+ziySla/hrAgrtmr2Uz+Ixc0030TD7oeNZfhGn6r
         RhGw==
X-Gm-Message-State: AOAM532AI9SeLkB39SeiXRxnzUrk3ouvWmbRsHAWJnDCVyuTLEscQbuj
        voW4vUoj4SkLLPOFx1rgw+/gqnvaUdb4HA==
X-Google-Smtp-Source: ABdhPJzWs6QkxX0GcLQdaeIuqvGIBFSNwofloEbGFFfiBs3rn1259leZDlgoeeqz2ISXGBVDKsOrGA==
X-Received: by 2002:a6b:103:: with SMTP id 3mr2577574iob.156.1623911544307;
        Wed, 16 Jun 2021 23:32:24 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id l11sm1132730ilo.77.2021.06.16.23.32.22
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 23:32:23 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id f10so1913942iok.6
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 23:32:22 -0700 (PDT)
X-Received: by 2002:a92:c852:: with SMTP id b18mr352877ilq.18.1623911531698;
 Wed, 16 Jun 2021 23:32:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210617062635.1660944-1-tientzu@chromium.org>
In-Reply-To: <20210617062635.1660944-1-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Thu, 17 Jun 2021 14:32:00 +0800
X-Gmail-Original-Message-ID: <CALiNf2_qF7OY0LHToNYx0E79BWMt2n7=nepPPLf+7YV3=KFEyw@mail.gmail.com>
Message-ID: <CALiNf2_qF7OY0LHToNYx0E79BWMt2n7=nepPPLf+7YV3=KFEyw@mail.gmail.com>
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
