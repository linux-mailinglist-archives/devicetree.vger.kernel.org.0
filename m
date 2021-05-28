Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7177539456F
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 17:54:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234326AbhE1P4N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 11:56:13 -0400
Received: from gloria.sntech.de ([185.11.138.130]:43770 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236778AbhE1P4N (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 May 2021 11:56:13 -0400
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1lmeoi-0005xM-2X; Fri, 28 May 2021 17:54:32 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Frank Rowand <frowand.list@gmail.com>,
        iommu@lists.linux-foundation.org,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Clark <robdclark@gmail.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Yong Wu <yong.wu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 2/2] iommu: Drop unnecessary of_iommu.h includes
Date:   Fri, 28 May 2021 17:54:27 +0200
Message-ID: <4595509.VqM8IeB0Os@diego>
In-Reply-To: <20210527193710.1281746-2-robh@kernel.org>
References: <20210527193710.1281746-1-robh@kernel.org> <20210527193710.1281746-2-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Donnerstag, 27. Mai 2021, 21:37:10 CEST schrieb Rob Herring:
> The only place of_iommu.h is needed is in drivers/of/device.c. Remove it
> from everywhere else.
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Joerg Roedel <joro@8bytes.org>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Marek Szyprowski <m.szyprowski@samsung.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Yong Wu <yong.wu@mediatek.com>
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: iommu@lists.linux-foundation.org
> Signed-off-by: Rob Herring <robh@kernel.org>

> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 7a2932772fdf..bb50e015b1d5 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -21,7 +21,6 @@
>  #include <linux/mm.h>
>  #include <linux/init.h>
>  #include <linux/of.h>
> -#include <linux/of_iommu.h>
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>

for Rockchip:
Acked-by: Heiko Stuebner <heiko@sntech.de>


