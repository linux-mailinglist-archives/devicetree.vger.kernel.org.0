Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3048F52CFE5
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 11:55:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230322AbiESJze (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 05:55:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234712AbiESJzd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 05:55:33 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C8257DE21
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 02:55:31 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id p22so8151072lfo.10
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 02:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8iF3UaHJz/R8aM+s3URNlw0NT0xF2iDl2EcZdkvvV7A=;
        b=J5wsDWlXmp/UzvINznrAJAUAdPcIzVa7wDjgy9N+NieAwbj0HWAlRVWRMXoUPG9zoM
         Xb1FmAVgosK0gmu+DYtRFaGr0quMZU1bXpckGQQm9DdtpEvTyxkBqUPDlIwExhkjXOcN
         1XvkI5lrs4prNpHZRlnq8lgYTNR/qs66Jd2JaNeizc+/z+PhQ9JClNIT5rsQuWGcKOZE
         hGyYhpj1EwWR9xKp0Z4OuG0A7Oe2pJtCrzHe8zvUDcD9IpW2pVOkeOl70Lx+rGNk9/Ce
         SUE7rnhhXwIuYQf+qmdLwEnrDZrtk4xEPm4EbfEMPUyVdvsnB6cerUlhz6Y3lZqs+5jh
         ujtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8iF3UaHJz/R8aM+s3URNlw0NT0xF2iDl2EcZdkvvV7A=;
        b=2sNqUcZknRxLv4oGJa//Z8rwm06s4zGXvU3Di1VFyMjdGrsChTTQMV9Wa+7QbEoJV/
         UvYbjZCvJ3wh23kqyz6L5EOYvFX2Lg+5QZ2zcbWy9ZSLjZlwSe82rt9BVEg4PpHaryZU
         rGTficLaHMR6esEdArwx0EQxzAoJfr7ulMMiZ0bNfNiA3EcOvHlFXun3/mwaS3ioha6J
         B4+NY3RJj1qROgMp/VCXo4X1KZCZOMjfytrsW0mfhr/OIK14uJLpukVRf0aiU2cZ+CC9
         O1fPZvxriSdlHacncfpV2oZu5pnXYpWHsFQ7TwKaVZ7MU0YAYH5DqJKFEck0ga34VpHe
         WjIw==
X-Gm-Message-State: AOAM531PPm98hSEaeliSp4849VQIaRWubPMpVA0CskUmRfVBj2VbFTiq
        L7xAoCoIDy/ACg/msMlT86yWXA==
X-Google-Smtp-Source: ABdhPJwakRuYm2xbt6qvpG2AHFU6Zu0vMbIHjSqxKArsiDl1n3n0t47ceOw05iSjNDeb+xPurQc/xQ==
X-Received: by 2002:a05:6512:401d:b0:473:c7e2:f3ca with SMTP id br29-20020a056512401d00b00473c7e2f3camr2800141lfb.153.1652954130006;
        Thu, 19 May 2022 02:55:30 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u1-20020ac24c21000000b0047255d2118csm232098lfq.187.2022.05.19.02.55.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 May 2022 02:55:29 -0700 (PDT)
Message-ID: <95f3f0a4-17e6-ec5f-6f2f-23a5a4993a44@linaro.org>
Date:   Thu, 19 May 2022 11:55:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 4/5] dt-bindings: net: Add documentation for optional
 regulators
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, andrew@lunn.ch,
        broonie@kernel.org, calvin.johnson@oss.nxp.com,
        davem@davemloft.net, edumazet@google.com, hkallweit1@gmail.com,
        jernej.skrabec@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        kuba@kernel.org, lgirdwood@gmail.com, linux@armlinux.org.uk,
        pabeni@redhat.com, robh+dt@kernel.org, samuel@sholland.org,
        wens@csie.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
        netdev@vger.kernel.org
References: <20220518200939.689308-1-clabbe@baylibre.com>
 <20220518200939.689308-5-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220518200939.689308-5-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/05/2022 22:09, Corentin Labbe wrote:
> Add entries for the new optional regulators.

Please explain why do you need it.

> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> index ed1415a4381f..bd59e5cc0a55 100644
> --- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> +++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> @@ -153,6 +153,15 @@ properties:
>        used. The absence of this property indicates the muxers
>        should be configured so that the external PHY is used.
>  
> +  regulators:
> +    description:
> +       List of phandle to regulators needed for the PHY

I don't understand that... is your PHY defining the regulators or using
supplies? If it needs a regulator (as a supply), you need to document
supplies, using existing bindings.

> +
> +  regulator-names:
> +    description:
> +      List of regulator name strings sorted in the same order as the
> +      regulators property.
> +
>    resets:
>      maxItems: 1
>  


Best regards,
Krzysztof
