Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 964156A1ABC
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:58:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbjBXK6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:58:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbjBXK5u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:57:50 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 947D5671EF
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:57:44 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id c18so6497341wmr.3
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:57:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wUzlOGkuT0rri1NZcy3oPLiyFwjaeCiqRMJCuHFb5ts=;
        b=dLreh8Yxx9kckvOfZdklyGyT2utdxcqAYoLD3p9a4v83wuopSnCDDCTGaXv54KIEQg
         HYn16dO3Oc5y2cTr2+l1u+X3s3DwdDED9B9auqLhQKERxmugO+WcUKG/x1Fc61aFEor7
         8qYRGkXuBeElYZuzxQHLCLA9wwgSrU5BXVDyPA4bX4ouiLj0HL1nOHCXo5G79sT2CF9r
         Ok5ISa0ZCDtHrCR1e4D2U12jI16IZrCqvn15mIxIMSBixhPWjr06VZenN7d8NEJ7pc3e
         OYr4csPS6itxsoPWEepLxbHpDqCnQjhYziAm/UyoHuwfZxFGfRzRU/DfUIh+zaj03QiU
         VarQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wUzlOGkuT0rri1NZcy3oPLiyFwjaeCiqRMJCuHFb5ts=;
        b=DhUR0hIwbZ2mjBnEmGgIb+pRQ58JfmVOBAu5aba6bGSvYQYKBsEoriigcFS/FIe3yZ
         EMg6gfjfaFTfgLIunNo3AxbmwGAbB3Juf8CpZH+U6iETDcTjsZFGm7dA6JsA7sgJWmj1
         Mw6JXczFMOlKD5wxVtRX9UvE70huVXPtEruJ2NZd5zXIQwQxVIgeLIk/lpz8SkitlPKb
         N0B++1ygEsg/VMdJbD0T1pKhz04V3RjxiuDh6MSf5ydbGk7UsNbiD5ytGe1imNV6VO55
         lsz1/mGXIgNPcwNRfa9sY8gS7Fa5+H3hQFuyrmSjZ5ImRX2cXkuSiiKy3pW8upOkFHve
         fs/A==
X-Gm-Message-State: AO0yUKX1cQz7ZtuY3JBEEYsKuw0rfb48N8oiWERLS+Ct0dsDAnhdGjdW
        3pF2Xh3xMjOgqF0B1ngMoqyryg==
X-Google-Smtp-Source: AK7set8ofc+BvKAusfSUZGB0OaFA138AUMJg1kOmeEms6DUeu1XH/pOv+hyOfB0pioS72PKGct/gZA==
X-Received: by 2002:a7b:c7d4:0:b0:3df:de28:f819 with SMTP id z20-20020a7bc7d4000000b003dfde28f819mr11541352wmk.15.1677236263072;
        Fri, 24 Feb 2023 02:57:43 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j7-20020a05600c42c700b003db012d49b7sm8464475wme.2.2023.02.24.02.57.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 02:57:42 -0800 (PST)
Message-ID: <f38158f6-5493-5b85-1353-9b75f66ad0d3@linaro.org>
Date:   Fri, 24 Feb 2023 11:57:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 02/11] dt-bindings: gpu: mali-bifrost: Split out
 MediaTek power-domains variation
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, airlied@gmail.com
Cc:     daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, wenst@chromium.org
References: <20230223133440.80941-1-angelogioacchino.delregno@collabora.com>
 <20230223133440.80941-3-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230223133440.80941-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2023 14:34, AngeloGioacchino Del Regno wrote:
> In preparation for adding new bindings for new MediaTek SoCs, split out
> the power-domain-names and power-domainsvariation from the `else` in
> the current mediatek,mt8183-mali conditional.
> 
> The sram-supply part is left in place to be disallowed for anything
> that is not compatible with "mediatek,mt8183-mali" as this regulator
> is MediaTek-specific and it is, and will ever be, used only for this
> specific string due to the addition of the mediatek-regulator-coupler
> driver.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 02699d389be1..ac174c17e25f 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -145,6 +145,18 @@ allOf:
>          - power-domains
>          - resets
>          - reset-names
> +  - if:
> +      not:

I think this makes the binding difficult to maintain. You have:
1. if - amlogic - then - some properties
2. if - renesas - then - some properties
3. if - not mediatek - then - something else
4. if - mediatek - then - some properties

Instead just disallow power domains in each of other variants.

Best regards,
Krzysztof

