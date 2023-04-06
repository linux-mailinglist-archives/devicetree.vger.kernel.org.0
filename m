Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C79176D9F8E
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 20:12:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229764AbjDFSMN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 14:12:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238814AbjDFSMA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 14:12:00 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19CB12D7F
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 11:11:59 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50253297e7eso1533145a12.1
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 11:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680804717;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3dlTAcrGsySRcdvFlIEAdlxMvmki5beeXo1X6M8HUAI=;
        b=ybTaZYswIsB9kSiA+qHwOr2M6THedSXWNg2r1upNnTvDoVNgMlDyMeGCLzsO7NNSm6
         5Cbh4D6zo1IKDuSlTU6JS1uORX1e/PB/3o9+C1v+264VOB9eSh0muVWSbw3FFTFW12g2
         GZ6m29idMJqugoOdxtHeMseWxZcqPEDx/gCsq3Hy6qDZws8+fKQiDtnVlaAWkR78AJ5K
         Fh40ASSh5pyV3a/j+tbiH4ETWy2LV5j1/aCT2KIsh0LNizCC91bSpHSzkC9vHqXxMK4G
         oAXf0HXPO+mLSw7AfzTrVxjSTaSbS/mmQwCEvVTeUYdWSbehQHq5eveV+QS9HaeIDDRd
         jsPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680804717;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3dlTAcrGsySRcdvFlIEAdlxMvmki5beeXo1X6M8HUAI=;
        b=OJ8Dy+8tB2TWm1nUqQh/CX5QnCAvSnras8ZpiLUZTDW/kJeThdQKHvY6DDoCtXzlc9
         Bqk/hfMQlW0wcphrvQFz9H9QRDcW6Z0pUN90/qHcSdgUSbEdu5qgsEoWvnTlGKhz0tO3
         pB3unY8k2kgsJez/MvXt7oxX4IaDH1FkWbqvZJyKQzrokiu/a/+mKyKWjtB40+somPpy
         lR6+0XoGpg5ARUkgDiAqehPiAkM4aaoCIJ1hXmO8Cplhtli3MOrZ0EddQstmcDM3TtC2
         25fxilAn57ISY955NryFlSVktEapf0yLU+aHYu5fsgV2DAtqfKbmcZ1mybr3PnUxZVkG
         O5xg==
X-Gm-Message-State: AAQBX9fadXczyOb5HFjEgCxnabeeSZGyu96Oyq/vc3ke0lctjAeFY8s4
        RXplMh+eVYQHrtLmaXJIGJKt3A==
X-Google-Smtp-Source: AKy350YLeBw/Rt+uWm89BvbtIXmourGOXrTNPTJjVC12cxrxUYgvhnCNlbiIHz0DWz4hq8Sh7Nrwfw==
X-Received: by 2002:a05:6402:59:b0:502:61d8:233b with SMTP id f25-20020a056402005900b0050261d8233bmr484101edu.19.1680804717562;
        Thu, 06 Apr 2023 11:11:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id x102-20020a50baef000000b004af73333d6esm1024556ede.53.2023.04.06.11.11.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 11:11:57 -0700 (PDT)
Message-ID: <284f1538-dfe3-8d54-d20f-b47365283e74@linaro.org>
Date:   Thu, 6 Apr 2023 20:11:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [RFC PATCH] dt-bindings: arm: amlogic: add C3 bindings
Content-Language: en-US
To:     Kelvin Zhang <kelvin.zhang@amlogic.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20230406081627.4083103-1-kelvin.zhang@amlogic.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406081627.4083103-1-kelvin.zhang@amlogic.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 10:16, Kelvin Zhang wrote:
> Document the new C3 SoC/board device tree bindings.
> 
> C3 is an advanced edge AI processor designed for smart IP camera
> applications, which does not belong to Meson series.
> 
> Therefore, modify the title field accordingly.
> 
> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index 274ee0890312..ade730f35519 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -4,7 +4,7 @@
>  $id: http://devicetree.org/schemas/arm/amlogic.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Amlogic MesonX
> +title: Amlogic SoC based Platforms
>  
>  maintainers:
>    - Kevin Hilman <khilman@baylibre.com>
> @@ -211,6 +211,13 @@ properties:
>                - amlogic,aq222
>            - const: amlogic,s4
>  
> +      - description: Boards with the Amlogic C3 C302X/C308L SoC
> +        items:
> +          - enum:
> +              - amlogic,aw409
> +              - amlogic,aw419
> +          - const: amlogic,c3

Try to keep some order, e.g. between a and s.

Best regards,
Krzysztof

