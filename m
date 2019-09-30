Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1B136C2516
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2019 18:26:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732210AbfI3Q0b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Sep 2019 12:26:31 -0400
Received: from foss.arm.com ([217.140.110.172]:57904 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727767AbfI3Q0b (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Sep 2019 12:26:31 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96E931570;
        Mon, 30 Sep 2019 09:26:30 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3147C3F534;
        Mon, 30 Sep 2019 09:26:29 -0700 (PDT)
Subject: Re: [PATCH 2/2] drm/panfrost: Use coherent pagetable walk on Juno
To:     Robin Murphy <robin.murphy@arm.com>, robh@kernel.org,
        tomeu.vizoso@collabora.com, sudeep.holla@arm.com
Cc:     devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
        liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
 <1e499f85220b735849126171e64ebdd1da0302ce.1569856049.git.robin.murphy@arm.com>
From:   Steven Price <steven.price@arm.com>
Message-ID: <167ec566-1936-8a05-83fc-74d20d9fb8bc@arm.com>
Date:   Mon, 30 Sep 2019 17:26:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1e499f85220b735849126171e64ebdd1da0302ce.1569856049.git.robin.murphy@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2019 16:24, Robin Murphy wrote:
> Although going full "dma-coherent" ends badly due to GEM objects still
> being forcibly mapped non-cacheable, we can at least take advantage of
> Juno's ACE-lite integration to skip cache maintenance for pagetables.
> 
> CC: Rob Herring <robh@kernel.org>
> CC: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> This isn't really meant as a series, I'm just sending it together
> with patch #1 for context.
> 
>  drivers/gpu/drm/panfrost/panfrost_mmu.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> index bdd990568476..560439f63277 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> @@ -365,6 +365,9 @@ int panfrost_mmu_pgtable_alloc(struct panfrost_file_priv *priv)
>  		.iommu_dev	= pfdev->dev,
>  	};
>  
> +	if (of_device_is_compatible(pfdev->dev->of_node, "arm,juno-mali"))
> +		pfdev->mmu->pgtbl_cfg.coherent_walk = true;

Should be:
	mmu->pgtbl_cfg.coherent_walk = true;

Also I'm not sure whether we should do this based on a compatible
string. kbase has a "system-coherency" device-tree flag for it. In
theory we could end up with a long list of compatibles here...

Steve

> +
>  	mmu->pgtbl_ops = alloc_io_pgtable_ops(ARM_MALI_LPAE, &mmu->pgtbl_cfg,
>  					      priv);
>  	if (!mmu->pgtbl_ops)
> 

