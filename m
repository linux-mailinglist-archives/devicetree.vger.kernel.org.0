Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3309655A38
	for <lists+devicetree@lfdr.de>; Sat, 24 Dec 2022 14:18:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230483AbiLXNST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Dec 2022 08:18:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbiLXNSS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Dec 2022 08:18:18 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64EB4DF8F
        for <devicetree@vger.kernel.org>; Sat, 24 Dec 2022 05:18:17 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id z26so10375703lfu.8
        for <devicetree@vger.kernel.org>; Sat, 24 Dec 2022 05:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YTPdWiUupXlyk+9L8fDSvUwO/gVy17QntHOoXtMHl9c=;
        b=UDfZ8mowsaoGBq8dza6YN/C+3RaSd8ZarIN9XC0ZfQfeBgfDQNwwl7kIDXJxoA3ddy
         RYXzrMeVtidmbzawMyOF5SdIwYSsiBpsrsD6f9/5p8L9UnC67btQkRg3JXEw/XAvMmXD
         YfDtc24BlPn/5vAO8zpIgbfNUZ/onnWxF+A0reKtD6XhX2T18J48pxe+Hw7OoMiL+49p
         AOHZzqgSDgO8SuTmyb6Xst3GgBuC1XIoVwI2sXlAk2P4FkyoOhvqR0C2Dpf/nz3PChtk
         6IbZQfWuuoGHXpo2aj9X7U1XeOlLcprH7keUzBwZiW5Nld/tXkeH/YXhc1fbCpj+eIxu
         zdXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YTPdWiUupXlyk+9L8fDSvUwO/gVy17QntHOoXtMHl9c=;
        b=50rZawvdaqTovuhPXtwCujF4ocmykfoPXsjdVK7HROZ/jHPq1vrGMibYT70JX2wrDr
         jsIzsfw+CZ5UAi3sYsiiiRpBvN/7rTQq/5ybuSa6HeZ6qqOSqNwE9lhpF7NmuaBLgwVB
         Hd48MMbXkNUohuOyhDOZSrK9oiQStVBxLgCRP34L/jaYcyEdREI/bwOkZMgzmW1UZU09
         rt/sfoux7CLNzt5js2UNdVVxtOewa2SBwTj1MY8JjizL9ZB32CF4E2kUDD5DHslT0Gwd
         DhL7MND5bK45fFAtrbA01wgkxiXbxKDxH1JQUeT5pUxrdohB29u0ZpK4cFY9KFRYImVX
         lpwQ==
X-Gm-Message-State: AFqh2krwr/0ovSFVXO2wxzh1BXqMp5mU7mnEWhpMy+MIyG7tyRRpSBfg
        4derIF++3CePda2j8q1li2g4bA==
X-Google-Smtp-Source: AMrXdXvm2iNA4DpQ7kdLXs0ilYmwia82uEkbiTRdL09Xr6Qfdc2+EyWkQsESLcVNOmoQuvKeeP2dew==
X-Received: by 2002:ac2:5604:0:b0:4a4:68b9:19da with SMTP id v4-20020ac25604000000b004a468b919damr3114277lfd.2.1671887895687;
        Sat, 24 Dec 2022 05:18:15 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id y35-20020a0565123f2300b00497ab34bf5asm944175lfa.20.2022.12.24.05.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Dec 2022 05:18:15 -0800 (PST)
Message-ID: <f7aa21e3-0c1c-8450-ee00-09162f1c59be@linaro.org>
Date:   Sat, 24 Dec 2022 14:18:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1 1/3] ASoC: dt-bindings: nau8822: convert to the
 dtschema
Content-Language: en-US
To:     Francesco Dolcini <francesco@dolcini.it>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Cc:     Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Benjamin Marty <info@benjaminmarty.ch>, kchsu0@nuvoton.com,
        wtli@nuvoton.com, David Lin <CTLIN0@nuvoton.com>,
        Francesco Dolcini <francesco.dolcini@toradex.com>
References: <20221223170404.210603-1-francesco@dolcini.it>
 <20221223170404.210603-2-francesco@dolcini.it>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221223170404.210603-2-francesco@dolcini.it>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/12/2022 18:04, Francesco Dolcini wrote:
> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> 
> Convert nau8822 devicetree binding to dtschema.
> Change file name to match dtschema naming.
> 
> Cc: David Lin <CTLIN0@nuvoton.com>
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
>  .../devicetree/bindings/sound/nau8822.txt     | 16 --------
>  .../bindings/sound/nuvoton,nau8822.yaml       | 40 +++++++++++++++++++
>  2 files changed, 40 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/nau8822.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/nau8822.txt b/Documentation/devicetree/bindings/sound/nau8822.txt
> deleted file mode 100644
> index a471d162d4e5..000000000000
> --- a/Documentation/devicetree/bindings/sound/nau8822.txt
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -NAU8822 audio CODEC
> -
> -This device supports I2C only.
> -
> -Required properties:
> -
> -  - compatible : "nuvoton,nau8822"
> -
> -  - reg : the I2C address of the device.
> -
> -Example:
> -
> -codec: nau8822@1a {
> -	compatible = "nuvoton,nau8822";
> -	reg = <0x1a>;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
> new file mode 100644
> index 000000000000..10464170a98f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8822.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/nuvoton,nau8822.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NAU8822 audio CODEC
> +
> +description: |
> +  24 bit stereo audio codec with speaker driver.
> +  This device supports I2C/SPI. Currently, only I2C bus is supported.

I would skip the last sentence - bindings are independent of OS, so the
sentence might be not true in different systems/versions.

> +
> +maintainers:
> +  - David Lin <CTLIN0@nuvoton.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nuvoton,nau8822
> +
> +  reg:
> +    maxItems: 1
> +
> +additionalProperties: false

Please put "additionalProperties" after "required:".

With above (or even without these):

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

