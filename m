Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDA7534EF35
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 19:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232329AbhC3RSf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 13:18:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232259AbhC3RSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 13:18:16 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5145C061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 10:18:15 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id u5-20020a7bcb050000b029010e9316b9d5so8833150wmj.2
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 10:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wv5s2hFIUo2gKQ4gDxjTXneaufMswuUrX5PqppLDZlw=;
        b=seDS3AbA2YxPNbqBPGSiqi1kOqb8GqtxtF3q5yGUPHMl1LYormxa50YHLOoSgwqCDW
         5d6MoW+Pws1fvmGJqeXGtRh+udchEEFs0PXDaL+xsUI3W2PRpkxMMPcg3sr1EHiDYOJQ
         EA23RAX+U3yXZ65A3V6zan94Pho1p3fVlmwrVbF7LAQ9ua0EcVcxCTWE2Et65UYpX45O
         Zd5wznq/kir0bQmALsIbGIcMeJbRm9e0tWOY/vSjITj429wVOiULFcgCRU8G/r16D96I
         BjWkLOry9XIGmTIz4QIkexKAzhE7SrJloVxD7zET0HsPEGAw4JTdwMlyQpcZ0Jkkyr/z
         SH4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wv5s2hFIUo2gKQ4gDxjTXneaufMswuUrX5PqppLDZlw=;
        b=QcO/z22Uw+8vbBl/AniVrZr32j86gSFIEw6Izt3fgGKm+1hd9SSOtC0n+uwUF76Srn
         onNrf3LKtfyIuG3WfMacZRHrT4vI4sQ5TSgf5SojiQ3OvWF1ylBvptBeVOEGrtonAtX7
         JiLCdtlb50uO0trAU74CRlA1u8LrYuwumGcR3oMi/mzqf5rnmjPcDJAc5fxWIeFvsSSE
         a+XA/2hLg237WEmXWh5I5ZMXXgew/TY/d5m9jGlv6a6bomj+D9hq7pq2fRtRP6gLfrNX
         Fps7mbXwlcvyK+8t6hLat/Gm0ri+f5w7tLBopuM2d1bqhrJLi7jdwEj8laEifX8ZfGg9
         Zung==
X-Gm-Message-State: AOAM532g/2TxsNUzxNrTfGcidpqxwikRoBLiGm0ZQ9hrasGs7fuZO4p9
        bAWD097FoFU6PbuLG9GbFvks4A==
X-Google-Smtp-Source: ABdhPJxWMhf+gc+wpTtm59XgeUZsbWjnVM7+DjvkPDd2IW2QmwXRwSkIh4AEvc7E/VkGQxzV/6eMNw==
X-Received: by 2002:a7b:c848:: with SMTP id c8mr5130672wml.97.1617124694446;
        Tue, 30 Mar 2021 10:18:14 -0700 (PDT)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id a6sm6542927wmm.0.2021.03.30.10.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 10:18:13 -0700 (PDT)
Date:   Tue, 30 Mar 2021 19:17:55 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     joro@8bytes.org, will@kernel.org
Cc:     lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
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
Subject: Re: [PATCH v13 00/10] iommu: I/O page faults for SMMUv3
Message-ID: <YGNdQ863Mohizx7A@myrica>
References: <20210302092644.2553014-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210302092644.2553014-1-jean-philippe@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Will, Joerg,

On Tue, Mar 02, 2021 at 10:26:36AM +0100, Jean-Philippe Brucker wrote:
> Add stall support to the SMMUv3 driver, along with a common I/O Page
> Fault handler.

I only have review/ack tags and one assert_lockdep to add to this series.
Should I send a v14 now or wait a little longer?  Just making sure we can
get at least patches 1-6 in v5.13.

Thanks,
Jean

