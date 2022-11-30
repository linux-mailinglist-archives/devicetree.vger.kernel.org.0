Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 180F863D976
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 16:32:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbiK3Pcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 10:32:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbiK3Pcn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 10:32:43 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65DC32ADD
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:32:41 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id b9so21286626ljr.5
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9xB5Dvj8Gxrq9C5THb6DQBtJWoZM83lOUgNkmDL+cko=;
        b=ObPb6ZwzaLevNeoJiAlGYUd57MYGLBNCopjqDZa4H/sX49+LvXKAolQtAyrkjJG/DZ
         DI7tC2OfZqvvhhS7SKl2OcTNjzLlXM6/Smi9MtZoYRoWfdSR631zwLGJp1WXKrPN7JqI
         rc5QIpbFT8sNVOa5Ev9ij8ARZDmwYp1Qx2jPgbl6edRiMo5tWlhDgp7hK1an6WkPkztu
         xLrd8I0CC7UCMs5YJB9/juh28WRAqUv+22DcJoX8sgEGX2oX4cZfFQfaKZBx2YghtmpM
         NBB0VAg2oMU/OkA6Bc2++0hJyzhnNnfoYJo9xf0a29hRA1Emi8/1kKBUPpRbx0qOsuCx
         LLZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9xB5Dvj8Gxrq9C5THb6DQBtJWoZM83lOUgNkmDL+cko=;
        b=fbNZMuy7iEnppYsEnRj0dpGDpcg+6Netml9Kvfr9909InqB0OU1mh3vPz5/zmnlT+x
         265w4y+qxLhIYkPfXZthY+Bj4e9xXlUhROXon5Dg8TUq95bRezljCpUfo1eIvg68reEa
         q9heydfk5F7gz0Ctdj2Dyqox1ya2Z+rEtrwW9nTVFfDeXozP5/Xc2lG/hYbBF253MtR9
         w6M2sgae+gPGMJJfjKkTeFjNar5NCa9DflNBdjg8p3tAtdUTVV0qydeofNLWp7qz9kvW
         0ltYJL3RMsIIuuuOhYa/CYAYLm7Im0coFSYSUiQ3eD5Iqzu75p5Gz0QJim/mDQbmELef
         irjw==
X-Gm-Message-State: ANoB5pnOekFDBLE4KZ6f/1kcRiXAxs80BgwQ49ewPufR1avtWMOBERDK
        8VY1NyNLa1TXOLKVF/DmpJ9r7Q==
X-Google-Smtp-Source: AA0mqf47yGGEf1RQzoEJtyJ8v1QUVShXctLRU4JC5iLqP5j7f2/aqMDwyrC/C4qntDQKfaEZVI9csA==
X-Received: by 2002:a2e:b990:0:b0:277:831:3970 with SMTP id p16-20020a2eb990000000b0027708313970mr18963380ljp.331.1669822359747;
        Wed, 30 Nov 2022 07:32:39 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id x5-20020ac25dc5000000b004a65780e4cfsm295465lfq.106.2022.11.30.07.32.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 07:32:39 -0800 (PST)
Message-ID: <2978c071-4e3c-8d4d-3819-3ddbf7bc1385@linaro.org>
Date:   Wed, 30 Nov 2022 16:32:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 7/8] dt-bindings: soc: socionext: Add UniPhier DWC3 USB
 glue layer
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221129103509.9958-1-hayashi.kunihiko@socionext.com>
 <20221129103509.9958-8-hayashi.kunihiko@socionext.com>
 <12a98c77-5464-0f25-9081-13217f396484@linaro.org>
 <c9e1ee72-6201-3a1e-307a-d5869a22e01c@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c9e1ee72-6201-3a1e-307a-d5869a22e01c@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/11/2022 10:00, Kunihiko Hayashi wrote:
