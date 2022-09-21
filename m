Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 399795BF695
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 08:47:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbiIUGrk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 02:47:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229738AbiIUGrg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 02:47:36 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 138F380F71
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:47:35 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id s6so7603163lfo.7
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=XqCu9ELggnK9S9eoq7JV1HRwRTBURGmhL5TZPWqf9Ro=;
        b=MUzfJiRIeVHdJ9JPUYwOf490fmoctqXhPmiX1ulORNcXzSaGlg9rEJklKk/SEs6N2F
         Zt4Zo6NUnIIYBsaSaNWX5qukeOzDWFLN2sWlXd5/yF59imRrvdjgS0qYuhNKO6O4E020
         w7JQYAMKlQMNHnTdaJZjZvwIK4FhW4a1BpEwIBAbkMzEEtkyW34qdsVvSujI+/J6ibPg
         CNDkgE8keqATJ7HcejZioxWNcFUTATj2J3UcW2s81lw6J2z6AwAzmZTuqwYAjUWOz0z6
         B77SyIzVZiay37r0FP6unogDEuFpjA/XKW6ljSzYbccWYmbtGeuzubYG/ll3P72miiHi
         C9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XqCu9ELggnK9S9eoq7JV1HRwRTBURGmhL5TZPWqf9Ro=;
        b=l4bLh565QngDSw3oxh5wnvoTpt2dCbfVHCyIVLp/Kx9Vx8CaAYj7uJUhRrdh0PTNKP
         CZ3MWdkoPqrvKlNUqY25MPPa2QzsP24a6N65dEWzisQH+BRpJh5MqG++SfxHdVRqTjFx
         rbIXdijBcUm5HntmmYASLlLW8fX0iw2bEwVUQrpLdTaFxFr2X/TH2qHUgZMv6PQFCeth
         vMFLhAkKyhDQ0oaNjZ8NX4S3zGLAiCzm/sZa4E7sflpOUBMol4U2zeiQX8aHW7Fqy9FH
         Z1UAkapnxWT8jWaauKEGZAIGcdn2Bc4AiEbcZPfHeVYJ1Bt4SAhhnrqHyiAhYESrTOsR
         b+rQ==
X-Gm-Message-State: ACrzQf2e6X5DbjXY76i6HNMGLBF69tAoAKba8G6Kh5/+IMMaJuiH/G8I
        XRzvsBERhXwuSMuvtOiJsvkJiw==
X-Google-Smtp-Source: AMsMyM7FZXRRnyNwpvWPuwuKTN81draCMty2wGLmnxF03YKo/ILknADN/pq/X6OiVyze2USrGKjGkQ==
X-Received: by 2002:a05:6512:239e:b0:497:a36a:9ae with SMTP id c30-20020a056512239e00b00497a36a09aemr9773812lfv.378.1663742853373;
        Tue, 20 Sep 2022 23:47:33 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m19-20020a05651202f300b0049fbf5facf4sm308046lfq.75.2022.09.20.23.47.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 23:47:32 -0700 (PDT)
Message-ID: <b21c4c3e-44b2-89d3-980b-13a9280137a2@linaro.org>
Date:   Wed, 21 Sep 2022 08:47:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3] dt-bindings: i2c: migrate mt7621 text bindings to YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arinc.unal@arinc9.com,
        sr@denx.de
References: <20220920052050.582321-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920052050.582321-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 07:20, Sergio Paracuellos wrote:
> SoC MT7621 I2C bindings used text format, so migrate them to YAML.
> There are some additions to the binding that were not in the original
> txt file. This binding is used in MT7621 and MT7628a Ralink SoCs. To
> properly match both dts nodes in tree we need to add to the schema
> 'clocks', 'clock-names' and 'reset-names'. Both 'clock-names' and
> 'reset-names' use 'i2c' as string so maintain that as const in
> the schema. Also, Properly update MAINTAINERS file to align the
> changes.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

plus two comments:

> ---
> Changes in v3:
> - Address review comment from Krzysztof:
>     - Rebase onto last kernel version.
>     - Drop address-cells and size-cells.
>     - Properly explain deviations from txt in commit message.
>     - Drop reset-names as required property.
>     - Squash previous series two commits in one to be bisectable.
> 

(...)

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/mediatek,mt7621-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +maintainers:
> +  - Stefan Roese <sr@denx.de>

You can also add yourself if you have the interest, the hardware or the
datasheets.

> +
> +title: Mediatek MT7621/MT7628 I2C master controller
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt7621-i2c
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: i2c
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: i2c
> +
> +required:
> +  - compatible
> +  - reg
> +  - resets
> +  - "#address-cells"
> +  - "#size-cells"

Similarly to spi, the clocks might be added to required properties, if
they are really needed.

Best regards,
Krzysztof
