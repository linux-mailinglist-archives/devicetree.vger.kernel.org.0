Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26F142E19EB
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 09:27:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728137AbgLWI0O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 03:26:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728118AbgLWI0O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 03:26:14 -0500
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11779C0613D6
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 00:25:34 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id h186so9976504pfe.0
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 00:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=WThy4tT62F3b3zf0PgQRiQWDvTgvmZESA9P7XUtvIQc=;
        b=lm/gAASMc8UZvLfJCPhTrygCJnvjXm/AgIJtR846gqbmtV/Z9xMScDs4z2klDYCZXa
         xitLyUpJQ7GhOJ4B/3K9Bn/OGgr46nwQda0iPJyr/MPDZ/E4Jlfcgu5f3ieDmOgniDjp
         VYvE8Ofugj7cXljMRJQzCHIZhclSCNeJ4ktpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WThy4tT62F3b3zf0PgQRiQWDvTgvmZESA9P7XUtvIQc=;
        b=iHVRe771DRhmbzWyTiuNTCewucm5t7fUW3Y2T7qT7SUlrWgc2BO4eZ+jMzn6CcRK7r
         NQlb+spc8qveiWtsVS9boOgIn6BtqXYCmCqLsc6WJJkYSo9nEs5DEWTQafFbX6uFr5jw
         fleRYDzZps1uChhY5QEmjtYQZnPZX3cKYM6d05yL+u/RWrSUVPH8uasAeE/pn87J7s7o
         rlGZZkRR/8CvQCsIBL4Qyzi6Wo8k0IAv22EAVFvlEkDFOy4ViMJ9BXUmB5Yisgn8xwL+
         NOXeYw6DUHpjCS0Ms002CWx0TmdwUJRtHPcV512WR/cyCA9/GLRoD2hcpMWquXPLGCjR
         0fJg==
X-Gm-Message-State: AOAM533/d5wuPzF2TqxpdH0zCHmH9Yo5DMRX3XEiR7sRHTotLF/X46zl
        i++shUiDMBg9zbKLfCajmxHDPA==
X-Google-Smtp-Source: ABdhPJypg4hGOlyNgx6/zOot9YXwUix2EbRuZvx1p0wnv9B3ytcx7t9ecSD2W9nXEkM/rMgQwZKs4w==
X-Received: by 2002:a05:6a00:1392:b029:1a3:c284:521f with SMTP id t18-20020a056a001392b02901a3c284521fmr23329507pfg.81.1608711933463;
        Wed, 23 Dec 2020 00:25:33 -0800 (PST)
Received: from chromium.org ([2401:fa00:8f:2:a28c:fdff:fef0:43bf])
        by smtp.gmail.com with ESMTPSA id p9sm22298444pjb.3.2020.12.23.00.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 00:25:32 -0800 (PST)
Date:   Wed, 23 Dec 2020 17:25:27 +0900
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
Subject: Re: [PATCH v5 15/27] iommu/mediatek: Add fail handle for sysfs_add
 and device_register
Message-ID: <X+L+97OBxC6I5pUv@chromium.org>
References: <20201209080102.26626-1-yong.wu@mediatek.com>
 <20201209080102.26626-16-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201209080102.26626-16-yong.wu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 09, 2020 at 04:00:50PM +0800, Yong Wu wrote:
> Add fail handle for iommu_device_sysfs_add and iommu_device_register.
> 
> Fixes: b16c0170b53c ("iommu/mediatek: Make use of iommu_device_register interface")
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/iommu/mtk_iommu.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 39478cfbe0f1..09c8c58feb78 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -746,7 +746,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
>  
>  	ret = iommu_device_register(&data->iommu);
>  	if (ret)
> -		return ret;
> +		goto out_sysfs_remove;
>  
>  	spin_lock_init(&data->tlb_lock);
>  	list_add_tail(&data->list, &m4ulist);
> @@ -754,7 +754,16 @@ static int mtk_iommu_probe(struct platform_device *pdev)
>  	if (!iommu_present(&platform_bus_type))
>  		bus_set_iommu(&platform_bus_type, &mtk_iommu_ops);
>  
> -	return component_master_add_with_match(dev, &mtk_iommu_com_ops, match);
> +	ret = component_master_add_with_match(dev, &mtk_iommu_com_ops, match);
> +	if (ret)
> +		goto out_dev_unreg;
> +	return ret;
> +
> +out_dev_unreg:

Shouldn't other operations be undone as well? I can see that above
bus_set_iommu() is set and an entry is added to m4ulist.

> +	iommu_device_unregister(&data->iommu);
> +out_sysfs_remove:
> +	iommu_device_sysfs_remove(&data->iommu);
> +	return ret;
>  }
>  
>  static int mtk_iommu_remove(struct platform_device *pdev)
> -- 
> 2.18.0
> 
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
