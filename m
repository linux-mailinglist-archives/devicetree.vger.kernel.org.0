Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 71F78173A37
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2020 15:48:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726796AbgB1Osq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Feb 2020 09:48:46 -0500
Received: from mail-qt1-f196.google.com ([209.85.160.196]:36596 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726682AbgB1Osq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Feb 2020 09:48:46 -0500
Received: by mail-qt1-f196.google.com with SMTP id t13so2188692qto.3
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2020 06:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rsM6P0iWQtYbTIZfDH4GZGs0dcL9Uy2VcIbqhq4DVAs=;
        b=CV3X+nQKX4SjkWXOCXtPcfUWPbWcnGZIr5HXT0td8jCm8UnHLWOJGbCDin+fnDMVh6
         HJjdT1BDInHrt1jgg7+HKPKmxJ+UWR8YMidtypOgu4QTRFY9Wu0jLvzuIF2MK/mIyaDX
         U6540tjncMTP9HxIc2pcrk8RD8kEm4WNC+qgrATMR0y1E2OgtHFcKDmfecdvihyCtKzE
         5z/LqZfYlvAK7Ftc6n4Me1dMh0Y1wkVX2SLDydwWUd9444Zrts13ZQcXeFvt1tJDmWyx
         pVirruhQetio5UlZFpFM8fniSZUI6ZOWFVd0j2FrnRrxsI3M0zlRlNvFarECiOVYnx29
         GpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rsM6P0iWQtYbTIZfDH4GZGs0dcL9Uy2VcIbqhq4DVAs=;
        b=mpyZYsw2yJ+7cpnoGPLRbAd266HN3c4jIgGxiR1e3HlY+vMtHZGFsed+7aGJQjveAJ
         1I6MeRhM1PAoJ+HBbPFp6ugICysoIe6ptQDufozrgHpAXeMuaPNY46v52+/BjknpMYK/
         DxdkzBU1yMkx7Vy76wwiKCRF8DMGKzNA9wk0/Ha1APEFMGXTiZoniHx06elOn+2t+wm/
         lteymXZZGa8j5oExd+jJqFpkYK2XLyM8G/0qPItpaHzuuaRGzAslnZJGcZj6KyIq/M4P
         zyZx3rWkU4f7TMT1AF3nGAVlTdBYTGZ/2NMMnw1vQA0MbkHywaOqJDuzBZHcoNQQm/uR
         3EEw==
X-Gm-Message-State: APjAAAVh/qkRX7XXQaNjp0Id3KNtLR+5XQLGCDEsJOeIoauFttqGw4LX
        MBU93Qj0glNrTh71NJsvMx42Og==
X-Google-Smtp-Source: APXvYqx4if0FgrogA1eRtXiNBtPg1pCTbepMjiVN00txoqKmRdlRgAbN74CUZqB71Vhu4mXSAdk1Rg==
X-Received: by 2002:ac8:425a:: with SMTP id r26mr4520637qtm.138.1582901325295;
        Fri, 28 Feb 2020 06:48:45 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.57.212])
        by smtp.gmail.com with ESMTPSA id t29sm5422548qtt.20.2020.02.28.06.48.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 28 Feb 2020 06:48:44 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
        (envelope-from <jgg@ziepe.ca>)
        id 1j7gwW-0002z7-9g; Fri, 28 Feb 2020 10:48:44 -0400
Date:   Fri, 28 Feb 2020 10:48:44 -0400
From:   Jason Gunthorpe <jgg@ziepe.ca>
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     mark.rutland@arm.com, linux-pci@vger.kernel.org,
        linux-mm@kvack.org, will@kernel.org,
        Dimitri Sivanich <sivanich@sgi.com>, catalin.marinas@arm.com,
        zhangfei.gao@linaro.org, devicetree@vger.kernel.org,
        kevin.tian@intel.com, Arnd Bergmann <arnd@arndb.de>,
        robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        iommu@lists.linux-foundation.org,
        Andrew Morton <akpm@linux-foundation.org>,
        robin.murphy@arm.com, christian.koenig@amd.com
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200228144844.GQ31668@ziepe.ca>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca>
 <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca>
 <20200228143935.GA2156@myrica>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200228143935.GA2156@myrica>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 28, 2020 at 03:39:35PM +0100, Jean-Philippe Brucker wrote:
> > > +	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head) {
> > > +		/*
> > > +		 * To ensure that we observe the initialization of io_mm fields
> > > +		 * by io_mm_finalize() before the registration of this bond to
> > > +		 * the list by io_mm_attach(), introduce an address dependency
> > > +		 * between bond and io_mm. It pairs with the smp_store_release()
> > > +		 * from list_add_rcu().
> > > +		 */
> > > +		io_mm = rcu_dereference(bond->io_mm);
> > 
> > A rcu_dereference isn't need here, just a normal derference is fine.
> 
> bond->io_mm is annotated with __rcu (for iommu_sva_get_pasid_generic(),
> which does bond->io_mm under rcu_read_lock())

I'm surprised the bond->io_mm can change over the lifetime of the
bond memory..

> > > If io_mm->ctx and io_mm->ops are already valid before the
> > > mmu notifier is published, then we don't need that stuff.
> > 
> > So, this trickyness with RCU is not a bad reason to introduce the priv
> > scheme, maybe explain it in the commit message?
> 
> Ok, I've added this to the commit message:
> 
>     The IOMMU SVA module, which attaches an mm to multiple devices,
>     exemplifies this situation. In essence it does:
> 
>             mmu_notifier_get()
>               alloc_notifier()
>                  A = kzalloc()
>               /* MMU notifier is published */
>             A->ctx = ctx;                           // (1)
>             device->A = A;
>             list_add_rcu(device, A->devices);       // (2)
> 
>     The invalidate notifier, which may start running before A is fully
>     initialized at (1), does the following:
> 
>             io_mm_invalidate(A)
>               list_for_each_entry_rcu(device, A->devices)
>                 A = device->A;                      // (3)

I would drop the work around from the decription, it is enough to say
that the line below needs to observe (1) after (2) and this is
trivially achieved by moving (1) to before publishing the notifier so
the core MM locking can be used.

Regards,
Jason
