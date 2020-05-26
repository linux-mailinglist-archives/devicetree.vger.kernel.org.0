Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91D2B1C3F65
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2020 18:07:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729514AbgEDQHq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 May 2020 12:07:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729510AbgEDQHp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 May 2020 12:07:45 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 899C0C061A0E
        for <devicetree@vger.kernel.org>; Mon,  4 May 2020 09:07:45 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id y24so83592wma.4
        for <devicetree@vger.kernel.org>; Mon, 04 May 2020 09:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=nMl6SHOaMost3dT1wGRgIQNBlt6LwoX99r9Dd84bUXI=;
        b=tOa5oTLa/BSYByPuQ+26pv5RJej5b20cBe+rvpOGPI/KofVkXxxl26y2MJakqaW0FQ
         rZJEar4QOw/8Ea95uNmoZPskH+y3kSmV2qqvfj7xz7WuAu3apmEB/RRqtnxyMYZ1rwFV
         kt9KI3iTKOxkoNvLOTBuIDR0pT38dqKuazvuidA+F4t6y11UNBS8CQ764TRmaAXE6n7m
         q2Ud0IZOLQGVjWMbEwM4ap6Y19/3twFdisN9Kmfa5J4pXzqmJ6e1dcc/hcuI7bWLKgbg
         5Oqx76DnLKrP1ppU9XJcOJPcIjL1Te3iy2p8xs4JkrbmXrwXC2o4X+EqXTaqX6KHcXrS
         DrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=nMl6SHOaMost3dT1wGRgIQNBlt6LwoX99r9Dd84bUXI=;
        b=pYV2gNGpT6/F2lGuM0ukDU3w/4o3WzK3rVOSMVsbXZE0snkNosbGVFhZAVwrTMzL95
         pBmehKMOsPqJhrUuDPeVhX0a/0ky8dQEI6+VCbxGJXs//U8kN0Gwlrg0ZDcq6m5OZYE7
         0oWcHlvRhZQ/YjkAZ2MY9oN4oZylG8kuDq6/WAnTP27k4KLlU/Th45CHzPVwNR5HUPF4
         iKQaTjRQBLc0uqHJN8c+LR2GFbaLWp1lYkQeR7nXtfVhdxX6G4kjM6LLW8x1HuWdt3+0
         ANQmC6cLqpOu0kr+NWYJWZh6yj0weXMZwQKD+F7tAtkuGMywibiB/SnBrEHJHuF3R8HQ
         oUpw==
X-Gm-Message-State: AGi0PuZEMl3lM2aXpml81w3rSozvRyUhJ+0yoQFQzBWNH6wLB0saq2hg
        T/QaGM1L3Nhxiv5YgFJ1KpX37w==
X-Google-Smtp-Source: APiQypLRnG6LvHqUIo2qBJAF7F6DJOi32Rx7XybV+rqHkWXfxFrCE9dU7PixYXhfr6u9mhKSarqUxQ==
X-Received: by 2002:a7b:cb0c:: with SMTP id u12mr16851030wmj.137.1588608464322;
        Mon, 04 May 2020 09:07:44 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id l15sm13514230wmi.48.2020.05.04.09.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 09:07:43 -0700 (PDT)
Date:   Mon, 4 May 2020 18:07:34 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Jason Gunthorpe <jgg@ziepe.ca>
Cc:     Christoph Hellwig <hch@infradead.org>,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org, fenghua.yu@intel.com, kevin.tian@intel.com,
        catalin.marinas@arm.com, robin.murphy@arm.com,
        zhangfei.gao@linaro.org, felix.kuehling@amd.com, will@kernel.org,
        christian.koenig@amd.com
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200504160734.GE170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200501121552.GA6012@infradead.org>
 <20200501125513.GN26002@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200501125513.GN26002@ziepe.ca>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 01, 2020 at 09:55:13AM -0300, Jason Gunthorpe wrote:
> On Fri, May 01, 2020 at 05:15:52AM -0700, Christoph Hellwig wrote:
> > > @@ -432,6 +432,7 @@ config ARM_SMMU_V3
> > >  	tristate "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
> > >  	depends on ARM64
> > >  	select IOMMU_API
> > > +	select IOMMU_SVA
> > >  	select IOMMU_IO_PGTABLE_LPAE
> > >  	select GENERIC_MSI_IRQ_DOMAIN
> > 
> > Doesn't this need to select MMU_NOTIFIER now?
> > 
> > > +	struct mmu_notifier_ops		mn_ops;
> > 
> > Note: not a pointer.
> > 
> > > +	/* If bind() was already called for this (dev, mm) pair, reuse it. */
> > > +	list_for_each_entry(bond, &master->bonds, list) {
> > > +		if (bond->mm == mm) {
> > > +			refcount_inc(&bond->refs);
> > > +			return &bond->sva;
> > > +		}
> > > +	}
> 
> I also would like it if searching for mms in linked lists was not
> necessary, this is kind of the point of 'get'
> 
> Is this a side effect of the earlier remark to get rid of the linked
> list inside the notifier?
> 
> > Or we could enhance the mmu_notifier_get to pass a private
> > oaque instance ID pointer, which is checked in addition to the ops,
> > and you could probably kill off the bonds list and lookup.
> 
> This might be the best option if it can absorb the above search..

It wouldn't, the above search is separate. I currently register the MMU
notifier on (IOMMU domain, mm). The (dev, mm) search above is to follow
the iommu_sva_bind_device() API doc, that states we should return the same
handle for a given (dev, mm) pair.

Thanks,
Jean

