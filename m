Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 781CC30AB03
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 16:22:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231359AbhBAPVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 10:21:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231664AbhBAPUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 10:20:52 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18722C061573
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 07:20:12 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id q7so16960833wre.13
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 07:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Cmku5S3IdYnPtrqwdeFlSVFh/nDWdiVLKGao8LWxXgA=;
        b=JqbVGM0UCNG3mit9/UZsdLhah1nWurom48htD5nfPqgCrIDKO88AnVFFjgeU8PHGAN
         BW8utbpUX3UzYrG5TduBBHDR0Bykf1U/mPNECk9CAeP2BJ5xU1/maQPp6TdmWvSxp7kY
         YaRWr2KxZf1lmghsWGCPIcwDMqfE9K6FbmmNMq6gHY0Jz8AKQFReCAkxEqamQ7k25E05
         tww76nG6EjFgx1g6ImqskqU/4QT+Wut06Spo5/okwB798IwVUNUls7lmhj5a+eDAZLFh
         piOGzeHarIzIg/xyItedJcc03d6rBcyoHWFaeuijtP9yye49mw6dbw4S7T1r8qkcImZk
         PFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Cmku5S3IdYnPtrqwdeFlSVFh/nDWdiVLKGao8LWxXgA=;
        b=ZLpabAN1RXIjRmWrUs+auW6fUdOFL8NTXoDzQAjzAMDuxezJweoxJU3ycziN0un/tv
         2rxz+QMDt+bTuPp08Bik82H2NMSnkr3ysxulJWA648KIpPkaip47jVStOq01Kxl0krGO
         ePLJ5VIssODCglJef8kW5L9963Jb1fHJmRMZSilgolSiG36xPQKJSstNY1ogILxtYSz8
         bpcI/RwHY/7ZzgEzvEX2/dnJKGGL+/idmMS9NfGJW55wne9oAoLFURD1SLevaCerVFvi
         vMqDSvpDgdvG7W0JET61uprtsc28gh/U3Z3Y5D2D/HKkWMbYg1lfQW2A37PMrJJoMYhH
         6CtA==
X-Gm-Message-State: AOAM532i6M5xyhFX8yAXAXRLSjRtl4rsxA2cZBOm8i7F9MMfb3bPsujO
        F1NGvDidjlfcrPN71T7HRGnZZg==
X-Google-Smtp-Source: ABdhPJxNabzA7H0H3DOfoTeFLSfKWAgMXTatTFFBoCico1yZQV+n2lKonsKcsD7PxZ66kwPkc5AE0w==
X-Received: by 2002:a5d:4528:: with SMTP id j8mr19018125wra.352.1612192810877;
        Mon, 01 Feb 2021 07:20:10 -0800 (PST)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id q6sm25951090wrw.43.2021.02.01.07.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Feb 2021 07:20:09 -0800 (PST)
Date:   Mon, 1 Feb 2021 16:19:50 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Auger Eric <eric.auger@redhat.com>
Cc:     vivek.gautam@arm.com, guohanjun@huawei.com, will@kernel.org,
        lorenzo.pieralisi@arm.com, joro@8bytes.org,
        linux-acpi@vger.kernel.org, zhangfei.gao@linaro.org,
        lenb@kernel.org, devicetree@vger.kernel.org, kevin.tian@intel.com,
        jacob.jun.pan@linux.intel.com, robh+dt@kernel.org,
        Jonathan.Cameron@huawei.com, linux-arm-kernel@lists.infradead.org,
        rjw@rjwysocki.net, shameerali.kolothum.thodi@huawei.com,
        iommu@lists.linux-foundation.org, sudeep.holla@arm.com,
        robin.murphy@arm.com, linux-accelerators@lists.ozlabs.org,
        baolu.lu@linux.intel.com
Subject: Re: [PATCH v12 10/10] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <YBgcFgXQCTEQNowo@myrica>
References: <20210127154322.3959196-1-jean-philippe@linaro.org>
 <20210127154322.3959196-11-jean-philippe@linaro.org>
 <0c609eeb-00b0-7573-fed7-5bc1e6c0b0d1@redhat.com>
 <YBfiIwdVP1dXg7Yt@myrica>
 <47a65f65-26cb-de27-049a-48f2d083964a@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <47a65f65-26cb-de27-049a-48f2d083964a@redhat.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 01, 2021 at 02:16:16PM +0100, Auger Eric wrote:
> >>> +		flt->type = IOMMU_FAULT_DMA_UNRECOV;
> >>> +		flt->event = (struct iommu_fault_unrecoverable) {
> >>> +			.reason = reason,
> >>> +			.flags = IOMMU_FAULT_UNRECOV_ADDR_VALID |
> >>> +				 IOMMU_FAULT_UNRECOV_FETCH_ADDR_VALID,
> >> nit: shall IOMMU_FAULT_UNRECOV_FETCH_ADDR_VALID be set here? Supported
> >> unrecoverable faults feature the IPA field which is UNKNOWN for S1
> >> translations. fetch_addr rather was
> >> corresponding to WALK_EABT.Fetch_addr to me.
> > 
> > Right I should drop the IPA part entirely, since we don't report S2 faults
> > in this patch.
> OK
> 
> But as I mentioned this can be fixed separately if you don't have other
> comments on this version.

Thanks, I need to resend anyway to fix patch 7.

Thanks,
Jean
