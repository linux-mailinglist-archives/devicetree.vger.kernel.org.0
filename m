Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C1543ACB4B
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 14:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231377AbhFRMsI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 08:48:08 -0400
Received: from foss.arm.com ([217.140.110.172]:40202 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230217AbhFRMsI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Jun 2021 08:48:08 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1004F1424;
        Fri, 18 Jun 2021 05:45:59 -0700 (PDT)
Received: from [10.57.9.136] (unknown [10.57.9.136])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 62B1B3F719;
        Fri, 18 Jun 2021 05:45:57 -0700 (PDT)
Subject: Re: [PATCH] iommu: rockchip: Fix physical address decoding
To:     Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
        xxm@rock-chips.com, joro@8bytes.org, dan.carpenter@oracle.com
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@collabora.com
References: <20210618114615.443961-1-benjamin.gaignard@collabora.com>
From:   Robin Murphy <robin.murphy@arm.com>
Message-ID: <461d60d8-c81c-dab9-67b7-62216faef288@arm.com>
Date:   Fri, 18 Jun 2021 13:45:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210618114615.443961-1-benjamin.gaignard@collabora.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2021-06-18 12:46, Benjamin Gaignard wrote:
> Restore bits 39 to 32 at correct position.
> It reverses the operation done in rk_dma_addr_dte_v2().
> 
> Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")
> 
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>   drivers/iommu/rockchip-iommu.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 94b9d8e5b9a40..e55482a477080 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -544,12 +544,13 @@ static inline u32 rk_dma_addr_dte(dma_addr_t dt_dma)
>   }
>   
>   #define DT_HI_MASK GENMASK_ULL(39, 32)
> +#define DTE_BASE_HI_MASK GENMASK(11, 4)
>   #define DT_SHIFT   28
>   
>   static inline phys_addr_t rk_dte_addr_phys_v2(u32 addr)
>   {
>   	return (phys_addr_t)(addr & RK_DTE_PT_ADDRESS_MASK) |
> -	       ((addr & DT_HI_MASK) << DT_SHIFT);
> +	       ((addr & DTE_BASE_HI_MASK) << DT_SHIFT);

I think this still has the problem that you're shifting off the top of 
addr *before* the cast takes effect.

Robin.

>   }
>   
>   static inline u32 rk_dma_addr_dte_v2(dma_addr_t dt_dma)
> 
