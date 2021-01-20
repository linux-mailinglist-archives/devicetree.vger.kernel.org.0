Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7CCB2FD771
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 18:48:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728862AbhATRqt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 12:46:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390900AbhATRo6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 12:44:58 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A73ABC061786
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 09:44:17 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 190so3578150wmz.0
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 09:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=XBDrkS1oD3yusqtA8y0OBGE63KTKv7F+ZOLzwqVkI2I=;
        b=PdmTfH14kG9PRl6fGS7BmdZgTQAEoANTBqMuycLSr30LXege/CoUiWzaSqCLGm9c0E
         OI5hofRqmHOYjYrnWw5TlLT2waLaHAR/y+gHT0mYHh6UMy4e0XQNPurmj2iVa6jhLXxm
         uLSuG38XTI7ml4u9pnqSDqXE0ULlRCVhq/fJt+40bn7r6BGPSLKVZRvBwKjFwIzSrWC7
         StUUBtbaje0KKajzY/K3QxyN0qRQ2Z2LehH7r9LDgrZWXV8K/7W44Bx65lZ6pmR/0y2W
         eemmnDKNS6i14YBxwZsqnXg4duRbp2D87JDFqo+paL4iFEDj4k1WBs/jW9Vr5C3Kjj/0
         IsAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XBDrkS1oD3yusqtA8y0OBGE63KTKv7F+ZOLzwqVkI2I=;
        b=oT7yLdlz5j9m5HoE98IrxiCmZ8Poz/Wz0HhhDditUdngxE7HNFHAyERUB5JWM5elL6
         0O1evxPI/PkYcm2mWiOVGEnt9I1Sbjdjd67wN+nwrwsamLeQxt1FUyCKCKvRNI1Ushfc
         Ta+U4HHtUtPL2P5gwZrAiYkcZeDnna8kpTx/UE9f7ip9NMGwPZtsQCdajVI9P6Rt5kZQ
         wwcYu1HosvEQKNdvsl6zRU2o3/ePrl/q1nncgFZPWTXqrIiDsmj6n7hq+eV/Sfntod74
         ImL6twfEz1PA/+z5hoDbB7NR/zvTz+4RWk2j/yPxSs0nlDpIOBgtbz00hWZpNat64g3y
         EV2Q==
X-Gm-Message-State: AOAM531tguOlc0SOh1+hdvE47qou7IPO3kX+vu5wzVItmW0B7a4HBumP
        FBKKPmuW2B4Mxc8XbCFI2JTI3w==
X-Google-Smtp-Source: ABdhPJwfZJ22FxfOkxX1mD/qmpstD9sUNv3GPJc1IViT4T+eQrVlLm/n8Bui8NwhbrvqMvOjfSDKmg==
X-Received: by 2002:a7b:c00a:: with SMTP id c10mr5280073wmb.66.1611164656382;
        Wed, 20 Jan 2021 09:44:16 -0800 (PST)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id f68sm5575012wmf.6.2021.01.20.09.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 09:44:15 -0800 (PST)
Date:   Wed, 20 Jan 2021 18:43:55 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc:     joro@8bytes.org, will@kernel.org, lorenzo.pieralisi@arm.com,
        robh+dt@kernel.org, guohanjun@huawei.com, sudeep.holla@arm.com,
        rjw@rjwysocki.net, lenb@kernel.org, robin.murphy@arm.com,
        eric.auger@redhat.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, baolu.lu@linux.intel.com,
        vdumpa@nvidia.com, zhangfei.gao@linaro.org,
        shameerali.kolothum.thodi@huawei.com, vivek.gautam@arm.com
Subject: Re: [PATCH v9 06/10] iommu: Add a page fault handler
Message-ID: <YAhr28EbUNNJt08t@myrica>
References: <20210108145217.2254447-1-jean-philippe@linaro.org>
 <20210108145217.2254447-7-jean-philippe@linaro.org>
 <20210119133819.000015f6@Huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210119133819.000015f6@Huawei.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 19, 2021 at 01:38:19PM +0000, Jonathan Cameron wrote:
> On Fri, 8 Jan 2021 15:52:14 +0100
> Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> 
> > Some systems allow devices to handle I/O Page Faults in the core mm. For
> > example systems implementing the PCIe PRI extension or Arm SMMU stall
> > model. Infrastructure for reporting these recoverable page faults was
> > added to the IOMMU core by commit 0c830e6b3282 ("iommu: Introduce device
> > fault report API"). Add a page fault handler for host SVA.
> > 
> > IOMMU driver can now instantiate several fault workqueues and link them
> > to IOPF-capable devices. Drivers can choose between a single global
> > workqueue, one per IOMMU device, one per low-level fault queue, one per
> > domain, etc.
> > 
> > When it receives a fault event, supposedly in an IRQ handler, the IOMMU
> 
> Why "supposedly"? Do you mean "most commonly" 
> 
> > driver reports the fault using iommu_report_device_fault(), which calls
> > the registered handler. The page fault handler then calls the mm fault
> > handler, and reports either success or failure with iommu_page_response().
> > When the handler succeeds, the IOMMU retries the access.
> 
> For PRI that description is perhaps a bit missleading.  IIRC the IOMMU
> will only retry when it gets a new ATS query.
> 
> > 
> > The iopf_param pointer could be embedded into iommu_fault_param. But
> > putting iopf_param into the iommu_param structure allows us not to care
> > about ordering between calls to iopf_queue_add_device() and
> > iommu_register_device_fault_handler().
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> 
> One really minor inconsistency inline that made me look twice..
> With or without that tided up FWIW.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Thanks! I'll fix these up and resend
Jean

