Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 297335E5B6E
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 08:35:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbiIVGfF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 02:35:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbiIVGfE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 02:35:04 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC98983F34
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:35:02 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id f9so13045222lfr.3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=+qI9+rQLX72bUpv677NApKFZUsl1Si4g6QKxS9hfr6k=;
        b=gKRd3YKFEb1wnfmktmXpK+Vcjba+OrX1yP0ipHjiebYFOrJ5KCzGG7AFNQ0wS2GqDz
         17xq36E2Cv1FuT3huAQR3Yv2AE6jTENfRV9gQmf4YICgqv+z7vB49GxlUDMmXff18Hra
         8SvJVN/M1n3zsf4eHfTj6CHLMi7j8hgGCF1gEXC3sG0b7eXvPoccNco6ZYtgdz9dYavM
         qJ8MtovbA+8oD+2rXNsig/eGwFnTZ3o8ugN2YxtNDBs6R0rO8h5xZolZLqLq5IxxHy1j
         JoZYQ4QHvHvfCdC2qjwj+njOUuKaFL/V7vZlTpUr95DwtZRWll2i6iGQ7RUMSiVEN2fR
         ADgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=+qI9+rQLX72bUpv677NApKFZUsl1Si4g6QKxS9hfr6k=;
        b=sCLDIB5ruoFCMyKIQUSbCYhnd4M0H0gGWTO3emrgGRBGaetwTYIk6Bof7QJUrcE0YF
         PmDp7K7rJsg379vsmU5cLZQ/rafHcmR+UBLXiKJHPRC/cjaPctoPNxvJJOABMx00CD3Y
         Hf3in/AEqEtgR4wRSgGdIe2C4n2k7obixdm43lXZrgF28IlzTst0qtESBVmcEIcgNJ6u
         3ZAExp09Q0h0SiKMWfv0dEhsKmOwhqY5wLsSNTUY9WHHZ6llzerMZPgqZD2eLKFwTeV+
         kcQey5Mpqk7xmtmAAChuTesagShdR4KhtQ23iz3X8uNOCpHg0qyVx7k/53vbEnhA/Mf8
         7xSg==
X-Gm-Message-State: ACrzQf1SNntBOJGr5J84unq1lciKt03tn3ogulTXbwEwLb3tQ/lfdUj4
        QRqPVVcoS1YvAvBzt4KfTe8Hc314/g2bUw==
X-Google-Smtp-Source: AMsMyM4tXO+NlnAMQmYGadrEoXSJc/Hmb/R5wv0z4OHidGqxQtojJ+ZMlNWSiqijREgPoYjetV2WFw==
X-Received: by 2002:a05:6512:3189:b0:49c:ce4b:88ad with SMTP id i9-20020a056512318900b0049cce4b88admr652034lfe.94.1663828500977;
        Wed, 21 Sep 2022 23:35:00 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a1-20020a19e301000000b00492c017de43sm778465lfh.127.2022.09.21.23.34.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 23:35:00 -0700 (PDT)
Message-ID: <3003378d-4283-6c05-50bf-29178c97ef8e@linaro.org>
Date:   Thu, 22 Sep 2022 08:34:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: Add binding for max6639
Content-Language: en-US
To:     Naresh Solanki <naresh.solanki@9elements.com>,
        devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Roland Stigge <stigge@antcom.de>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Marcello Sylvester Bauer <sylv@sylv.io>
References: <20220922050718.1079651-1-Naresh.Solanki@9elements.com>
 <20220922050718.1079651-2-Naresh.Solanki@9elements.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922050718.1079651-2-Naresh.Solanki@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 07:07, Naresh Solanki wrote:
> From: Marcello Sylvester Bauer <sylv@sylv.io>
> 
> Add Devicetree binding documentation for Maxim MAX6639 temperature
> monitor with PWM fan-speed controller.
> 
> Signed-off-by: Marcello Sylvester Bauer <sylv@sylv.io>
> Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
> ---
>  .../bindings/hwmon/maxim,max6639.yaml         | 112 ++++++++++++++++++
>  1 file changed, 112 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
> 
> diff --git a/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
> new file mode 100644
> index 000000000000..c845fb989af2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
> @@ -0,0 +1,112 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/hwmon/maxim,max6639.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Maxim max6639
> +
> +maintainers:
> +  - Roland Stigge <stigge@antcom.de>

Ack from Roland is needed here.

> +
> +description: |
> +  The MAX6639 is a 2-channel temperature monitor with dual, automatic, PWM
> +  fan-speed controller.  It monitors its own temperature and one external
> +  diode-connected transistor or the temperatures of two external diode-connected
> +  transistors, typically available in CPUs, FPGAs, or GPUs.
> +
> +  Datasheets:
> +    https://datasheets.maximintegrated.com/en/ds/MAX6639-MAX6639F.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - maxim,max6639
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - "fan@0"
> +  - "fan@1"
> +
> +additionalProperties: false
> +
> +patternProperties:

This goes after properties.

> +  "^fan@[0-1]$":
> +    type: object
> +    description: |
> +      Represents the two fans and their specific configuration.
> +
> +    properties:
> +      reg:
> +        description: |
> +          The fan number.
> +        items:

Skip items.

> +          minimum: 0
> +          maximum: 1
> +
> +      pwm-polarity:

Why is this property of fan, not of PWM source?

> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [0, 1]

type: boolean

> +        default: 1
> +        description:
> +          PWM output is low at 100% duty cycle when this bit is set to zero. PWM
> +          output is high at 100% duty cycle when this bit is set to 1.
> +
> +      pulses-per-revolution:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [1, 2, 3, 4]
> +        default: 2
> +        description:
> +          Value specifying the number of pulses per revolution of the controlled
> +          FAN.
> +
> +      maxim,rpm-range:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        enum: [2000, 4000, 8000, 16000]
> +        default: 4000
> +        description:
> +          Scales the tachometer counter by setting the maximum (full-scale) value
> +          of the RPM range for max6639.
> +
> +    required:
> +      - reg
> +
> +examples:
> +  - |
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      max6639@10 {

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +        compatible = "maxim,max6639";
> +        reg = <0x10>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        fan@0 {
> +          reg = <0x0>;
> +          pwm-polarity = <1>;
> +          pulses-per-revolution = <2>;
> +          maxim,rpm-range = <4000>;
> +        };
> +
> +        fan@1 {
> +          reg = <0x1>;
> +          pwm-polarity = <1>;
> +          pulses-per-revolution = <2>;
> +          maxim,rpm-range = <4000>;
> +        };
> +      };
> +    };
> +...

Best regards,
Krzysztof

