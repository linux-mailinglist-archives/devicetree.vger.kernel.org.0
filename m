Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5EE76276CD
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 08:54:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236168AbiKNHyG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 02:54:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236144AbiKNHxV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 02:53:21 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A18E1A04C
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 23:53:19 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id bp15so17891211lfb.13
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 23:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mPteRXuurrYIqWrse9JwxLjzfWbyyHOFXx8cvgeh7xI=;
        b=RbpQb7sW542HdgS4M2H8DTDHsg3T3PRosLUxU5N5G7BQU4oBb+axXvDmDDLLiVQRYg
         BTwR98kQW7n6JuXEBKN5cxk1srrQW3yrFmVdslAWHN2zWtwd6zo/7558lfHWTCJ7C9kW
         JBd1p9HA08p4EJwZIEax9c1/cGR+BNCOOTNUm+tZhoXhUWu/8vJRzsGTe4bzbGUsViWP
         4yWEsMzdddtTYwR0NdUe/QKHdEVwiRPtzVKqHkwmP3w+/v+tSe8Fs7PjHE+DCqFQYHPc
         HuEBULhWe/jOd/2gM1HclbjFR8A/kPlPcJ9d+2KSX8wGh32m3xuSPgLy/39gVIpvf+Qg
         mNYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mPteRXuurrYIqWrse9JwxLjzfWbyyHOFXx8cvgeh7xI=;
        b=8JHKr3wpNi//DBcsBVG4r7Y/aUcyTnpDz7SJSgu3sLMIEN0cIuqB0ALfGyRS8W92My
         VaG9lDdi31mwtTDI28qZeiSbjE5EgV3Ljh4NSJyEJsfDwbgBeaYxkbCtTKNnBYnOGxft
         nuTLYuuLjVs/pxy7GhXuwiG8Ph84CRw6xAfGw+QFHJoqzdj3ZF+JnOGZ/Wj0XrLkfpAz
         2fubYBwp7kTKAlx+7rwtp02tYVWttfIYCHzoNKIuorK3QQPd+7X2r+D+NYjbjqWKTP0n
         TZ1xnvDHd4j8QBzoBsL3SMNt2aj4HWxIb9jALpv5sAddkJQjXCsZyisTOGXJ7yqBtfQH
         qVrg==
X-Gm-Message-State: ANoB5pnt1qvCzsJRDoksl75+y5DprvTu56KYYOdN0yl68FfYb3ZdE5py
        mv20ZXV4L1Vv14Sisp9LLkJqnGwgPJVXQxOt
X-Google-Smtp-Source: AA0mqf4OBoAylXtT0sBiy8jHQ+/GQteJ4T/mfs0zyPgj4RG4qH2mkmcXLXi4oSRxCmQCriiQPyBeAA==
X-Received: by 2002:a05:6512:308:b0:4aa:8cd:5495 with SMTP id t8-20020a056512030800b004aa08cd5495mr3446242lfp.254.1668412397911;
        Sun, 13 Nov 2022 23:53:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u3-20020ac25183000000b004ae394b6a6fsm1709573lfi.246.2022.11.13.23.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 23:53:17 -0800 (PST)
Message-ID: <fa9255f1-d083-936f-e402-61873e582882@linaro.org>
Date:   Mon, 14 Nov 2022 08:53:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: rockchip: Add SOQuartz Blade
Content-Language: en-US
To:     Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
 <20221112160404.70868-6-frattaroli.nicolas@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221112160404.70868-6-frattaroli.nicolas@gmail.com>
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

On 12/11/2022 17:04, Nicolas Frattaroli wrote:

You miss commit msg.

> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 244c42eaae8c..fc5f14fcd007 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -579,6 +579,7 @@ properties:
>          items:
>            - enum:
>                - pine64,soquartz-cm4io
> +              - pine64,soquartz-blade

Keep alphabetical order,


Best regards,
Krzysztof

