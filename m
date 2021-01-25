Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 252F830272D
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 16:50:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730443AbhAYPr1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 10:47:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730440AbhAYPrY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 10:47:24 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6468C06178A
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 07:46:43 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h9so2895509wrr.9
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 07:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=saz5MoILAriaGIGWK/aPOZ/clAw3tEuyZYXwjAIF/h4=;
        b=VS0BjJtjbfWaablRqn0zungdUl/9sUQPgs1HlDBWPi/HhTcQ4V51xv8PhvyQejN99w
         9+mbU0x0Qz+97ncS/+vVjyrbn/4XWyOiMKPd2aNQfYjA61s+wW2L4hJRM/rEYtkixRAW
         UpGDFehmsrz1n/f0ETRjIa/AWnp1vtB06TppHxksWw2dgieejtP2x4iUDSoKDxPShB1Z
         rUUw/zsO6H8E7MUcG2DwcvzrOZG7MUeim0tqlTSehE0ykcFGNnqWEMk1u0k6Drb3JDGd
         1b0fLWtIkFTSeGvMJRM9A3NKbaxGWmGfXiOKFDSip0LbsPEw4F6/E70ADOp1++04L6iw
         KrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=saz5MoILAriaGIGWK/aPOZ/clAw3tEuyZYXwjAIF/h4=;
        b=agfuTMQxxOXdeLJtXDkxjTFz3M02GmVdB4Phh0g2R7rJdq5eei/O08rdtQ+IuPrH+G
         GdmEObWvdVZvtvkILEHnpRjpM3K5sFuhyS3KYLCMfkNDWcFTiBrqhVhS/xlwEBiWROHO
         ZpvrTvj9RaDaDuQwnVRfGlmvgnuNWfBAYun+ic2c6lyAQqOtZpWtA+bWLRWzJhBU0myt
         s/YwJQgvZK8aU5GSqYHRA6nIU/ejH7aKvdOFd3Jr/eegRXSNt8YIPxYezpAHUiHEc7AN
         40zz3osLp82RaS+4Ahk0+ICeeuz7AHvvtYPJIg6K05LdHbuUucKOCkEMdj85CZLo5D05
         WA+w==
X-Gm-Message-State: AOAM530mxZGtzKQslotWUS16isjNVMkAs58T54GtH1KnwmJO9AEgfvxi
        WPt76vAv9TRC1M995UDoDaniBQ==
X-Google-Smtp-Source: ABdhPJzQ1UgRTJEpMAarcXiQ9ehSoyIIoc9yIqhQjtx7Ga46cwKGEdr4iKFHuMclmoLDLgZQw0k+ZA==
X-Received: by 2002:adf:dfce:: with SMTP id q14mr1302807wrn.133.1611589602413;
        Mon, 25 Jan 2021 07:46:42 -0800 (PST)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id r1sm23377838wrl.95.2021.01.25.07.46.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 07:46:41 -0800 (PST)
Date:   Mon, 25 Jan 2021 16:46:22 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc:     joro@8bytes.org, will@kernel.org, lorenzo.pieralisi@arm.com,
        robh+dt@kernel.org, guohanjun@huawei.com, sudeep.holla@arm.com,
        rjw@rjwysocki.net, lenb@kernel.org, robin.murphy@arm.com,
        eric.auger@redhat.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, baolu.lu@linux.intel.com,
        jacob.jun.pan@linux.intel.com, kevin.tian@intel.com,
        vdumpa@nvidia.com, zhangfei.gao@linaro.org,
        shameerali.kolothum.thodi@huawei.com, vivek.gautam@arm.com
Subject: Re: [PATCH v11 10/10] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <YA7nzllIPBahYKCw@myrica>
References: <20210125110650.3232195-1-jean-philippe@linaro.org>
 <20210125110650.3232195-11-jean-philippe@linaro.org>
 <20210125135009.00003ca3@Huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210125135009.00003ca3@Huawei.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 25, 2021 at 01:50:09PM +0000, Jonathan Cameron wrote:
> > +static int arm_smmu_master_sva_enable_iopf(struct arm_smmu_master *master)
> > +{
> > +	int ret;
> > +	struct device *dev = master->dev;
> > +
> > +	/*
> > +	 * Drivers for devices supporting PRI or stall should enable IOPF first.
> > +	 * Others have device-specific fault handlers and don't need IOPF.
> > +	 */
> > +	if (!arm_smmu_master_iopf_supported(master))
> 
> So if we have master->iopf_enabled and this happens. Then I'm not totally sure
> what prevents the disable below running its cleanup on stuff that was never
> configured.

Since arm_smmu_dev_enable_feature() checks that the feature is supported,
iopf_enabled can only be true if arm_smmu_master_iopf_supported() is true.

What's missing is checking that drivers don't disable IOPF while SVA is
enabled - or else the disable below can leak. Another thing I broke in v10 :/

Thanks,
Jean

> 
> > +		return 0;
> > +
> > +	if (!master->iopf_enabled)
> > +		return -EINVAL;
> > +
> > +	ret = iopf_queue_add_device(master->smmu->evtq.iopf, dev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = iommu_register_device_fault_handler(dev, iommu_queue_iopf, dev);
> > +	if (ret) {
> > +		iopf_queue_remove_device(master->smmu->evtq.iopf, dev);
> > +		return ret;
> > +	}
> > +	return 0;
> > +}
> > +
> > +static void arm_smmu_master_sva_disable_iopf(struct arm_smmu_master *master)
> > +{
> > +	struct device *dev = master->dev;
> > +
> > +	if (!master->iopf_enabled)
> > +		return;
> 
> As above, I think you need a sanity check on
> 
> !arm_smmu_master_iopf_supported(master) before clearing the following.
> 
> I may well be missing something that stops us getting here though.
> 
> Alternative is probably to sanity check iopf_enabled = true is supported
> before letting a driver set it.
> 
> 
> > +
> > +	iommu_unregister_device_fault_handler(dev);
> > +	iopf_queue_remove_device(master->smmu->evtq.iopf, dev);
> > +}
