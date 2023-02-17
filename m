Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 544C269A80C
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 10:23:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbjBQJXl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 04:23:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229765AbjBQJXk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 04:23:40 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34B935CF1A
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 01:23:39 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id ez12so1899950edb.1
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 01:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1uhXWC5aUog2B3MifbzjgvTuIZZSneoOYENLVLF/lKo=;
        b=chKsPtB2hT8iQd0O3UAtAE7NwizW0neSxB7B7EZwVa3mYLn0K1FcBNjdDKkUNi/rY7
         6Ib1WaGIu+wGXltyhaFqmjH0cXGQsq0ZzT2buGbSUgs2IG0Dd8sUWjQT1uIIT3V2CXf4
         Pz+eYhFnz/IU927IhztkWlsp0ucMgWhusahIc5sEyW6IbDd5i8RjUxHXElXJgdeMS5xv
         kl6xIMSb4dILHSFFuLnMcehWArNGYohQoc6UsdNKUF03qFZaDfwpMfJXjv5A0SuVIhVu
         ecNo5OI2lELoSVgwN870+3hoDnbZpDvLC0fBYFqGlQJ2le7qPg0lqwK83mpPu1SRCUvR
         aZfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1uhXWC5aUog2B3MifbzjgvTuIZZSneoOYENLVLF/lKo=;
        b=P61GYpY9yECM59/E3wG4mgz/IZg9GvdgTx04E9ngSXDxabZjg0Rz87asf9nS/jdYzt
         6AajZRhYUHuI8NAZtknbQTCqdWLPeCa8c7VllU26JL4sJmH5qYriSM27E4FEZI//PPcG
         RrmwA2vDri+y7mUSP4YitFFEMSBttpmYayTpBDt7bUyIoArMTQ+ircExMobbSmvQhsKV
         tizBkhIMYL5ePnHOKO3dV+SNgsbK0uDA8euRL0xhI89GLMQAiEFsBYhafwfX4mz/KfSm
         u3tj+kTdyEbHgDhiyIpWHuTc+xcqgdG/Ih4nu4l4SR3XuXWv19K/rTEV8uNSXviBMqNS
         yA/Q==
X-Gm-Message-State: AO0yUKXkx1TozbrMuaJL/kS/K7glLKYOZaG1M6cdCBMJAm0z8pKI1xDL
        EMACZNDWKMGVg7YrZN+It7XX7w==
X-Google-Smtp-Source: AK7set917pjRrPajgtaJkUtWkGOkMBJyKzJs5QyJgmH71D2U+yOlZOHZsD2RSv78b/Ft7In+yuB16w==
X-Received: by 2002:aa7:cd51:0:b0:4ac:b32e:b6f with SMTP id v17-20020aa7cd51000000b004acb32e0b6fmr104366edw.23.1676625817729;
        Fri, 17 Feb 2023 01:23:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x29-20020a50d61d000000b0049e1f167956sm2000726edi.9.2023.02.17.01.23.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 01:23:37 -0800 (PST)
Message-ID: <08b993f9-f998-14c8-221a-a0b80ac5d342@linaro.org>
Date:   Fri, 17 Feb 2023 10:23:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v7 1/6] dt-bindings: mediatek: mt8188: Add binding for MM
 & INFRA IOMMU
Content-Language: en-US
To:     Yong Wu <yong.wu@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, iommu@lists.linux.dev,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        mingyuan.ma@mediatek.com, yf.wang@mediatek.com,
        jianjiao.zeng@mediatek.com, chengci.xu@mediatek.com,
        youlin.pei@mediatek.com
References: <20230216053322.11596-1-yong.wu@mediatek.com>
 <20230216053322.11596-2-yong.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230216053322.11596-2-yong.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 06:33, Yong Wu wrote:
> From: "Chengci.Xu" <chengci.xu@mediatek.com>
> 
> Add descriptions for mt8188 IOMMU which also use ARM Short-Descriptor
> translation table format.
> 
> In mt8188, there are two smi-common HW and IOMMU, one is for vdo(video
> output), the other is for vpp(video processing pipe). They connects
> with different smi-larbs, then some setting(larbid_remap) is different.
> Differentiate them with the compatible string.
> 
> Something like this:
> 
>   IOMMU(VDO)          IOMMU(VPP)
>       |                   |
> SMI_COMMON_VDO      SMI_COMMON_VPP
> 
> ---------------     ----------------
>   |     |    ...      |     |    ...
> larb0 larb2  ...    larb1 larb3  ...
> 
> We also have an IOMMU that is for infra master like PCIe.
> And infra master don't have the larb and ports.
> 
> Signed-off-by: Chengci.Xu <chengci.xu@mediatek.com>
> Reviewed-by: Yong Wu <yong.wu@mediatek.com>
> ---
> Hi Krzysztof,
> I added some comment about larbid index, this is for readable when
> adding iova_region_larb_msk in the code.
> I'm not sure if it is ok for you, thus don't keep your A-b currently.
> Thanks.
> ---
>  .../bindings/iommu/mediatek,iommu.yaml        |  12 +-
>  .../memory/mediatek,mt8188-memory-port.h      | 489 ++++++++++++++++++
>  2 files changed, 500 insertions(+), 1 deletion(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

