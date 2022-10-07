Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67BE15F74A7
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 09:25:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229854AbiJGHZL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 03:25:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbiJGHZK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 03:25:10 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A4073A156
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 00:25:08 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id f37so6037886lfv.8
        for <devicetree@vger.kernel.org>; Fri, 07 Oct 2022 00:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=z6pbeOdotLRHHyLhHXUxZEFAlmYdp5RIPKSKkUaT36I=;
        b=kWfYkegF/+NHSvikV88fmsB5HHGNrSmdsbvrlTz+ZjHyvsTnFHTHErFlERfNG4k+mX
         iXEV5AmyM6hlAKwP9J62BWOrqMCDJ11vqIWOx3qBQJ73nvuy4/4nGEwbFjtg99qZLFUD
         5YxJFG8AGtHAiOr2F+fh1i6CKLV81PHMY0PDq1nrfeRxWm9+ySayR865kxIjGHDoWkMg
         YeOBn0+1m2t1a56kyIq7EMWZYkrf7Vixenscdlz9WOaXSwQQMq0utTS0VOEDKTHtdhl2
         yzqG2R74Nq3zEQZqLpKKVRCN1Wb0oZ4yEDgQGJDuD36I9woMxY1p+/LJNE72rey95LPe
         GtyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=z6pbeOdotLRHHyLhHXUxZEFAlmYdp5RIPKSKkUaT36I=;
        b=wwmqrwvn5PZNCHAbWhU+zTm2YmxOqc9BdIag7+G90k+0PRENaQumYio+r3wxqBRCFq
         bfFsw5uGmcwJy/QEGC3QmohoCsnnhSb5561Twjed9snm30W2PnPdIdMoovlu+gs2V0TR
         XZ26iovxPrIukMd5YjZ8zL9et35BNfFmRJhEbFuVq7kz7AtXVTFB40loEfIpWG+eNCcu
         FeKdWibsORYOfmRRgeKeSlQgg+3VAbTS5b9m6FOU9IkCDnIrbv/NgBTx6VABVeRJl9wb
         Lyt1Ac/11GWfNltfEeUeyXEDE/bY4VRYW2iYwMVrYYBuFzUw8t6UayWpFe2X5mU4r5cM
         dxMw==
X-Gm-Message-State: ACrzQf3/Swq3FxLqx7NbbnRtNvpwUf16CsnWtmbpPMo9GItd/9cM/Vn9
        AOu0c0/zVF+vbSRtHy66CDRjEA==
X-Google-Smtp-Source: AMsMyM7SxRlA7vcJhHDTJ/TZj8w8L3BIV84OHGGZg8Q4LrVBRLncdVeqKKKFwQSWXpyYZn2PkGvmkw==
X-Received: by 2002:ac2:4e03:0:b0:485:74c4:97ce with SMTP id e3-20020ac24e03000000b0048574c497cemr1273773lfr.13.1665127507027;
        Fri, 07 Oct 2022 00:25:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g6-20020a056512118600b00492dadd8143sm182607lfr.168.2022.10.07.00.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 00:25:06 -0700 (PDT)
Message-ID: <e9fe9674-8b33-dd6f-2db4-1ea4ed8d17af@linaro.org>
Date:   Fri, 7 Oct 2022 09:25:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 5/8] dt-bindings: watchdog: mediatek: Convert mtk-wdt to
 json-schema
Content-Language: en-US
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, nfraprado@collabora.com
Cc:     angelogioacchino.delregno@collabora.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20221006120715.24815-1-allen-kh.cheng@mediatek.com>
 <20221006120715.24815-6-allen-kh.cheng@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221006120715.24815-6-allen-kh.cheng@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/10/2022 14:07, Allen-KH Cheng wrote:

Thank you for your patch. There is something to discuss/improve.


> +  - Matthias Brugger <matthias.bgg@gmail.com>
> +
> +description:
> +  The watchdog supports a pre-timeout interrupt that fires
> +  timeout-sec/2 before the expiry.
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:

This is just one enum in "items", so no need for the "items".

> +              - mediatek,mt2712-wdt
> +              - mediatek,mt6589-wdt
> +              - mediatek,mt7986-wdt
> +              - mediatek,mt8183-wdt
> +              - mediatek,mt8186-wdt
> +              - mediatek,mt8192-wdt
> +              - mediatek,mt8195-wdt

Best regards,
Krzysztof

