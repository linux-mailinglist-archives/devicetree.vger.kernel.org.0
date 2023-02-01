Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50FF368641E
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 11:22:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231977AbjBAKWX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 05:22:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231994AbjBAKWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 05:22:10 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 135C234031
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 02:22:00 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso999162wms.4
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 02:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CfNLMlciz4WP7J2DurvgRtx6cwT9sg1INV3HgsUbKH0=;
        b=WYCAW6sN9bV2i+BQiovWAhYO8SN5Oe4pwFG7oIhCAFJ0NiMdu+NQ2U4rDssLj4FcMG
         CZWmdcVKp6j5ptDcAR7NiqvPo4qaLQkk1bjoRI92r0BnSTF6dqh3A0e63ygXLfGKbVa6
         066rgzPx0UDUSPXv1nl37e33cOellfEsKJ0TklbZOoTol9Oshd/5Vvigo7gjeDnG2q3n
         uFuyrNf2I+KxE2cMOl+mC5y606u2hq2mvUlw+TnAIDOyMqiG32VqK7FIhX17AF/L+4Xi
         uierO4GmvPya+snLaBDcwLe2T2D9Uas9WqM9dZGHsOvPQbnXUxNDKkxGIVrdxhcCtKYD
         dSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CfNLMlciz4WP7J2DurvgRtx6cwT9sg1INV3HgsUbKH0=;
        b=lBT22PD5TZINuScW/8S3wLFBlfy3YPkm0zM+BAAdZmW5wuw0Y+tPdpn/WIe62rL8A1
         La/8RpfLDQb2xNHFgCFFvPpIUw2+LbttGSIknInd0a8MdEjTN6gsrBKhdFg3tZje4qjd
         zvQMSpPuxWjhs+6HlYwtLqk+efTAYyAwMBt/SoW/KBvJyArf/8wKG2pyBJW/WJFKYRGn
         lI8S/yeTJuYNqsMz0NGDNbpjiXrG4FkF95zUly/yLkSKpQAhaJhNoC6cQf7yzyIiQSi0
         oBe0to7Jsj1fMR08IHU9HI0aYNr0HOpb+VQrnsq0qXAEWK+f+5t4tm/QTbpXtex87Qxv
         gKOg==
X-Gm-Message-State: AO0yUKUiWuigRMa7cYZ/xSwUR1RCJ1zjReZL+hyZcaxBCBZKkZXTTH6V
        AiSW5bu8NWzvmh+V3RM3T1a3Kg==
X-Google-Smtp-Source: AK7set8Kw1ox9Fyb05H4ZOnuitA9kKdHCU4ykN4YDwwmD2YSV1JY2OURawV95GsG/RwieigoO4vnoA==
X-Received: by 2002:a05:600c:b88:b0:3dc:5956:961a with SMTP id fl8-20020a05600c0b8800b003dc5956961amr1607063wmb.8.1675246918506;
        Wed, 01 Feb 2023 02:21:58 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bad9:621b:618e:38d6? ([2a01:e0a:982:cbb0:bad9:621b:618e:38d6])
        by smtp.gmail.com with ESMTPSA id h20-20020a05600c351400b003dc22ee5a2bsm1339122wmq.39.2023.02.01.02.21.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 02:21:58 -0800 (PST)
Message-ID: <1601ad73-a593-6fc5-c6f5-a84cc39e8f6b@linaro.org>
Date:   Wed, 1 Feb 2023 11:21:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3] dt-bindings: interrupt-controller: Convert Amlogic
 Meson GPIO interrupt controller binding
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <cb62dfc0-cb3d-beba-6d0b-8db18583dda0@gmail.com>
 <a1dee1a5-54d4-47ad-c914-8e9a801cd4a0@gmail.com>
 <20230201020337.GA2311900-robh@kernel.org>
