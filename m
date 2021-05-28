Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 884E43945D4
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 18:26:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235980AbhE1Q1s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 12:27:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233583AbhE1Q1s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 12:27:48 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4049DC06174A
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 09:26:13 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id l11-20020a05600c4f0bb029017a7cd488f5so2753185wmq.0
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 09:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TKWYuy5e1a7MVcCONh10ek8WRVjfZhF24M6h3yAlFXg=;
        b=uAqk1rGnr4Zx8fqad9xCVt+J0mKPcTq7ssobuwqr0/V87yyJQtgkrWC0PF+2ZNSBCb
         XhlqvW8R38UvTKfuOKYM4U8FjttA+LC319F73dSL2q1oaYiHyl7IFHQNfRzJB6DEvkCr
         WBw9ERFllz9dAcVcDTtX6ixI8TGNFWs238R37lTFFMtTOgTsQKuif183pW6vIxDO6VrH
         IRc4pSRlEhHlW2GtyTtJFQZfwKxMIXcFohGmeP3RYGw9cswseI0c/VNWQS84ydjxRq7P
         KYaUwyTPqXmkvbyZ5Yb7FITQtQ1OKuIY1PlKlZY0Rf2OgiVaMGN8ylcKefQSE0fsHzW/
         Dw8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TKWYuy5e1a7MVcCONh10ek8WRVjfZhF24M6h3yAlFXg=;
        b=aoJCn881jYQW3EUTj1xW1uUIbHbqV24vEgwXmrInl+RHTbjir/aRPDn0lGeblM8DK/
         DJYNeMC3iukMv0ByyhcWm5bXysaeSXqNYYH3pWyQa/ppeinuU0WOCnxkFOYrRW0wH81m
         nNpGWflHNgTiqkrTkJZrFD5/ZcPhV2J4Ewo3/rEwoV4FKWjg+HKEqMa5T2t+CQZQ3MYZ
         iMEiE/AabJYj29PIXGxzf3N2xLgp3wZYoJKH+nTsjyKF21Ltotj4yzg4q7m8FicDB/QU
         El7dm2Svpgwq3Zdn34DJrh+w5tlSjQyH3dcloD1iIF2I8g30opV/h6lM9QTHFecyNEW0
         rGVQ==
X-Gm-Message-State: AOAM532zAViM6TpvikKkiY/Kn+OibK9viRgXzgceH8k0gu9vZa1rzFQT
        Dhk2N+WhI9tHdJdsGaC4PNMSkA==
X-Google-Smtp-Source: ABdhPJyD6eRonZHgh1jOYg+fLrjyl1AjpTN9fePZXHfySYYUG9aFbvN7EU/RT7evtxyZw9yAjqjYDw==
X-Received: by 2002:a05:600c:1909:: with SMTP id j9mr9652038wmq.100.1622219171653;
        Fri, 28 May 2021 09:26:11 -0700 (PDT)
Received: from myrica (adsl-84-226-106-126.adslplus.ch. [84.226.106.126])
        by smtp.gmail.com with ESMTPSA id b15sm7953338wru.64.2021.05.28.09.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 May 2021 09:26:11 -0700 (PDT)
Date:   Fri, 28 May 2021 18:25:52 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Aaro Koskinen <aaro.koskinen@iki.fi>
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
        linux-mm@kvack.org, mark.rutland@arm.com, kevin.tian@intel.com,
        jacob.jun.pan@linux.intel.com, catalin.marinas@arm.com,
        joro@8bytes.org, robin.murphy@arm.com, robh+dt@kernel.org,
        yi.l.liu@intel.com, Jonathan.Cameron@huawei.com,
        zhangfei.gao@linaro.org, will@kernel.org, christian.koenig@amd.com,
        baolu.lu@linux.intel.com
Subject: Re: [PATCH v4 21/26] iommu/arm-smmu-v3: Ratelimit event dump
Message-ID: <YLEZkGjtkSQu/NP+@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-22-jean-philippe@linaro.org>
 <20210528080958.GA60351@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210528080958.GA60351@darkstar.musicnaut.iki.fi>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Aaro,

On Fri, May 28, 2021 at 11:09:58AM +0300, Aaro Koskinen wrote:
> Hi,
> 
> On Mon, Feb 24, 2020 at 07:23:56PM +0100, Jean-Philippe Brucker wrote:
> > When a device or driver misbehaves, it is possible to receive events
> > much faster than we can print them out. Ratelimit the printing of
> > events.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> 
> Tested-by: Aaro Koskinen <aaro.koskinen@nokia.com>
> 
> > During the SVA tests when the device driver didn't properly stop DMA
> > before unbinding, the event queue thread would almost lock-up the server
> > with a flood of event 0xa. This patch helped recover from the error.
> 
> I was just debugging a similar case, and this patch was required to
> prevent system from locking up.
> 
> Could you please resend this patch independently from the other patches
> in the series, as it seems it's a worthwhile fix and still relevent for
> current kernels. Thanks,

Ok, I'll resend it

Thanks,
Jean

> 
> A.
> 
> > ---
> >  drivers/iommu/arm-smmu-v3.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index 28f8583cd47b..6a5987cce03f 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -2243,17 +2243,20 @@ static irqreturn_t arm_smmu_evtq_thread(int irq, void *dev)
> >  	struct arm_smmu_device *smmu = dev;
> >  	struct arm_smmu_queue *q = &smmu->evtq.q;
> >  	struct arm_smmu_ll_queue *llq = &q->llq;
> > +	static DEFINE_RATELIMIT_STATE(rs, DEFAULT_RATELIMIT_INTERVAL,
> > +				      DEFAULT_RATELIMIT_BURST);
> >  	u64 evt[EVTQ_ENT_DWORDS];
> >  
> >  	do {
> >  		while (!queue_remove_raw(q, evt)) {
> >  			u8 id = FIELD_GET(EVTQ_0_ID, evt[0]);
> >  
> > -			dev_info(smmu->dev, "event 0x%02x received:\n", id);
> > -			for (i = 0; i < ARRAY_SIZE(evt); ++i)
> > -				dev_info(smmu->dev, "\t0x%016llx\n",
> > -					 (unsigned long long)evt[i]);
> > -
> > +			if (__ratelimit(&rs)) {
> > +				dev_info(smmu->dev, "event 0x%02x received:\n", id);
> > +				for (i = 0; i < ARRAY_SIZE(evt); ++i)
> > +					dev_info(smmu->dev, "\t0x%016llx\n",
> > +						 (unsigned long long)evt[i]);
> > +			}
> >  		}
> >  
> >  		/*
