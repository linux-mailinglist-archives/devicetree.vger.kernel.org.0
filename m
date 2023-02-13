Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3025769441B
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 12:13:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230254AbjBMLNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 06:13:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230480AbjBMLNF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 06:13:05 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E42418B35
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 03:12:35 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id m10so2853198wrn.4
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 03:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vRFquoyZ7W+fz0JtXsoCdIgSKHksw0Z4uRyOB2Z5ZWY=;
        b=Y+hdciEcs6qDtQF8GyfyWrMrEk7YYEUKYjJrN52A324yNunTTuHtFHuiAlw1JEYZFH
         5BzC19DsnBa+BxmH9IuQiKlfi+dk1xdovTrRJBOqTc1AxiwZfjRe2RjPKamHYh7RPo1a
         R0yK6HfYG71Mm1iQCR0CjC9AtQCbp5c9ydmXbOrGskCXD0VIWyTDF8+g7Nb4NVRR8J7n
         q6HPuy/pcNyY2yIlwEGKJGnEC170GhhAfM2xYyMT236cDkJj1SmYXSehFkZPmZZqAm7z
         rHjfRx+PzmXpAkiA+zSjejy6hfRJZzd5yIOHrNwoZT94m5WpVHYtXiW9EhCrt+DQggVX
         mALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vRFquoyZ7W+fz0JtXsoCdIgSKHksw0Z4uRyOB2Z5ZWY=;
        b=MTRUBLoK5y0hnfGRSv8Y2fpSoiusBlWmzqlXWs2Pi05/q6Bi+bNUFoD5nJ/feGVoGn
         niulz92rfbY/8cjfCIkVcqsZoREvL/PTFe2s2k2RTZRLHJQd3oCgKX9JI7mgf/azbYak
         Hsp2Y5cUIViuff6jhXPazPwQyZM1bTKUwJG3Zj8RBsZrmPM7gAGmmrSYUCEuy25RX8Yj
         oORjeDN1CdJanpHCkGYHT5rzpyi3nJq40OQeG6KdQyMFC7dNuwfeO6NiEePS8ImVnYj2
         PEHxi8SJxZGaymHjT4Bw9S2wuKwHD7rbR7xIdd8hcSYURl5ZYhrL7ojxT44syRnHirWQ
         1jww==
X-Gm-Message-State: AO0yUKXNV1lSDLWKNw4Xfb6IIL3TBgn1UWAw/HCJ93rJGzwOXTwMCPEi
        K6Ted5VSoJSzcCcszZHR1lAWxw==
X-Google-Smtp-Source: AK7set8hVfd+4Hs9+OuZUArQfQii4ry4u07feXt68G8la8Entcc73g7K9OFX7kHRirThVpuPhJxKVg==
X-Received: by 2002:a5d:5005:0:b0:2c5:584b:4f65 with SMTP id e5-20020a5d5005000000b002c5584b4f65mr2426902wrt.32.1676286748229;
        Mon, 13 Feb 2023 03:12:28 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x10-20020a5d54ca000000b002bfb5ebf8cfsm9987973wrv.21.2023.02.13.03.12.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 03:12:27 -0800 (PST)
Message-ID: <2f5a63ba-f4de-da89-7621-3fe1d79cdc94@linaro.org>
Date:   Mon, 13 Feb 2023 12:12:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 05/17] dt-bindings: interrupt-controller: apple,aic2: Add
 apple,t8112-aic compatible
Content-Language: en-US
To:     Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Kettenis <kettenis@openbsd.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>
Cc:     asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230202-asahi-t8112-dt-v1-0-cb5442d1c229@jannau.net>
 <20230202-asahi-t8112-dt-v1-5-cb5442d1c229@jannau.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230202-asahi-t8112-dt-v1-5-cb5442d1c229@jannau.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/02/2023 16:41, Janne Grunau wrote:
> The Apple M2 SoC uses AICv2 and is compatible with the existing driver.
> Add its per-SoC compatible.
> Since multi-die versions of the M2 are not expected decrease
> '#interrupt-cells' to 3 for apple,t8112-aic. This is seamlessly handled
> inside the driver.
> 
> Signed-off-by: Janne Grunau <j@jannau.net>
> 
> ---
> This trivial dt-bindings update should be merged through the asahi-soc
> tree to ensure validation of the Apple M2 (t8112) devicetrees in this
> series.
> ---
>  .../bindings/interrupt-controller/apple,aic2.yaml  | 23 +++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml b/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
> index 06948c0e36a5..120e23ff668c 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/apple,aic2.yaml
> @@ -31,19 +31,22 @@ description: |
>  properties:
>    compatible:
>      items:
> -      - const: apple,t6000-aic
> +      - enum:
> +          - apple,t8112-aic
> +          - apple,t6000-aic
>        - const: apple,aic2
>  
>    interrupt-controller: true
>  
>    '#interrupt-cells':
> -    const: 4
> +    minimum: 3
> +    maximum: 4
>      description: |
>        The 1st cell contains the interrupt type:
>          - 0: Hardware IRQ
>          - 1: FIQ
>  
> -      The 2nd cell contains the die ID.
> +      The 2nd cell contains the die ID (optional).
>  
>        The next cell contains the interrupt number.
>          - HW IRQs: interrupt number
> @@ -98,6 +101,20 @@ properties:
>            - apple,fiq-index
>            - cpus
>  
> +if:

Put it under allOf. After "required:", just like example-schema asks for.

> +  properties:
> +    compatible:
> +      contains:
> +        const: apple,t8112-aic
> +then:
> +  properties:
> +    '#interrupt-cells':
> +      maximum: 3

Shouldn't this be:
const: 3

> +else:
> +  properties:
> +    '#interrupt-cells':
> +      minimum: 4

const: 4


Best regards,
Krzysztof

