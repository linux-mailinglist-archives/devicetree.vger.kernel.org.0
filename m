Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C90B02FD77F
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 18:51:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733014AbhATRs6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 12:48:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728638AbhATRnG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 12:43:06 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B5A7C0613CF
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 09:42:18 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 190so3573635wmz.0
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 09:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=pZAvuSzWG8A+x8RzKRjMwPsRhtgX7L+uhw4FZKkKEI8=;
        b=zRxQYipj+tDx+56ns7Ze3GNaWKe6r/tz7bvAXtpDr91GVvL23yfQ/xtlLzjs05uev+
         8i2EojAZz56kMZbRSsG/r1NPPpNL4NAj++u8i0kgBaNiyH69hhbSuoegPhOYLhxUauZv
         etfzouMcaNK5lq5RxEmqhb2PX5YGBmfeMI8RlHVmAjZZKZXXTJNZ2thv3JRabF/bMAEw
         J9qYUuqu3b6tTyaYVoJ5slZEJIOPOY+gxpF5WoWwq8y8+y5XcjK+GHVG/GusLGXVC5YZ
         iHAxGPlk2txdevnG/Gf8lL5SwtM7ZYUr/Sa4RQL2z4B1dcjM+Y+GJGW0B5+oA5F+akOT
         BOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=pZAvuSzWG8A+x8RzKRjMwPsRhtgX7L+uhw4FZKkKEI8=;
        b=FOY+S3NUTe/o75VPyv2neDVlh+/rJeebGBpI0mlNPlz/8NMt6uQaiIDvUlekOEzRyr
         x7BYypy+hlh8rlVBOpsULFxNYZXCsUo2/Ds7+Xou5ny9I7deL0K8Cl8kJGoZiWsnsEvf
         3YqXIAu1y4VgSmUChFc9XIVYgwaLXsp4mAh4Id5QFitlia9XsVFZYUMEAHYh8wVG8UIt
         KjWIVcLizkGdqCihWQ1+rTotu1C3XTRcUVBBezUQ7l4ys9wLA0tMyptgac5ljcsL6GTO
         maFqqZ4sVCs3yPBCC6/r7TFgkcKkHW76dYchpSKiXD0+JAQnzZI+kZWJxyG68TsIPC5N
         wSTA==
X-Gm-Message-State: AOAM532K2W2Mwv6rttBy12nIJWK1gF0ddu6tFJUhRgwfasAdYxK+PGfn
        aXXXE6ZV5GxbJF9lGF3/eJUwGw==
X-Google-Smtp-Source: ABdhPJxYAzTiX4xwllUpQ3tEmFyP+aMrMd1eNh0vdVqNy275RfGfMG77U9ZkyVaxQJ39df7vXopr2A==
X-Received: by 2002:a1c:2783:: with SMTP id n125mr5360381wmn.74.1611164536579;
        Wed, 20 Jan 2021 09:42:16 -0800 (PST)
Received: from myrica ([2001:1715:4e26:a7e0:116c:c27a:3e7f:5eaf])
        by smtp.gmail.com with ESMTPSA id q9sm5974304wme.18.2021.01.20.09.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 09:42:15 -0800 (PST)
Date:   Wed, 20 Jan 2021 18:41:56 +0100
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
Subject: Re: [PATCH v9 01/10] iommu: Remove obsolete comment
Message-ID: <YAhrZFCog5FiIupd@myrica>
References: <20210108145217.2254447-1-jean-philippe@linaro.org>
 <20210108145217.2254447-2-jean-philippe@linaro.org>
 <20210119111144.00002130@Huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210119111144.00002130@Huawei.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 19, 2021 at 11:11:44AM +0000, Jonathan Cameron wrote:
> On Fri, 8 Jan 2021 15:52:09 +0100
> Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> 
> > Commit 986d5ecc5699 ("iommu: Move fwspec->iommu_priv to struct
> > dev_iommu") removed iommu_priv from fwspec. Update the struct doc.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org
> 
> Hi Jean-Philippe,
> 
> Flags parameter doesn't have any docs in this structure and should
> do given kernel-doc should be complete.  It probably spits out a warning
> for this if you build with W=1

Ah right, I had a patch removing the flags field locally, but I'm not
planning to upstream that one anymore. I don't mind fixing up the comment
in next version.

Thanks,
Jean

> 
> Not sure if it makes sense to fix that in this same patch, or as a different
> one as the responsible patch is a different one.
> Looks like that came in:
> Commit 5702ee24182f ("ACPI/IORT: Check ATS capability in root complex nodes")
> 
> Also, good to get this patch merged asap so we cut down on the noise in the
> interesting part of this series!
> 
> FWIW
> Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> 
> Jonathan
