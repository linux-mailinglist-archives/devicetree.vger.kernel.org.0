Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76034457537
	for <lists+devicetree@lfdr.de>; Fri, 19 Nov 2021 18:18:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236533AbhKSRVd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 12:21:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236504AbhKSRVd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 12:21:33 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E546DC06173E
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 09:18:30 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 77-20020a1c0450000000b0033123de3425so11072412wme.0
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 09:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2cWGsSmKlCFs5ew+ebonP82aDWnBJL9trxNDLj1zdCE=;
        b=O+p8frO1/7NtFaubO2D4VsliXn84/GE5d8P/f3ZIGVYBten/DRUAEWTTALs9WgQIFR
         vAI31KbWQLpe3n42rTj8iC/ZsyoAuGTzfbV4l/crB/owqn5fTPFLqisM0GLENuxlumAE
         Y0Gw//22zCx8/0QrcC2CfL6RoUTc2zD1LH1wDvp5r8/v0V4YwBYnoW9bjMtPQmkL4jlM
         +Y9imgPftx9AAIABFnEcSHNzjFJKR9HmsvY3nEGcF45EN6Juz3Ls1PVYGi4mmHkzurPb
         87ZQ/EP96htd+47l6kixzqOAj9Y8w2bVql+KDD2jgSCCxJh9zhx8cRoAFAJzuKblA5+t
         IosA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2cWGsSmKlCFs5ew+ebonP82aDWnBJL9trxNDLj1zdCE=;
        b=nsFoDZZj2bj8fix0DyTrdCTJfLmiSmerzJJIdfFHSAraAMFAX+lSZe2Fd6N8ZGyPof
         ARQ46jSAMerC2CGW8KH2I4eEGHUnyQ3fqB+pg6/DoPU9fl4DmLeMjcmMBMT37c475zxp
         WjOcFK9Na8DgYzW8MhfxDa/F1XLNJo4rYKcBEIbf/50hjKaAHHwYCBG88hEbp0ffq6ka
         czYVwYQghOE9xK56jX2Eo2ECTb6DFgPn8OOkvJ5MiNbQE2IW4TBZAQ+1EtgHueO7LQFZ
         YloRYgjv5HhKLi+c/Nk/YHW3LQNn0DLALwLkHE3d9MkrN8rzMcOVG2nwUuIBsE7+GVJW
         VPLQ==
X-Gm-Message-State: AOAM5327tGPRJw/RqDBoRfxBPwqUONP9krWqpEev38lQTNmVp2nVDC4z
        z5mJicA7uaM3wRf2VC4eEVftWg==
X-Google-Smtp-Source: ABdhPJzAnuXw54HPEJ8krG5tljkZvoSUnGUbk5RT4jRRy7oBpBIhlhQqJaYVsMNxWUSo5Zu5f5ifrQ==
X-Received: by 2002:a7b:c8d5:: with SMTP id f21mr1603397wml.146.1637342309507;
        Fri, 19 Nov 2021 09:18:29 -0800 (PST)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id r15sm12029764wmh.13.2021.11.19.09.18.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Nov 2021 09:18:28 -0800 (PST)
Subject: Re: [PATCH 1/6] dt-bindings: nvmem: mediatek: add support bits
 property
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Eddie Hung <eddie.hung@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Yz Wu <yz.wu@mediatek.com>
References: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <9a730cf5-7f92-470a-633d-70d06bb66a0b@linaro.org>
Date:   Fri, 19 Nov 2021 17:18:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 07/11/2021 07:56, Chunfeng Yun wrote:
> Add support bits property, will satisfy more consumers.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>


Applied thanks,

--srini
> ---
> Need convert mtk-efuse.txt into yaml first?
> ---
>   Documentation/devicetree/bindings/nvmem/mtk-efuse.txt | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt b/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> index b6791702bcfc..ec70c5b7a340 100644
> --- a/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> +++ b/Documentation/devicetree/bindings/nvmem/mtk-efuse.txt
> @@ -10,6 +10,7 @@ Required properties:
>   	      "mediatek,mt8192-efuse", "mediatek,efuse": for MT8192
>   	      "mediatek,mt8516-efuse", "mediatek,efuse": for MT8516
>   - reg: Should contain registers location and length
> +- bits: contain the bits range by offset and size
>   
>   = Data cells =
>   Are child nodes of MTK-EFUSE, bindings of which as described in
> 
