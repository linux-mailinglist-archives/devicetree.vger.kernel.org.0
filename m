Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F30E38729A
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 08:49:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234269AbhERGuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 02:50:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233991AbhERGuR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 02:50:17 -0400
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com [IPv6:2607:f8b0:4864:20::72b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B252DC061573
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 23:48:59 -0700 (PDT)
Received: by mail-qk1-x72b.google.com with SMTP id l129so8302924qke.8
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 23:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3HopsH6N9F8FpkG4FSoTMtRMwuiSWSuF3ZB9X+VJCjU=;
        b=LETfA+HNnfbbscLemZLHMHTU1ucDVUTbar59Z+Ip1n1aOSxU2vCiyi6AnzZ7ISe1Ci
         d5+6nDZp7u09C4wccj2HMQoLbhxVgGmyilxSsMMqy6XnJ9Gh0XN/+XAYDZzV88am1gOT
         FB7ehF0SoAEZFAQ80iPByl3CmJPeIGWiXIdbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3HopsH6N9F8FpkG4FSoTMtRMwuiSWSuF3ZB9X+VJCjU=;
        b=gROLZiDIHTdrhGyLl1PSomqE0QP6MCIxHIewFv3z5YVf1PhKjYHxAAXhmUiGT2yakb
         fhBUmAx99GM5rAGACl4wt25O+bVU2ezFAWRqhtWUOhrTqbAS/Hfcj65mW/DKs4Tkk1HI
         jfOfG+x9rZiozEQmK5/w8Jj8oY7X7PULTupGB8mOw+Gmoop0L5sEFgdqj3+wS8+sey1P
         zay1GZrKUP4Dg7I2SXMUldRloPdsAIE0ovqF+rIj/cFIlMONMHBqwYL1bnW9JdExfswR
         yxPiqUdrqwcaH2uFxt9G2/sW7uc1sDS45f57Pn4BHbKgWb5oSFMuSWj9S3Wx+FMWoLAb
         Bgrg==
X-Gm-Message-State: AOAM533cy0FK2nVaFXfwGO35Qqs4y1vLCgROaYIe68XyC7kA9MPwF++k
        yKhBkoj8fpmjG2ITpH9xW1Tmb9i2KmmhiA==
X-Google-Smtp-Source: ABdhPJw/QFev1L9+MxiHIgqFNnMFkG1ma+QrYjfxSWvfLkSDebxvzbNgHNt4XOGk4B3q1ewZT2Yz5g==
X-Received: by 2002:a37:a9d3:: with SMTP id s202mr1986831qke.246.1621320538347;
        Mon, 17 May 2021 23:48:58 -0700 (PDT)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com. [209.85.222.173])
        by smtp.gmail.com with ESMTPSA id x13sm11932431qtj.12.2021.05.17.23.48.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 23:48:57 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id l129so8302887qke.8
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 23:48:57 -0700 (PDT)
X-Received: by 2002:a05:6638:32a8:: with SMTP id f40mr3969029jav.84.1621320526895;
 Mon, 17 May 2021 23:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org> <20210518064215.2856977-5-tientzu@chromium.org>
In-Reply-To: <20210518064215.2856977-5-tientzu@chromium.org>
From:   Claire Chang <tientzu@chromium.org>
Date:   Tue, 18 May 2021 14:48:35 +0800
X-Gmail-Original-Message-ID: <CALiNf2_AWsnGqCnh02ZAGt+B-Ypzs1=-iOG2owm4GZHz2JAc4A@mail.gmail.com>
Message-ID: <CALiNf2_AWsnGqCnh02ZAGt+B-Ypzs1=-iOG2owm4GZHz2JAc4A@mail.gmail.com>
Subject: Re: [PATCH v7 04/15] swiotlb: Add restricted DMA pool initialization
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

I didn't move this to a separate file because I feel it might be
confusing for swiotlb_alloc/free (and need more functions to be
non-static).
Maybe instead of moving to a separate file, we can try to come up with
a better naming?
