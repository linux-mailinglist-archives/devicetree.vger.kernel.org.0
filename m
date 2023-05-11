Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 241696FEFAF
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 12:11:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237814AbjEKKLH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 06:11:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237690AbjEKKLF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 06:11:05 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 736987EE9
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 03:10:52 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-966400ee79aso1051472566b.0
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 03:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683799851; x=1686391851;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S/wUxk8mb0F4+0m9tdABR100eghiMPixillF1+W81tk=;
        b=QKKUILJ1i6uW/2PZox53+u9cR2YS8BDWDr74NzdKwjacBu2H7a+mYUd8KgHI252F23
         yl9NUCxvsA+gWNKKJb2cw+vpO47RtsSqI9V/ZpLFM4ELHq1k7dOeohTd17s+wxD7fXak
         1h63062C4OjDodYz8tsw5I3Aue0VbcC30auZEsMN206oCyyeFKC2o3AHtF3jvWdin3nq
         WNQG0ru+LbXQ3U42nVejew1upAgZggdfZJDYCcReHJ3+GpYvmR2nvhKbHNv7rcd+Oduj
         PQx82ue45JWqsMG+LTTwa+kzfAYAfgCaaXtU1np9sxr7aswwMuJRW4yA4fV9gHAV9Al6
         3zNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683799851; x=1686391851;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S/wUxk8mb0F4+0m9tdABR100eghiMPixillF1+W81tk=;
        b=PWCpxsM7tyLhUDMsNnqY3h4tJ8rbXS8L/yCr3bu1W0H6TrOkOZdXSEp/kmGOnNQL8l
         hWjkRrI4JWK4hMNob5VbA1UNm+A4F5gQcREcxOndo5Ev2owFCnYOTD067lDwGKsRS9Gy
         /yuNFy8A9RAEc8k68ujspL3AcOyyJa+uiIMv3X7d8HD81bsn1/YOAilirnUgq2Ey+ebl
         QvqL5Bj4FwqMSP9lQncD/2x1BHP0jZbiUfMkzogegY4qTmQkeP88jT4MQr+xu1IDLt1l
         qXVoWZyjtbWaAhKPROuRG9AnptfobCScrz27XwAdn9s87wKdQ0tnpd6oIUnfw/C44hh3
         Qefg==
X-Gm-Message-State: AC+VfDwiaudBuK+K+n7W3cly+Iy7y4yNTJOLlSoSZpAbqbOhgZL5qgBV
        Wl0RMK8dY/m0d6dCpdY1uIg/Tg==
X-Google-Smtp-Source: ACHHUZ6YUp8pR6//0HIAOtdezKk0ftjN8kg3Iigpnmrh1Js0rzh2aSz+iqcJ7x1EDbVkL0W6kYlhrA==
X-Received: by 2002:a17:907:9816:b0:96a:77a2:bba with SMTP id ji22-20020a170907981600b0096a77a20bbamr824087ejc.60.1683799850859;
        Thu, 11 May 2023 03:10:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:41e7:1b68:d38e:1348? ([2a02:810d:15c0:828:41e7:1b68:d38e:1348])
        by smtp.gmail.com with ESMTPSA id z4-20020a17090655c400b009660449b9a3sm3787760ejp.25.2023.05.11.03.10.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 03:10:50 -0700 (PDT)
Message-ID: <d826ded8-69a0-013a-5bcb-256048d62702@linaro.org>
Date:   Thu, 11 May 2023 12:10:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3] ASoC: dt-bindings: nau8825: Convert to dtschema
Content-Language: en-US
To:     David Lin <CTLIN0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230510091914.590752-1-CTLIN0@nuvoton.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510091914.590752-1-CTLIN0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 11:19, David Lin wrote:
> Convert the NAU8825 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> 
> Changes:
> V2 -> V3:
>   - refine node name from "nau8825" to "codec" for generic purpose
> 
> V1 -> V2:
>   - add interrupts properties
>   - add maximum to nuvoton,jack-insert-debounce and nuvoton,jack-eject-debounce properites
>   - add a enum item for nuvoton,short-key-debounce properites
>   - add default value for most properites
>   - add maxItems to clocks properites and mclk entries to clock-names properites
>   - refine wrong indentation from clocks and clock-names
>   - refine dts example for interrupts and clocks
>   - remove headset label from dts example

Thanks.

Still few nits.


...

> +
> +title: NAU8825 audio CODEC
> +
> +maintainers:
> +  - John Hsu <KCHSU0@nuvoton.com>
> +
> +allOf:
> +  - $ref: dai-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - nuvoton,nau8825
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The CODEC's interrupt output.

Drop description.

