Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B4D5559E73
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 18:22:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231395AbiFXQQf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 12:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231434AbiFXQQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 12:16:33 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0241052533
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 09:16:31 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id c13so4147534eds.10
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 09:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YocsH/SCIFBtqFkbbqYZ9NPO0UIAT3/bIxNj7wG+byE=;
        b=yhdKSJLG78moAYzJ88cQkhH/Hj5st2xbcRGlEiwd0dUxqsNyyB7j3EJGWPeIUgohrw
         vx7twc6VO4e5ryjWo8HD3Wu3vpxXVbeoTYKzYFhl08J0gKex+mXu/mgeNrrsAY3ZM6sW
         ZfE/T+ddDwm97PYBRken2rgWFIfj9dppAXIhbg8rnqOqVtaG3CiBSc9R0JsymSKxPnik
         LhyNphKCPMTtVlZR9LkrqwWVANaJlRr7W9oROdhI4bb/zRzCrRYifa76XKZKrZLMsWVq
         fkJdb2ukyNt6MCxrdbgQjjU1n8bUBYQx7ortZngOVow2D1b81R6+zdK6bIUpkR2JpewG
         W5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YocsH/SCIFBtqFkbbqYZ9NPO0UIAT3/bIxNj7wG+byE=;
        b=cr6kzW2PZwfYJH7CKOlkso9N5uKCh674gSpg9TG2O6UkvUoBdnLbLlllzS9OVefv4E
         txJFf51kUCvUd9nkixG726KMnVfjZTEdvDMVk6ZN/jbi1fXv/mjU9fuHUaA9g8/2rGkE
         l+qz/UB7OniNrzr6EbfmgZrhllVuQIefmUcLotvXk7BXv4vjq/uhymDh/eVsV3UsxuIc
         28nKoKobaCyXH/b3XYpWO93UJjn5GBlHQNtKsr8hJusJgWGTOplNqT7IzBz46if2+rVO
         F+siuayz7SMUbqvj6QaOhKd0jtymZGvW5ppoUUsBFvocg462/Wq5mury2dD3OI69+fkK
         yfiQ==
X-Gm-Message-State: AJIora9RSD4p+bVaDGPqZqcDOloC5hJdljGzx4ZdbLMaa9opsyKhBOt3
        Fvg/mPO1kkYDl2SVVoTZqSWjOg==
X-Google-Smtp-Source: AGRyM1sRGlX6n9a00k4nlkcTq8GcVHrv/VdC8qA06SSsZy9JjDIaeQFaarDYrDBySHNlCTH2NeO2uA==
X-Received: by 2002:a05:6402:4248:b0:435:9150:ccfb with SMTP id g8-20020a056402424800b004359150ccfbmr18736992edb.374.1656087389569;
        Fri, 24 Jun 2022 09:16:29 -0700 (PDT)
Received: from [192.168.0.237] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k12-20020a17090666cc00b007041e969a8asm1350125ejp.97.2022.06.24.09.16.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jun 2022 09:16:29 -0700 (PDT)
Message-ID: <ddb0e946-c955-1404-c1cd-c2548f34ec35@linaro.org>
Date:   Fri, 24 Jun 2022 18:16:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/4] dt-bindings: usb: typec: add bindings for stm32g0
 controller
Content-Language: en-US
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>, robh+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        amelie.delaunay@foss.st.com, alexandre.torgue@foss.st.com
References: <20220624155413.399190-1-fabrice.gasnier@foss.st.com>
 <20220624155413.399190-2-fabrice.gasnier@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220624155413.399190-2-fabrice.gasnier@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/06/2022 17:54, Fabrice Gasnier wrote:
> This patch adds DT schema documentation for the STM32G0 Type-C controller.

No "This patch"

https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> STM32G0 provides an integrated USB Type-C and power delivery interface.
> It can be programmed with a firmware to handle UCSI protocol over I2C
> interface. A GPIO is used as an interrupt line.
> It may be used as a wakeup source, so use optional "wakeup-source" and
> "power-domains" properties to support wakeup.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> ---
>  .../bindings/usb/st,typec-stm32g0.yaml        | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/st,typec-stm32g0.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/st,typec-stm32g0.yaml b/Documentation/devicetree/bindings/usb/st,typec-stm32g0.yaml
> new file mode 100644
> index 0000000000000..b2729bd015a1a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/st,typec-stm32g0.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/usb/st,typec-stm32g0.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

No quotes.

> +
> +title: STMicroelectronics STM32G0 Type-C controller bindings

s/bindings//

> +
> +description: |
> +  The STM32G0 MCU can be programmed to control Type-C connector(s) through I2C
> +  typically using the UCSI protocol over I2C, with a dedicated alert
> +  (interrupt) pin.
> +
> +maintainers:
> +  - Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32g0-typec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  connector:
> +    type: object> +    allOf:
> +      - $ref: ../connector/usb-connector.yaml#

Full path, so /schemas/connector/...

unevaluatedProperties: false

> +
> +  firmware-name:
> +    description: |
> +      Should contain the name of the default firmware image
> +      file located on the firmware search path
> +
> +  wakeup-source: true
> +  power-domains: true

maxItems

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
> +    i2c5 {

Just "i2c"

> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      stm32g0@53 {

Generic node name describing class of the device.

> +        compatible = "st,stm32g0-typec";
> +        reg = <0x53>;
> +        /* Alert pin on GPIO PE12 */
> +        interrupts = <12 IRQ_TYPE_EDGE_FALLING>;
> +        interrupt-parent = <&gpioe>;
> +
> +        /* Example with one type-C connector */
> +        connector {
> +          compatible = "usb-c-connector";
> +          label = "USB-C";
> +
> +          port {

This does not look like proper schema of connector.yaml.

> +            con_usb_c_ep: endpoint {
> +              remote-endpoint = <&usbotg_hs_ep>;
> +            };
> +          };
> +        };
> +      };
> +    };
> +
> +    usbotg_hs {

Generic node names, no underscores in node names.

> +      usb-role-switch;
> +      port {
> +        usbotg_hs_ep: endpoint {
> +          remote-endpoint = <&con_usb_c_ep>;
> +        };
> +      };
> +    };
> +...


Best regards,
Krzysztof
