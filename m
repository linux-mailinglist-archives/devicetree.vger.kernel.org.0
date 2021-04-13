Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA2E135E21F
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 16:59:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345327AbhDMO65 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 10:58:57 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:58516 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345311AbhDMO6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 10:58:51 -0400
Received: from mail-ej1-f71.google.com ([209.85.218.71])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lWKUp-0005F1-EK
        for devicetree@vger.kernel.org; Tue, 13 Apr 2021 14:58:31 +0000
Received: by mail-ej1-f71.google.com with SMTP id gn30so5155578ejc.3
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 07:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ph9+/mYhqHgYa9Fj9YRroZ2f7XAlKgwCaPOsxelpWRE=;
        b=WU8GEp/u4IyJk7HAmmp9Gmg4jguU+WGs99nsRdeO+FyH30HmeFM3jb6e4J3QDJ5tex
         FATpXojzMbPncU5GSJrBaDexhbn3T8WcPyFy3FHlqiG6jWkJ2kh3ztqKIWdVSHZW6jx+
         cLD7lp7t6aEhzCEBFmg6heoiVEUBXqR9XesS/9ydK7PT3ZVEM6Qde/x1HB/CALdqMhsZ
         zfZG8NNiEjwwU2Ik5C3USnyQ+G2lnLxOvmRsS18Ib4vG49JSSN+h5cdbRODr+ExPqVYS
         kvdnKJtyytWyBnZIpOQ46+ScteIJjoHG0SwFqHh0cpvaNbLWFLbiadwRhl7pxtGnv/Qz
         103w==
X-Gm-Message-State: AOAM533xY0/fHgsoCP83/Sre9V35G8FHhrX2mFECnilJGmYEV8/lsiO1
        kYtrLmOipwSe3dN0RbO/B2rG8rgFFtguBx+TyGC3WSkZyxRqWtvcaL/nSQrBZ/kpq0sNhO6Z8U0
        5YuRKzRP3eOLoZp/ZST6zdFPsu2blbH1C7WnoOpc=
X-Received: by 2002:a17:906:c7ca:: with SMTP id dc10mr13614391ejb.294.1618325910747;
        Tue, 13 Apr 2021 07:58:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwgRCGqwTKY1uXNFzYOC/YmWaq5iHZG/z/5N5f+QW5qWm9hQs1h7yWI+1JNCO0I2BVghLszFQ==
X-Received: by 2002:a17:906:c7ca:: with SMTP id dc10mr13614363ejb.294.1618325910652;
        Tue, 13 Apr 2021 07:58:30 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-192-147.adslplus.ch. [188.155.192.147])
        by smtp.gmail.com with ESMTPSA id p3sm4395217ejd.65.2021.04.13.07.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 07:58:30 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Joerg Roedel <joro@8bytes.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Tomasz Figa <tfiga@chromium.org>, youlin.pei@mediatek.com,
        acourbot@chromium.org, iommu@lists.linux-foundation.org,
        eizan@chromium.org, linux-mediatek@lists.infradead.org,
        yi.kuo@mediatek.com, anan.sun@mediatek.com, chao.hao@mediatek.com,
        Evan Green <evgreen@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Will Deacon <will.deacon@arm.com>,
        linux-arm-kernel@lists.infradead.org, srv_heupstream@mediatek.com,
        ming-fan.chen@mediatek.com, linux-kernel@vger.kernel.org,
        Robin Murphy <robin.murphy@arm.com>,
        Nicolas Boichat <drinkcat@chromium.org>,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v5 00/16] Clean up "mediatek,larb"
Date:   Tue, 13 Apr 2021 16:58:24 +0200
Message-Id: <161832589345.71964.1780926932144222450.b4-ty@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210410091128.31823-1-yong.wu@mediatek.com>
References: <20210410091128.31823-1-yong.wu@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 10 Apr 2021 17:11:12 +0800, Yong Wu wrote:
> MediaTek IOMMU block diagram always like below:
> 
>         M4U
>          |
>     smi-common
>          |
>   -------------
>   |         |  ...
>   |         |
> larb1     larb2
>   |         |
> vdec       venc
> 
> [...]

Applied, thanks!

[04/16] memory: mtk-smi: Add device-link between smi-larb and smi-common
        commit: 6ce2c05b21189eb17b3aa26720cc5841acf9dce8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
