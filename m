Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD5517359FF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 16:46:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232105AbjFSOqG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 10:46:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231569AbjFSOqE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 10:46:04 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C833810D4
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 07:45:56 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-988a5383fd4so206456866b.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 07:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687185955; x=1689777955;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cdvdZc1XBtu7GSZPktQLdJjAq5f8weyxwcqQX3iLhs0=;
        b=OkdaLAj4ZOWqderFYyGn4GoPZk6dcmqg1xpJun/ubGVnxaswXXGCm7C4KS2hJlN7Hi
         k+44vxUz9fBlE58wSc6uHaF28GOVFyNTt1+0Waxorzscoipv9LhjexVL13uDV8oFHuEL
         viSawuIT5SC92ofY1pzJG9AWv6t0l3OsUlQ02WSSgIhwupbrcOhJ6Od/VsVoyxO3KhhR
         p9xSjoprmJjNtJ4//2L/gdv0RTUN0+s3JKYwOEP77Kc/aexGSpnoOpDu+g3cto4qMrH6
         CIdXAGRYFYluC3vYHVyaH2TOAX/YbmSdM+Xc59o261TgbOReyuQORccGmB8eAE3U7xsV
         jLog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687185955; x=1689777955;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cdvdZc1XBtu7GSZPktQLdJjAq5f8weyxwcqQX3iLhs0=;
        b=K75oymgPkxva9XdueZraSmy5yEW6yV+c4xwl54h0j6JWIpP6cfZRqBbNXztkMwrgow
         epTI/L1TVMnVUo0EooIp7IycuhS+vRo+x2TA2wmAghCTNV0nbqHqBRGJcHoWVHWIEVqU
         FMlglP/q913SwYNl8e3wPyaTkRoUybgfspESifvnMUC4VhdkbGqW3usNzglbYB4EjRUB
         Ce4UdOIwE9q7rQkLegnT/hFu6SYgkV8wyl2obtTV5QvHFAIHCXMK/u57a8v+3ZrKx0Zv
         w+cbANxr8FybVCV3oOUpF0EFDR2p7+H28x6MCS2rIL7Tu8LBKOWoM6Fg2WFLVw0oOGrs
         bf9A==
X-Gm-Message-State: AC+VfDyxvyVBcbPvXR0MWM22dX4N0hMP++LXpJ3pnpIoMMqd7t3CoU4n
        Uj0p8mWVfTa2yzozuNnEd3tirA==
X-Google-Smtp-Source: ACHHUZ6YO8OQMADgWFX7R93c5JysxCsxQBxKxyhuNEMc/bIRFU5Nbo0+vk4rzag0LVlzo+wU7flj+Q==
X-Received: by 2002:a17:907:3e27:b0:978:8685:71d5 with SMTP id hp39-20020a1709073e2700b00978868571d5mr9076379ejc.30.1687185955295;
        Mon, 19 Jun 2023 07:45:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id gq19-20020a170906e25300b009884b9da1f7sm2849226ejb.106.2023.06.19.07.45.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 07:45:54 -0700 (PDT)
Message-ID: <f26edf98-617f-cb37-d34d-497fce5e0867@linaro.org>
Date:   Mon, 19 Jun 2023 16:45:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 1/2] dt-bindings: i2c: add binding for i2c-hotplug-gpio
Content-Language: en-US
To:     Svyatoslav Ryhel <clamor95@gmail.com>,
        Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wolfram Sang <wsa@kernel.org>,
        =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Cc:     linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230619143611.24482-1-clamor95@gmail.com>
 <20230619143611.24482-2-clamor95@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230619143611.24482-2-clamor95@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/06/2023 16:36, Svyatoslav Ryhel wrote:
> Document device tree schema which describes hot-pluggable via GPIO
> i2c bus.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../bindings/i2c/i2c-hotplug-gpio.yaml        | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml b/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml
> new file mode 100644
> index 000000000000..74544687a2b8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/i2c-hotplug-gpio.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/i2c-hotplug-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: GPIO detected hot-plugged I2C bus
> +
> +maintainers:
> +  - Michał Mirosław <mirq-linux@rere.qmqm.pl>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  Driver for hot-plugged I2C busses, where some devices on a bus
> +  are hot-pluggable and their presence is indicated by GPIO line.
> +
> +properties:
> +  $nodename:
> +    pattern: "^i2c-(.*)?"

Drop

> +
> +  compatible:
> +    items:
> +      - const: i2c-hotplug-gpio
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  interrupts-extended:
> +    minItems: 1
> +
> +  detect-gpios:
> +    maxItems: 1
> +
> +  i2c-parent:
> +    maxItems: 1

I don't understand this part. You built it as a complimentary device to
the I2C controller, but there is no such device as "hotplug I2C", right?
The GPIO is part of the controller and this is imaginary (virtual) device?

Otherwise, where does the "detect-gpios" go? To the SoC? Then it is not
a real device...

> +
> +required:
> +  - compatible
> +  - "#address-cells"
> +  - "#size-cells"

Use consistent quotes (' or ").

> +  - interrupts-extended
> +  - detect-gpios
> +  - i2c-parent
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    /*
> +     * Asus Transformers use I2C hotplug for attachable dock keyboard
> +     */
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c-dock {
> +        compatible = "i2c-hotplug-gpio";
> +
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        interrupts-extended = <&gpio 164 IRQ_TYPE_EDGE_BOTH>;
> +        detect-gpios = <&gpio 164 1>;

You forgot define.

> +
> +        i2c-parent = <&{/i2c@7000c400}>;

Use normal phandles/labels like entire DTS, not full paths or node names.

> +    };
> +...

Best regards,
Krzysztof

