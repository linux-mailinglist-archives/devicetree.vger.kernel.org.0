Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18FC92E19DA
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 09:17:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727971AbgLWIQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 03:16:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727670AbgLWIQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 03:16:26 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F5AC0613D3
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 00:15:46 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id d2so9933988pfq.5
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 00:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=XucMaRIeMybHCwI/S50c0P9P/PzyTr/MY7GdCt6gQ/Q=;
        b=aZzdXz0SBtVFnO7PRB2b7RV7mkqwrJBV3MhQ+S6S1rTiukgrEzwXVuVmBglEF6tyx7
         sUMj4R7PThczRRpPOGxwzIDDnG8jhFuhzW11Y/PwPYVvWY8B1h6o1bjgby2jsWczSAK/
         SrYuIgiezft8tCl9+en1fO6d6CqE4ft75I0eg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XucMaRIeMybHCwI/S50c0P9P/PzyTr/MY7GdCt6gQ/Q=;
        b=S5DjXeG2KwRPsHrQvh1fTgYEI45wjW2rGLOGZh7Z5coCN0L0+RU/2tA9xD+15eihAM
         xzaRTnGCURI3qN3HKDKQkRLkEsWMCNZV4NCNNzlDfo78tEu04ZlDbuuOcq3T7dJPUCNt
         u+3K16AIVi0HzvodpwYFxm+iBEQXPg+0ldpFfOMXqbQ0WlWVhX6mp8YnnTTzjAH4T7Zm
         sNCtB/56H5NHjqLPuGkBDt1dUtvqXtMgdsOx/tAZkMG2sFOuNG0gizlYu50LTkHI5AzH
         eMmYgatI0JFPALeON6cmaCC6+nYYe69Q18PZS3S7uFLb4OV3gLYPUSXYWDlJDuNvTAs5
         q44Q==
X-Gm-Message-State: AOAM532WtSvXZSuq3N+9AFlTtdgMWnJjPdG3fEXuvXk+pn4daWNAldoH
        FW0Mty8K+JIaSNaS7I+WLe8ptw==
X-Google-Smtp-Source: ABdhPJyifhZqLvN5ckPbaOURCHzmY+l/YaYK8cbQmz0WktjwzfkVze0lIG/pGDQESzamQk6LNGPbAA==
X-Received: by 2002:a63:f12:: with SMTP id e18mr23981690pgl.101.1608711345895;
        Wed, 23 Dec 2020 00:15:45 -0800 (PST)
Received: from chromium.org ([2401:fa00:8f:2:a28c:fdff:fef0:43bf])
        by smtp.gmail.com with ESMTPSA id z11sm21421970pjn.5.2020.12.23.00.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 00:15:45 -0800 (PST)
Date:   Wed, 23 Dec 2020 17:15:38 +0900
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
Subject: Re: [PATCH v5 04/27] dt-bindings: memory: mediatek: Add domain
 definition
Message-ID: <X+L8qpO+T7+U2s5r@chromium.org>
References: <20201209080102.26626-1-yong.wu@mediatek.com>
 <20201209080102.26626-5-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201209080102.26626-5-yong.wu@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Yong,

On Wed, Dec 09, 2020 at 04:00:39PM +0800, Yong Wu wrote:
> In the latest SoC, there are several HW IP require a sepecial iova
> range, mainly CCU and VPU has this requirement. Take CCU as a example,
> CCU require its iova locate in the range(0x4000_0000 ~ 0x43ff_ffff).

Is this really a domain? Does the address range come from the design of
the IOMMU?

Best regards,
Tomasz

> 
> In this patch we add a domain definition for the special port. In the
> example of CCU, If we preassign CCU port in domain1, then iommu driver
> will prepare a independent iommu domain of the special iova range for it,
> then the iova got from dma_alloc_attrs(ccu-dev) will locate in its special
> range.
> 
> This is a preparing patch for multi-domain support.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  include/dt-bindings/memory/mtk-smi-larb-port.h | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/memory/mtk-smi-larb-port.h b/include/dt-bindings/memory/mtk-smi-larb-port.h
> index 7d64103209af..2d4c973c174f 100644
> --- a/include/dt-bindings/memory/mtk-smi-larb-port.h
> +++ b/include/dt-bindings/memory/mtk-smi-larb-port.h
> @@ -7,9 +7,16 @@
>  #define __DT_BINDINGS_MEMORY_MTK_MEMORY_PORT_H_
>  
>  #define MTK_LARB_NR_MAX			32
> +#define MTK_M4U_DOM_NR_MAX		8
> +
> +#define MTK_M4U_DOM_ID(domid, larb, port)	\
> +	(((domid) & 0x7) << 16 | (((larb) & 0x1f) << 5) | ((port) & 0x1f))
> +
> +/* The default dom id is 0. */
> +#define MTK_M4U_ID(larb, port)		MTK_M4U_DOM_ID(0, larb, port)
>  
> -#define MTK_M4U_ID(larb, port)		(((larb) << 5) | (port))
>  #define MTK_M4U_TO_LARB(id)		(((id) >> 5) & 0x1f)
>  #define MTK_M4U_TO_PORT(id)		((id) & 0x1f)
> +#define MTK_M4U_TO_DOM(id)		(((id) >> 16) & 0x7)
>  
>  #endif
> -- 
> 2.18.0
> 
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
