Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E1CA6732FB
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 08:54:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbjASHyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 02:54:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbjASHxk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 02:53:40 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA84966FA1
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 23:53:26 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso597541wmq.5
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 23:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I41afAp50ThfIZBbkmftL5UkvzCDEYxkYCUvpVfh/EM=;
        b=HE8WdT3pWzxZ6gjlStGq13uSGBDOtohUxxSXEf6R7sNh938MnoR546yTqwnn+FzbcL
         rQ4TEvDapnPgRTwRP1c9xOjEzCrRWtLPp4ADPtVVZbt6hpa5j/xznnfK13iqr1l8jYMc
         5kQcw1GKxkGRGYMG9W4+Zbt+12QS/tuWea3jUs4eTeyMYaQ0JFgv0GSxeOngrAq3LswH
         8pp97oniQYkcvpGTBBk4o5GL0cGT/0OBlATX7ao3UErCXWut2NBxzpWzVLaYAan3svsC
         Y8zPIMVRGd+iWfmdthmLSzF4UYVNyg9Zz5QJ0PxZUZeHEOGqwXNn8Karu2NhegHbq/5N
         bsvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I41afAp50ThfIZBbkmftL5UkvzCDEYxkYCUvpVfh/EM=;
        b=nyylfu2oQji93mqmsTJO+UVNbWWP0OmKrYJvElCP4QHys/KtxZfw+dn8SkFQh5WIaw
         ubrmBmx+3/oG/K3YNbDiDksBueU8Vn3IQv1fdfXFvpCoyTuI7QTE2JfssAGXL4XnO/eM
         RJkkrSZqNPn1LcuuBDM2Qn8SRzHX7H8OtE4W4aYXWDfpELukEomvT7JDYI7XDFcEutMO
         R8rbOjqXTjYKnWRmT9y79+4E75iCtol7k65bHsfJm/e+dDkAh8lAYTipdRYoka0RUBZQ
         05Pd721ckp04B6N/HJoof7LwQfML7DZXnjSN0S+QwB4RLYILKKyOWR6Z1TU58NG1/qrW
         K24w==
X-Gm-Message-State: AFqh2koMsiOW8xFnCKvycLoyY3ykawdcRxVx7HOsnTdskL+6QkjctQs9
        uDgvgUD+hQoiSNSlb5ck3EPpJA==
X-Google-Smtp-Source: AMrXdXvpOBZpHXMS5RRtgrOG/uUbAYznTGpZmf6qxPe8vSG1zDNye5RlASDIPOiFN5i2hclX+ap5bg==
X-Received: by 2002:a1c:4c04:0:b0:3d9:f0d8:708c with SMTP id z4-20020a1c4c04000000b003d9f0d8708cmr17941464wmf.26.1674114805332;
        Wed, 18 Jan 2023 23:53:25 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b11-20020a05600018ab00b002be2279f100sm7116539wri.96.2023.01.18.23.53.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 23:53:24 -0800 (PST)
Message-ID: <42be3c33-1055-a63e-d0ad-673d85c27d3e@linaro.org>
Date:   Thu, 19 Jan 2023 08:53:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v9 03/15] dt-bindings: spi: cdns: Add compatible for AMD
 Pensando Elba SoC
Content-Language: en-US
To:     Brad Larson <blarson@amd.com>, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-spi@vger.kernel.org, adrian.hunter@intel.com,
        alcooperx@gmail.com, andy.shevchenko@gmail.com, arnd@arndb.de,
        brad@pensando.io, brendan.higgins@linux.dev,
        briannorris@chromium.org, brijeshkumar.singh@amd.com,
        catalin.marinas@arm.com, davidgow@google.com, gsomlo@gmail.com,
        gerg@linux-m68k.org, krzk@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        skhan@linuxfoundation.org, suravee.suthikulpanit@amd.com,
        thomas.lendacky@amd.com, tonyhuang.sunplus@gmail.com,
        ulf.hansson@linaro.org, vaishnav.a@ti.com, will@kernel.org,
        devicetree@vger.kernel.org
References: <20230119035136.21603-1-blarson@amd.com>
 <20230119035136.21603-4-blarson@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119035136.21603-4-blarson@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/01/2023 04:51, Brad Larson wrote:
> Document the cadence qspi controller compatible for AMD Pensando
> Elba SoC boards.  The Elba qspi fifo size is 1024.
> 
> Signed-off-by: Brad Larson <blarson@amd.com>
> 
> ---
> 
> Changes since v6:
> - Add 1024 to cdns,fifo-depth property to resolve dtbs_check error
> 
> ---
>  .../devicetree/bindings/spi/cdns,qspi-nor.yaml     | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> index 4707294d8f59..a6556854234f 100644
> --- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> +++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
> @@ -20,11 +20,23 @@ allOf:
>        required:
>          - power-domains
>  
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - amd,pensando-elba-qspi
> +    then:
> +      properties:
> +        cdns,fifo-depth:
> +          enum: [ 128, 256, 1024 ]
> +          default: 1024

This won't work either... did you test it? Is 1024 really allowed?

> +
>  properties:
>    compatible:
>      oneOf:
>        - items:
>            - enum:
> +              - amd,pensando-elba-qspi
>                - ti,k2g-qspi
>                - ti,am654-ospi
>                - intel,lgm-qspi
> @@ -48,7 +60,7 @@ properties:
>      description:
>        Size of the data FIFO in words.
>      $ref: "/schemas/types.yaml#/definitions/uint32"
> -    enum: [ 128, 256 ]
> +    enum: [ 128, 256, 1024 ]

The answer is here - your change is meaningless... I mean, really think
about it, why do you allow 1024 only for your variant and then
immediately allow for all variants? This does not make sense.

If you tested with proper patch you would see:

elba-asic.dtb: spi@2400: cdns,fifo-depth:0:0: 1024 is not one of [128, 256]


>      default: 128
>  
>    cdns,fifo-width:

Best regards,
Krzysztof

