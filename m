Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9784575C74
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 09:34:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbiGOHea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 03:34:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232090AbiGOHeP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 03:34:15 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C76512ADE
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 00:34:12 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id bf9so6465923lfb.13
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 00:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TA5hj5LY9TtMU86mVjQzKjchWlgrykmSYMSLGFhDRLI=;
        b=GMLdwZdscB3EVWWQJArsx6d/B5HTsSL0X+YyJqJvwd/YISkCGh8eTxRsF7sx+/6Rqk
         vccRH5iciobLCat0H8mQHRB4/daOK9clx7e7zY+qk5o//z50AoX8XNJdR3v40LhXPwZd
         0nnIi2GxiO3DASoJAvpdixcNDWSaZ8qukpbjRfkmWzmxkX2KIpPCBN7muIZQN4hSRflz
         ZhrZMHeMZYj/U0hc0Q994nc0G9v3jsI2W0C2fukcZwIwP4l8K1WBdWVl/VyIGhQTztp9
         iEtO8BP3lyKyDxCSLzdMDOitfwtTyp6jo01eZddW9nEsF1S/Uc4SCeWQrIKcEB34Aq7u
         vB1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TA5hj5LY9TtMU86mVjQzKjchWlgrykmSYMSLGFhDRLI=;
        b=R6S9B8UtS1nEzNh0yEvzbcnDLnj8IltxT3HGtVhzZhWuCqt8UCI24qgViw0lRT450k
         zYuWW7H/K6foUFHkky8BF9T3qUBNmMTVbXosP76iF9rCByQyLIYXlKxt+FtbDYhz0QXi
         TRC1pwyJ8+LiHg70oaaBulT/9tuwP4Cow4xAD6A46XIhfV6eBFqd8+oUq3grDV39Yyvw
         9MV+RijB9nWD0d4i1hfeZnsjGAgxHm6MBrkJ6l7CdfIm2UpODjU2GoxiDLEWrX+j9rYf
         y1h1xFjagPYaklPFl4yAmT8g/NP+h1Rfpvs1/F/y1gFdvK0x8XGw6mypd2nxyqIX4gGk
         50GQ==
X-Gm-Message-State: AJIora9SCMGlLwXF0IcRA+w6gNO4MbTkZSwdPv1LgK76G7dKjbFEtmiu
        3jwci0Mw+CHFlxd94/kfsL2cs1DkgmroOw==
X-Google-Smtp-Source: AGRyM1tH5bnYQivH0Q5JPcptYdImDfGxTQXL34OhB5o30DvQgYbjSK4eEJREJEcjGz6RCB/F8X5kLg==
X-Received: by 2002:a05:6512:478:b0:47f:86f2:811f with SMTP id x24-20020a056512047800b0047f86f2811fmr6974156lfd.305.1657870450856;
        Fri, 15 Jul 2022 00:34:10 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id u5-20020a196a05000000b00473c87152bcsm769756lfu.127.2022.07.15.00.34.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 00:34:10 -0700 (PDT)
Message-ID: <18cb5b0a-b096-6056-10c8-9df76db820f0@linaro.org>
Date:   Fri, 15 Jul 2022 09:34:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 01/19] dt-bindings: iommu: mediatek: Increase max
 interrupt number
Content-Language: en-US
To:     Tinghan Shen <tinghan.shen@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        MandyJH Liu <mandyjh.liu@mediatek.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Cc:     iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220714122837.20094-1-tinghan.shen@mediatek.com>
 <20220714122837.20094-2-tinghan.shen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220714122837.20094-2-tinghan.shen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2022 14:28, Tinghan Shen wrote:
> mt8195 infra iommu uses 5 interrupts.
> 
> Signed-off-by: Tinghan Shen <tinghan.shen@mediatek.com>
> ---
>  .../devicetree/bindings/iommu/mediatek,iommu.yaml    | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml b/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> index fee0241b5098..53e712cd0d21 100644
> --- a/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> @@ -91,7 +91,8 @@ properties:
>      maxItems: 1
>  
>    interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 5
>  
>    clocks:
>      items:
> @@ -191,9 +192,18 @@ allOf:
>                const: mediatek,mt8195-iommu-infra
>  
>      then:
> +      properties:
> +        interrupts:
> +          maxItems: 1
> +
>        required:
>          - mediatek,larbs
>  
> +    else:
> +      properties:
> +        interrupts:
> +          minItems: 5

You need to list/describe the items.

Best regards,
Krzysztof
