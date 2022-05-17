Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A3552A4BA
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 16:23:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348858AbiEQOXk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 10:23:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348869AbiEQOXj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 10:23:39 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9576A4F9F2
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:23:37 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id p22so2258913lfo.10
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Lnn8RnWZse55RuB4yg/vu5G7bPymERhSpz38ty/G94A=;
        b=FCgjt+lf9hFi7sB3SJOv43XgmvYxTBFuv1iaHRc4BG+bzmJCFyEIRbbuX7L4KvN6D1
         jZaNpeKuLQIZh/dpKpDJaxcH4kaEHje4Ykc3lHWSRziSPuY8QwGCJud7QM/OoPS6EpVb
         kc5CU3UASpZXUpsJvnh2zCBHk4tAyNZsOcI00zufriY6glGzShgkNNc5ozlAnT5M117f
         WHcVHF+SzeFZ82gNRuZVjqex1jnKBeiVOKRcuk0AxbEqYVEErcSv8AsbQ7LRcMzEw3Qa
         vHWff82Bt/+ba99MkJtVfDbo7fdUDKThMCLfT0oVRAUI1Uc/T7E01TJUepkNX+LO1B4q
         0h/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Lnn8RnWZse55RuB4yg/vu5G7bPymERhSpz38ty/G94A=;
        b=Llb5EuCuq2qv/Nw60m6CiOLEUlx6Fw51Lg5N96+y295uaqKEAjggBnnUcyprq1Gk1M
         VLZasInw5PZkB4sfTCEn7bCKQXlYNxHZBFvwn8FYsWNuW03MQsCjsfdDZ9b3EG3WSNyS
         oiwclbxRznbIGpmLuww3wIj8VCX1ORcvIEIaVNLyFR3KL/SH+RNOQCJRAUuo2jGPNU8D
         N0tJW5jWXuyDG+mNu8iYgoq3rJHrEjSzxA5F0KKVrP2f+KvUc8FI3M0AzxTnW4Xe3nAM
         rZg99xUOFEaxGWc1eYATKhVYyuK3oJqOq2quFenSYO9wziC9dYZLJ0/1BCQm1vKzhs5m
         1HGA==
X-Gm-Message-State: AOAM531pdzMEsSxn+RIyqcvliOqRVg0eh0B7+HbrMuxWpZltzrjbrvGl
        kl4QST7Px/2mcWHRseS4YOOLkA==
X-Google-Smtp-Source: ABdhPJzdrATa4hivK3skT4LaVtlu+jnncbJ7AOzRa56KLicCMPpXG+kCMdTvT8ScBNWmHguDQbZUVw==
X-Received: by 2002:a05:6512:3c9b:b0:472:60d0:ebb0 with SMTP id h27-20020a0565123c9b00b0047260d0ebb0mr17556169lfv.682.1652797417174;
        Tue, 17 May 2022 07:23:37 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q23-20020a2e8757000000b0024f3d1daed4sm1892435ljj.92.2022.05.17.07.23.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:23:36 -0700 (PDT)
Message-ID: <669d68ce-959b-5486-8b1e-316aafa7b52a@linaro.org>
Date:   Tue, 17 May 2022 16:23:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 3/8] dt-bindings: iommu: mediatek: Add mediatek,pericfg
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
 <20220517132107.195932-4-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517132107.195932-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 15:21, AngeloGioacchino Del Regno wrote:
> Add property "mediatek,pericfg" to let the mtk_iommu driver retrieve
> a phandle to the pericfg syscon instead of performing a per-soc
> compatible lookup, as it was also done with infracfg.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml b/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> index 78c72c22740b..a6cf9678271f 100644
> --- a/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> +++ b/Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml
> @@ -116,6 +116,10 @@ properties:
>        Refer to bindings/memory-controllers/mediatek,smi-larb.yaml. It must sort
>        according to the local arbiter index, like larb0, larb1, larb2...
>  
> +  mediatek,pericfg:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"

No need for quotes.


Best regards,
Krzysztof
