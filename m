Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00687685FEB
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 07:48:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231285AbjBAGsQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 01:48:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229911AbjBAGsF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 01:48:05 -0500
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33A4F901F
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 22:48:03 -0800 (PST)
Received: by mail-ej1-x632.google.com with SMTP id lu11so11113006ejb.3
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 22:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2klz9qErss1ziPLnT+w45KrfLq1EC2Lf5Kmn1d8nifc=;
        b=TyoCWb/Uc/mVIa3MCBt4Q0zSYbVY62noPHKmDiQLlNXIwwPb+0w66LHhnHEHWsusWY
         vXb1cTWegrsmXEBZAxbpzKEwa+re6IoOHhaG3vUMiQ1uHBT1G0Zn5eGE7eI3vx45RubP
         R2WvR5s9AsRJ6oQVmJ1gqnbLaQdrEkLxr348X1ahJhCHFTNtJM6GpXxTTNxL8uuYPBU5
         A8tJpfPqn/KqQoeog049FgiikwWeCrJyK3kax1POuteBpA33hyYWppy3z3+2qesWEUCM
         1h6Z/ZmZdzvNwEy8Vmt1+5SiIHaxnEKp4Kytmv+2I9ITL7jO82sa7JqnzcsYfF/gKtS+
         911A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2klz9qErss1ziPLnT+w45KrfLq1EC2Lf5Kmn1d8nifc=;
        b=jnpCZDxz23bLav0M6So7N3EDOcA/SjajymxmhWuDb8YijETjFKkfk8jCvbXPdZZ89Z
         a+RbDH6goG/Lw367pE/1rcFHmh8gb99y6SQYZKQzZ5bRAjNZHIMIyU2ZKAL8W+LH+I63
         j40q8gqKZvBOhAc0FvfFGMR9ta8p6y9/Uxe2m5Oq0f3mAV5jWLl4hE8jqMCEhvALsMwL
         8b4xo/NTll56l7eo2ZihQMTp8RC3xBu2YfNpeIW4PZHkzRfpRr8f4nwQTP1V8/JtBFd1
         ONwrrPuOTrt0jGrk9j9lJQ2eFGwmlNFi2Sir+8inswMYrhEbACXtJnUocUYulvFW1Wuw
         GDHw==
X-Gm-Message-State: AO0yUKVbSuIpYSgLmevt0nca5Bnp1K2du35k8lULvOGj315+TLP089Wm
        5SdpUqMBmHFdPQDrDHolYL8fGhF1Iqw=
X-Google-Smtp-Source: AK7set/2F92chfpYXjf49Uc/cMU/3jFYNTOC6d4qKyBPfCpkgnRqeYRnoviw+Sx7LRyTcB986ulmBQ==
X-Received: by 2002:a17:906:5dcb:b0:877:61e8:915a with SMTP id p11-20020a1709065dcb00b0087761e8915amr565912ejv.75.1675234081483;
        Tue, 31 Jan 2023 22:48:01 -0800 (PST)
Received: from ?IPV6:2a01:c23:b912:d400:287e:8a4d:ff3:1ab? (dynamic-2a01-0c23-b912-d400-287e-8a4d-0ff3-01ab.c23.pool.telefonica.de. [2a01:c23:b912:d400:287e:8a4d:ff3:1ab])
        by smtp.googlemail.com with ESMTPSA id fm19-20020a1709072ad300b007c10d47e748sm9419607ejc.36.2023.01.31.22.48.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 22:48:01 -0800 (PST)
Message-ID: <5d081b27-234f-14bb-1b10-9187e8e512a7@gmail.com>
Date:   Wed, 1 Feb 2023 07:47:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
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
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: interrupt-controller: Convert Amlogic
 Meson GPIO interrupt controller binding
In-Reply-To: <20230201020337.GA2311900-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01.02.2023 03:03, Rob Herring wrote:
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
>>  .../amlogic,meson-gpio-intc.txt               | 38 ---------
>>  .../amlogic,meson-gpio-intc.yaml              | 84 +++++++++++++++++++
>>  2 files changed, 84 insertions(+), 38 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.txt
>>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/amlogic,meson-gpio-intc.yaml
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
> 
I'll check this and will see if and which dts files need fixing.


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
In driver and dts it has been 'amlogic' since 2017.
Obviously the documentation has been wrong.

> Really, 'interrupts' should have been used here, but oh well.
> 
I remember there was a discussion back then on why 'interrupts'
wouldn't be a good fit here. Don't remember the details,
but the current naming is the result of a longer discussion.

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

