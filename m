Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F24F2E19F6
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 09:30:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728113AbgLWI3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 03:29:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728070AbgLWI3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 03:29:51 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39427C061793
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 00:29:11 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id 4so8776061plk.5
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 00:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MtRevYqK8sqR14rLsfzjE387SZOyOC0INohDVQpnu/o=;
        b=eniRj4JCG7HSOxKs+Xv2XOqjiq/o9XyHjwzWVHjAT3jWwP+ldVc0+eWag0AsvRdgC0
         gKt/Phk8yoX6YxQFXZMQfH1IOhgrBGo6PcH7enCXeYyfCdjyr6uDtBLoNshhAEf5stpk
         DtCpy9+9pzrpuXJidDrgorvS03FVLv3M7FSto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MtRevYqK8sqR14rLsfzjE387SZOyOC0INohDVQpnu/o=;
        b=KMl8/grjQFbVXwft1oxBziHpJ9ldkdWhBpSfET19jYzmzN06E+Hc2Xan7pNLJxTWcv
         1C7eWwW9fmMKEIE9TZ5kGzA3m5D/Eh3sF4+OTl/4Jf7iPZhz6pQrqcGx7zu9mThm2HHd
         qJjDwLT3FnI1WK0Yik5vcxXqcHfYUWaQ+7cp515FlyVRkuUjum87tO4oboDM9ydw/Aps
         yXE7HJuyQ/6WUOUbA6ZC7RxOxD5zndMWXG8sg3QRJiNPeh9I3U3wtx73sMWZi0ivjIvC
         +HMZfCoIaXYaP0VeBivucYKOTFKewR1AWgmVA6xtd4Pm+QttyiP9kG4JAco0vB4lR+RH
         VlHg==
X-Gm-Message-State: AOAM532gE0qjopQuGf6rGTrRF47UYoxVe6vWBMQ5ePwM8Qf5T+vvuUci
        fRUDs0UqiMagABu45My8BL0Kpw==
X-Google-Smtp-Source: ABdhPJxwhDWa65ztRldJLKunkdsaTgTcsOr8hUNnOAXF3Z/ppin9ltztXhGaIKLe03R/ZD2nPu+1vw==
X-Received: by 2002:a17:90b:90f:: with SMTP id bo15mr25095694pjb.148.1608712150675;
        Wed, 23 Dec 2020 00:29:10 -0800 (PST)
Received: from chromium.org ([2401:fa00:8f:2:a28c:fdff:fef0:43bf])
        by smtp.gmail.com with ESMTPSA id p17sm11910519pfn.52.2020.12.23.00.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 00:29:09 -0800 (PST)
Date:   Wed, 23 Dec 2020 17:29:04 +0900
From:   Tomasz Figa <tfiga@chromium.org>
To:     Yong Wu <yong.wu@mediatek.com>
Cc:     Joerg Roedel <joro@8bytes.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>, youlin.pei@mediatek.com,
        devicetree@vger.kernel.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        srv_heupstream@mediatek.com, chao.hao@mediatek.com,
        linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
        Tomasz Figa <tfiga@google.com>,
        iommu@lists.linux-foundation.org,
        linux-mediatek@lists.infradead.org,
        Krzysztof Kozlowski <krzk@kernel.org>, anan.sun@mediatek.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 16/27] iommu/mediatek: Add device link for smi-common
 and m4u
Message-ID: <X+L/0E6p9t+a/l5w@chromium.org>
References: <20201209080102.26626-1-yong.wu@mediatek.com>
 <20201209080102.26626-17-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201209080102.26626-17-yong.wu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 09, 2020 at 04:00:51PM +0800, Yong Wu wrote:
