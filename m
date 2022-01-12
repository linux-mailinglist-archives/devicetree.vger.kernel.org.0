Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A64148C22A
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 11:20:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352478AbiALKUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 05:20:18 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59492
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352477AbiALKUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jan 2022 05:20:17 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7FDC63FFDC
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 10:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641982813;
        bh=ZFiQ3BSkZV8JLMzs5+GiJp8IJAdyEgrG9WjGPcBJ1to=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=POHAO9WikL3dKLKuvnpHW7Y/hRV7+YQASlT4ZX+OiqmhpF8DA21NRXe1IxBrXVrUv
         pVCut8RjKjN7EWPcoxXuJyePNmOv6prGx+xNPTROHX2rtMsf0HDk4PekzvIhzp5Kvd
         ZZSQF9Uq6muts2f8fhpk/7Zp+Zu41PESByl99bLkD3Mo0HbONkqKyclfg2YpEMBl5+
         Ziz/2ZnlWqsIcT4GiCUrNBKe9ijb1gh9k/Kmd99OOjTup1tyd+SsaMV9RuxyiXscUl
         YtzbXHgeIvHHphhqijKdDH73pr3DYR5iejey794cWIXFK8CXsJpqyzpf9onYPw8UJ7
         8tee9+n+Q+f6A==
Received: by mail-ed1-f71.google.com with SMTP id g2-20020a056402424200b003f8ee03207eso1870684edb.7
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 02:20:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZFiQ3BSkZV8JLMzs5+GiJp8IJAdyEgrG9WjGPcBJ1to=;
        b=7k/uaJk7pS/sTN7x/djgpnx0cWlXbtgQgjI3BA3sKtiktJT2HeXrIVET6v5tXD+Jc9
         oIMF8Y7/Mh4buiU27ABOHgIu4blXnE3duEfDMo4e2CvkTJDRZMEm0B5FNlN6V+8bUFo2
         TgHNX+TTxya7KvUGELeu9uMOtkyXdBXj0XwCGD621KSvt4+CqubCTp/PYkLObDoPX/6l
         zW8sp2OBI6EjlH3mnXKMrRa5081Rx9y6RD82+ogt6ZQuqplFhenD/M2pUQYbwIpw8E0b
         zlG5BbxZc8tyflZ250BReexbCMa5wKEyHoz27jNE1hE6Xa+FgkaBux2cEKMboxqpeFp5
         xgjQ==
X-Gm-Message-State: AOAM531UJ0WPj5xtOalZGKlr1F4UOCwH04ko/GxlJ2QUqcbVukYK4FCZ
        5zzVqGcEseZy1+jpF0/x28MfTWhZbvg7TOXoRKiGOM45Y+AkpPmjMlZNeySv29xJyZTOP5B3Q/1
        tl1kbsz4y4lkOmq/a2OEAedm90CvTUDSfWTdIrOc=
X-Received: by 2002:a05:6402:5251:: with SMTP id t17mr8194527edd.397.1641982813181;
        Wed, 12 Jan 2022 02:20:13 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwdLsOYtXRyV8ugt5h8vZw6vPbgwVNs4QQiqNdhIAdlMzEhEhXKY3AjG7bkdFEafgdxVmb/Yw==
X-Received: by 2002:a05:6402:5251:: with SMTP id t17mr8194520edd.397.1641982813026;
        Wed, 12 Jan 2022 02:20:13 -0800 (PST)
Received: from [192.168.0.29] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id kw14sm4349252ejc.68.2022.01.12.02.20.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jan 2022 02:20:12 -0800 (PST)
Message-ID: <a3c48c27-515d-f741-e447-98e0ddfe3b01@canonical.com>
Date:   Wed, 12 Jan 2022 11:20:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 4/6] memory: mtk-smi: Fix the return value for
 clk_bulk_prepare_enable
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
 <20220111063904.7583-5-yong.wu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220111063904.7583-5-yong.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2022 07:39, Yong Wu wrote:
> The successful return value for clk_bulk_prepare_enable is 0, rather than
> "< 0". Fix this.

I do not understand. The commit description does not match the code.
What is the error here?

> 
> Fixes: 0e14917c57f9 ("memory: mtk-smi: Use clk_bulk clock ops")

There is no bug to fix...

> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
>  drivers/memory/mtk-smi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
> index b883dcc0bbfa..e7b1a22b12ea 100644
> --- a/drivers/memory/mtk-smi.c
> +++ b/drivers/memory/mtk-smi.c
> @@ -480,7 +480,7 @@ static int __maybe_unused mtk_smi_larb_resume(struct device *dev)
>  	int ret;
>  
>  	ret = clk_bulk_prepare_enable(larb->smi.clk_num, larb->smi.clks);
> -	if (ret < 0)
> +	if (ret)
>  		return ret;
>  
>  	/* Configure the basic setting for this larb */
> 


Best regards,
Krzysztof
