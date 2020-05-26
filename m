Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5C3E1C3F60
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2020 18:06:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728873AbgEDQGx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 May 2020 12:06:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726578AbgEDQGx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 May 2020 12:06:53 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73B69C061A0E
        for <devicetree@vger.kernel.org>; Mon,  4 May 2020 09:06:51 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id y24so79765wma.4
        for <devicetree@vger.kernel.org>; Mon, 04 May 2020 09:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bp4AZOmEDFlGnUKxwTpEGrX9Ywb+/ercU9RXG60YpkA=;
        b=Dw8xcNvj2qmOKxxn59CPRrnhgYrQ5x4sBPM8qK0pmcxzWd1aH/YyCVxlXW3TIWT8Fw
         tx++cxMdi9+OTPqOJQ0MUb+cNtf6m3SYTI32z98924olcf+4nnXYi+IsldgCldMoIM07
         4h4F+MxzAqq6y91AHErfmlevgojJiWj+WryxD4tS6DchG+1L3m2rsTys97s7V6H+LEdC
         LCsZJU4jP6ekqf6cSccjS9Se5DU1Jiz5dlTN66yFFKaWMHEZyAdh3cs63tmpeqdXo7uR
         T2cb+IBgx5aIR71N/OxSIdsY99sFfZqoNjBPUH6CNGyQrSLxrlGkp1kmGkSQF8YKLWZh
         DMTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bp4AZOmEDFlGnUKxwTpEGrX9Ywb+/ercU9RXG60YpkA=;
        b=qwatQzvC6hwS9oIzbxU4CScU2udwOoS+262VRGN+ZZuPHg8Tyl3+Qvc9Lhht1TANS/
         aCktGf0U1/HqfSL9auh8im2Zv/9rlHo4odJrhlxj6Cd29HO/+jdCnUAv3TMscNg/j6Ra
         GnoPsMAcUt2yeKrLTIkXQJZm13YVjLZ9p1QdRbBH/hS01V2vwoJsLdeGr7zje9LBtGLV
         97NAZEazpWR6riaOjCkaGH6kPbnsiwWIZ4DlfTXrI2ZsYzLdcmtm/M9HOpFlv731UJ6O
         FWI/iR9p9etvO59a6yj09oPAys6/bRjbH7KET97yvrinQ69NDN+iwo8YHMp1T5VO7BeO
         0s8A==
X-Gm-Message-State: AGi0PuZ5/s11e++6yriFz+bes7MT6OQuNdbJsiu8ssqrXfIN3zRZuqQs
        gOoJyyKdZ0Qr7OZlr74D1GiG/Q==
X-Google-Smtp-Source: APiQypKPyLr9D3x5aJJfh1E5/6u+cb8JP6Qo0I2a/ao2kDBpvQii1AZTwUzgtbi+yEe+qplCF2lrWg==
X-Received: by 2002:a1c:3182:: with SMTP id x124mr16738870wmx.54.1588608410123;
        Mon, 04 May 2020 09:06:50 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id b66sm15224708wmh.12.2020.05.04.09.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2020 09:06:48 -0700 (PDT)
Date:   Mon, 4 May 2020 18:06:39 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Christoph Hellwig <hch@infradead.org>
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org, fenghua.yu@intel.com, kevin.tian@intel.com,
        jgg@ziepe.ca, catalin.marinas@arm.com, robin.murphy@arm.com,
        zhangfei.gao@linaro.org, felix.kuehling@amd.com, will@kernel.org,
        christian.koenig@amd.com
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200504160639.GD170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200501121552.GA6012@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200501121552.GA6012@infradead.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 01, 2020 at 05:15:52AM -0700, Christoph Hellwig wrote:
> > @@ -432,6 +432,7 @@ config ARM_SMMU_V3
> >  	tristate "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
> >  	depends on ARM64
> >  	select IOMMU_API
> > +	select IOMMU_SVA
> >  	select IOMMU_IO_PGTABLE_LPAE
> >  	select GENERIC_MSI_IRQ_DOMAIN
> 
> Doesn't this need to select MMU_NOTIFIER now?

Yes, will fix

> > +	struct mmu_notifier_ops		mn_ops;
> 
> Note: not a pointer.
> 
> > +	/* If bind() was already called for this (dev, mm) pair, reuse it. */
> > +	list_for_each_entry(bond, &master->bonds, list) {
> > +		if (bond->mm == mm) {
> > +			refcount_inc(&bond->refs);
> > +			return &bond->sva;
> > +		}
> > +	}
> > +
> > +	mn = mmu_notifier_get(&smmu_domain->mn_ops, mm);
> > +	if (IS_ERR(mn))
> > +		return ERR_CAST(mn);
> 
> Which seems to be to avoid mmu_notifier_get reusing notifiers registered
> by other arm_smmu_master instance right?

Yes, although I'm registering a single mmu notifier per (domain, mm) pair,
not (master, mm), because the SMMU driver keeps one set of PASID tables
per IOMMU domain.

> Either you could just use plain old mmu_notifier_register to avoid
> the reuse.  Or we could enhance the mmu_notifier_get to pass a private
> oaque instance ID pointer, which is checked in addition to the ops,
> and you could probably kill off the bonds list and lookup.

Going back to mmu_notifier_register() seems better for now. I don't want
to change the core APIs just for this driver, because it's likely to
change again when more hardware starts appearing and we optimize it.

Thanks,
Jean