> Hi Krzysztof,
> 
> On 2022/11/29 23:52, Krzysztof Kozlowski wrote:
>> On 29/11/2022 11:35, Kunihiko Hayashi wrote:
>>> Add DT binding schema for components belonging to the platform-specific
>>> DWC3 USB glue layer implemented in UniPhier SoCs.
>>>
>>> This USB glue layer works as a sideband logic for the host controller,
>>> including core reset, vbus control, PHYs, and some signals to the
>>> controller.
>>>
>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>> ---
>>>   .../socionext,uniphier-dwc3-glue.yaml         | 106 ++++++++++++++++++
>>>   1 file changed, 106 insertions(+)
>>>   create mode 100644
>>> Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-dwc3-glue.yaml
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-dwc3-glue.yaml
>>> b/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-dwc3-glue.yaml
>>> new file mode 100644
>>> index 000000000000..66f8786dd305
>>> --- /dev/null
>>> +++
>>> b/Documentation/devicetree/bindings/soc/socionext/socionext,uniphier-dwc3-glue.yaml
>>> @@ -0,0 +1,106 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id:
>>> http://devicetree.org/schemas/soc/socionext/socionext,uniphier-dwc3-glue.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Socionext UniPhier SoC DWC3 USB3.0 glue layer
>>> +
>>> +maintainers:
>>> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>> +
>>> +description: |+
>>> +  DWC3 USB3.0 glue layer implemented on Socionext UniPhier SoCs is
>>> +  a sideband logic handling signals to DWC3 host controller inside
>>> +  USB3.0 component.
>>> +
>>> +properties:
>>> +  compatible:
>>> +    items:
>>> +      - enum:
>>> +          - socionext,uniphier-pro4-dwc3-glue
>>> +          - socionext,uniphier-pro5-dwc3-glue
>>> +          - socionext,uniphier-pxs2-dwc3-glue
>>> +          - socionext,uniphier-ld20-dwc3-glue
>>> +          - socionext,uniphier-pxs3-dwc3-glue
>>> +          - socionext,uniphier-nx1-dwc3-glue
>>> +      - const: simple-mfd
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  '#address-cells':
>>> +    const: 1
>>> +
>>> +  '#size-cells':
>>> +    const: 1
>>> +
>>> +  ranges: true
>>> +
>>> +patternProperties:
>>> +  "^reset-controller@[0-9a-f]+$":
>>> +    $ref: /schemas/reset/socionext,uniphier-glue-reset.yaml#
>>> +
>>> +  "^regulator@[0-9a-f]+$":
>>> +    $ref: /schemas/regulator/socionext,uniphier-regulator.yaml#
>>> +
>>> +  "^phy@[0-9a-f]+$":
>>> +    oneOf:
>>> +      - $ref: /schemas/phy/socionext,uniphier-usb3hs-phy.yaml#
>>> +      - $ref: /schemas/phy/socionext,uniphier-usb3ss-phy.yaml#
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    usb-controller@65b00000 {
>>
>> Node name: usb. There is no usage of "usb-controller".
> 
> I'm confusing about that.
> 
> This is an interface logic and doesn't have USB functions by itself.
> Surely there is a USB host controller node "usb@..." in the same SoC.
> Can this node be renamed to "usb"?
> 
> I've renamed the dts node name once in commit 4cc752a88ca9
> ("arm64: dts: uniphier: Rename usb-glue node for USB3 to usb-controller").

In (almost?) all other cases it is still called "usb". A bit akward to
have usb in usb, but usb-controller did not stick...

> 
>>> +        compatible = "socionext,uniphier-ld20-dwc3-glue", "simple-mfd";
>>> +        reg = <0x65b00000 0x400>;
>>> +        #address-cells = <1>;
>>> +        #size-cells = <1>;
>>> +        ranges = <0 0x65b00000 0x400>;
>>> +
>>> +        reset-controller@0 {
>>> +            compatible = "socionext,uniphier-ld20-usb3-reset";
>>> +            reg = <0x0 0x4>;
>>
>> So now I see the unit addresses, which means none of your previous
>> patches needed them. This raises next question - why this device is
>> special and does not use syscon but own unit address?
> 
> The glue layer has a fixed register address for each child unlike
> the previous patch.
> 
> This layer has also the other registers for USB core outside
> the child nodes, however, there is no parent device that manages
> these registers, so this layer node itself should take care of these
> registers.
> 
>> Are the children here - regulator, reset controller and phys - related
>> to the USB?
> 
> Yes, this "glue layer" is an interface of the USB controller, so these
> children are only used for the USB controller.


OK

Best regards,
Krzysztof

