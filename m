Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B57756E2B91
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 23:15:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjDNVPM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 17:15:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229704AbjDNVPM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 17:15:12 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3180E55A6
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 14:15:10 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-504eac2f0b2so3116037a12.3
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 14:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681506908; x=1684098908;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dsPAZy8oT/gx/RIMzxg6Bp+0QvzJZgMJ6bFFeDXY5Cc=;
        b=GGpjFtvuTy7pv6U2vaUtIKWBUV1xOIgiJNDinQWvpG1r2Nx1ehedUTJsP/uL8NuN52
         XlE2LnyNKTs0hr/pUYHacGKQ+Iu9nanV1Um8QZfQE4eHNhGGr8bJAszJNOJbax5LgIo8
         ZMOdvvZHS+LMMB2Hvop/t7EK8Zj/M+NRmqYofvtiE4/gPdk/K/cWiBuLutRrSkV4gIRe
         1J3GvHiSNCjGvtOL17Y+sGiyCs4CKT+SdAL/80tveIr9wT0Xh7htcXdaWoBeQIKJ0Cq5
         aAfawxNX92rEw8bZgOjg+FMREXa0LZNVRAzEqOtM7Qq+oekZ5Kq0R81E/XayhYE6resk
         GZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681506908; x=1684098908;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dsPAZy8oT/gx/RIMzxg6Bp+0QvzJZgMJ6bFFeDXY5Cc=;
        b=TH2dgxoKh8sQvrDr4C1qXhi7MOqOcgQPQlA/wEcZmcbGo1KEU57+iz9452l1dyGbxU
         WvLcwbh2VNXE/wxHnhpq0PUm55VrMm4FMff4YlDcCMVbDWWw4rCUDyTIG8k7g5jdDNmH
         nJD/lkFg9yWL8prOuhdaxesP+FMj/cfL/6lgY1QhGhzsXGejWjAAC2YUrA3e91OeyMO8
         1TW2FcETqX7BHkjZoF60rSrOUDNPRMyVbOnVjV9118LeoaqxV1Y7Wjrm+Ue4sfP/ggzM
         zqD2QrCGS06CTqLmjR3lylal/YiZYcOEZsOWZ4pl13bzhPjwgH1qzy43qOdGWYmbMkL+
         RkxQ==
X-Gm-Message-State: AAQBX9cfMh+38dEL5oUY2gUMryGmsUQD9o1npWS8EgAegYYEAXbs2PpV
        /QG6oPc0yj93G5UIW8FszqAxQQ==
X-Google-Smtp-Source: AKy350Yf2LNrtc0+ouPHuBOO3MiIaDU6TxiCbXcYu4CNrZ1PVQic1v0SRHDCWbvRNAuFjEz34A6X3A==
X-Received: by 2002:aa7:c043:0:b0:504:77ed:ac87 with SMTP id k3-20020aa7c043000000b0050477edac87mr7473679edo.5.1681506908652;
        Fri, 14 Apr 2023 14:15:08 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ffae:8aab:ae5a:4688? ([2a02:810d:15c0:828:ffae:8aab:ae5a:4688])
        by smtp.gmail.com with ESMTPSA id l12-20020a056402344c00b00504803f4071sm2531724edc.44.2023.04.14.14.15.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 14:15:08 -0700 (PDT)
Message-ID: <5219fd85-23fb-21f8-d765-9f862ea143ec@linaro.org>
Date:   Fri, 14 Apr 2023 23:15:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/2] dt-bindings:iio:adc: add max14001 bindings
Content-Language: en-US
To:     Kim Seer Paller <kimseer.paller@analog.com>, lars@metafoo.de,
        jic23@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230414102844.21579-1-kimseer.paller@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230414102844.21579-1-kimseer.paller@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2023 12:28, Kim Seer Paller wrote:
> Add bindings for MAX14001.
> 
> The MAX14001 is configurable, isolated 10-bit ADCs for multi-range
> binary inputs.

Subject: missing spaces between prefixes.

Subject: drop second/last, redundant "bindings". The "dt-bindings"
prefix is already stating that these are bindings.

> 
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
> ---
>  .../bindings/iio/adc/adi,max14001.yaml        | 83 +++++++++++++++++++
>  MAINTAINERS                                   |  7 ++
>  2 files changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml b/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> new file mode 100644
> index 000000000..4546bf595
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,max14001.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2023 Analog Devices Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,max14001.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MAX14001 ADC device driver

Drop device driver. Bindings are for hardware, not Linux drivers.

> +
> +maintainers:
> +  - Kim Seer Paller <kimseer.paller@analog.com>
> +
> +description: |
> +    Single channel 10 bit ADC with SPI interface. Datasheet
> +    can be found here:
> +      https://www.analog.com/media/en/technical-documentation/data-sheets/MAX14001-MAX14002.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max14001
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 5000000
> +
> +  vref-supply:
> +    description: Voltage reference to establish input scaling.
> +
> +  adi,use-fadc:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    type: boolean

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Keep one.

> +    description: If set, the filtered ADC data (FADC register) will be read,
> +                  otherwise the unfiltered ADC data (ADC register) will be read.

Hmmmm, looks familiar. Don't we have existing property for this?

> +
> +  adi,inrush-mode:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    type: boolean
> +    description: If set, the device will use FAST inrush mode,
> +                  otherwise the device will use ADC controlled inrush mode.
> +
> +  adi,filter:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 0, 1, 2, 3 ]
> +    description: |

Do not need '|' unless you need to preserve formatting.

> +      0: Filtering off
> +      1: Average 2 readings
> +      2: Average 4 readings
> +      3: Average 8 readings

Isn't this also matching existing property for number of sample averaging?

> +
> +  adi,current-source:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    type: boolean
> +    description: If set, the 70uA current source will be connected to the REFIN pin,
> +                  otherwise the current source will be turned off.
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        status = "okay";

Drop status

> +
> +        adc@0 {
> +            compatible = "adi,max14001";
> +            reg = <0>;
> +            spi-max-frequency = <5000000>;
> +            vref-supply = <&vref_reg>;
> +            adi,use-fadc;
> +        };
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 0e64787aa..766847ad2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12573,6 +12573,13 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/sound/max9860.txt
>  F:	sound/soc/codecs/max9860.*
>  
> +MAX14001 IIO ADC DRIVER

Are you sure you ordered it correctly?

Best regards,
Krzysztof

