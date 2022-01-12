Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C79D648C21F
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 11:18:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352465AbiALKSM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 05:18:12 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:56448
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352456AbiALKSH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 05:18:07 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 08B4D3FFD9
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 10:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641982686;
        bh=aPXjXruDq54PeYQ9iMhjoDG9FDgbk3AB64hbIMorCCc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ZTrjUzUcNPQHYTA0VnqAFc5Mp+WdID8hg3+ypr68JZbAcNIgRfxNgS+5jamS1ZWFD
         pqBy5Ht5E6DycXbt007XSgovfUrRPNfUGEwZcUdd6/Q3tSLeRYDulWU/vryibetTHe
         AQwaX4jg1V7Br7UEwkyDhdAFipfwdC7UBDOgE73NeiCDJcohNstOmB524c1ouhBPZN
         yCHuRzZfKxw3sGV9ecImvCyF9btp6RGsQwYBEEy1ECsbf6sUtEs1nyBw/CLxVDk0WT
         F4EeFA4OvRfaBH8qH2sxTJaJ3MHcMvTxLGiA1AywtZBdiHWuzyXuNxzQqDEpIeuo0C
         AVyQZOHNnFeJA==
Received: by mail-ed1-f69.google.com with SMTP id v18-20020a056402349200b003f8d3b7ee8dso1806809edc.23
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 02:18:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aPXjXruDq54PeYQ9iMhjoDG9FDgbk3AB64hbIMorCCc=;
        b=tf/NcNwbJOCNjHnvl+7ACo/xleL0JHFj+oMzw5vw0rjsFlh+y1Ac03Y/caOWqxS8dO
         iqJLEwI6DOmGrNKZCG70j+DQymg0l+T1ocCXkGaW4Xrou6m60w6tLLv1/oH4CpwkhCcc
         qEeOXGsrdZjx6RPEGeHaB5+lPvKTWT+JzePbvJ7FyNFt3Ja9WmYmrJlFtKQlh/ttvSWl
         isXYvEW5MJ7Mq7hhER59eDPCVQf1E+EGYHn1yEeCgyvzMiT5rp/2ld8ECt/1RnSFLRVb
         UvloKrO6dA/tTB5JWYvo2RkUyhVIFokRy6zf1jxJIS61/iOP6p/GeavjdbbRhFgKnXSI
         JdwQ==
X-Gm-Message-State: AOAM532U29Gkgyu7tAYbhIpjEEqBxnfUBfoQBvsKsCgdOBYKXJF8D4Q7
        UJTgH+FfltWkunWmvQSBVz22XlQUcPraqc+W5i5Hulpy62wgG7fvrelZXzsm03891R0wci/NgGs
        /SN+OvYHDm+O99LAw8dzuKd9xdn0tvcOOcchhLaA=
X-Received: by 2002:a17:906:ecee:: with SMTP id qt14mr471022ejb.133.1641982685614;
        Wed, 12 Jan 2022 02:18:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxkDLUnDXncfLM2SjyZMmYMSSgiKcr4RLjw+16eEj0TVwkNqMlPbJfgszDEo6F90TMvDr8RGQ==
X-Received: by 2002:a17:906:ecee:: with SMTP id qt14mr470995ejb.133.1641982685404;
        Wed, 12 Jan 2022 02:18:05 -0800 (PST)
Received: from [192.168.0.29] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id eb14sm6047322edb.16.2022.01.12.02.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jan 2022 02:18:05 -0800 (PST)
Message-ID: <b8b8fe77-2ea8-d05c-5fa2-d4cae01baba5@canonical.com>
Date:   Wed, 12 Jan 2022 11:18:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 2/6] dt-bindings: memory: mtk-smi: Fix the larb
 clock/clock-names dtbs warning
Content-Language: en-US
To:     Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Tomasz Figa <tfiga@chromium.org>,
        linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux-foundation.org, youlin.pei@mediatek.com,
        anan.sun@mediatek.com, lc.kan@mediatek.com, yi.kuo@mediatek.com,
        anthony.huang@mediatek.com,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
References: <20220111063904.7583-1-yong.wu@mediatek.com>
 <20220111063904.7583-3-yong.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220111063904.7583-3-yong.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2022 07:39, Yong Wu wrote:
> Mute the warning from "make dtbs_check":
> 
> larb@14017000: clock-names: ['apb', 'smi'] is too short
> 	arch/arm64/boot/dts/mediatek/mt8183-evb.dt.yaml
> 	arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dt.yaml
> 	...
> 
> larb@16010000: clock-names: ['apb', 'smi'] is too short
> 	arch/arm64/boot/dts/mediatek/mt8183-evb.dt.yaml
> 	arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dt.yaml
> 
> larb@17010000: clock-names: ['apb', 'smi'] is too short
> 	arch/arm64/boot/dts/mediatek/mt8183-evb.dt.yaml
> 	arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-burnet.dt.yaml
> 
> If a platform's larb supports gals, there will be some larbs have one
> more "gals" clock while the others still only need "apb"/"smi" clocks,
> then the minItems for clock and clock-names are 2.
> 
> Fixes: 27bb0e42855a ("dt-bindings: memory: mediatek: Convert SMI to DT schema")
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  .../bindings/memory-controllers/mediatek,smi-larb.yaml      | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
> index 80907e357892..884c0c74e5e4 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
> +++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.yaml
> @@ -80,10 +80,10 @@ allOf:
>      then:
>        properties:
>          clock:

Separate patch:
This should be clocks. The same in second if. Now it is simply not
working...

> -          items:

Putting min/maxItems under items is wrong. The second if also needs the
fixing. Please make it a separate patch before this one.

The schema was clearly not tested before...


> -            minItems: 3
> -            maxItems: 3
> +          minItems: 2
> +          maxItems: 3
>          clock-names:
> +          minItems: 2
>            items:
>              - const: apb
>              - const: smi
> 


Best regards,
Krzysztof
