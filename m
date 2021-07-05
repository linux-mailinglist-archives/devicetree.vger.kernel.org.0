Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8292A3BBC54
	for <lists+devicetree@lfdr.de>; Mon,  5 Jul 2021 13:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231279AbhGELnG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jul 2021 07:43:06 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:56600 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231247AbhGELnG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jul 2021 07:43:06 -0400
Received: from [IPv6:2a01:e0a:4cb:a870:e614:ab69:6d29:3012] (unknown [IPv6:2a01:e0a:4cb:a870:e614:ab69:6d29:3012])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: benjamin.gaignard)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C82701F42CA4;
        Mon,  5 Jul 2021 12:40:26 +0100 (BST)
Subject: Re: [PATCH v2] iommu: rockchip: Fix physical address decoding
To:     will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
        xxm@rock-chips.com, robin.murphy@arm.com, joro@8bytes.org,
        dan.carpenter@oracle.com
Cc:     iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@collabora.com
References: <20210618130047.547986-1-benjamin.gaignard@collabora.com>
From:   Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <e2c3d5c2-3f45-90b9-1b55-54df133a952f@collabora.com>
Date:   Mon, 5 Jul 2021 13:40:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210618130047.547986-1-benjamin.gaignard@collabora.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Le 18/06/2021 à 15:00, Benjamin Gaignard a écrit :
> Restore bits 39 to 32 at correct position.
> It reverses the operation done in rk_dma_addr_dte_v2().
>
> Fixes: c55356c534aa ("iommu: rockchip: Add support for iommu v2")
>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Gentle ping on this patch :-)

Regards,
Benjamin

> ---
>   drivers/iommu/rockchip-iommu.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 94b9d8e5b9a40..9febfb7f3025b 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -544,12 +544,14 @@ static inline u32 rk_dma_addr_dte(dma_addr_t dt_dma)
>   }
>   
>   #define DT_HI_MASK GENMASK_ULL(39, 32)
> +#define DTE_BASE_HI_MASK GENMASK(11, 4)
>   #define DT_SHIFT   28
>   
>   static inline phys_addr_t rk_dte_addr_phys_v2(u32 addr)
>   {
> -	return (phys_addr_t)(addr & RK_DTE_PT_ADDRESS_MASK) |
> -	       ((addr & DT_HI_MASK) << DT_SHIFT);
> +	u64 addr64 = addr;
> +	return (phys_addr_t)(addr64 & RK_DTE_PT_ADDRESS_MASK) |
> +	       ((addr64 & DTE_BASE_HI_MASK) << DT_SHIFT);
>   }
>   
>   static inline u32 rk_dma_addr_dte_v2(dma_addr_t dt_dma)
