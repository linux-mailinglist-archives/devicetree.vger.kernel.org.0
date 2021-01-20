Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0FF42FD797
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 18:58:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727676AbhATR4y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 12:56:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390701AbhATR4Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 12:56:25 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E15E2C0613CF
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 09:55:44 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id a12so23918848wrv.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 09:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=u9d5u2rU+oUC3PSlRpvM5/qU7mQebSKD882Pr796bxs=;
        b=wEnitb2FT1wKDf1iNM7t56LriFK4O7jTr2wCXes6P2kZJt+uv2bOsBYl05PBc67RH3
         ki0Mp8eoch3QTMyJQqFtnCTTan938j+tP/G06YgZdIhAkpCxq0yYDC/apO5qVi0ZOpgV
         5cp+DimAxrvWAqyXhlgcq57wD3/c6z26cc7l9+YX5SpA3U1RXHaIopSp64TzfqO3Jm+9
         +43mtK1dITx3LWvkypY1YtZPmHgwt9+T2WyQZLoYzAfZExLHbKOF+4FH8fr8BTEPqhud
         K3fr5ZlvbiOHrRmL7nElGamCR1LC9Il92GcLPi5B7aHUOm0cb2fnWKmwLJJrNJ18BBA5
         2HEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=u9d5u2rU+oUC3PSlRpvM5/qU7mQebSKD882Pr796bxs=;
        b=WCLCwbEicasE8Ec/0Jjs1llfV8ZWDdcWvL20bug71MNQUtrUvapaXozBaH3ZNZW+u7
         UJJfpvsVpqq/XCcn++41e9scDb+Oo2hy8H8OggDoerzfXBxvtY+/CtLhm8YojH2jm+jm
         GKhBipVXdPuEiea24Ro6YcQqfLke7beTQb0z0m9U5vsagc/w3OL3Ron1nnsVczm9PvH6
         wSL7brwnEj/bFtD0CkyaOACSG8xU/uAh98QhfI0MF4s8B+hYHhp/oqnBoHwXqXU6QHGu
         R+6hJAFslTL5pnAlftngK1iL5c3DlWwKnxZY9jpkyM5jPmEuRmxugdvlVSwM8IwBz2/s
         DRBw==
X-Gm-Message-State: AOAM531YroEJaxSNpSt0T2V+xh8IkYlK1F7s7QiS3q2fvGTtrWy5Jut6
        oRoa2Bwd3TIq+b3M1z5LZJkUrQ==
X-Google-Smtp-Source: ABdhPJxYz9wWmfwCtCBcKPiQmZrmimspu6SwMfoxK1Eays8A9xFacgdeujsrMNO5XqeMv6Tbgovf9g==
X-Received: by 2002:a5d:4987:: with SMTP id r7mr10727143wrq.352.1611165343667;
        Wed, 20 Jan 2021 09:55:43 -0800 (PST)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id m18sm5608010wrw.43.2021.01.20.09.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 09:55:42 -0800 (PST)
Date:   Wed, 20 Jan 2021 18:55:23 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     joro@8bytes.org, will@kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org, guohanjun@huawei.com,
        rjw@rjwysocki.net, iommu@lists.linux-foundation.org,
        robh+dt@kernel.org, linux-accelerators@lists.ozlabs.org,
        sudeep.holla@arm.com, vivek.gautam@arm.com,
        zhangfei.gao@linaro.org, linux-arm-kernel@lists.infradead.org,
        lenb@kernel.org
Subject: Re: [PATCH v9 10/10] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <YAhui7UOw7743shI@myrica>
References: <20210108145217.2254447-1-jean-philippe@linaro.org>
 <20210108145217.2254447-11-jean-philippe@linaro.org>
 <d36d0edd-6762-41e0-2082-d9c08c125524@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d36d0edd-6762-41e0-2082-d9c08c125524@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 19, 2021 at 05:28:21PM +0000, Robin Murphy wrote:
> On 2021-01-08 14:52, Jean-Philippe Brucker wrote:
> > +#define EVTQ_1_PRIV			(1UL << 33)
> > +#define EVTQ_1_EXEC			(1UL << 34)
> > +#define EVTQ_1_READ			(1UL << 35)
> 
> Nit: personally I'd find it a little clearer if these were named PnU, InD,
> and RnW to match the architecture, but quite possibly that's just me and
> those are gibberish to everyone else...

No problem, I think it's still decipherable without a spec

