Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A9AC52A4B5
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 16:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348839AbiEQOXa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 10:23:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241011AbiEQOX3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 10:23:29 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 853CB43EDF
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:23:28 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id f4so18817510lfu.12
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ipGn43ArCVYSMn5yPdPhdKUiz8DsEnHuPTV/NAb5S1U=;
        b=apRAf5LRhyQBx+UcWihze57kJNIiM2xFRvMG9OphdJu8PIqOaJK/oGO5Yoiexkj0GK
         mXX4PiedRkI/DQON9cqi0NH4B4y1TkLgJs3xDSmiYxVOuUDH1jANMbz4k1FMTUt89iF5
         2TR5pB/3Up6jog61gTNWOZ59/Vgl7w2voFxBAB5ib87jIbmo51FoOva9xDoL/1IlK9fS
         /3+zwcTrdPsN9uS4Rybmrcisfb61xC5ZGxfvdehlSiEFFS7UilsWTqpLYy76CK+1ztkW
         4rHpx4H9I7May0ExD8A3wK+rxCD2qcrTO8bj9GHsKH40+nZP6EMNOwmffDpT5ztMn4ei
         aDpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ipGn43ArCVYSMn5yPdPhdKUiz8DsEnHuPTV/NAb5S1U=;
        b=g3TWoCfckzhZ59xsbwezgeS24ie/0EuCp1URnfbTLw+z8sX2uwT62cx8YTgwPhwnnL
         32hldOmt9dCU3n/KkMzijnKH6fg8tnaBHNmVJAjNOGKk2PAR5JzVRH/7ux7a34qIDWCs
         M4B2bRXWPEOaBmUX4UOTd/cboT1PtAlcdBrULmvDh3g/1R+HC/vdGdg/k16/0vnTBeX2
         CipOWFnqjsDZpqYCnn/jCykbTolibbmBLtz6qBgqdLUwwEysjLTkpHMhHCH8Q/JObgqV
         M9lr2hwTMe/tH7YlOLOzD9jp4eI046vOcDQDip5gP+nI5gxPJx5yGa6MZ6IXlOkNsuil
         XtvQ==
X-Gm-Message-State: AOAM532L5Jv45c5VnKau7yLOetb1i1FM5uKEhAHly8/fBYHqYsq8zQ56
        1JrsZ2IFBaaafNBg1fPHgIMdrQ==
X-Google-Smtp-Source: ABdhPJyxTGAe+zxXWx5gqjGdmE0EbYNh4eGxOG6VrvKZTtMhpkUzJEQKkmWSE3yYd7HYfEC3PnQizQ==
X-Received: by 2002:a05:6512:1086:b0:473:e8ad:c923 with SMTP id j6-20020a056512108600b00473e8adc923mr17233277lfg.463.1652797406927;
        Tue, 17 May 2022 07:23:26 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r27-20020a2eb61b000000b0024f3d1dae80sm1902231ljn.8.2022.05.17.07.23.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:23:26 -0700 (PDT)
Message-ID: <1f259346-0ab1-fff0-7f7c-05f0838a1d59@linaro.org>
Date:   Tue, 17 May 2022 16:23:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/8] dt-bindings: iommu: mediatek: Add mediatek,infracfg
 phandle
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, yong.wu@mediatek.com
Cc:     joro@8bytes.org, will@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        iommu@lists.linux-foundation.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220517132107.195932-1-angelogioacchino.delregno@collabora.com>
 <20220517132107.195932-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517132107.195932-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 15:21, AngeloGioacchino Del Regno wrote:
> Add property "mediatek,infracfg" to let the mtk_iommu driver retrieve
> a phandle to the infracfg syscon instead of performing a per-soc
> compatible lookup.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml b/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> index 2ae3bbad7f1a..78c72c22740b 100644
> --- a/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> @@ -101,6 +101,10 @@ properties:
>      items:
>        - const: bclk
>  
> +  mediatek,infracfg:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"

No need for quotes. They are not present in other places.


> +    description: The phandle to the mediatek infracfg syscon
> +
>    mediatek,larbs:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      minItems: 1


Best regards,
Krzysztof
