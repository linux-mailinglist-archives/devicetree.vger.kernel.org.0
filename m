Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 290A31EB8A4
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2020 11:38:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726371AbgFBJiu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jun 2020 05:38:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726420AbgFBJiu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jun 2020 05:38:50 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 760D3C061A0E
        for <devicetree@vger.kernel.org>; Tue,  2 Jun 2020 02:38:48 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id p18so9535751eds.7
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2020 02:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=W0EAxKYZ1cy7EQz5SmmqXsQnpOBPA6z8vgEtS2GOSuY=;
        b=drH65z9QCFx7VpluTZaPf8cNXvMnji1Zw2v13zTnotv2QHpST54MDbm33aYUQRGTJv
         0QULZlT5uAkEZuTvOhzrSMqJ9YapVqZYDij+6jchFqzqcjtUcMPrwrCgKP7ct/hpwUiK
         Icvl+0uC9vWI4KC69z0KY8jHbZGlZhyLd3kpE57L7bfJ4Cpt8dz+qs04+Y0J/gRKD0gE
         SYD0xd89cpu3EFRcQji9vlrDA7Dv0jvvwKCxGAp1AJ9A5QTEgCe3eZQGd6LNx6AU6Aus
         M68A0D5RvptQcClwn9HKmhlxaZARlTB0HTQQ4CBTd55q9gyNSOhbya3xERNyLzArDc6X
         iOUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=W0EAxKYZ1cy7EQz5SmmqXsQnpOBPA6z8vgEtS2GOSuY=;
        b=ElaT9nNNonbRtkipvRIFtagzGvTdQtayjxeAjX8LLl/PF78bnSFQUi3HXsHqXfWmio
         lLyFwP4i0pVm2Zqa4lFjJ0aboBtmUNzjkpFhyShj292tPm0tZ6b/iTONhOAQI+2F62Ak
         1Ie0oBOBCXFRbs1u1kYJZsg9gMj3wwo/fe3ezjmLcbIsRLUqo7HOdRv36QTVpaL/ulFO
         gi/2IAcebPo0Xym2aol6ow6NpvYYtAK9q7dKigRhpbeUj+s2mlZxqXbpJIrPSC6lpuQ6
         rsUM/ZOQtQgOtxi8hQFBHT2Z9m//xVUAxaeadqWnhL/Kz0QQstldPs7QtxnoVcavehPS
         z8tg==
X-Gm-Message-State: AOAM5316MgDHX35cim8ZYHhC8Jj2yru1ins0mUK7UJEPPj6oCk+Rw9ph
        IcPT/IQ+NI9Guvf0uY8uUfnQOA==
X-Google-Smtp-Source: ABdhPJwh69GX0fxQPd28WCwoX+IJ3u/GdmphexSL7+uh9AzkMYiU+9haAje2FoMpFLt799mKYxxrDw==
X-Received: by 2002:a05:6402:17e6:: with SMTP id t6mr24443948edy.243.1591090727183;
        Tue, 02 Jun 2020 02:38:47 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
        by smtp.gmail.com with ESMTPSA id j5sm1319532edk.53.2020.06.02.02.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2020 02:38:46 -0700 (PDT)
Date:   Tue, 2 Jun 2020 11:38:36 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
Cc:     "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-mm@kvack.org" <linux-mm@kvack.org>,
        "fenghua.yu@intel.com" <fenghua.yu@intel.com>,
        "kevin.tian@intel.com" <kevin.tian@intel.com>,
        "jgg@ziepe.ca" <jgg@ziepe.ca>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "robin.murphy@arm.com" <robin.murphy@arm.com>,
        "hch@infradead.org" <hch@infradead.org>,
        "zhangfei.gao@linaro.org" <zhangfei.gao@linaro.org>,
        "felix.kuehling@amd.com" <felix.kuehling@amd.com>,
        "will@kernel.org" <will@kernel.org>,
        "christian.koenig@amd.com" <christian.koenig@amd.com>
Subject: Re: [PATCH v7 21/24] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <20200602093836.GA1029680@myrica>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-22-jean-philippe@linaro.org>
 <4741b6c45d1a43b69041ecb5ce0be0d5@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4741b6c45d1a43b69041ecb5ce0be0d5@huawei.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Shameer,

On Mon, Jun 01, 2020 at 12:42:15PM +0000, Shameerali Kolothum Thodi wrote:
> >  /* IRQ and event handlers */
> > +static int arm_smmu_handle_evt(struct arm_smmu_device *smmu, u64 *evt)
> > +{
> > +	int ret;
> > +	u32 perm = 0;
> > +	struct arm_smmu_master *master;
> > +	bool ssid_valid = evt[0] & EVTQ_0_SSV;
> > +	u8 type = FIELD_GET(EVTQ_0_ID, evt[0]);
> > +	u32 sid = FIELD_GET(EVTQ_0_SID, evt[0]);
> > +	struct iommu_fault_event fault_evt = { };
> > +	struct iommu_fault *flt = &fault_evt.fault;
> > +
> > +	/* Stage-2 is always pinned at the moment */
> > +	if (evt[1] & EVTQ_1_S2)
> > +		return -EFAULT;
> > +
> > +	master = arm_smmu_find_master(smmu, sid);
> > +	if (!master)
> > +		return -EINVAL;
> > +
> > +	if (evt[1] & EVTQ_1_READ)
> > +		perm |= IOMMU_FAULT_PERM_READ;
> > +	else
> > +		perm |= IOMMU_FAULT_PERM_WRITE;
> > +
> > +	if (evt[1] & EVTQ_1_EXEC)
> > +		perm |= IOMMU_FAULT_PERM_EXEC;
> > +
> > +	if (evt[1] & EVTQ_1_PRIV)
> > +		perm |= IOMMU_FAULT_PERM_PRIV;
> > +
> > +	if (evt[1] & EVTQ_1_STALL) {
> > +		flt->type = IOMMU_FAULT_PAGE_REQ;
> > +		flt->prm = (struct iommu_fault_page_request) {
> > +			.flags = IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE,
> > +			.pasid = FIELD_GET(EVTQ_0_SSID, evt[0]),
> > +			.grpid = FIELD_GET(EVTQ_1_STAG, evt[1]),
> > +			.perm = perm,
> > +			.addr = FIELD_GET(EVTQ_2_ADDR, evt[2]),
> > +		};
> > +
> 
> > +		if (ssid_valid)
> > +			flt->prm.flags |= IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;
> 
> Do we need to set this for STALL mode only support? I had an issue with this
> being set on a vSVA POC based on our D06 zip device(which is a "fake " pci dev
> that supports STALL mode but no PRI). The issue is, CMDQ_OP_RESUME doesn't
> have any ssid or SSV params and works on sid and stag only.

I don't understand the problem, arm_smmu_page_response() doesn't set SSID
or SSV when sending a CMDQ_OP_RESUME. Could you detail the flow of a stall
event and RESUME command in your prototype?  Are you getting issues with
the host driver or the guest driver?

We do need to forward the SSV flag all the way to the guest driver, so the
guest can find the faulting address space using the SSID. Once the guest
handled the fault, then we don't send the SSID back to the host as part of
the RESUME command.

Thanks,
Jean

> Hence, it is difficult for
> Qemu SMMUv3 to populate this fields while preparing a page response. I can see
> that this flag is being checked in iopf_handle_single() (patch 04/24) as well. For POC,
> I used a temp fix[1] to work around this. Please let me know your thoughts.
> 
> Thanks,
> Shameer
> 
> 1. https://github.com/hisilicon/kernel-dev/commit/99ff96146e924055f38d97a5897e4becfa378d15
> 
