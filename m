Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F169766B8A
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 13:17:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232776AbjG1LRY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 07:17:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229890AbjG1LRX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 07:17:23 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A1FA2723
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 04:17:22 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso30974591fa.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 04:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690543040; x=1691147840;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fz/NwOEGvoEXeHec7Dn/tTFzvf8PDVcmnAqz2okxdfQ=;
        b=o+FM6iZcNqY02VJGheQIIq85BF0x3fxTHBjjVDqzSVJ2GVhrPBlgxACFdapbvCmRC9
         pWLyU4RFJsYa9Y8BiU3VngWPgUBvOaqxNVZK57HAHHcftO31KvbzTnXVe7XzfNdDyJm6
         tkpZLVcibUiau+NC2m4RhJgEsF0YkUD0oGXLbUTBFRJ22MDSZ/rUf0eA2xu0pR+IN3dS
         +WPXDCigoIZFjlcRJAuoPGEEU+lZo8YXsd9Zwr+due11HzLIHg5k2qxdDmJnRGdhOxUJ
         DTN1VpccuCBJMy9lh6cUBQH5vACYI9qhxN8ipL3hT6ZKUvhzbWmKnzLzipAnltFn7qAu
         n80g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690543040; x=1691147840;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fz/NwOEGvoEXeHec7Dn/tTFzvf8PDVcmnAqz2okxdfQ=;
        b=Gm/alrkcZO6fShmmkP73cwG50w19ZQFRnus3ucAOUvHEJPzEqUgxyoSSeZcinWVg/L
         /icnIUKoagmiAQ9VcfvtZkSZPBTh7PMSuaKy8BM9EEaH1Kxhe56YxYOikKow+Vt3EbpU
         ZwFZyL4ha1/R5AEKyF5W8SsB2HuiRJu1YopPCBaBi9ptfJaanu4KbNw/WDZFw9bqKxYB
         d6jRZJlVekKkzY6gRXL3yPzR79GfIvx0/WrNoB2r58ELE73UnCUVVw//iiR0mhNIUMIw
         38LKIKm54C6PHcJaYRjM/5/9/xgDLKSOWEN03FUBjrYP32fTu3nTbSqYAviDmtu8JMnK
         ZgJw==
X-Gm-Message-State: ABy/qLajtycu1L9Vd37RHTe6//+MTIu00zkva0nFAFfbkSdTD1sgxLnX
        Y0swLcwFQQejYeYSHltC4c5zRQ==
X-Google-Smtp-Source: APBJJlGcKt9YarNcmQba12qMNWlX+E2xMBdlBA6De4k3HK38WARpy+705DNFcUbk29OfrrJOU5EVsQ==
X-Received: by 2002:a2e:9995:0:b0:2b7:ae29:88fd with SMTP id w21-20020a2e9995000000b002b7ae2988fdmr1493624lji.48.1690543040359;
        Fri, 28 Jul 2023 04:17:20 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.48])
        by smtp.gmail.com with ESMTPSA id m22-20020a7bcb96000000b003f91e32b1ebsm6852738wmi.17.2023.07.28.04.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 04:17:19 -0700 (PDT)
Message-ID: <09bd1388-02aa-32c7-319e-d7150a0f3e9c@linaro.org>
Date:   Fri, 28 Jul 2023 12:17:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 11/50] dt-bindings: crypto: add sam9x7 in Atmel TDES
Content-Language: en-US
To:     Varshini Rajendran <varshini.rajendran@microchip.com>,
        herbert@gondor.apana.org.au, davem@davemloft.net,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, nicolas.ferre@microchip.com,
        alexandre.belloni@bootlin.com, claudiu.beznea@microchip.com,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230728102442.265820-1-varshini.rajendran@microchip.com>
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20230728102442.265820-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 7/28/23 11:24, Varshini Rajendran wrote:
> Add DT bindings for atmel TDES.

NACK. The atmel crypto drivers check the version at runtime and
fill a capabilities structure based on the version identified.
There's a single compatible regardless of the version of the IP
used until now, why do you want to change it?

Please describe what motivated you to write this patch. Some people
can't take seriously a patch if it misses a proper description and
they just ignore it. Maybe it is worth re-reading:
https://www.kernel.org/doc/html/latest/process/submitting-patches.html#describe-your-changes

Cheers,
ta
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  .../devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml  | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml
> index 3d6ed24b1b00..6a441f79efea 100644
> --- a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml
> +++ b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-tdes.yaml
> @@ -12,7 +12,11 @@ maintainers:
>  
>  properties:
>    compatible:
> -    const: atmel,at91sam9g46-tdes
> +    oneOf:
> +      - const: atmel,at91sam9g46-tdes
> +      - items:
> +          - const: microchip,sam9x7-tdes
> +          - const: atmel,at91sam9g46-tdes
>  
>    reg:
>      maxItems: 1
