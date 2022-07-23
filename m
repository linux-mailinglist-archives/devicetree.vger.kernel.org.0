Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CAFB57F0A2
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 19:32:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231846AbiGWRcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 13:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231578AbiGWRcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 13:32:54 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BFA513FBD
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 10:32:53 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id k19so8693322lji.10
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 10:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=x/VzrMn8IRoR/XUw2GaIkz6W+3AiZWGAF5ssto6LX8c=;
        b=xgtnl3PPZqZRZyGiYh7t2imdcj4sSnzXczgHwKS8ckUS1IUCukpgRcY9SqKF7LynXi
         puuEHvJ2iLcVMM47QKj/jsDAlUvu6jFI+0TnPjsxr13Q6f/XacJPb9W9jw9RsO7PT1IH
         oEC8gCBQI+AWCpm8CB+Td3p7FLy0kE+5DwxmEIGZVPxsJsNXW40wnHfokUctKLrqle1h
         fpsLl/mpXpS/VeinwjnS3wMeSZQ4AWftDqgw81r7BE8hldMpfN/8KhuO+i2O7ZKQWuQX
         SDyRRcrlO7/ID4hvNtchMJ9vXSBZP/Bvzfq4blcVqaG3glnoFCcbqosqEirGQmTQJwyB
         SVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=x/VzrMn8IRoR/XUw2GaIkz6W+3AiZWGAF5ssto6LX8c=;
        b=szzarJguIHbWClpYEzv4DsJhInpJvNnJqWM3NsA5BowKfOhwYczeYYYD0xiai5phZ4
         GmqtPieoIQnzZOivHhIV3QBRO01Lh8wFPTw5hIlLGL/niDWESr8wQcKrZVtauw2qCwSq
         imI9aaHaHKYBrevEdpAazsJF2USIWmQqSRAfeZjQGsv8ooFNOY632mf1cDS9beeNzwJl
         cHq0YiJswVeH/vsoU1lzN7sBXigsrctTqKqtqm0A1UcNwEdWKz8XJ0HrdLhwTtlyVfGG
         jsfCSpqHo0OehR6xVD/BJ7zKzxuQbPLmIAT9HQcPXIzzXS2mTaCsG8suDTnbGW39gJK9
         sRMw==
X-Gm-Message-State: AJIora8XzAhOEezhGHf/U0tiYr2Q3d9XW0tq7noIpappvnn6i2sIARAw
        rlqbGCEQ6Yu16Mbn4XF1FX8ljg==
X-Google-Smtp-Source: AGRyM1sEVLBhf0FP/hJuoN3w9Mu0qolkvPJs5Kd7aIL1sOqGbzFi73wXw0ZOQDoqGnNjSehK/o0iPg==
X-Received: by 2002:a2e:82c6:0:b0:25d:eef5:8096 with SMTP id n6-20020a2e82c6000000b0025deef58096mr1763269ljh.201.1658597571541;
        Sat, 23 Jul 2022 10:32:51 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id u11-20020a056512128b00b004875a37b7b7sm1736514lfs.159.2022.07.23.10.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 10:32:51 -0700 (PDT)
Message-ID: <875d6856-dea4-e1ff-60b3-706cf00f8bb9@linaro.org>
Date:   Sat, 23 Jul 2022 19:32:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 2/3] memory: mtk-smi: Add enable IOMMU SMC command for MM
 master
Content-Language: en-US
To:     "Chengci.Xu" <chengci.xu@mediatek.com>,
        Yong Wu <yong.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        srv_heupstream@mediatek.com
References: <20220723031955.12552-1-chengci.xu@mediatek.com>
 <20220723031955.12552-3-chengci.xu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723031955.12552-3-chengci.xu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/07/2022 05:19, Chengci.Xu wrote:

Thank you for your patch. There is something to discuss/improve.

>  #endif
> diff --git a/include/soc/mediatek/smi.h b/include/soc/mediatek/smi.h
> index 11f7d6b59642..76093b856335 100644
> --- a/include/soc/mediatek/smi.h
> +++ b/include/soc/mediatek/smi.h
> @@ -8,6 +8,15 @@
>  
>  #include <linux/bitops.h>
>  #include <linux/device.h>
> +#include <linux/arm-smccc.h>
> +#include <linux/soc/mediatek/mtk_sip_svc.h>

The headers do not look like used here. Include only relevant headers.

> +
> +/* IOMMU & SMI ATF CMD */
> +
> +enum IOMMU_ATF_CMD {
> +	IOMMU_ATF_CMD_CONFIG_SMI_LARB,		/* For mm master to en/disable iommu */
> +	IOMMU_ATF_CMD_COUNT,
> +};
>  
>  #if IS_ENABLED(CONFIG_MTK_SMI)
>  


Best regards,
Krzysztof
