Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D425B41431A
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 09:58:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233555AbhIVH7b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 03:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233511AbhIVH7a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 03:59:30 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26C8CC061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 00:58:01 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id g16so4167371wrb.3
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 00:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=pTwG/Hf7HzNaqV1sAamZUStET5SYdFqViNRz8U2mk2E=;
        b=JfJK3l20DCNb/99A9fYyIQXSAIjb+hemWs3MZt9Lhd7rRCqhl7ldE0RvRnE4kMY+In
         Sv8b1tjrG+DnEtRUkh3pQm5JnAZtdlZjXltEbJBeqWMzUtqfKpjPVFZKE532pCg6cAB4
         QRWFaqZwx6La4vUqstVNZ1IvBnfK8NF7OIIpuSXV8gw4FiOsgcu7lpAJ9p0zCV3jQyhy
         BdU5kB2BmLv1sbkms4rl7iNwRtvc1qUiiBwLWO0a4ddmBdxO/BuwmzX7XSkUkvgM7Gf5
         qhXn0ixur6ILuctBUc8vg6qXCD95RX3mnTdBcXo/VspJZar8yuJaiAKBkPQ827Dq/uDN
         59cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=pTwG/Hf7HzNaqV1sAamZUStET5SYdFqViNRz8U2mk2E=;
        b=5jQCpa8zgDDYOYIdLzod7IhIQgO4gUAfh5dXQVrnVq8uNkdxymS3eXj/HWHUN+Uhtu
         i7HEfK+izri6zSLKhH06oqzSqFOdtdGshh8wsg6tBcL23eHf6PLDkMqZ3VkxMwHZmRhM
         MIVeaQA77dVmQVs+Ly9KMyBr64O+qQKDavt36lbrXPFHCRKAfB15vAtnNvnb9maHL9P8
         pzJrmrgyWlJObHeTAJKi5DZZG05uZ1+pit8WUuM8MYYRBq7pPdJuxeHffTXtFWQHmsTi
         da8+TEtNu2N8nRlQ54jdWBFd2ABLanK8yl9Y41Nw+nobogpqmcGq9o+pttYtLp2A8hch
         yobg==
X-Gm-Message-State: AOAM533R58c1f6OUUEy8qyY1tYljK3em+QzA8tGuAtXuvxu+KOFWwPB6
        rl8HGLAjl47l+wIv0AM5D435JA==
X-Google-Smtp-Source: ABdhPJzMhlF+CnvZ3h2+XCxqTxQb7Zb12UPZb5Ead7lHJdRW9ES/PA6ks9vw03Mu0Ij8gWaCLXDREQ==
X-Received: by 2002:a1c:7f11:: with SMTP id a17mr9009019wmd.166.1632297479781;
        Wed, 22 Sep 2021 00:57:59 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id v8sm1348824wrt.12.2021.09.22.00.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 00:57:59 -0700 (PDT)
Date:   Wed, 22 Sep 2021 08:57:57 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-phy@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
Message-ID: <YUriBVIH/n0p2H+D@google.com>
References: <20210913080024.6951-1-zajec5@gmail.com>
 <20210913080024.6951-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913080024.6951-3-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Sep 2021, Rafał Miłecki wrote:

> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Northstar's USB 2.0 PHY is part of the CRU MFD.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/mfd/brcm,cru.yaml         | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
