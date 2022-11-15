Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B78C6294C3
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 10:48:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238135AbiKOJr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 04:47:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238200AbiKOJry (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 04:47:54 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 602A322B28
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:47:51 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id l8so16754069ljh.13
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 01:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RUwrnHBXFfPXV3HqM0uSLgjBuLQrs42kFBoLnffmkPs=;
        b=P3NDqMAdFm/ODTPPACk2XXmDdfzl2y260/cRWUSMQjUuxxouuR8nlQFVMfsSXnOLG/
         i5lw2ObDCRnar1nt0O2QrfmEq0zHRdpK5WZDq3BC8PK4DFDeUpXEnPLxq2Rnu09Sy2Mn
         8wbxzL2pnLdwRt2yyk+jyamULm4ZP/fsSl2gyp76yMe6znxy9ude95We0cxpsPlI3i//
         CcmOASLJf1pethdYNtpnpZTDYZ00SmrIrZO471wGiR89y1v1zmJpvern4KV3LmnSVJiE
         Snbc3D3Kd8vbH0s4TTu4pQdr2SOiGf5i85FRviHxmuKDB+JSAk5Yee8Wjr6SHliqHL/C
         UNaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RUwrnHBXFfPXV3HqM0uSLgjBuLQrs42kFBoLnffmkPs=;
        b=yI0hqKsNMQt5XPWuK7Xg+Win5fjwh786yEE6Y3oMrlrc6IZByYjGLVlxf1nBInX50q
         qdFeJp61+cJXFOJmI2Sn8Rwt7ijDA+Tx5LsMgWTXL/ZYn1MeGfPIZ3l9REuOh1VAshyb
         hvACVDmYIXHeYRqu180L2HxGB0Ukr8Pg57da1Jdr2Qr1wQ8uaM3P3f9rGj2OjUdR6YsK
         A4OqbN1zmGiPICyj6PUU1jJdqnoY/WPhnnYgAd/KQrNA+bZ++kwAa0dvRmT2NG7DVdAs
         VZUSysiPopwQvMTmPyg5J4N8oBV8UYP6jSejbhH4Gpagfm4PEsUPgsd8x7+MQPhv6H+O
         6Nrg==
X-Gm-Message-State: ANoB5pkbgevwkdhdEfOKe5HnovsgfUJrslacbgQtUbQVFktVHc8N8Wfp
        5HLZpYz3OgSPS4VN6OGafo5/PgSFzmFbvK+3
X-Google-Smtp-Source: AA0mqf4rC091Nwov6Kwm9iDiTEHbcLI4s2hQscMtz8VZdIaK9BzMaSpjan3b7sqN2N2RKLparq8/tA==
X-Received: by 2002:a05:651c:491:b0:277:21c8:a94f with SMTP id s17-20020a05651c049100b0027721c8a94fmr5072964ljc.28.1668505669598;
        Tue, 15 Nov 2022 01:47:49 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t7-20020a192d47000000b0049c29292250sm2144019lft.149.2022.11.15.01.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Nov 2022 01:47:49 -0800 (PST)
Message-ID: <2762e722-5561-4aa2-75c0-db9fd03ff4ff@linaro.org>
Date:   Tue, 15 Nov 2022 10:47:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 15/15] dt-bindings: arm64: dts: mediatek: Add
 mt8365-evk board
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
 <20221115025421.59847-16-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221115025421.59847-16-bero@baylibre.com>
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

On 15/11/2022 03:54, Bernhard Rosenkränzer wrote:
> Add bindings for the Mediatek mt8365-evk board.
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>

You document a patch after using a compatible - that's broken order.

> ---
>  Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
> index d76ce4c3819db..6781fcdb9fe69 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
> @@ -246,6 +246,10 @@ properties:
>            - enum:
>                - mediatek,mt8516-pumpkin
>            - const: mediatek,mt8516
> +      - items:
> +          - enum:
> +              - mediatek,mt8365-evk
> +          - const: mediatek, mt8365

No spaces in compatibles.

Best regards,
Krzysztof

