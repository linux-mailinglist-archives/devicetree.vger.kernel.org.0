Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52C8D542BB3
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 11:40:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235154AbiFHJkR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 05:40:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235195AbiFHJjw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 05:39:52 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F82C19C388
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 02:07:37 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id o10so26154055edi.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 02:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=rGAq4iJpxrWH26r4v3kGADYD/+3w1lhJSCcD5FIQXdU=;
        b=O0xd2Hdn/TXw/TpQcEa4m6r6LaJMi3/Wjf8zui/j3m4s1mNB1Ak508t1pdTQu7PR3j
         Qy3Yt3JJIP4c9RPAsZBuYMm9vYU1hF2OSlXA9WPI5sKXggrKJwzrFcN/mpJDlnPWaSmX
         rQj8hHoM0cklzvFtBuT1VEji2jaNz8c66zbSAdDjePPg170tpP9rsobsg4nVyge+ngV+
         ybNN8BdagbF7r+qKjyJHO3xwLDQ2k7b51Zm99s16yP0LzD3hFEdsbhWevO/ULRqceoxm
         PGNEJzRhwBRZeSyu+YwWjGbrSiAN/AuNJiRIMz8VAn3IurSzVPzRQ9e9QEUg1kgGY362
         2n7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=rGAq4iJpxrWH26r4v3kGADYD/+3w1lhJSCcD5FIQXdU=;
        b=OFPU6apELNbV4jNpzrcaCum07brZ5o7kGrQ1s4cGhrAsV6TNbspN73up4HXOJmSXqc
         8S0O3okTNejjSxhlaVes/2ZkzYEcoq50x2kpH5nme1v/HbIzqkCgrSJ66NtUZ0tcAVMR
         w3MXcj5lV+MyBChBv8fPrjmB+n3NgZS4juqvRq/sjImKWSelYVrET1WBwSBrBOiUxGvO
         pK7qbIKOVcFbOd0Y29TxrFVreSZlD5UKt+B5oON/BWuyf/xU33BJlsD0vvqINs3hhbZd
         cfQhfIxOWA5YWrTyMDwoXHUfTEZt1DIGDanhvXOUikq8+N49rxK2T1DklkH+G8XjHHCb
         ZFog==
X-Gm-Message-State: AOAM532V2eoYOuPwICBkSnnsEXRxDNwTDLJ/BlE9xEbqDiBnwUdBRUON
        eRh8yMYDw+bdmCjRiSdUfj502g==
X-Google-Smtp-Source: ABdhPJza6k5S7+pmqbQfI8gdRti+QgJDdbBtfUOc7HjAeExYq9Q1uMmaVNDhDI7HMIbSJ/vcySsU3A==
X-Received: by 2002:a05:6402:b03:b0:42d:ce84:387a with SMTP id bm3-20020a0564020b0300b0042dce84387amr38840161edb.3.1654679249188;
        Wed, 08 Jun 2022 02:07:29 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ft29-20020a170907801d00b0071145c2f494sm5101080ejc.27.2022.06.08.02.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 02:07:28 -0700 (PDT)
Message-ID: <e3add370-de7d-db41-0a35-489fda0a3f60@linaro.org>
Date:   Wed, 8 Jun 2022 11:07:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: rt4831: Add the new ocp
 level property
Content-Language: en-US
To:     cy_huang <u0084500@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee.jones@linaro.org,
        daniel.thompson@linaro.org, jingoohan1@gmail.com
Cc:     pavel@ucw.cz, deller@gmx.de, cy_huang@richtek.com,
        lucas_tsai@richtek.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
        linux-leds@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1654677674-15417-1-git-send-email-u0084500@gmail.com>
 <1654677674-15417-2-git-send-email-u0084500@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1654677674-15417-2-git-send-email-u0084500@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 10:41, cy_huang wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Add 'richtek,bled-ocp-microamp' property to make it chooseable.
> 
> The wrong backlight ocp level may affect the backlight channel output
> current smaller than configured.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---
> Since v2:
> - Change the property name from 'richtek,bled-ocp-sel' to 'richtek,bled-ocp-microamp'.
> 
> ---
>  .../devicetree/bindings/leds/backlight/richtek,rt4831-backlight.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/richtek,rt4831-backlight.yaml b/Documentation/devicetree/bindings/leds/backlight/richtek,rt4831-backlight.yaml
> index e0ac686..0f4beeb 100644
> --- a/Documentation/devicetree/bindings/leds/backlight/richtek,rt4831-backlight.yaml
> +++ b/Documentation/devicetree/bindings/leds/backlight/richtek,rt4831-backlight.yaml
> @@ -47,6 +47,11 @@ properties:
>      minimum: 0
>      maximum: 3
>  
> +  richtek,bled-ocp-microamp:
> +    description: |
> +      Backlight over current protection level, unit in microamp.

Skip last part. Unit comes from property name.

> The current
> +      supported level is 0.9A/1.2A/1.5A/1.8A.

Define here enum instead of this text.

Best regards,
Krzysztof
