Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D4CA345C42
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 11:52:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbhCWKwF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 06:52:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbhCWKve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 06:51:34 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF170C061756
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 03:51:32 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id j7so20284740wrd.1
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 03:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+Rm0Eb8opKfQYfpYJDV6Y/tLoSsGpuasG3Yqocn/+wk=;
        b=V460lnV5MQidZ9drlcjju5WKgJWJ4lnAjSvh4/bhA7gqTaBNKu/P50bMFcOlFlrU7g
         3P86p+Fu68NyIPOW6b4N8XvzWPnCOTY6oZwtBN2Wf+NgPRcoOPEXv09i7CGCthKYzz7Q
         +2bT1OTMMIFjDijjUEbJzYNAI2vPkJKcx9en6iPxWyCstDTPrAZK/0H+aaqxy7mtozAY
         50RoU1cq+m0ZD6XgKgFW0T9uHDQvo1V1SjLjjDCd6CRjw8ljVzwPH7DUOTdB5hVFWKQL
         MF7jHtAqOqvXQrpLdx5fWEgKm/rKTmC/YjI/QejxGrLeDYZHCag93xqYU640uNPkcZuZ
         /AUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+Rm0Eb8opKfQYfpYJDV6Y/tLoSsGpuasG3Yqocn/+wk=;
        b=K8hp35sKlsTYFrX1aXYyGr5jpCK+hBOoNlnhPWih5x32d+/M+R7Ijyk9uS3dGe9O/F
         +snZvz5dTjpPgcjTjYP2uQplNMzVugZZMVfj/R0RoK77+I9q0KTAw5f6DaOTs7I9JZ7U
         1GT2AEqWeo+dFScERwLm8mzBIfFJnMAna1MDjtifCMahmqHSltKP4c84c2RpEQ6rTlYb
         M+vZ+gRUMQv9UH6I5Ao25ws5uWnoei77zqh+uMyyzQ0Kki7oZlf5HaNtFipZRHSvg+CP
         jDuRrZuIdpkmjG9rpnqCRy8QleprIZETY2rQxX6MxxjUEvU9OsFQXe9vsduKwx7iSFK/
         2ung==
X-Gm-Message-State: AOAM5334yWH1vvg9koCHvl+lU9NxQhXvkVesBQhUMbj4jllEy0zy8MyN
        zU/p6q0XbPk+VwrNNgZCnH9LkQ==
X-Google-Smtp-Source: ABdhPJyEzvSO/OvPPWnDWPmPBfRqF7mbRvT971F7XWqd4tOlJNGs3xw7PhQkeJHkjfLb3M4W8l8jRg==
X-Received: by 2002:adf:fb0b:: with SMTP id c11mr3314660wrr.425.1616496691557;
        Tue, 23 Mar 2021 03:51:31 -0700 (PDT)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id s16sm22887746wru.91.2021.03.23.03.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 03:51:31 -0700 (PDT)
Date:   Tue, 23 Mar 2021 11:51:13 +0100
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Lu Baolu <baolu.lu@linux.intel.com>
Cc:     joro@8bytes.org, will@kernel.org, lorenzo.pieralisi@arm.com,
        robh+dt@kernel.org, guohanjun@huawei.com, sudeep.holla@arm.com,
        rjw@rjwysocki.net, lenb@kernel.org, robin.murphy@arm.com,
        Jonathan.Cameron@huawei.com, eric.auger@redhat.com,
        iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, jacob.jun.pan@linux.intel.com,
        kevin.tian@intel.com, vdumpa@nvidia.com, zhangfei.gao@linaro.org,
        shameerali.kolothum.thodi@huawei.com, vivek.gautam@arm.com,
        zhukeqian1@huawei.com, wangzhou1@hisilicon.com,
        Ashok Raj <ashok.raj@intel.com>
Subject: Re: [PATCH v13 06/10] iommu: Add a page fault handler
Message-ID: <YFnIIYW0aMdGXuS/@myrica>
References: <20210302092644.2553014-1-jean-philippe@linaro.org>
 <20210302092644.2553014-7-jean-philippe@linaro.org>
 <15ff4704-0fbd-243f-8e49-a9523ae63ce6@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15ff4704-0fbd-243f-8e49-a9523ae63ce6@linux.intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 03, 2021 at 01:27:34PM +0800, Lu Baolu wrote:
> I have tested this framework with the Intel VT-d implementation. It
> works as expected. Hence,
> 
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Tested-by: Lu Baolu <baolu.lu@linux.intel.com>

Thanks!

> One possible future optimization is that we could allow the system
> administrators to choose between handle PRQs in a workqueue or handle
> them synchronously. One research discovered that most of the software
> latency of handling a single page fault exists in the schedule part.
> Hence, synchronous processing will get shorter software latency if PRQs
> are rare and limited.

Yes, the risk is that processing a fault synchronously will take too much
time, leading to PRI queue overflow if the IOMMU keeps receiving page
faults. That's why I opted for the workqueue initially, but it's
definitely something we can tweak

Thanks,
Jean