Organization: Linaro Developer Services
In-Reply-To: <20230201020337.GA2311900-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/02/2023 03:03, Rob Herring wrote:
> On Mon, Jan 30, 2023 at 09:53:21PM +0100, Heiner Kallweit wrote:
>> Convert Amlogic Meson GPIO interrupt controller binding to yaml.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
>> ---
>> v2:
>> - consider that more than one compatible may be set
>> - remove bus part from example
>> v3:
>> - remove minItem/maxItem properties for compatible
>> ---
>>   .../amlogic,meson-gpio-intc.txt               | 38 ---------
>>   .../amlogic,meson-gpio-intc.yaml              | 84 +++++++++++++++++++
>>   2 files changed, 84 insertions(+), 38 deletions(-)
>>   delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>>   create mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>> deleted file mode 100644
>> index bde63f8f0..000000000
>> --- a/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>> +++ /dev/null
>> @@ -1,38 +0,0 @@
>> -Amlogic meson GPIO interrupt controller
>> -
>> -Meson SoCs contains an interrupt controller which is able to watch the SoC
>> -pads and generate an interrupt on edge or level. The controller is essentially
>> -a 256 pads to 8 GIC interrupt multiplexer, with a filter block to select edge
>> -or level and polarity. It does not expose all 256 mux inputs because the
>> -documentation shows that the upper part is not mapped to any pad. The actual
>> -number of interrupt exposed depends on the SoC.
>> -
>> -Required properties:
>> -
>> -- compatible : must have "amlogic,meson8-gpio-intc" and either
>> -    "amlogic,meson8-gpio-intc" for meson8 SoCs (S802) or
>> -    "amlogic,meson8b-gpio-intc" for meson8b SoCs (S805) or
>> -    "amlogic,meson-gxbb-gpio-intc" for GXBB SoCs (S905) or
>> -    "amlogic,meson-gxl-gpio-intc" for GXL SoCs (S905X, S912)
>> -    "amlogic,meson-axg-gpio-intc" for AXG SoCs (A113D, A113X)
>> -    "amlogic,meson-g12a-gpio-intc" for G12A SoCs (S905D2, S905X2, S905Y2)
>> -    "amlogic,meson-sm1-gpio-intc" for SM1 SoCs (S905D3, S905X3, S905Y3)
>> -    "amlogic,meson-a1-gpio-intc" for A1 SoCs (A113L)
>> -    "amlogic,meson-s4-gpio-intc" for S4 SoCs (S802X2, S905Y4, S805X2G, S905W2)
>> -- reg : Specifies base physical address and size of the registers.
>> -- interrupt-controller : Identifies the node as an interrupt controller.
>> -- #interrupt-cells : Specifies the number of cells needed to encode an
>> -   interrupt source. The value must be 2.
>> -- meson,channel-interrupts: Array with the 8 upstream hwirq numbers. These
>> -   are the hwirqs used on the parent interrupt controller.
>> -
>> -Example:
>> -
>> -gpio_interrupt: interrupt-controller@9880 {
>> -	compatible = "amlogic,meson-gxbb-gpio-intc",
>> -		     "amlogic,meson-gpio-intc";
>> -	reg = <0x0 0x9880 0x0 0x10>;
>> -	interrupt-controller;
>> -	#interrupt-cells = <2>;
>> -	meson,channel-interrupts = <64 65 66 67 68 69 70 71>;
>> -};
>> diff --git a/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
>> new file mode 100644
>> index 000000000..da55a2d25
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
>> @@ -0,0 +1,84 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/interrupt-controller/amlogic,meson-gpio-intc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Amlogic Meson GPIO interrupt controller
>> +
>> +maintainers:
>> +  - Heiner Kallweit <hkallweit1@gmail.com>
>> +
>> +description: |
>> +  Meson SoCs contains an interrupt controller which is able to watch the SoC
>> +  pads and generate an interrupt on edge or level. The controller is essentially
>> +  a 256 pads to 8 GIC interrupt multiplexer, with a filter block to select edge
>> +  or level and polarity. It does not expose all 256 mux inputs because the
>> +  documentation shows that the upper part is not mapped to any pad. The actual
>> +  number of interrupt exposed depends on the SoC.
>> +
>> +allOf:
>> +  - $ref: /schemas/interrupt-controller.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - amlogic,meson-gpio-intc
>> +              - amlogic,meson8-gpio-intc
>> +              - amlogic,meson8b-gpio-intc
>> +              - amlogic,meson-gxbb-gpio-intc
>> +              - amlogic,meson-gxl-gpio-intc
>> +              - amlogic,meson-axg-gpio-intc
>> +              - amlogic,meson-g12a-gpio-intc
>> +              - amlogic,meson-sm1-gpio-intc
>> +              - amlogic,meson-a1-gpio-intc
>> +              - amlogic,meson-s4-gpio-intc
>> +      - items:
>> +          - enum:
>> +              - amlogic,meson8-gpio-intc
> 
> We allow this with or without a fallback? Again, that should not be
> allowed and any dts files fixed.

I'm not very open onto removing any compatible to the current DTs

> 
>> +              - amlogic,meson-axg-gpio-intc
>> +              - amlogic,meson-g12a-gpio-intc
>> +              - amlogic,meson-sm1-gpio-intc
>> +              - amlogic,meson-s4-gpio-intc
>> +          - const: amlogic,meson-gpio-intc
>> +      - items:
>> +          - const: amlogic,meson-gpio-intc
>> +          - enum:
>> +              - amlogic,meson8b-gpio-intc
>> +              - amlogic,meson-gxbb-gpio-intc
>> +              - amlogic,meson-gxl-gpio-intc
> 
> This looks wrong. The order is most specific to least specific
> compatible. amlogic,meson-gpio-intc is more specific (or a superset of)
> than amlogic,meson8b-gpio-intc?

But changing order is OK I suppose.

Neil

> 
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupt-controller: true
>> +
>> +  "#interrupt-cells":
>> +    const: 2
>> +
>> +  amlogic,channel-interrupts:
> 
> This was 'meson', not 'amlogic'. You can't just change things.
> 
> Really, 'interrupts' should have been used here, but oh well.
> 
>> +    description: Array with the upstream hwirq numbers
>> +    minItems: 8
>> +    maxItems: 12
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - interrupt-controller
>> +  - "#interrupt-cells"
>> +  - amlogic,channel-interrupts
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    interrupt-controller@9880 {
>> +      compatible = "amlogic,meson-gxbb-gpio-intc";
>> +      reg = <0x9880 0x10>;
>> +      interrupt-controller;
>> +      #interrupt-cells = <2>;
>> +      amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
>> +    };
>> -- 
>> 2.39.1
>>