> > +bool arm_smmu_master_iopf_enabled(struct arm_smmu_master *master)
> > +{
> > +	bool enabled;
> > +
> > +	mutex_lock(&sva_lock);
> > +	enabled = master->iopf_enabled;
> > +	mutex_unlock(&sva_lock);
> 
> Forgive me for being dim, but what's the locking synchronising against here?
> If we're expecting that master->iopf_enabled can change at any time, isn't
> whatever we've read potentially already invalid as soon as we've dropped the
> lock?

Right, no reason to lock this. I doubt the lock in sva_enabled() is
necessary either, I could remove it in a separate patch.

> > +static int arm_smmu_page_response(struct device *dev,
> > +				  struct iommu_fault_event *unused,
> > +				  struct iommu_page_response *resp)
> > +{
> > +	struct arm_smmu_cmdq_ent cmd = {0};
> > +	struct arm_smmu_master *master = dev_iommu_priv_get(dev);
> > +	int sid = master->streams[0].id;
> 
> If that's going to be the case, should we explicitly prevent multi-stream
> devices from opting in to faults at all?

Sure I'll add a check in iopf_supported(). Dealing with multi-stream
devices should be easy enough (record the incoming SID into
iommu_fault_event and fetch it back here), it just didn't seem necessary
for the moment.

> > +	if (evt[1] & EVTQ_1_STALL) {
> > +		flt->type = IOMMU_FAULT_PAGE_REQ;
> > +		flt->prm = (struct iommu_fault_page_request) {
> > +			.flags = IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE,
> > +			.grpid = FIELD_GET(EVTQ_1_STAG, evt[1]),
> > +			.perm = perm,
> > +			.addr = FIELD_GET(EVTQ_2_ADDR, evt[2]),
> > +		};
> > +
> > +		if (ssid_valid) {
> > +			flt->prm.flags |= IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;
> > +			flt->prm.pasid = FIELD_GET(EVTQ_0_SSID, evt[0]);
> > +		}
> 
> So if we get a bad ATS request with R=1, or a TLB/CFG conflict or any other
> imp-def event which happens to have bit 95 set, we might try to report it as
> something pageable? I would have thought we should look at the event code
> before *anything* else.

Yes I definitely need to fix this

> > @@ -2250,6 +2383,12 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
> >   			smmu_domain->s1_cfg.s1cdmax, master->ssid_bits);
> >   		ret = -EINVAL;
> >   		goto out_unlock;
> > +	} else if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1 &&
> > +		   smmu_domain->stall_enabled != master->stall_enabled) {
> 
> I appreciate that it's probably a fair bit more complex, but it would be
> nice to at least plan for resolving this decision later (i.e. at a point
> where a caller shows an interest in actually using stalls) in future.
> Obviously the first devices advertising stall capabilities will be the ones
> that do want to use it for their primary functionality, that are driving the
> work here. However once this all matures, firmwares may start annotating any
> stallable devices as such for completeness, rather than assuming any
> specific usage. At that point it would be a pain if, say, assigning two
> devices to the same VFIO domain for old-fashioned pinned DMA, was suddenly
> prevented for irrelevant reasons just because of a DT/IORT update.

It is more complex but possible. Device drivers signal their intent to use
stall by enabling IOMMU_DEV_FEAT_IOPF, so we can postpone setting CD.S
until then. We'll still need to make sure all devices attached to a domain
support it, and prevent attaching a device that can't handle stall to a
stall-enabled domain since it would inherit all CDs. Then there will be
drivers wanting to receive stall events for context #0 and handle them by
issuing iommu_map() calls (unpinned VFIO, mentioned by Baolu on patch
3). That requires setting and clearing CD.S live. So it is doable but I'd
rather leave it for later.

> > @@ -2785,6 +2943,7 @@ static int arm_smmu_cmdq_init(struct arm_smmu_device *smmu)
> >   static int arm_smmu_init_queues(struct arm_smmu_device *smmu)
> >   {
> >   	int ret;
> > +	bool sva = arm_smmu_sva_supported(smmu);
> >   	/* cmdq */
> >   	ret = arm_smmu_init_one_queue(smmu, &smmu->cmdq.q, ARM_SMMU_CMDQ_PROD,
> > @@ -2804,6 +2963,12 @@ static int arm_smmu_init_queues(struct arm_smmu_device *smmu)
> >   	if (ret)
> >   		return ret;
> > +	if (sva && smmu->features & ARM_SMMU_FEAT_STALLS) {
> 
> Surely you could just test for ARM_SMMU_FEAT_SVA by now rather than go
> through the whole of arm_smmu_sva_supported() again?

Oh right, that was dumb

Thanks for the review
Jean
