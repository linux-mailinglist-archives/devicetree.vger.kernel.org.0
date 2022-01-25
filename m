Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3250949B4EC
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:25:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1576453AbiAYNWG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:22:06 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:44214
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1575829AbiAYNTz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:19:55 -0500
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2809E3F1D0
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 13:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643116780;
        bh=7H+kwmtltVSBKx5eHk33vYDBjpgrbeevYoDgB27H+CI=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=lokDWwC6CE9N/xXzBGFrWAkmoqIQt5tP7uAgs8+EQzRKp0ED6fVN7Yef4QIMOp97s
         jg2KVzr9h3dwoISj8WO9mPnp96YT9boiNcoBnXQO950r8/CZpAlUus8yi8n+LGtF3i
         oAwUTJtNhwVj6iBUj+i1rbjs6IRf911/cqtZE5b8ucyfbVsGZXmCBUnMXAWeRCimE2
         a7sci0pgBRa3gkm4s3ruBSCz60GiTcN+4thtK38rH/XyqgDwSTG7U73L72FA1w96Vu
         F43EV44S/rx6aDf5H44SsC1tvZHxFefhyDagpqG1mjO8BZHwwYzKicBzTViBvqQFcL
         oZNxRZzxV7F5w==
Received: by mail-wr1-f71.google.com with SMTP id w7-20020adfbac7000000b001d6f75e4faeso3063401wrg.7
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 05:19:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7H+kwmtltVSBKx5eHk33vYDBjpgrbeevYoDgB27H+CI=;
        b=Yr5UiIeBICgjLrjlo9dNc4T9QD6HtgOLzf6qDAxwgsl5Brr9WnwBrmD6qFctx4P1xu
         layuT1Un8iDYLLjmGURhAtlvHxSbkddJOyHkUnocryhur/Ed/nlyiWSRktZosDOcBFGf
         ms56nllHDmE6UMiwVP9rSiADsLeg8C9N+W9Bpa2d3Vq2L62udk9ZGMyy59CRLsV2r2+F
         2lLC+HcATqjEJwUabp+YCupM0S4hye9XURbjZ19O/JPLRRET9fGYCyPnMbMyMtni8q9T
         NSeIg2hFcxrDyLqYlBMjKI5ZcbEP8idr4UArXdUO4/iFeqh56OcXiUtS6bTFORkb2pNp
         aVAg==
X-Gm-Message-State: AOAM532Ruu33WAAs8VH0vGXgVK6a1gsu0irAjdslc2e6n3FCZQk4moo/
        237v581zETexls6WoRgHRBJyQi/Z8IfdL+7WXnPhM5P8hFX3ax57inGWPDVmR0NrtkKbX4SYNTX
        Qv3PnkPJC8B1K2XRpelAc6Grezx4S/AGgqvRotnU=
X-Received: by 2002:a1c:4d0e:: with SMTP id o14mr2930704wmh.1.1643116779761;
        Tue, 25 Jan 2022 05:19:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwa5CbjVgAdTzjpJrtsTBt6f96wmnehH2oqiBhJobNl5d/0gRlB/5PGKzta91V9mOV7mtz02w==
X-Received: by 2002:a1c:4d0e:: with SMTP id o14mr2930685wmh.1.1643116779550;
        Tue, 25 Jan 2022 05:19:39 -0800 (PST)
Received: from [192.168.0.57] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id l20sm552432wms.24.2022.01.25.05.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 05:19:38 -0800 (PST)
Message-ID: <9ce18ea8-caed-7d46-8f79-725561429f57@canonical.com>
Date:   Tue, 25 Jan 2022 14:19:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: mediatek: mt8186: Add binding for MM
 iommu
Content-Language: en-US
To:     Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Will Deacon <will@kernel.org>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Tomasz Figa <tfiga@chromium.org>,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org,
        Hsin-Yi Wang <hsinyi@chromium.org>, youlin.pei@mediatek.com,
        anan.sun@mediatek.com, xueqi.zhang@mediatek.com,
        yen-chang.chen@mediatek.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        mingyuan.ma@mediatek.com, yf.wang@mediatek.com,
        libo.kang@mediatek.com, chengci.xu@mediatek.com
References: <20220125093244.18230-1-yong.wu@mediatek.com>
 <20220125093244.18230-2-yong.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220125093244.18230-2-yong.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/01/2022 10:32, Yong Wu wrote:
> Add mt8186 iommu binding. "-mm" means the iommu is for Multimedia.
> 
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  .../bindings/iommu/mediatek,iommu.yaml        |   4 +
>  .../dt-bindings/memory/mt8186-memory-port.h   | 217 ++++++++++++++++++
>  2 files changed, 221 insertions(+)
>  create mode 100644 include/dt-bindings/memory/mt8186-memory-port.h
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
