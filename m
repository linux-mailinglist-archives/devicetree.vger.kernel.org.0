Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F92A602C3C
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 14:58:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbiJRM6J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 08:58:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230147AbiJRM6G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 08:58:06 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8736DC4D9B
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 05:58:04 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id bb5so9516166qtb.11
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 05:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8qZmYxGrqj3+Uv24C0tbx5K9gwcR+iJBbptYxOprIx8=;
        b=zMyh5nUg2UX1tOdk5MTEp4J1Zsjz1dRKv7+M4bGoE8upjW5/rphkbAMGRW7AW0kkA9
         zbk1ctRy2b/uR0hfWpGbXsbjZxp0hDzFR2AzYSnaKlCJQ3ZNd/umaatoxO9wsc1LsdVH
         3o2/IL+8WSP7MuBJx5BeBDbNteQTJHBR2KCTkcUXDgqJjjfk3RIzG8t2p0k3CcAQHZSz
         5EZaizvixTsvGLPEgrPCIA4lHrKr6XR8h+74dvZfVOqtcvoT3UpmpoPVkkNMK0/zHPm4
         eXq2hfEjf8xicPvgY8OepOfBRyoDOaVIYDTwk+rTdz/l557x/OmAH3+gIhD9wwhqrnmu
         Swaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8qZmYxGrqj3+Uv24C0tbx5K9gwcR+iJBbptYxOprIx8=;
        b=y346zca11tRt6e2v8+kdnNIVDxu3Fx63k29tgVc7rI7fik2cf/pfOLJgh6wM0b/3AC
         3rimNugvYhxJ0kx7EUbj/Osnt0fmRFUvYUVBSMlEsyQPnIGI/VsodPb2eQFvm3/40vCa
         3i3Bksih9C4TP5p63fLGqUa+FFTM2rNYyD5AGQvqATXZLq8PCTODX+Bma0kWjWfNOORp
         qaxnogSFOusPMGQoNg40XsxcH/1autxXp4PKyCl+h/N6UShyua9uqV90mvs6vc82ovPL
         /35BgSpeErmXoHCmKZjfmcu2PDXTEz3RB2H0WrrlEbZ85nrcV/UkT4a8Imtif8cePPUg
         AUVw==
X-Gm-Message-State: ACrzQf3NPrIJ6A4Ft4k/OtUGlURM0/qPaXJ14RSixFhT5zeKl8uSq4wL
        q3SntcICo9N1thFpDx7mSylMjA==
X-Google-Smtp-Source: AMsMyM4btOAaU5qvNmO3mPDFLHvYNkSLNqAJvHGzl4upv4mopszgowvKKqJ3ZbdlKF9+QzouYWLxxA==
X-Received: by 2002:ac8:5792:0:b0:390:ee6e:5d1a with SMTP id v18-20020ac85792000000b00390ee6e5d1amr1812168qta.631.1666097883681;
        Tue, 18 Oct 2022 05:58:03 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id dt5-20020a05620a478500b006ee94c5bf26sm2382346qkb.91.2022.10.18.05.58.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 05:58:03 -0700 (PDT)
Message-ID: <77549889-a612-8478-ee87-659e4c07f292@linaro.org>
Date:   Tue, 18 Oct 2022 08:58:01 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/3] dt-bindings: arm: ti: Add binding for AM68 SK
Content-Language: en-US
To:     Sinthu Raja <sinthu.raja@mistralsolutions.com>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
References: <20221018123849.23695-1-sinthu.raja@ti.com>
 <20221018123849.23695-2-sinthu.raja@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221018123849.23695-2-sinthu.raja@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/10/2022 08:38, Sinthu Raja wrote:
> From: Sinthu Raja <sinthu.raja@ti.com>
> 
> AM68 Starter Kit is a low cost, small form factor board designed for
> TI's AM68 SoC which is optimized to provide best in class performance
> for industrial applications and add binding for the same.
> 
> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> index 28b8232e1c5b..54f983fb23cf 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -69,6 +69,7 @@ properties:
>          items:
>            - enum:
>                - ti,j721s2-evm
> +              - ti,am68-sk

Alphabetical order please.

Best regards,
Krzysztof

