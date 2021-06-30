Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E32243B7D5B
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 08:27:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232370AbhF3G3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 02:29:44 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:55752 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232304AbhF3G3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 02:29:44 -0400
Received: from mail-ed1-f70.google.com ([209.85.208.70])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lyTgo-0007FX-LJ
        for devicetree@vger.kernel.org; Wed, 30 Jun 2021 06:27:14 +0000
Received: by mail-ed1-f70.google.com with SMTP id s6-20020a0564020146b029039578926b8cso575585edu.20
        for <devicetree@vger.kernel.org>; Tue, 29 Jun 2021 23:27:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2nkD+uJbpxO3bUeNVNJ06+nPXq3al3hbepVix2nCh4U=;
        b=LImUHt00X3OU/2X+SiUQNmN315Fta5UW40A+Q2klIwSZLpIShcLgg5s5S/bsHnkDu3
         N0RnUTnnkEx5ywyrfP+Eki+zwc9JQ7MmBBBLp8Wa595acjs2QEGevky3QSjk5Z6w1NOk
         ZleELyk4T9JS6BNrvM+IBgsQQ4QYNReCMuiC4Yr4j4gO+D73ZJ2YxNMsZ6HSvgfUW/Hy
         PaLiU2LQ3mQ3DRKHKh7Piw80BOpsmK6/DIBSc4y4La65C1T9bv/oxpno7kOLmEN+1ouw
         lXaHOsHYUG6BuN3mBpea/OkyRU+lnvfIT9blWb378y4tNrRTB/J2XoOsa6FXWZX18mUy
         vK1A==
X-Gm-Message-State: AOAM53373Yfy60BX1DrKrlmXfNY9EGgtBHtZipB9D6Pz5nW59O2GlhZu
        VH1GECZVVqR33y23QzHPncERgf9ecIGxgGLDBIkQc9UJsXiOzZYpl5U1hZIk2Vz797BbVicYhIr
        PPnfFucYYzrT2f/n30gDJmArEOekqMw2izV2eGkg=
X-Received: by 2002:a05:6402:10c3:: with SMTP id p3mr42666271edu.175.1625034434344;
        Tue, 29 Jun 2021 23:27:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxHQKqehToed8G/oeR4lBx7PzBHYBfu1zFW0rHyBt6DYz2r1CNwHTzMzCDFt1S6Up8CIq2JSA==
X-Received: by 2002:a05:6402:10c3:: with SMTP id p3mr42666243edu.175.1625034434224;
        Tue, 29 Jun 2021 23:27:14 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id g8sm2791773edv.84.2021.06.29.23.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 23:27:13 -0700 (PDT)
Subject: Re: [PATCH 02/24] dt-bindings: mediatek: mt8195: Add binding for
 infra IOMMU
To:     Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
        Tomasz Figa <tfiga@chromium.org>,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org, youlin.pei@mediatek.com,
        Nicolas Boichat <drinkcat@chromium.org>, anan.sun@mediatek.com,
        chao.hao@mediatek.com
References: <20210630023504.18177-1-yong.wu@mediatek.com>
 <20210630023504.18177-3-yong.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <24f3e157-da9c-d353-e5ae-5dac9e7d9c1d@canonical.com>
Date:   Wed, 30 Jun 2021 08:27:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210630023504.18177-3-yong.wu@mediatek.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/06/2021 04:34, Yong Wu wrote:
> In mt8195, we have a new IOMMU that is for INFRA IOMMU. its masters
> mainly are PCIe and USB. Different with MM IOMMU, all these masters
> connect with IOMMU directly, there is no mediatek,larbs property for
> infra IOMMU.
> 
> Another thing is about PCIe ports. currently the function
> "of_iommu_configure_dev_id" only support the id number is 1, But our
> PCIe have two ports, one is for reading and the other is for writing.
> see more about the PCIe patch in this patchset. Thus, I only list
> the reading id here and add the other id in our driver.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  .../bindings/iommu/mediatek,iommu.yaml         | 14 +++++++++++++-
>  .../dt-bindings/memory/mt8195-memory-port.h    | 18 ++++++++++++++++++
>  include/dt-bindings/memory/mtk-memory-port.h   |  2 ++
>  3 files changed, 33 insertions(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
