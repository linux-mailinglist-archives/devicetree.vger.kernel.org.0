Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C1AE6E35BE
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 09:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbjDPH33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 03:29:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229715AbjDPH32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 03:29:28 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7BC6171C
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 00:29:26 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-504718a2265so7182064a12.2
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 00:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681630165; x=1684222165;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aOFw0uuOIsz0xKsPATPHwvWzm/Yzaxe08PB/6QJSEUw=;
        b=DOnW+G6iqBrWA2MOKsTFBTiRv2iaHXAi+jllIdVYapkDwKIURixteJeuxsR7WtCKzK
         JXdxs7aPnhFBwg3Ri2oQZobjgcNHln1Jj8u5lNHkHySKrEPBPNgypoqiyC9QKsQMh1vR
         +2czx9/NSluvl2kre7hsOwYnnTpM3AzRHuTIoGQ6VlXCSuY+k1ouTk+ruDEHbkKvXLZ4
         zjyDFu+WiNwODcewRx3zQRB2uRSr5KfL83zYCWq9Fxm+6I1iYY3COSWOLzhxkIz3sdFe
         oB5aNemEz+df7NGT+bKh3gB19q/kNMBnjLcJ13JZT9beQJ2bUO8csOWpabngJrUk4Gqj
         t40g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681630165; x=1684222165;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aOFw0uuOIsz0xKsPATPHwvWzm/Yzaxe08PB/6QJSEUw=;
        b=htzuwwZTm3hp6KI50/YY42BwQbrsmwGRs98xypRg1k2lSr0DHWXdoYxzWHPBC/aon2
         d9VjTXnzyK6EmZrEU5SjtaGwrXA18oGy4roVFzQpbLpjjBTzXPkAjPXSZfrt5oiAGxzH
         fpnvq0j6UbxX+Es3zJMoG9wPShWk/v3A+aCk+ouys30+PDDG+gWQObXlCOFKLl2rWwkN
         rsenW+RWyRIKhxXV+AFW2ZD6S0uLNVEQ/yRoxLTph/I7E+fn8zIDhg4gflNd0YCIInXl
         RKZy4QA8fqIl6DS0554QkGD4IaEI/Hqytr+cMpcclvyLbzCNG/G9jZdmKFrmsxrGVIsY
         YfLw==
X-Gm-Message-State: AAQBX9f6+1x2wLfa5aQWB5swQgWpaSieOZhYo+7gwn6Vtm9Iy1NHt0wp
        jFqHtco233fgxJeP02vLAdLKJQ==
X-Google-Smtp-Source: AKy350Ythj50Bg33yVvszp2GfBH+aJINJcdc8fACiNjOd/SXOv1SxMI+qB7o0aYnA8GRIbGpjBHAyg==
X-Received: by 2002:a50:ee0f:0:b0:506:7c83:87e7 with SMTP id g15-20020a50ee0f000000b005067c8387e7mr8207377eds.41.1681630165251;
        Sun, 16 Apr 2023 00:29:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:29dd:ded4:3ccc:83db? ([2a02:810d:15c0:828:29dd:ded4:3ccc:83db])
        by smtp.gmail.com with ESMTPSA id x23-20020a170906135700b0094f0621cd27sm2262844ejb.55.2023.04.16.00.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 00:29:24 -0700 (PDT)
Message-ID: <01a997c9-ea2c-469e-8de7-7a376b880f23@linaro.org>
Date:   Sun, 16 Apr 2023 09:29:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 6/6] dt-bindings: iio: st-sensors: Add LSM303D
 accelerometer+magnetometer
Content-Language: en-US
To:     Marius Hoch <mail@mariushoch.de>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Denis Ciocca <denis.ciocca@st.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Hans de Goede <hdegoede@redhat.com>
References: <20230415231130.115094-1-mail@mariushoch.de>
 <20230415231130.115094-7-mail@mariushoch.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230415231130.115094-7-mail@mariushoch.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/04/2023 01:11, Marius Hoch wrote:
> Same as the lsm9ds0, except that the lsm303d doesn't
> feature a gyroscope.
> 
> Signed-off-by: Marius Hoch <mail@mariushoch.de>
> ---
>  Documentation/devicetree/bindings/iio/st,st-sensors.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> index c6201976378f..194aca5542c2 100644
> --- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> +++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
> @@ -85,6 +85,7 @@ properties:
>        - description: IMUs
>          enum:
>            - st,lsm9ds0-imu
> +          - st,lsm303d-imu

The entries are ordered by name.

With fixed:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

