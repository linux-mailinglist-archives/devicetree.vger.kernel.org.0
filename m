Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CFE36294B0
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 10:45:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238029AbiKOJpp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 04:45:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238074AbiKOJph (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 04:45:37 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6257A21E39
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:45:35 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id s8so6428111lfc.8
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bf8HO/XIeQu0vGl/GZdecK7EeIByfzm/jVCwZ9wayQU=;
        b=zJ9iFlPxC5kBZlShYAclfv/S2Xy2ncbwX/SBlWyAMca7P1RBBMOtGp1apfYkHbFwRa
         ZIirw0a6s+OyZjyZZS0RZLfZdq5hlxdClr3W6UXiK6kiklf543QcLcl755RcFJHG6SzM
         uBJGUiL8U41JTLktNMtPRFS153BRupgjrqMFgMK2Y4FdvUzGhAWUYOr4OleO9MQ00xjn
         JHzImuDzwkuokcuGwN9+NE7pobWnMlRm3cYNW+UzYvUZLNFi/yV1HDu8PWlqe90H2RJb
         qs8I/jJbcG+VXOqwf69XVb1eBy1QZ8RKYLHxDPL0d+qbt8Q15wEz7M4OZDbWGN+kngzB
         KaIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bf8HO/XIeQu0vGl/GZdecK7EeIByfzm/jVCwZ9wayQU=;
        b=Sk3l0Tab55oH5mxeFp2UJmb2z1R3d5dYRD5MEfu3VLNeU1DSAN7zuO3xrW5nxaaLoe
         Dh5O/6ddTA3gZhZRddEsj5Xn/J2666ubytusHZCA8iYosBE3U68PF554o1sLerypaulf
         v2lPab/DkL4uZdhrMoS7ewlHc5KDlIb3eeGEIbzdo+Kznur4I1xXoZZMxmN6oNOhh/Bh
         vPoS5cIlSbWWPXXEPikIpJC9GUq1HGfYfgJrpN+D0MYTfy9J298xZg4u2/KaYgrFv/lp
         NjEyy1XX3FEz9Bv6u6hCxmt41aRhXJMXVYQvvquDMQzvyLAXwCFwTNifQS411xCrliG8
         v4Yg==
X-Gm-Message-State: ANoB5pm2EXonsGloKdElIyaAoV2rLVtD6wJvWFzRWuvNm1KMI7pSZETU
        nozxs57JCbwdZd5gmg+f6ojuuA==
X-Google-Smtp-Source: AA0mqf4Wlvih1IVv17a57nIDdz2FyS6XUznZz9vKavTZNcBZguHWdtTfxHxa1eFqUi2cgDxZh3HDkA==
X-Received: by 2002:a05:6512:1296:b0:4ac:7d84:cb99 with SMTP id u22-20020a056512129600b004ac7d84cb99mr5102141lfs.412.1668505533772;
        Tue, 15 Nov 2022 01:45:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o17-20020ac24c51000000b004b0b131453csm2140251lfk.49.2022.11.15.01.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 01:45:33 -0800 (PST)
Message-ID: <c119939b-0559-4a8a-e14b-92a139d64463@linaro.org>
Date:   Tue, 15 Nov 2022 10:45:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 08/15] dt-bindings: nvmem: mediatek,efuse: add MT8365
 bindings
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
 <20221115025421.59847-9-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115025421.59847-9-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 03:54, Bernhard Rosenkränzer wrote:
> From: Fabien Parent <fparent@baylibre.com>
> 
> Add bindings documentation for the efuse driver on MT8365 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
> index 75e0a516e59a2..6893f2a6ea225 100644
> --- a/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/mediatek,efuse.yaml
> @@ -34,6 +34,7 @@ properties:
>                - mediatek,mt8192-efuse
>                - mediatek,mt8195-efuse
>                - mediatek,mt8516-efuse
> +              - mediatek,mt8365-efuse


This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

So you ignored all my comments... awesome.

Best regards,
Krzysztof

