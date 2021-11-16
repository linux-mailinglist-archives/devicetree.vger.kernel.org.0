Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AEDAC453636
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 16:43:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238563AbhKPPqO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 10:46:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238489AbhKPPpx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 10:45:53 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AD61C0613B9
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 07:42:55 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id u1so38439940wru.13
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 07:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=73W+eAVWIQvhx1y8meb9GkMNaweSrLQquuQCwdCLdlM=;
        b=tTBwR2mJVmrbw05vqMoeWpcPdynH5H7MFpf8U/8M6xAuOKKys74i66yvqrb7RY9j0c
         IF7HThF8ogn4WMAQ2xF+1XUR3nF9pRF3mx0z2644qRJ7JqOfW6pNG37Q9MmrhI64L7/1
         5nOS7Oai+JmTOPLteY90Q5vXTUc4E5uPgv8E4k2vUNWeZsmPs0teGgIiDewfWs5w4at1
         9n/BphIsJYboNZAdn4C2ib8Iq2I9IsT8rcjRiAnWuP9K2N878bsWMD0CHAaOBnNdWTa+
         gIcE9MJLWh1bZas0FX7UDx98TnKHEubMHnpcccJbOTSC1wZCrqjXVnETxhBquCaynfdY
         zQnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=73W+eAVWIQvhx1y8meb9GkMNaweSrLQquuQCwdCLdlM=;
        b=wzgTX+hnnqOl7A51Io+HNugF7fO5Ih6MMvdl7RXjtNdqf8th6ah3NUtD+O7gDqJNrR
         DLW00xRf6hHXSuEKL4bAyVCUQHNrg28p5qRlh1D4CQ0i0d9WCxXAfDlHJpYZy2ZQEujH
         PBRG8X7HtIItu/2IDobaHafcF138GKk8k0AQevsbeXGWue9WKB//p3vN1v6hd2XQsTfJ
         4/7bIOr7I+7roVe38QKOoo56pyC/lz4CdIxYQ1seWk6ytT7+xbo8n7mK2EsIKhKXijQ2
         g7mf0gQ7AQbaDpWnbe6tmiNMVxGK5B0KXparbT+krWK6wJjD738+yK1Z5EIC9/vktz+y
         uPbQ==
X-Gm-Message-State: AOAM531S/hXhsUx8W7AsxI6NfoIORoVaW8V9eWQsuXx/uZ+HHtXc6khw
        O9Uluuvj3dc7mSNS8vlRdf4sIA==
X-Google-Smtp-Source: ABdhPJyKqFpr5MW3WSKHEzdeBo0mZSQini6a3jugtcFq28ioUcWTEOtVBpkQKMt1YvUY/9Jb3SJZlw==
X-Received: by 2002:a05:6000:1201:: with SMTP id e1mr10350062wrx.298.1637077373724;
        Tue, 16 Nov 2021 07:42:53 -0800 (PST)
Received: from myrica (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id p14sm2742034wms.29.2021.11.16.07.42.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 07:42:53 -0800 (PST)
Date:   Tue, 16 Nov 2021 15:42:32 +0000
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     John Garry <john.garry@huawei.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, robin.murphy@arm.com,
        iommu@lists.linux-foundation.org, uchida.jun@socionext.com,
        leo.yan@linaro.org, will@kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>
Subject: Re: [PATCH 2/2] perf/smmuv3: Add devicetree support
Message-ID: <YZPRaKqfWMJcqaC0@myrica>
References: <20211116113536.69758-1-jean-philippe@linaro.org>
 <20211116113536.69758-3-jean-philippe@linaro.org>
 <0f410098-2a58-9024-9fe4-77fb54b2a076@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0f410098-2a58-9024-9fe4-77fb54b2a076@huawei.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 12:06:36PM +0000, John Garry wrote:
> On 16/11/2021 11:35, Jean-Philippe Brucker wrote:
> > Add device-tree support to the SMMUv3 PMCG.  One small cosmetic change
> > while factoring the option mask printout: don't display it when zero, it
> > only contains one erratum at the moment.
> > 
> > Signed-off-by: Jay Chen <jkchen@linux.alibaba.com>
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> >   drivers/perf/arm_smmuv3_pmu.c | 25 +++++++++++++++++++++++--
> >   1 file changed, 23 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> > index 226348822ab3..958325ac103a 100644
> > --- a/drivers/perf/arm_smmuv3_pmu.c
> > +++ b/drivers/perf/arm_smmuv3_pmu.c
> > @@ -47,6 +47,7 @@
> >   #include <linux/kernel.h>
> >   #include <linux/list.h>
> >   #include <linux/msi.h>
> > +#include <linux/of.h>
> >   #include <linux/perf_event.h>
> >   #include <linux/platform_device.h>
> >   #include <linux/smp.h>
> > @@ -750,8 +751,15 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
> >   		smmu_pmu->options |= SMMU_PMCG_EVCNTR_RDONLY;
> >   		break;
> >   	}
> > +}
> > +
> > +static void smmu_pmu_get_of_options(struct smmu_pmu *smmu_pmu)
> > +{
> > +	struct device_node *node = smmu_pmu->dev->of_node;
> > -	dev_notice(smmu_pmu->dev, "option mask 0x%x\n", smmu_pmu->options);
> > +	if (of_device_is_compatible(node, "hisilicon,smmu-v3-pmcg-hip08"))
> 
> I don't think that this is necessary. We don't support DT for hip08, nor
> have any plans to. Incidentally, was this binding missing in your series?

Ok I'll drop this (and the compatible value from patch 1)

Thanks,
Jean

