Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD2E2530E3A
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 12:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234006AbiEWKWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 06:22:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233988AbiEWKWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 06:22:18 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F39D24BCE
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 03:22:17 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id c19so11655260lfv.5
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 03:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HNshsQ+jjwxazxWRShiy1xQPJQNvQBGxNnmIIrcdM+8=;
        b=eWB8K4d6dGx2vtV8LZ16/Z5P9sYbaAwVmxtAmLUbP8zPUkxvDrDQ1Zp35Ehg6Xk0Zt
         f3FnUI2rRroOi5uxhh1TEXOQ51XDnBVWwmZ24lKmC0Agb4jQ8cbQ5f7+nk1jUcyMUde9
         B+XSIeGu886HX7x5VNbKhcO/TQ58/5ZvSZ9O6UtO/YaDbkpv4Hk9R5zZK9jE7+dZAAFk
         c4X/nlbrOwEPtc8yCJ/vIrff9QkxD1kIsV1cADEwBAAloRGQAOEFoN+cfFwKAk0f+xtB
         qIFX8U69PWug5AiZwTx7hOSU+dKbXMaAVGMnanb+h7faMkHGA0HlsaiZfBAtDRI2xtS9
         c2jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HNshsQ+jjwxazxWRShiy1xQPJQNvQBGxNnmIIrcdM+8=;
        b=ruxS4cepYFpA0NrvorEaTXsWpjUT/Z4HDuECo37H8EWYhidEZDFHFbnMIQlRjYTTRi
         UgtUOIVEGlR9khEcjYIODoQTYzCpV363GNViMloiwmFD4Eloz/OPGDY1oOApWV9Oy7W5
         zIMFx0HgirfHqHdIMZvDeJnfp8VwPE6tcuCYxS0J247nSMoSKX6DCN/uZbIXRmLYKAsR
         N62zAcc5H/8VYq/hz2ioNQlLju28kRz+50DaWxXV1ZFYYDnesHvLaPx5ebmGFYOmwT+Y
         gtwzIMu0Wk7cEL2dR4k3XWe3HqfVSz3+6OivOEDVrnYW7p8rpfYQ7puqmRSBv+X0hFyD
         uqvg==
X-Gm-Message-State: AOAM533ECNQhViT09qDIP9h3nLMu5J/XPE8pOVL/wpd159tN2Q0HEg/c
        I7z3zOGn4gBa2kxPncWohPaDYQ==
X-Google-Smtp-Source: ABdhPJwlll0aDgo5Ev/QIHW25Kv2LtXA5WwszdfvpkXDcLDBMOGt9NFWl0tHQ0BayjkbbGmbr4cMEw==
X-Received: by 2002:a05:6512:401d:b0:478:69b9:2a39 with SMTP id br29-20020a056512401d00b0047869b92a39mr5175918lfb.500.1653301335563;
        Mon, 23 May 2022 03:22:15 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d11-20020a0565123d0b00b0047862c69e83sm1032131lfv.40.2022.05.23.03.22.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 03:22:15 -0700 (PDT)
Message-ID: <d04b6d8c-0117-b5a6-dcb5-aa328ad5d1f5@linaro.org>
Date:   Mon, 23 May 2022 12:22:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 3/3] arm64: dts: fsd: Add ADC device tree node
Content-Language: en-US
To:     Tamseel Shams <m.shams@samsung.com>, jic23@kernel.org,
        lars@metafoo.de, robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     geert@linux-m68k.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-iio@vger.kernel.org, alim.akhtar@samsung.com,
        paul@crapouillou.net, linux-fsd@tesla.com
References: <20220520145820.67667-1-m.shams@samsung.com>
 <CGME20220520145804epcas5p2925e66d30b18378fc62c92999ec269f7@epcas5p2.samsung.com>
 <20220520145820.67667-4-m.shams@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520145820.67667-4-m.shams@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 16:58, Tamseel Shams wrote:
> From: Alim Akhtar <alim.akhtar@samsung.com>
> 
> This patch adds ADC device tree node and enables the same
> on fsd platform.
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> Signed-off-by: Tamseel Shams <m.shams@samsung.com>
> ---
> - Changes since v1
> * Addressed Krzysztof's comment for corrections in dt files
> 
>  arch/arm64/boot/dts/tesla/fsd-evb.dts |  4 ++++
>  arch/arm64/boot/dts/tesla/fsd.dtsi    | 11 +++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/tesla/fsd-evb.dts b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> index 5af560c1b5e6..63f26a85053a 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-evb.dts
> +++ b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> @@ -34,6 +34,10 @@
>  	clock-frequency = <24000000>;
>  };
>  
> +&adc {
> +	status = "okay";

Please test your bindings (`make dtbs_check`). There is no way it passes
since you miss at least supply (maybe more?).




Best regards,
Krzysztof
