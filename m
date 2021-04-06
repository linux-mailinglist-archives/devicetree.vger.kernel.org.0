Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5305E354E35
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 10:02:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235940AbhDFICH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 04:02:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233608AbhDFICH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Apr 2021 04:02:07 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BA44C06174A
        for <devicetree@vger.kernel.org>; Tue,  6 Apr 2021 01:01:59 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id b9so5250501wrs.1
        for <devicetree@vger.kernel.org>; Tue, 06 Apr 2021 01:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=l6nxo53q82s9jFF8yCXZZrdNcQ5A9DZSWcm5GmtmFA0=;
        b=SbBE1QB1LbEE/X6vrKzgWskUD23QC2zC7nnG0k0s03MqGXbNuFBFlqHTKpZPrf36rr
         gdfF6F8BpEP3FHWFUC6H8VhRNbjTkQG8KgaqOSxGBx7DncuyAbBmd7AHSNrb7F1soS6U
         EbCvV1ry8PkKV8qV4W7J1HqpnlOWwES18/B1coP8xIF7Ev0riTJzZXY/xFTB7dcfZNgR
         /wVztKBl6Cxj6u0hzYMp0WNdgQoSe9QkMvMWgFHcbOzAekjWMtpBJ/GEJIVNLghZjd+i
         p/qIGNCinh/zRwMR/vQF3h5vcanwPIlyQVowBJK8CcwG+4S9Y5RFSPxCftiHuxvE27DL
         fOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=l6nxo53q82s9jFF8yCXZZrdNcQ5A9DZSWcm5GmtmFA0=;
        b=tHAAE1yV2OHw8nZTxk8Yhso3ObUNuQ8y0NP6DrJrtjjnL48lls3pCedSNZj77sGmSD
         iVoRJZiu4dHj7GtkKGw7nQhYnDZVseB0kYiGPS9Tl1flrxrglw9toOMxcaZ3Ffvjgt2p
         G5ybxnTu5uo9VoHiZWppCG+iAH0Ngl7cvqjtO8n99zXpKlYc6pK5YwUKU86YL/JmuHzd
         b5/WaOyAOXmeXyil5LmoyW69TWtj4Lrj7OsPEG33oclBkOi1V2CuVRhKLDjPXognQjoj
         S+LyExo3bgq3QsFFli2uGht3T1h9f0hx4zyXM+blWr9QB6gMFksy10iX8MapSwW330g2
         9Deg==
X-Gm-Message-State: AOAM5327T4rtCi3rKBDyALW1LTc8flYMoj0X82vYLjwaIyTHMxTzBihl
        I3fsGNLUaG+dq21ClHLZ8iR3HQ==
X-Google-Smtp-Source: ABdhPJzhRli50lNrS7WlnHzOkeHBK47qTBIwPKWqBK58LCMpLq00FFsdNzmzvYgkzLnXPgKx2ZkRMA==
X-Received: by 2002:a5d:4051:: with SMTP id w17mr4755320wrp.19.1617696117707;
        Tue, 06 Apr 2021 01:01:57 -0700 (PDT)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id t20sm1803704wmi.15.2021.04.06.01.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 01:01:57 -0700 (PDT)
Date:   Tue, 6 Apr 2021 10:01:39 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Will Deacon <will@kernel.org>
Cc:     joro@8bytes.org, lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
        guohanjun@huawei.com, sudeep.holla@arm.com, rjw@rjwysocki.net,
        lenb@kernel.org, robin.murphy@arm.com, Jonathan.Cameron@huawei.com,
        eric.auger@redhat.com, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-accelerators@lists.ozlabs.org, baolu.lu@linux.intel.com,
        jacob.jun.pan@linux.intel.com, kevin.tian@intel.com,
        vdumpa@nvidia.com, zhangfei.gao@linaro.org,
        shameerali.kolothum.thodi@huawei.com, vivek.gautam@arm.com,
        zhukeqian1@huawei.com, wangzhou1@hisilicon.com
Subject: Re: [PATCH v14 00/10] iommu: I/O page faults for SMMUv3
Message-ID: <YGwVY3W4vk6kve3G@myrica>
References: <20210401154718.307519-1-jean-philippe@linaro.org>
 <20210401171501.GC9447@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210401171501.GC9447@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 01, 2021 at 06:15:02PM +0100, Will Deacon wrote:
> On Thu, Apr 01, 2021 at 05:47:09PM +0200, Jean-Philippe Brucker wrote:
> > Add stall support to the SMMUv3 driver, along with a common I/O Page
> > Fault handler.
> > 
> > Since [v13] I added review and ack tags (Thanks!), and a lockdep_assert.
> > It would be good to have all of it in v5.13, since patch 10 introduces
> > the first user for the IOPF interface from patch 6.  But if that's not
> > possible, please pick patches 1-6 so the Vt-d driver can start using
> > them.
> 
> Patches 1-7 look good to me, but I'm not convinced about the utility of
> stalling faults so I'd prefer the later patches to come along with a
> real user.

As others said, it is possible to assign queues from the compression and
crypto accelerators on the Kunpeng920 to userspace, using the uacce char
device (upstream since last year, but waiting for implementations of the
SVA API in IOMMU drivers). I've been using that platform for testing my
code for the past year, with the UADK tool as well as an openssl plugin.

Securely assignig a queue to userspace requires full SVA support in
SMMUv3, which consists of PASID, page table sharing, and I/O page faults.
The first two were already merged, and the third one requires either Stall
or PRI. I'm not submitting PRI support at the moment because there is no
hardware, but the Hisilicon platform implements stall and will be able to
use it right away.

Thanks,
Jean
