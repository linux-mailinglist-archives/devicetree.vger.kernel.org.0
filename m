Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D05CE529D84
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 11:10:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243450AbiEQJKa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 05:10:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242195AbiEQJKO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 05:10:14 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25BAB4B1FA
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 02:08:11 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id l18so33364647ejc.7
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 02:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NRdWgdSpXJV+FcRgrC3T3hnaGk51bNd2Lc1wuCnkz10=;
        b=tqzBqSOU1atmIhPo7Z8/Qx9MQLX8YvKpeYCjDGSJfNeYkHlvepSEq3ilSL/3SNSJTA
         jeWNHIRX3WcBEE/QA98ncUuhq+wQtxBdZ/B9tnPLwEiwodEzlZzdk0/L53tA9+GGyP22
         L9J58kZX49nYzEHIwsmZSWrC4pMXxsMNI+uKhqkPbFLtHcjA03Srw08oBF3oyjSfcUc0
         gCOCl8njKcTHqx5OyMDusQ8pflXlFAiHiE1zuShXo48hBxT9p5vJPfCf0Xk6DBCqrX6K
         uf+m1wo61pqCI8oRCPT713h9tLYaFT+YoMN/ihSvbJQAvS2FC1KbR2IUavvBpYWvBnXQ
         m4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NRdWgdSpXJV+FcRgrC3T3hnaGk51bNd2Lc1wuCnkz10=;
        b=EedOmGlZA35yCDlcKM+9rof4oj9yvznJi8bN5bEv8pWl0ejhvaYPoxzAOYDRjk/uBa
         i1rwdmDCfUckSQjWRDINk1qmvseIm4KRZg2NZFo+bP//U8CSbPPo4o8xaij3L7Pgrv2M
         v1Q0kFVVVEJV0a6CFGNjZQkrZ+c+nC/G6xVKUGhZzuy2v0yIob7/7YHvaq/MRAMvwssc
         u8xgYg3GAP4MnyLbSWJv9pHh1LQHOmErVTNpkSq7TBNsBNb3AmbSkX5MsXwsYrInK23q
         8gVziDRsohr/TIfhU1PfbiQJPbSaOsDoYqEWZyQMF8UoSxbe6BCMQkr7SesWhwQqH18I
         JebQ==
X-Gm-Message-State: AOAM5329BX0N3OZZxgbD/BKsiSHc1bnYkmzMCPkAKnAB67828+f0o3/Q
        PR6NNBbqz+hCFejb5asgasyo5g==
X-Google-Smtp-Source: ABdhPJzmIZ6txUZMp2J5P4jNTuEMmi4wFlFytR9W87ll4e0C8ncDD8mwYXQsFJ9iQVkjtUOTZWAzyg==
X-Received: by 2002:a17:906:4fd5:b0:6f8:5784:fddb with SMTP id i21-20020a1709064fd500b006f85784fddbmr19606221ejw.161.1652778489510;
        Tue, 17 May 2022 02:08:09 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 25-20020a17090600d900b006f3ef214e55sm787681eji.187.2022.05.17.02.08.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 02:08:09 -0700 (PDT)
Message-ID: <cb83fbab-7aa3-d1a7-ab80-d2b94a516f6d@linaro.org>
Date:   Tue, 17 May 2022 11:08:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/2] dt-bindings: leds: Add aw21024 binding
Content-Language: en-US
To:     Kyle Swenson <kyle.swenson@est.tech>, pavel@ucw.cz,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20220513190409.3682501-1-kyle.swenson@est.tech>
 <20220513190409.3682501-2-kyle.swenson@est.tech>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220513190409.3682501-2-kyle.swenson@est.tech>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2022 21:04, Kyle Swenson wrote:
