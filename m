Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54F866F6946
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 12:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbjEDKts (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 06:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230172AbjEDKtq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 06:49:46 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 850DB4C2D
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 03:49:42 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-50bc3088b7aso554918a12.3
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 03:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683197381; x=1685789381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ijejTY9A5l5sCeqYd4iecgvq6mxZnReLL8evvRwo+9I=;
        b=Sb+/lqZnX/i/xFFxFZqZyRmxH7apRXMMT/CsCULMDKEXH3t6CkMuBufANaGmZuiClk
         AdzqJgWgi5s7/JQXnq9Z44iudW/GbHDMyDWCjORKq8N04JKCXYVpC0VFA406VqrAEO59
         V7x14wquUR/NSt3gpVfZIYQOE23Db2BSwWruCF5XmOtingOY9aTjFucPwuhblUQAcYld
         yiQjqJLuChPTWmXJALKdyMzPaFihXqxxTvFjddRqNcoW+slUzxZoiHNZq9Bv9Oc+nhvD
         Mzg8PFG/I/qHUy3y+o07F9TcpqxzOQhrqorYh/a9hssAnNCSuFNDwN3kBNzPXj+Bqb/D
         G7OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683197381; x=1685789381;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ijejTY9A5l5sCeqYd4iecgvq6mxZnReLL8evvRwo+9I=;
        b=LV7h+YHlY39taETT5UURL7EM1xsb/u9DesmUqeuSBQlXegVabFGaZFuZdHhLHLjhAI
         hIMZT1QTHfyfKaIb5wOlw7VHHmYu3xeftFF4LIJ7/FENuBYh8Rj0F1gTq7skQ3XTB8P5
         cXUlIoIIY0dD97o7tEG1xZQF/ySu7s30sNfs+FP/doHNdBgh0dfMfw48DxP7SfyiQOxw
         /ROtR1yr9UKaOL/6ogz4q+aldyXf7Mwqs6HlcbDrqBhjVFvjHqsJVvDJ/5EA/uECwPW0
         1ChL8cQySJabco2w962Hde3w1ZWVLAp/Oa85xBfG6Df1hcrFb8dI1G2XPzz23EUjG9j/
         QO3w==
X-Gm-Message-State: AC+VfDw9RD4YVMFLnpcI/Rq6mUu7zLdEbvXigDPsXIoXAi70x8mmfcOM
        RN+GTUUNuYwzH3zmmfZZewDYjrat4S1S2SEqaosTjg==
X-Google-Smtp-Source: ACHHUZ6b7lxd8rsEGUG1s6s8pUCyRZtddm7ZY+NRU7xZ6jrcd5uUq59K9PzIZAdQdNvCMY7cGt+I2w==
X-Received: by 2002:a17:906:da8a:b0:94f:553:6fd6 with SMTP id xh10-20020a170906da8a00b0094f05536fd6mr5833388ejb.24.1683197380956;
        Thu, 04 May 2023 03:49:40 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id hx4-20020a170906846400b009659ad1072fsm1132309ejc.113.2023.05.04.03.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 03:49:40 -0700 (PDT)
Message-ID: <ea8c85e1-3bc1-14ce-90d4-27915bcef631@linaro.org>
Date:   Thu, 4 May 2023 12:49:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 2/2] dt-bindings: iio: imu: mpu6050: Add icm20600
 bindings to mpu6050
Content-Language: en-US
To:     Hermes Zhang <chenhuiz@axis.com>, jic23@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Jean-Baptiste Maneyrol <jmaneyrol@invensense.com>
Cc:     linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@axis.com, Lars-Peter Clausen <lars@metafoo.de>,
        devicetree@vger.kernel.org
References: <20230504091421.2054451-1-chenhuiz@axis.com>
 <20230504091421.2054451-3-chenhuiz@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230504091421.2054451-3-chenhuiz@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2023 11:14, Hermes Zhang wrote:
> ICM-20600 is almost same as ICM-20602 which already support in mpu6050
> driver. Specify "invensense,icm20602" as a fallback compatible
> 
> Signed-off-by: Hermes Zhang <chenhuiz@axis.com>
> ---
> 
> Notes:
>     v2: require specifying "invensense,icm20602" as a fallback compatible
>         in the binding, as suggested
> 
>  .../devicetree/bindings/iio/imu/invensense,mpu6050.yaml        | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
> index ec64d7877fe5..711a1beeaecf 100644
> --- a/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
> +++ b/Documentation/devicetree/bindings/iio/imu/invensense,mpu6050.yaml
> @@ -33,6 +33,9 @@ properties:
>        - items:
>            - const: invensense,icm20608d
>            - const: invensense,icm20608
> +      - items:
> +          - const: invensense,icm20600
> +          - const: invensense,icm20602

Don't stuff entries at the end. This should be rather before above
icm20608 entry.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

