Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E6057830C2
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 21:13:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjHUTJU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 15:09:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229780AbjHUTJT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 15:09:19 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9201E12F
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 12:09:17 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99c4923195dso481324766b.2
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 12:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692644956; x=1693249756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7hcH1ALy9H3tDFbJm3wOr+HufOrkenlcpo1T0f8uoLM=;
        b=pxa0wXE/5oGnhSoCyTQ5U46dOE9bRw8Kl1hcdFUzEezfUfcDQmZApGb36Vr/K2Pipo
         eY5VO/GjybV42vbspiu9YRDi0BKVQh1G5NxVyKjLBZ7s/eLRmxS4oUKAa6bAaDdkiFPv
         +HvU0B9G0RmZdfyc50gecYusUpFmhVlNczrLR00+5hez4Zb94XJ0orfLLqUk07/+mt/C
         a99IrH9Y8rRsX8mTE947FGWjSuyRhQIE1OhaqgEbHApX7wvDeJZ+Cr0cQZnmuMygAs0K
         leZO5XiSll/gRS8+sQp23HkNgleBWQd6jLYKEpooPRv3/792bSVXbmHZmwEQBSMMnQIA
         JJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692644956; x=1693249756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7hcH1ALy9H3tDFbJm3wOr+HufOrkenlcpo1T0f8uoLM=;
        b=Cd0ySU3ErPepT8ogqKirhxhEtYTlmcQI5FGw1IHTJniono43dHedy8Mxo+0AiSypj7
         x2NWmY0u/Mavt+4bsaLDclKNXUmnUb1XbTmoc72wdtY6VzTg9ulS67mNtBgTtP5pp0VU
         OsEWMml51W/UumLc3J+Fr2La/sjEQ97AiRKMLbxY6KZUHErV5hJBg1pCVontFUUCcpuG
         p+wviOFbNSRk6KKdAcR7ic/iM5beZo6RcCqHKdr13tAnhtkaDDZ+b+7XUOS1KQ0PcHHn
         pYkrcY1iGIhdzear3VVj8QDnyoP+vUHBM9N747gTG/jPUpBizlcEVJZIYZiEHzxx0yr+
         Yzcg==
X-Gm-Message-State: AOJu0Yxt4AQKRuqCndTi7En6/8alu4+K6bdo2BpSmggIqe4Sz/sTTKv0
        6hW+F9BkgcZRgeKaOzl2JEDm2cEUyz7ftnM5eWg=
X-Google-Smtp-Source: AGHT+IHOXwU5zBh/FCh6APGxe0258tOTWE5VlIe7CGEdtJVLH8z/Wa01dvGw8u3T21KyspeVVm8Glg==
X-Received: by 2002:a17:906:1099:b0:99d:5adc:fdff with SMTP id u25-20020a170906109900b0099d5adcfdffmr5786196eju.45.1692643262214;
        Mon, 21 Aug 2023 11:41:02 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id l12-20020a17090612cc00b0098de7d28c34sm6956195ejb.193.2023.08.21.11.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 11:41:01 -0700 (PDT)
Message-ID: <e3d53646-9d04-d599-0670-a43f3c4a7d3e@linaro.org>
Date:   Mon, 21 Aug 2023 20:41:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/2] dt-bindings: regulator: Add MAX77503 regulator
 bindings
To:     Gokhan Celik <gokhan.celik@analog.com>, outreachy@lists.linux.dev
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <cover.1692634090.git.gokhan.celik@analog.com>
 <50b983f2eb74aab5947cf7721770983b51ffd949.1692634090.git.gokhan.celik@analog.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <50b983f2eb74aab5947cf7721770983b51ffd949.1692634090.git.gokhan.celik@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/08/2023 18:28, Gokhan Celik wrote:
> Add bindings for MAX77503 buck converter.
> 
> Signed-off-by: Gokhan Celik <gokhan.celik@analog.com>

Subject:
regulator: dt-bindings:

and drop final, redundant "bindings"

> ---
>  .../regulator/adi,max77503-regulator.yaml     | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml
> new file mode 100644
> index 000000000000..0d351225e107
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.yaml

Filename like compatible.

> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2023 Analog Devices, Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/adi,max77503-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices MAX77503 Buck Converter
> +
> +maintainers:
> +  - Gokhan Celik <Gokhan.Celik@analog.com>
> +
> +description: Analog Devices MAX77503 Buck Converter
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max77503
> +
> +  reg:
> +    description: I2C address of the device
> +    items:
> +      - enum: [0x1e, 0x24, 0x37]
> +
> +  regulator:

Why having this intermediate node? It's useless for one regulator, isn't it?


> +    type: object
> +    $ref: regulator.yaml#
> +    additionalProperties: false

You should rather use unevaluatedProperties:false and drop these ":true"
properties below.

> +    description: |
> +      Buck regulator
> +
> +    properties:
> +      regulator-name: true

Drop

> +      regulator-always-on: true

Drop

> +      regulator-boot-on: true

Drop

> +      regulator-min-microvolt:
> +        minimum: 800000

maximum?

> +      regulator-max-microvolt:
> +        maximum: 5000000

minimum?

> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        max77503@1e {

regulator@1e

> +            compatible = "adi,max77503";
> +            reg = <0x1e>;
> +            regulator{
> +                regulator-name = "max777503-regulator";
> +                regulator-min-microvolt = <800000>;
> +                regulator-max-microvolt = <5000000>;
> +                regulator-boot-on;
> +            };
> +        };
> +    };
> +

Best regards,
Krzysztof

