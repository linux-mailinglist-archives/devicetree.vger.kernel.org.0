Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9414608E9D
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 18:41:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229823AbiJVQlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 12:41:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbiJVQlJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 12:41:09 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F15C01552E3
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:41:06 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id y67so6638568oiy.1
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iP77d9Lel75NNTeC/rovMM/7kBmZVdqayVHvuSoNCmA=;
        b=RkvHApUpjHBzk4Yd5ToAi/L9n2T3vrz6EI8ToaFZBvbv/QLTXiA3yZIi/343NzG6sZ
         Tv9QK8nTtNTSnJQvK62ykBZyXc8vL2DV5jphfhH208raoe4D7uTmwr6O5lg1FHFdlFuy
         ovJZFw7nW1cHwmCduOnWgQXO2D6GXMKirSqTTqQrDQukkIPVIwqgx8bjel9c0uHTE+vk
         vwgHlnPDP5hlz7tvQGWYedPUCspBVGd5Wy5jENNHu+qf7HgJkumS1pD76oCxiRtoVS1a
         SPFnz23l/L9LREn8UQ95vmoc9ti1r9npuzz0kr38m1KvfEh58QTy60yNkvJGnSYwwSgP
         XVpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iP77d9Lel75NNTeC/rovMM/7kBmZVdqayVHvuSoNCmA=;
        b=D3Xwi3zq0Mg5BeOYK345jiX/ampDQha32rlBDTPs0LIis+0eKK0YanDqguYFXD9d5M
         HGBURlpiydWpZS2GhfB3+K8r/BA+M5Y0BGD3OsjsBFlWR79WWLsmxXUinfZopSZQVBp3
         +CD4w2cH2oM7eDsHuLyTeaX2xnqhVBDTA+7Zr5Pw6m2GkQsU2Av5IU9Ig+0iwZMjYzK/
         OlE5nWtf5sWKr9rMIqDPWUy/m/qBdBKU7l7e1bXz1pNvbGX609nmLxI69c72EE/Pf4Ay
         kPVHCZAeBGpjyIwi7g7tZzU6Z+XOccnUtfFp9ocXH2y2xNZynf+mCg0voNEu9VEekhUO
         yQ5A==
X-Gm-Message-State: ACrzQf2JvqJ6KBTP6jYzrGqGGvZ/zFdtKlEFwUbM8lMnwKRIELZ2Qpa+
        byb4BNdPEPGpg14/n6S3HOe0QA==
X-Google-Smtp-Source: AMsMyM6OxTwHUCLnaaXnogOI8LsSTB6mLrmjmy+fSXld/fD2a28f9s0G5GtafL9kXzltu/uDr+ynWw==
X-Received: by 2002:a05:6808:1384:b0:355:535f:118c with SMTP id c4-20020a056808138400b00355535f118cmr11476258oiw.35.1666456865493;
        Sat, 22 Oct 2022 09:41:05 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id x67-20020a9d37c9000000b006619caef3bdsm2420676otb.25.2022.10.22.09.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:41:04 -0700 (PDT)
Message-ID: <f7007c75-9c99-902d-170f-383b7347922c@linaro.org>
Date:   Sat, 22 Oct 2022 12:41:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 3/3] ASoC: dt-bindings: rt5682: Add AVDD, MICVDD and VBAT
 supplies
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Mark Brown <broonie@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221021190908.1502026-1-nfraprado@collabora.com>
 <20221021190908.1502026-4-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021190908.1502026-4-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2022 15:09, Nícolas F. R. A. Prado wrote:
> The rt5682 codec can have three supplies: AVDD, MICVDD and VBAT. Add
> properties for them.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> ---
> 
>  Documentation/devicetree/bindings/sound/rt5682.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rt5682.txt b/Documentation/devicetree/bindings/sound/rt5682.txt
> index c5f2b8febcee..5ccf4eaf12a9 100644
> --- a/Documentation/devicetree/bindings/sound/rt5682.txt
> +++ b/Documentation/devicetree/bindings/sound/rt5682.txt
> @@ -48,6 +48,12 @@ Optional properties:
>  
>  - #sound-dai-cells: Should be set to '<0>'.
>  
> +- AVDD-supply: phandle to the regulator supplying AVDD
> +
> +- MICVDD-supply: phandle to the regulator supplying MICVDD
> +
> +- VBAT-supply: phandle to the regulator supplying VBAT

Lowercase.

Best regards,
Krzysztof

