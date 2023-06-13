Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC03872E182
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 13:26:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242107AbjFML0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 07:26:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242138AbjFML0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 07:26:16 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F430EC
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 04:26:05 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5151934a4e3so8015080a12.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 04:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686655563; x=1689247563;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MxZ6Fqrfi2cMMSMAViqpb7jaNUE5MqfoSxIZcIQgJAg=;
        b=lNhZVWQJJcFRbzPuZKmhRJg5BKsYzf5QSNIi6tuaPQJlatEh6slm3faM7Wyszujhc9
         4rr+yJGh8O5G4pl/qcRNxesE5fPGWUtK/uFkq7xanZ7WnMfytPEzbrtruB6CzyZ0ifoA
         CPkBi+W6q268emPoS0ZiWClpIGGgUGdfgriXLhPEHC/PhbYsA6IPQmXw9RdRRTrXh29W
         dI43btoRKS5EdmvLeLFsfhCazzEHb1fT/pllNIIlkFnMN9He5GNOiZeh5xcsFvKaI1OZ
         BwD8BBo7qg6LilLjcgqjMQzi/duVeDklGOBGGULCQZInlaZk206ESFQh95fc/aAg6axD
         QHlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686655563; x=1689247563;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MxZ6Fqrfi2cMMSMAViqpb7jaNUE5MqfoSxIZcIQgJAg=;
        b=Cfjv11Gx9zo+ZAj+D/tEIF5ebEvQ6DO5CtOca/COYjkfWMoeHUDP6HJ1dBGlV1+mBF
         KN65sbP/8Yiay7NbgkaNZLloQaKhS2B9I1ZNjii/U6fp5wk4ShrDW0/onOH1Uk8fq26+
         ISrlvd5EmAEOf3oXHQk1oR1ViQemB6Y08BT4kiCshAZ3TPuPgSxXoMpE1L7xozZ9eg/L
         FOUEh/cmBf+Df8o70WOum1zY65Jneuez4dIecCvdDWYzQcFOnfVxhDz4ExQSuDvrJ3/4
         sCHeuOEXCAbNmfpSo21JWuD9oo24vpxm6OiViAn34PwSgm6ADcJKMElER16macfdkE3x
         y8qw==
X-Gm-Message-State: AC+VfDxrQF+Aw+YgLzTKsOZupHFH8620ud6wudwg90h4TBMf67N1x/Sf
        e9gS5sSqGrKzYbMHvQeRuqCdIw==
X-Google-Smtp-Source: ACHHUZ7XRANA1hIZ2bfFjOqgLiXrSL2yIMdblUbXWYP+hD/zhiX6bByb6ir8esTl9bROzmmntuvOfQ==
X-Received: by 2002:aa7:d901:0:b0:50d:8979:5722 with SMTP id a1-20020aa7d901000000b0050d89795722mr6174692edr.39.1686655563454;
        Tue, 13 Jun 2023 04:26:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id n27-20020a056402515b00b00502689a06b2sm6253637edd.91.2023.06.13.04.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 04:26:03 -0700 (PDT)
Message-ID: <3bf05cf5-de8f-27d5-343f-975293492a90@linaro.org>
Date:   Tue, 13 Jun 2023 13:26:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT
 schema format
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230608081547.442763-1-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608081547.442763-1-alexander.stein@ew.tq-group.com>
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

On 08/06/2023 10:15, Alexander Stein wrote:
> Convert the binding to DT schema format.
> Since commit 514b044cba667 ("ASoC: tlv320aic32x4: Model PLL in CCF")
> clocks & clock-names = "mclk" is mandatory, it has been added to required
> properties as well. '#sound-dai-cells' is added for reference from
> simple-audio-card.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---



> -	aic32x4-gpio-func= <
> -			0xff /* AIC32X4_MFPX_DEFAULT_VALUE */
> -			0xff /* AIC32X4_MFPX_DEFAULT_VALUE */
> -			0x04 /* MFP3 AIC32X4_MFP3_GPIO_ENABLED */
> -			0xff /* AIC32X4_MFPX_DEFAULT_VALUE */
> -			0x08 /* MFP5 AIC32X4_MFP5_GPIO_INPUT */
> -		>;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/tlv320aic32x4.yaml b/Documentation/devicetree/bindings/sound/tlv320aic32x4.yaml
> new file mode 100644
> index 0000000000000..ebf84cdcb68d5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/tlv320aic32x4.yaml

Filename based on compatibles, so at least vendor prefix missing.

> @@ -0,0 +1,103 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2019 Texas Instruments Incorporated
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/tlv320aic32x4.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments TLV320AIC32x4 Stereo Audio codec
> +
> +maintainers:
> +  - Alexander Stein <alexander.stein@ew.tq-group.com>
> +
> +description: |
> +  The TLV320AIC32x4 audio codec can be accessed using I2C or SPI
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ti,tas2505
> +      - ti,tlv320aic32x4
> +      - ti,tlv320aic32x6
> +
> +  reg:
> +    description: |
> +      I2C address or SPI chip select of the device

Drop description. Instead missing maxItems.

> +
> +  clocks:
> +    items:
> +      - description: Master clock
> +
> +  clock-names:
> +    items:
> +      - const: mclk
> +
> +  av-supply:
> +    description: Analog core power supply
> +
> +  dv-supply:
> +    description: Digital core power supply
> +
> +  iov-supply:
> +    description: Digital IO power supply
> +
> +  ldoin-supply:
> +    description: LDO power supply
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: |
> +      GPIO used for hardware reset

Drop description, it's obvious.

> +
> +  '#sound-dai-cells':
> +    const: 0
> +
> +  aic32x4-gpio-func:
> +    description: |
> +       GPIO function configuration for pins MFP1-MFP5.
> +       Types are defined in include/sound/tlv320aic32x4.h
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 5
> +    maxItems: 5
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - iov-supply

allOf goes here. Missing ref to dai-common.

> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      not:
> +        required:
> +          - ldoin-supply
> +    then:
> +      required:
> +        - av-supply
> +        - dv-supply
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      codec: tlv320aic32x4@18 {

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +        compatible = "ti,tlv320aic32x4";
> +        reg = <0x18>;
Best regards,
Krzysztof

