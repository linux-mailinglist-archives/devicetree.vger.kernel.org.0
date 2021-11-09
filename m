Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DFF844AD76
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 13:21:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241979AbhKIMYe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 07:24:34 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:48284 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241497AbhKIMYd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 07:24:33 -0500
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: dafna)
        with ESMTPSA id F1CFE1F44D7E
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
        t=1636460505; bh=icmFwD1DiBfEau8eUnScXn4nA4/iWPq/nH6eQjEm6v8=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=E985wN/8METi/vHeXCu7xQ7uLE6fvI8c5u7OyY5q5m1WILO849kR3+AL3VTBXW+c2
         stcVgAI/mhzmx4XX0wafjqBIh7cTH19y6mOTRN1n15zASFRNzWx6zm9Fbh1a+IpPwA
         9hBmXkt5n8G9m4xZkKXunZRj42g0XoJQDON4U2kBNG2kjQtRCO86eBvcqjeKJLR7J1
         cVqVZtwhYdqTOR25sSXIQ8cg8SF9wCZULE7Do3JLxRLSmz5LzSuG/ek21D5Sg8Ogz2
         RWhc2IzyQCO+eINdUl/w9OeP0WsTuAjIFVWC8c33RXWqurSflpMgSxJpICG6cpW55z
         SuHtylGB+Geuw==
Subject: Re: [PATCH v3 12/33] iommu/mediatek: Always tlb_flush_all when each
 PM resume
To:     Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Tomasz Figa <tfiga@chromium.org>,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org,
        Hsin-Yi Wang <hsinyi@chromium.org>, youlin.pei@mediatek.com,
        anan.sun@mediatek.com, chao.hao@mediatek.com,
        yen-chang.chen@mediatek.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        sebastian.reichel@collabora.com,
        Collabora Kernel ML <kernel@collabora.com>
References: <20210923115840.17813-1-yong.wu@mediatek.com>
 <20210923115840.17813-13-yong.wu@mediatek.com>
From:   Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <c4be1a14-c257-81b7-4a2b-f7e68c32de88@collabora.com>
Date:   Tue, 9 Nov 2021 14:21:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210923115840.17813-13-yong.wu@mediatek.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi
This patch is needed in order to update the tlb when a device is powered on.
Could you send this patch alone without the whole series so it get
accepted easier?
I can resend the patch on your behalf if you want.

Thanks,
Dafna

On 23.09.21 14:58, Yong Wu wrote:
> Prepare for 2 HWs that sharing pgtable in different power-domains.
> 
> When there are 2 M4U HWs, it may has problem in the flush_range in which
> we get the pm_status via the m4u dev, BUT that function don't reflect the
> real power-domain status of the HW since there may be other HW also use
> that power-domain.
> 
> The function dma_alloc_attrs help allocate the iommu buffer which
> need the corresponding power domain since tlb flush is needed when
> preparing iova. BUT this function only is for allocating buffer,
> we have no good reason to request the user always call pm_runtime_get
> before calling dma_alloc_xxx. Therefore, we add a tlb_flush_all
> in the pm_runtime_resume to make sure the tlb always is clean.
> 
> Another solution is always call pm_runtime_get in the tlb_flush_range.
> This will trigger pm runtime resume/backup so often when the iommu
> power is not active at some time(means user don't call pm_runtime_get
> before calling dma_alloc_xxx), This may cause the performance drop.
> thus we don't use this.
> 
> In other case, the iommu's power should always be active via device
> link with smi.
> 
> The previous SoC don't have PM except mt8192. the mt8192 IOMMU is display's
> power-domain which nearly always is enabled. thus no need fix tags here.
> Prepare for mt8195.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>   drivers/iommu/mtk_iommu.c | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 44cf5547d084..e9e94944ed91 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -984,6 +984,17 @@ static int __maybe_unused mtk_iommu_runtime_resume(struct device *dev)
>   		return ret;
>   	}
>   
> +	/*
> +	 * Users may allocate dma buffer before they call pm_runtime_get, then
> +	 * it will lack the necessary tlb flush.
> +	 *
> +	 * We have no good reason to request the users always call dma_alloc_xx
> +	 * after pm_runtime_get_sync.
> +	 *
> +	 * Thus, Make sure the tlb always is clean after each PM resume.
> +	 */
> +	mtk_iommu_tlb_do_flush_all(data);
> +
>   	/*
>   	 * Uppon first resume, only enable the clk and return, since the values of the
>   	 * registers are not yet set.
> 
