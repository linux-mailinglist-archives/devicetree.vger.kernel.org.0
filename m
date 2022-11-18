Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30F1E62EF06
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 09:16:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241132AbiKRIP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 03:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241100AbiKRIP6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 03:15:58 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CF7E85EF3
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:15:57 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id g12so7036345lfh.3
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 00:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oQCH/Sp176vbPRXqpJPGAQyRVR8G2dlYjS15CYSHZ+Y=;
        b=kEqJjuyusNzd4++TgyrS8RNq2Ilzx7GR9H5D91NisqLDvTCqy92gnovfPYdjGFgQpO
         EbkqADOiNmdhH9u30mp5BCBtskG39bfePFbLl/+20UfKg8DJ+OXm+TIo64q5h9hnuH0m
         NMduGQ48uCQGOTq22ZpQoNQMENAIg4Y6ONwbztwN03PDEYhOy7HM6cFavgs3eVLa4JXZ
         giMPOAdoXJe+DDDbEdxlsZLsed+C9tTWAdLI5u5Yo4i2eySArzx6x0f5XGBEBHuCfaUG
         kfKS44/dbyjf4nWfjNBYFBFOh7RmFBXKkNhEE73n5fUKFN2DQgA741yucT/rG1t6BnEM
         hfpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oQCH/Sp176vbPRXqpJPGAQyRVR8G2dlYjS15CYSHZ+Y=;
        b=mTJr9tqxffc9mxlr3BQm8EigcG9Om36FGQlRDz0c1pbMa5YHkJAbmRfZCLC2mdJX1q
         aO8bZzSFFEz4d/2VBGGKwxEfln5sQ98za1Hnoao2tMud1m9oe1hgsnddADH3E/rrqNW7
         /pwOCOOb684fC0zj8qZOFANmeF9n/E12I8ZHbfdfFUeRsjKFTPzXm9cLVEA800W+YeMr
         tJYKU+plU34Eh3caMzgc7I/QQpVuk7XIRt+R2YXh594wmsFFwPLJfwayKWrdJkpEPhtp
         /uFNRtehPpE3u6+L5b+H81iis2APBbwrvdUv8dUOzFSrr4YcBwHXB5WAfq0+rPBG621V
         dFJQ==
X-Gm-Message-State: ANoB5pkNHZiZtP3a/i+SsNDKVI5lyAWlxrLwCa594hd0DlSwekXzEtpB
        WJX7rfkz2iQe2mDXrGtIZomxSQ==
X-Google-Smtp-Source: AA0mqf6r+spSfA5uDVZqKrli1/yAsMTUjo7NgEJOEEtln0/O302Tz+lT5MvAPAeXznogLjyKObJtmg==
X-Received: by 2002:ac2:43d8:0:b0:4a2:45ce:a169 with SMTP id u24-20020ac243d8000000b004a245cea169mr2189309lfl.51.1668759355586;
        Fri, 18 Nov 2022 00:15:55 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o6-20020a05651205c600b0049478cc4eb9sm559358lfo.230.2022.11.18.00.15.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 00:15:55 -0800 (PST)
Message-ID: <898329c5-5ad6-bbf6-34db-a58ba4244882@linaro.org>
Date:   Fri, 18 Nov 2022 09:15:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/7] dt-bindings: arm64: dts: mediatek: Add mt8365-evk
 board
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        angelogiocchino.delregno@collabora.com
References: <20221117210356.3178578-1-bero@baylibre.com>
 <20221117210356.3178578-2-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221117210356.3178578-2-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/11/2022 22:03, Bernhard Rosenkränzer wrote:
> Add bindings for the Mediatek mt8365-evk board.
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index 7642f9350d2c0..a9c18fc7905c0 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -243,6 +243,10 @@ properties:
>            - enum:
>                - mediatek,mt8183-pumpkin
>            - const: mediatek,mt8183
> +      - items:
> +          - enum:
> +              - mediatek,mt8365-evk
> +          - const: mediatek, mt8365

Still wrong compatible.

Best regards,
Krzysztof

