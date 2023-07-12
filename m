Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 047D174FEB6
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 07:32:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229718AbjGLFca (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 01:32:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbjGLFc3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 01:32:29 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FA441712
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 22:32:28 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-98dfb3f9af6so837260966b.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 22:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689139947; x=1691731947;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cm9lqU5pPuyE1DC++4NWH2zRUzX6wSqTAdFnrSF5Rww=;
        b=VNigY0kXhCTUccMmpH3lWTI7nxi83g7n5A1t1tz1XYVlSBCWD9Kg6QLd7Ops/wOXIW
         JgrqUmfdDm7UX7cnWLkVBMz95ScQmC5AjulXn8LK3+WDjp1VALtpm2QZaqJhnA0NcZQn
         74vY8XFWcy9hvefzgIeiXi9CVfmzZhB2dDky+W8StXKW5ohrK75wLI7kmcv4t0q4chrj
         G15AqQCc3VxVHvxHXXFbpi3bbtG1xGhSpn8HQ1X0Dv9tcPXm50LjdF8YHfucYTp52V5Q
         UkXEV8WZD76Tsp55o0hKxcAGY9S3gKTMPf53nhiPGnKPdRbRepfjLIHJYHqzEESRp/fk
         5cQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689139947; x=1691731947;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cm9lqU5pPuyE1DC++4NWH2zRUzX6wSqTAdFnrSF5Rww=;
        b=GY/IrGQkZlBaZqvnROWhiUirFqvxxmUljec/X3/28ZnjoMEnM/9pCP+J7/o9zaFYoX
         Fb5B7wH3j8kCOm8LrJr1gySsiD11gm2LeFkpbtrY0AYm1dqezBqMnicFrKlpVmmeEYz+
         kLOrhzwbMgPrtLJrXy6b2xk99nbtQeedecNIm9xWoIivy5QIjHvkYTo2SegJzvPethvD
         JKlhlIenCKqZcdKGneJWi4/4HlZZqK4+bsrSHmfU6BUFqYHZRgSo4Y2SGaIg/yxwW3oL
         VFpBhGtPadJ7lmb3hs5xo3dZPNhD8sZsRbew5JK2epyc73Ly7Zo4kJrIaEvhKKSom0Ga
         XPog==
X-Gm-Message-State: ABy/qLb2YAupKA7rCGf9//Su7DOh0id40ejhUv8/yQTyKih7cOL8l6Il
        V9BJxwTQIF/ZUcuP6huaUCzs9w==
X-Google-Smtp-Source: APBJJlG4YRdWN+SCSbzyfd58UWeDDH8s4zkWWVj4TV7KjDSCdVdE1A1W2FG3adOSrHXkUmi0u3mGVA==
X-Received: by 2002:a17:906:33d0:b0:992:b3a3:81f9 with SMTP id w16-20020a17090633d000b00992b3a381f9mr15779053eja.71.1689139946740;
        Tue, 11 Jul 2023 22:32:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id g11-20020a170906394b00b00982b204678fsm1976336eje.207.2023.07.11.22.32.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 22:32:26 -0700 (PDT)
Message-ID: <14bed951-22ae-4aa8-5fcb-b2cd92ebdbef@linaro.org>
Date:   Wed, 12 Jul 2023 07:32:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: add startek
 kd070fhfid015 support
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Guillaume La Roque <glaroque@baylibre.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230711-startek_display-v1-0-163917bed385@baylibre.com>
 <20230711-startek_display-v1-1-163917bed385@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230711-startek_display-v1-1-163917bed385@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2023 17:36, Alexandre Mergnat wrote:
> The Startek KD070FHFID015 is a 7-inch TFT LCD display with a resolution
> of 1024 x 600 pixels.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  .../display/panel/startek,kd070fhfid015.yaml       | 51 ++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml b/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml
> new file mode 100644
> index 000000000000..857658e002fd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/startek,kd070fhfid015.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/startek,kd070fhfid015.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Startek Electronic Technology Co. kd070fhfid015 7 inch TFT LCD panel
> +
> +maintainers:
> +  - Alexandre Mergnat <amergnat@baylibre.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: startek,kd070fhfid015
> +
> +  dcdc-gpios: true

From where does this come? Which schema defines it?

> +
> +  height-mm:
> +    const: 151
> +
> +  iovcc-supply:
> +    description: Reference to the regulator powering the panel IO pins.
> +
> +  reg:
> +    maxItems: 1
> +    description: DSI virtual channel
> +
> +  reset-gpios: true
> +
> +  port: true
> +
> +  power-supply: true
> +
> +  width-mm:
> +    const: 95
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - dcdc-gpios
> +  - iovcc-supply
> +  - reg
> +  - reset-gpios
> +  - port
> +  - power-supply

Missing example.

Best regards,
Krzysztof