> Add device-tree bindings for Awinic's aw21024 24 channel RGB LED Driver.
> 
> Datasheet:
> https://www.awinic.com/Public/Uploads/uploadfile/files/20200511/20200511165751_5eb9138fcd9e3.PDF
> 
> Signed-off-by: Kyle Swenson <kyle.swenson@est.tech>
> ---
>  .../bindings/leds/leds-aw21024.yaml           | 157 ++++++++++++++++++
>  1 file changed, 157 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/leds-aw21024.yaml
> 
> diff --git a/Documentation/devicetree/bindings/leds/leds-aw21024.yaml b/Documentation/devicetree/bindings/leds/leds-aw21024.yaml
> new file mode 100644
> index 000000000000..1180c02b5d21
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/leds-aw21024.yaml
> @@ -0,0 +1,157 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/leds-aw21024.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AWINIC AW21024 24-channel LED Driver
> +
> +maintainers:
> +  - Kyle Swenson <kyle.swenson@est.tech>
> +
> +description: |
> +  The AW21024 is a 24-channel LED driver with an I2C interface.
> +
> +  For more product information please see the link below:
> +  https://www.awinic.com/en/index/pageview/catid/19/id/28.html
> +
> +properties:
> +  compatible:
> +    const: awinic,aw21024
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      I2C peripheral address

Skip description, it's obvious.

> +
> +  enable-gpios:
> +    maxItems: 1
> +    description: GPIO pin to enable/disable the device.

Skip description, it's obvious.

> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +patternProperties:
> +  '^multi-led@[0-9a-f]$':
> +    type: object
> +    $ref: leds-class-multicolor.yaml#
> +    properties:
> +      reg:
> +        minItems: 1
> +        maxItems: 24
> +        description:
> +          Denotes the LED indicies that should be grouped into a
> +          single multi-color LED.
> +
> +    patternProperties:
> +      "(^led-[0-9a-f]$|led)":

How does this pass your own bindings? In the DTS you use underscofer
which is not here...

You need to test the bindings before sending them to people.

> +        type: object
> +        $ref: common.yaml#
> +
> +patternProperties:
> +  "^led@[0-2]$":
> +    type: object
> +    $ref: common.yaml#
> +
> +    properties:
> +      reg:
> +        description: Index of the LED.
> +        minimum: 0
> +        maximum: 23
> +
> +    description:
> +      Specifies a single LED at the specified index
> +
> +

Just one line. Plus errors pointed out by Rob's bot.

> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +   #include <dt-bindings/gpio/gpio.h>
> +   #include <dt-bindings/leds/common.h>
> +
> +   i2c {
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +
> +        led-controller@30 {
> +            compatible = "awinic,aw21024";
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            reg = <0x30>;

reg after compatible.

> +            enable-gpios = <&gpio1 23>;
> +
> +            multi-led@1 {
> +                #address-cells = <1>;
> +                #size-cells = <2>;
> +                reg = <0x0 0x1 0x2>;

This is confusing. Does not match unit address and address/size cells.
Perhaps you wanted three separate regs?


> +                color = <LED_COLOR_ID_RGB>;
> +                label = "RGB_LED1";
> +
> +                led-0 {
> +                    color = <LED_COLOR_ID_RED>;
> +                };
> +
> +                led-1 {
> +                    color = <LED_COLOR_ID_GREEN>;
> +                };
> +
> +                led-2 {
> +                    color = <LED_COLOR_ID_BLUE>;
> +                };
> +
> +            };
> +            multi-led@2 {
> +                #address-cells = <1>;
> +                #size-cells = <3>;
> +                reg = <0x3 0x4 0x5 0x6>;

The same

> +                color = <LED_COLOR_ID_RGB>;
> +                label = "RGBW_LED1";

Why labels are upper-case?

> +
> +                led-4 {
> +                    color = <LED_COLOR_ID_RED>;
> +                };
> +
> +                led-5 {
> +                    color = <LED_COLOR_ID_GREEN>;
> +                };
> +
> +                led-6 {
> +                    color = <LED_COLOR_ID_BLUE>;
> +                };
> +
> +                led-7 {
> +                    color = <LED_COLOR_ID_WHITE>;
> +                };
> +            };
> +            ready_led@3 {

No underscores in node names. Generic node name, so just led.

> +                #address-cells = <1>;
> +                #size-cells = <1>;
> +                reg = <0x7 0x8>;

The same problem with reg.

> +                label = "READY";
> +                color = <LED_COLOR_ID_MULTI>;
> +
> +                led-8 {
> +                  color = <LED_COLOR_ID_RED>;
> +                };
> +
> +                led-9 {
> +                  color = <LED_COLOR_ID_GREEN>;
> +                };
> +            };
> +            connected_led@4 {
> +                reg = <0x9>;
> +                label = "CONNECTED";
> +                color = <LED_COLOR_ID_BLUE>;
> +            };
> +        };
> +    };
> +
> +...


Best regards,
Krzysztof