> +
> +  nuvoton,jkdet-enable:
> +    description:
> +      Enable jack detection via JKDET pin.
> +    type: boolean
> +
> +  nuvoton,jkdet-pull-enable:
> +    description:
> +      Enable JKDET pin pull.
> +      If set - pin pull enabled, otherwise pin in high impedance state.
> +    type: boolean
> +
> +  nuvoton,jkdet-pull-up:
> +    description:
> +      Pull-up JKDET pin.
> +      If set then JKDET pin is pull up, otherwise pull down.
> +    type: boolean
> +
> +  nuvoton,jkdet-polarity:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      JKDET pin polarity.
> +    enum:
> +      - 0 # active high
> +      - 1 # active low
> +    default: 1
> +
> +  nuvoton,vref-impedance:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      VREF Impedance selection.
> +    enum:
> +      - 0 # Open
> +      - 1 # 25 kOhm
> +      - 2 # 125 kOhm
> +      - 3 # 2.5 kOhm
> +    default: 2
> +
> +  nuvoton,micbias-voltage:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Micbias voltage level.
> +    enum:
> +      - 0 # VDDA
> +      - 1 # VDDA
> +      - 2 # VDDA * 1.1
> +      - 3 # VDDA * 1.2
> +      - 4 # VDDA * 1.3
> +      - 5 # VDDA * 1.4
> +      - 6 # VDDA * 1.53
> +      - 7 # VDDA * 1.53
> +    default: 6
> +
> +  nuvoton,sar-threshold-num:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of buttons supported.
> +    minimum: 1
> +    maximum: 4
> +    default: 4
> +
> +  nuvoton,sar-threshold:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Impedance threshold for each button. Array that contains up to 8 buttons
> +      configuration. SAR value is calculated as
> +      SAR = 255 * MICBIAS / SAR_VOLTAGE * R / (2000 + R) where MICBIAS is
> +      configured by 'nuvoton,micbias-voltage', SAR_VOLTAGE is configured by
> +      'nuvoton,sar-voltage', R - button impedance.
> +      Refer datasheet section 10.2 for more information about threshold
> +      calculation.
> +    minItems: 1
> +    maxItems: 4
> +    items:
> +      minimum: 0
> +      maximum: 255
> +
> +  nuvoton,sar-hysteresis:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Button impedance measurement hysteresis.
> +    default: 0
> +
> +  nuvoton,sar-voltage:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Reference voltage for button impedance measurement.
> +    enum:
> +      - 0 # VDDA
> +      - 1 # VDDA
> +      - 2 # VDDA * 1.1
> +      - 3 # VDDA * 1.2
> +      - 4 # VDDA * 1.3
> +      - 5 # VDDA * 1.4
> +      - 6 # VDDA * 1.53
> +      - 7 # VDDA * 1.53
> +    default: 6
> +
> +  nuvoton,sar-compare-time:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      SAR compare time.
> +    enum:
> +      - 0 # 500 ns
> +      - 1 # 1 us
> +      - 2 # 2 us
> +      - 3 # 4 us
> +    default: 1
> +
> +  nuvoton,sar-sampling-time:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      SAR sampling time.
> +    enum:
> +      - 0 # 2 us
> +      - 1 # 4 us
> +      - 2 # 8 us
> +      - 3 # 16 us
> +    default: 1
> +
> +  nuvoton,short-key-debounce:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Button short key press debounce time.
> +    enum:
> +      - 0 # 30 ms
> +      - 1 # 50 ms
> +      - 2 # 100 ms
> +      - 3 # 30 ms
> +    default: 3
> +
> +  nuvoton,jack-insert-debounce:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      number from 0 to 7 that sets debounce time to 2^(n+2) ms.
> +    maximum: 7
> +    default: 7
> +
> +  nuvoton,jack-eject-debounce:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      number from 0 to 7 that sets debounce time to 2^(n+2) ms
> +    maximum: 7
> +    default: 0
> +
> +  nuvoton,crosstalk-enable:
> +    description:
> +      make crosstalk function enable if set.
> +    type: boolean
> +
> +  nuvoton,adcout-drive-strong:
> +    description:
> +      make the drive strength of ADCOUT IO PIN strong if set.
> +      Otherwise, the drive keeps normal strength.
> +    type: boolean
> +
> +  nuvoton,adc-delay-ms:
> +    description:
> +      Delay (in ms) to make input path stable and avoid pop noise.
> +      The default value is 125 and range between 125 to 500 ms.
> +    minimum: 125
> +    maximum: 500
> +    default: 125
> +
> +  clocks:
> +    description:
> +      list of phandle and clock specifier pairs according to common clock
> +      bindings for the clocks described in clock-names.

Drop desription.

> +    maxItems: 1
> +
> +  clock-names:
> +    description:
> +      should include "mclk" for the MCLK master clock.

Drop description.

> +    items:
> +      - const: mclk

You probably want also sound-dai-cells.

> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false

Best regards,
Krzysztof

