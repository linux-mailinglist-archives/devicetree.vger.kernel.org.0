Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A3F32F2B0B
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 10:19:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392479AbhALJRe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 04:17:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389926AbhALJRd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 04:17:33 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED867C061795
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 01:16:51 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id r5so1447632eda.12
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 01:16:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=V4Ma0KkD8d21UACM4ffQTckGsQRVOOOjeKQ7H9bkegg=;
        b=tqns5ex3W/22GNSQjU3yHEUq6Lx0NP96Ysb/ui4paO62uBN1fxSQTYwaE9hkYeZZQ3
         +OsoewHGvx/NJl0tGOelIJS7NW25gPVldz3D+LhuhiHgp1kwFsnVxvo1AxoWnGvC0v7f
         fPLYq75eocGKThJXMhyHGVDEhGZUrQ9eq/oII/jJtfNIxEbXNRxcwJwgouUnjpfdx8ST
         T8G5xSxjsCNmIYPDPyBO2+ILzXpirbSIuxR6yIkNmsNpTohxn35Qd+ULH8Tbw3mA5P3b
         YBjYT2owuHJcg3U/sfVhyg9K17im8jtzLM3LMh81MoBbUZC0i4VOIwNQ9qdwdgdr35xk
         iDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=V4Ma0KkD8d21UACM4ffQTckGsQRVOOOjeKQ7H9bkegg=;
        b=ZCCDfs93qCg+a+Ea1sjxgTb8iftLT6NcGaQB47S4hkOnMdcar7JnVkhOzNrfW377L+
         CxdH+OPE7SPAqJPcxVCCBC8sN7I1uNcIH21qympwmNOTNG0oioaTcSSTZXwJQccq6gK4
         y8FMg9nsDFOohrwPkhZ02mFyj+H/M8n5TINay7HztfKjYAWdJfnGyOeDqQN0pyzLS9h+
         NLLb8yE5zAhA3B/GIM1u6AL5O9U8tp0xyAbAU01476MKnOq4yThPJP0BAC8l/LQEspH6
         EKANqg7CEc+wz5muPWAoj/3OZOffJL7DDG1w/MR8XLRjGtBTdut6OTXd+TgsNhWbwUPY
         ztcg==
X-Gm-Message-State: AOAM5310QM26Aho4Aumb2ks3LV1fSd0hHEQd+0loq2p40vQJ04AkhZi3
        E2SpfhNdUwT0mw0TaDmMWUueqA==
X-Google-Smtp-Source: ABdhPJxkiyPcGha8EA9sg/7lQmn+O5OBib7oEZX270HhCUOKgigDK4OOnz98pAkIlqJKozflypcvug==
X-Received: by 2002:a05:6402:895:: with SMTP id e21mr2679030edy.284.1610443010649;
        Tue, 12 Jan 2021 01:16:50 -0800 (PST)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id m7sm934913eji.118.2021.01.12.01.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 01:16:50 -0800 (PST)
Date:   Tue, 12 Jan 2021 10:16:31 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Lu Baolu <baolu.lu@linux.intel.com>
Cc:     joro@8bytes.org, will@kernel.org, lorenzo.pieralisi@arm.com,
        robh+dt@kernel.org, guohanjun@huawei.com, sudeep.holla@arm.com,
        rjw@rjwysocki.net, lenb@kernel.org, robin.murphy@arm.com,
        Jonathan.Cameron@huawei.com, eric.auger@redhat.com,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, vdumpa@nvidia.com,
        zhangfei.gao@linaro.org, shameerali.kolothum.thodi@huawei.com,
        vivek.gautam@arm.com, Arnd Bergmann <arnd@arndb.de>,
        David Woodhouse <dwmw2@infradead.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Zhou Wang <wangzhou1@hisilicon.com>,
        "Tian, Kevin" <kevin.tian@intel.com>
Subject: Re: [PATCH v9 03/10] iommu: Separate IOMMU_DEV_FEAT_IOPF from
 IOMMU_DEV_FEAT_SVA
Message-ID: <X/1o72DTmzdCMhDz@myrica>
References: <20210108145217.2254447-1-jean-philippe@linaro.org>
 <20210108145217.2254447-4-jean-philippe@linaro.org>
 <4de8ef03-a2ed-316e-d3e3-6b8474e20113@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4de8ef03-a2ed-316e-d3e3-6b8474e20113@linux.intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Baolu,

On Tue, Jan 12, 2021 at 12:31:23PM +0800, Lu Baolu wrote:
> Hi Jean,
> 
> On 1/8/21 10:52 PM, Jean-Philippe Brucker wrote:
> > Some devices manage I/O Page Faults (IOPF) themselves instead of relying
> > on PCIe PRI or Arm SMMU stall. Allow their drivers to enable SVA without
> > mandating IOMMU-managed IOPF. The other device drivers now need to first
> > enable IOMMU_DEV_FEAT_IOPF before enabling IOMMU_DEV_FEAT_SVA.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: David Woodhouse <dwmw2@infradead.org>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Joerg Roedel <joro@8bytes.org>
> > Cc: Lu Baolu <baolu.lu@linux.intel.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
> > Cc: Zhou Wang <wangzhou1@hisilicon.com>
> > ---
> >   include/linux/iommu.h | 20 +++++++++++++++++---
> >   1 file changed, 17 insertions(+), 3 deletions(-)
> > 
> > diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> > index 583c734b2e87..701b2eeb0dc5 100644
> > --- a/include/linux/iommu.h
> > +++ b/include/linux/iommu.h
> > @@ -156,10 +156,24 @@ struct iommu_resv_region {
> >   	enum iommu_resv_type	type;
> >   };
> > -/* Per device IOMMU features */
> > +/**
> > + * enum iommu_dev_features - Per device IOMMU features
> > + * @IOMMU_DEV_FEAT_AUX: Auxiliary domain feature
> > + * @IOMMU_DEV_FEAT_SVA: Shared Virtual Addresses
> > + * @IOMMU_DEV_FEAT_IOPF: I/O Page Faults such as PRI or Stall. Generally using
> > + *			 %IOMMU_DEV_FEAT_SVA requires %IOMMU_DEV_FEAT_IOPF, but
> > + *			 some devices manage I/O Page Faults themselves instead
> > + *			 of relying on the IOMMU. When supported, this feature
> > + *			 must be enabled before and disabled after
> > + *			 %IOMMU_DEV_FEAT_SVA.
> 
> Is this only for SVA? We may see more scenarios of using IOPF. For
> example, when passing through devices to user level, the user's pages
> could be managed dynamically instead of being allocated and pinned
> statically.

Hm, isn't that precisely what SVA does?  I don't understand the
difference. That said FEAT_IOPF doesn't have to be only for SVA. It could
later be used as a prerequisite some another feature. For special cases
device drivers can always use the iommu_register_device_fault_handler()
API and handle faults themselves.

> If @IOMMU_DEV_FEAT_IOPF is defined as generic iopf support, the current
> vendor IOMMU driver support may not enough.

IOMMU_DEV_FEAT_IOPF on its own doesn't do anything useful, it's mainly a
way for device drivers to probe the IOMMU capability. Granted in patch
10 the SMMU driver registers the IOPF queue on enable() but that could be
done by FEAT_SVA enable() instead, if we ever repurpose FEAT_IOPF.

Thanks,
Jean