> In the lastest SoC, M4U has its special power domain. thus, If the engine
> begin to work, it should help enable the power for M4U firstly.
> Currently if the engine work, it always enable the power/clocks for
> smi-larbs/smi-common. This patch adds device_link for smi-common and M4U.
> then, if smi-common power is enabled, the M4U power also is powered on
> automatically.
> 
> Normally M4U connect with several smi-larbs and their smi-common always
> are the same, In this patch it get smi-common dev from the first smi-larb
> device(i==0), then add the device_link only while m4u has power-domain.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/iommu/mtk_iommu.c | 30 ++++++++++++++++++++++++++++--
>  drivers/iommu/mtk_iommu.h |  1 +
>  2 files changed, 29 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 09c8c58feb78..5614015e5b96 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -20,6 +20,7 @@
>  #include <linux/of_irq.h>
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  #include <linux/slab.h>
>  #include <linux/spinlock.h>
> @@ -706,7 +707,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
>  		return larb_nr;
>  
>  	for (i = 0; i < larb_nr; i++) {
> -		struct device_node *larbnode;
> +		struct device_node *larbnode, *smicomm_node;
>  		struct platform_device *plarbdev;
>  		u32 id;
>  
> @@ -732,6 +733,26 @@ static int mtk_iommu_probe(struct platform_device *pdev)
>  
>  		component_match_add_release(dev, &match, release_of,
>  					    compare_of, larbnode);
> +		if (i != 0)
> +			continue;

How about using the last larb instead and moving the code below outside
of the loop?

> +		smicomm_node = of_parse_phandle(larbnode, "mediatek,smi", 0);
> +		if (!smicomm_node)
> +			return -EINVAL;
> +
> +		plarbdev = of_find_device_by_node(smicomm_node);
> +		of_node_put(smicomm_node);
> +		data->smicomm_dev = &plarbdev->dev;
> +	}
> +
> +	if (dev->pm_domain) {
> +		struct device_link *link;
> +
> +		link = device_link_add(data->smicomm_dev, dev,
> +				       DL_FLAG_STATELESS | DL_FLAG_PM_RUNTIME);
> +		if (!link) {
> +			dev_err(dev, "Unable link %s.\n", dev_name(data->smicomm_dev));
> +			return -EINVAL;
> +		}
>  	}
>  
>  	platform_set_drvdata(pdev, data);
> @@ -739,7 +760,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
>  	ret = iommu_device_sysfs_add(&data->iommu, dev, NULL,
>  				     "mtk-iommu.%pa", &ioaddr);
>  	if (ret)
> -		return ret;
> +		goto out_link_remove;
>  
>  	iommu_device_set_ops(&data->iommu, &mtk_iommu_ops);
>  	iommu_device_set_fwnode(&data->iommu, &pdev->dev.of_node->fwnode);
> @@ -763,6 +784,9 @@ static int mtk_iommu_probe(struct platform_device *pdev)
>  	iommu_device_unregister(&data->iommu);
>  out_sysfs_remove:
>  	iommu_device_sysfs_remove(&data->iommu);
> +out_link_remove:
> +	if (dev->pm_domain)
> +		device_link_remove(data->smicomm_dev, dev);
>  	return ret;
>  }
>  
> @@ -777,6 +801,8 @@ static int mtk_iommu_remove(struct platform_device *pdev)
>  		bus_set_iommu(&platform_bus_type, NULL);
>  
>  	clk_disable_unprepare(data->bclk);
> +	if (pdev->dev.pm_domain)
> +		device_link_remove(data->smicomm_dev, &pdev->dev);
>  	devm_free_irq(&pdev->dev, data->irq, data);
>  	component_master_del(&pdev->dev, &mtk_iommu_com_ops);
>  	return 0;
> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> index d0c93652bdbe..5e03a029c4dc 100644
> --- a/drivers/iommu/mtk_iommu.h
> +++ b/drivers/iommu/mtk_iommu.h
> @@ -68,6 +68,7 @@ struct mtk_iommu_data {
>  
>  	struct iommu_device		iommu;
>  	const struct mtk_iommu_plat_data *plat_data;
> +	struct device			*smicomm_dev;
>  
>  	struct dma_iommu_mapping	*mapping; /* For mtk_iommu_v1.c */
>  
> -- 
> 2.18.0
> 
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
