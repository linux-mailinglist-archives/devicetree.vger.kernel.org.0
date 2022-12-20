Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A82C6522E7
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 15:44:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbiLTOn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 09:43:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234026AbiLTOn5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 09:43:57 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 791DE1ADA0
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 06:43:55 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id z26so18906946lfu.8
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 06:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HohHf39oSurGOCgSZ1vXA2EUahkSr4A+Gq02PFcucLQ=;
        b=u0XcuAXXcRkOW3gsXtqP1C10lIs8mGZ0IQKt6SlNapl2SsVp+83HYw99tPJtj/1kCT
         KOkq4WN697oPUDW4MYWjrVuR3rQLYHD0sxBklvokpXdRPyoBFAzD8bWa4RgzF667BfWa
         OyF1i99R/sfj+kBvbXA11NLiXN5mkf0fuON28zVlUhssbplZsfkxiDYd+IYYd1TQk285
         eFO8BKg0qVmtd0JmzMe4o+BlZb8LIB59BNsyI6GsmBjy+2SLAHhBXmmIbq8+AKQHAM4G
         MRvs6Ljr51To9qBf4VmEe0PnzkGzuFaLyViTRHFT0o+fuA5bJ2zbPTs3NT53EEgzNRC8
         1+8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HohHf39oSurGOCgSZ1vXA2EUahkSr4A+Gq02PFcucLQ=;
        b=gSwL3EluOZDR7ijSOxaEwO0euwdsAbeOxWRl3UXSmELdZarub+s2AKHcSJidr4hxP7
         L2HEXfpZsd5NBoPII2aGGWoK+ZWDT9MuBwSphjOH0c6U3Xw4G0Rw/p8bEfTIfayFJ/Rj
         uR3vKunMCet9cGddQnhRNTPB1ooUXl8QQXzN+LC6+qAYO3qsuUSLFFtJ9ypzEYmigJDI
         DbBObvJzggXj5iQYvJuLizpCiozu2XfZiGAy3NZO7toSRVo5oC8sbZHI5sw1ZMMBgAgf
         9K4Hwpzh2XnPCUg+FsjXAL1jFyTGtYmcnp1H+w+r0dXRfX35+gSTGXuCXscNvF92uE31
         GDyQ==
X-Gm-Message-State: ANoB5pnTXM34+FTAbYWj9tYQxWbkno8gHNRgQ+famjxkjBwEPM9y0dbY
        B/vhKOmDIlNHR9+Hv6Dk71c+MpkL8rZ3aVZg
X-Google-Smtp-Source: AA0mqf6MGqCcqLPuSOjIizAtHLhT18Ci+phi9dXJfAhatT9rs0Ufw/hl3iaU6iyyQsJeq62Vcd35tQ==
X-Received: by 2002:ac2:5233:0:b0:4b5:b661:5c5e with SMTP id i19-20020ac25233000000b004b5b6615c5emr17135242lfl.55.1671547433798;
        Tue, 20 Dec 2022 06:43:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b6-20020a056512070600b004b51ab265f8sm1483925lfs.193.2022.12.20.06.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 06:43:53 -0800 (PST)
Message-ID: <65345e03-d82b-89b1-ed86-b0606368b709@linaro.org>
Date:   Tue, 20 Dec 2022 15:43:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/6] dt-bindings: mfd: add MAX77659 binding
Content-Language: en-US
To:     Zeynep Arslanbenzer <Zeynep.Arslanbenzer@analog.com>,
        lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sre@kernel.org,
        lgirdwood@gmail.com, broonie@kernel.org
Cc:     Nurettin.Bolucu@analog.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20221220132250.19383-1-Zeynep.Arslanbenzer@analog.com>
 <20221220132250.19383-3-Zeynep.Arslanbenzer@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221220132250.19383-3-Zeynep.Arslanbenzer@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/12/2022 14:22, Zeynep Arslanbenzer wrote:
> This patch adds binding document for MAX77659 MFD driver.

1. Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

2. Subject: drop second, redundant "binding".

> 
> Signed-off-by: Nurettin Bolucu <Nurettin.Bolucu@analog.com>
> Signed-off-by: Zeynep Arslanbenzer <Zeynep.Arslanbenzer@analog.com>
> ---
>  .../devicetree/bindings/mfd/adi,max77659.yaml | 70 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/adi,max77659.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/adi,max77659.yaml b/Documentation/devicetree/bindings/mfd/adi,max77659.yaml
> new file mode 100644
> index 000000000000..6bec11607615
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/adi,max77659.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/adi,max77659.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MAX77659 SIMO PMIC from ADI.

Drop full stop.

> +
> +maintainers:
> +  - Nurettin Bolucu <Nurettin.Bolucu@analog.com>
> +  - Zeynep Arslanbenzer <Zeynep.Arslanbenzer@analog.com>
> +
> +description: |
> +  MAX77659 is an PMIC providing battery charging and power
> +  supply solutions for low-power applications.
> +
> +  For device-tree bindings of other sub-modules (regulator, power supply
> +  refer to the binding documents under the respective
> +  sub-system directories.

Drop this part, not really relevant.

> +
> +properties:
> +  compatible:
> +    const: adi,max77659
> +
> +  reg:
> +    description:
> +      I2C device address.

Drop description.

> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  charger:
> +    $ref: ../power/supply/adi,max77659-charger.yaml

Full path, so /schemas/

There is no such file so you did not test the patch.

> +
> +  regulator:
> +    $ref: ../regulator/adi,max77659-regulator.yaml

Ditto


There is no such file so you did not test the patch.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        pmic@40 {
> +            compatible = "adi,max77659";
> +            reg = <0x40>;
> +            interrupt-parent = <&gpio>;
> +            #interrupt-cells = <2>;
> +            interrupts = <16 IRQ_TYPE_EDGE_FALLING>;
> +            regulator {
> +                compatible = "adi,max77659-regulator";
> +                regulator-boot-on;
> +                regulator-always-on;
> +            };
> +            charger {
> +                compatible = "adi,max77659-charger";
> +                adi,fast-charge-timer   = <5>;

That's not DT coding style...

> +                adi,fast-charge-microamp = <15000>;
> +                adi,topoff-timer  =  <30>;

Same problem.


>  

Best regards,
Krzysztof

