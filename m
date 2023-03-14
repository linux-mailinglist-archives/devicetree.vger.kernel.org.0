Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D88C66B9EC1
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 19:39:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbjCNSjX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 14:39:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbjCNSjU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 14:39:20 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334981B578
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:38:56 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id y4so36474094edo.2
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678819130;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LQb9xNYiO/iqB9yTe53F4I/BNv5rnpqkcJdJqgkN/yI=;
        b=kLTCScA636+iiHxExE993GdsCt1NFtShDgax1uiIT84qFMbr0cEQUKe8bYlZOR74nC
         03/BWlBpsqSA6pYv9GywscoTC2JlOKeOjYcd1uvs97gbdvMQPog3Wmg6J73QPhi8TC+o
         Ppa9PmvbJcOoTI1AVjxuqfY5QdaTYXWWCh4aSbF1oihqgWWD8pvA91hCy+cTK89Nq6dN
         PgaA8JkyDL/wRrOUyjrSge3MiCNAPPcxA/3Xe8lbViU7xWcEt38eugg5PLW85Jjt2jHi
         tkhoCcKv3mMTvFPAU9ZR/ihwh4/660Bg++7yn+gfBktVdt0VXYWqF81dr2ijt/jWCi8/
         9xpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678819130;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LQb9xNYiO/iqB9yTe53F4I/BNv5rnpqkcJdJqgkN/yI=;
        b=nYO9Z0CAQcxXWuaNov20dHZxCSgTlKKcQKy8sBrkyi1qsv3DU0p/rbikKPl+KLHR9c
         TqcgM4sqEa+9W6ygcGjTvwslEtvpeYPHwWo20SkbH5Ry7PbxDmTzZQ7zUKJoWv/CqHUm
         wqhOZC3K9mL8PeJORBTNENhaGDURf3ZtQjy44kv7UBU2TOXwGWrxk1c9r1K1rmwPDHp4
         IlFbNvFeGN3lhNrlQH+sMfyKXnAPLMUWhw1RB5JeVCrivLfyZSfPrbQlEDZmoO4IGRnD
         Sy3PBAneTOO263MKdPWP/n1+YuN2SxVMtgVQTVcL/ewydKYs9KRm3L7Rvxl+dKcpJYvC
         7rMg==
X-Gm-Message-State: AO0yUKWvG/tSA/BmnWhXC/sh5oSJDgBDaz01mrLGDMmdjYeREFifet/X
        /Ynn3Mh/JyePzEz0Ky7J03zUZ83ZeAriBoJaCEo=
X-Google-Smtp-Source: AK7set8E16Uwl1ox24Ycdl24SNjfY/EOBbiAWVFUEt7rR6u2ZMYnWft2fxxQv0yKGXq/Uqerghj//A==
X-Received: by 2002:a17:906:fa15:b0:92b:a3fe:53ca with SMTP id lo21-20020a170906fa1500b0092ba3fe53camr3166775ejb.30.1678818770388;
        Tue, 14 Mar 2023 11:32:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id m10-20020a170906848a00b008def483cf79sm1442158ejx.168.2023.03.14.11.32.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 11:32:49 -0700 (PDT)
Message-ID: <ad56ca5e-03f7-5e3d-6547-91c64fdb08d3@linaro.org>
Date:   Tue, 14 Mar 2023 19:32:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11 03/13] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        =?UTF-8?Q?Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        linux-gpio@vger.kernel.org
References: <20230313161138.3598068-1-sean.anderson@seco.com>
 <20230313161138.3598068-4-sean.anderson@seco.com>
 <684eb04d-aeaa-07e1-34d6-783e85e379f0@linaro.org>
 <3c19e6d2-4df2-6187-36d5-98ceef07235a@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3c19e6d2-4df2-6187-36d5-98ceef07235a@seco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 19:09, Sean Anderson wrote:
> On 3/14/23 13:56, Krzysztof Kozlowski wrote:
>> On 13/03/2023 17:11, Sean Anderson wrote:
>>> This is a generic binding for simple MMIO GPIO controllers. Although we
>>> have a single driver for these controllers, they were previously spread
>>> over several files. Consolidate them. The register descriptions are
>>> adapted from the comments in the source. There is no set order for the
>>> registers, so I have not specified one.
>>>
>>> Rename brcm,bcm6345-gpio to brcm,bcm63xx-gpio to reflect that bcm6345
>>> has moved.
>>>
>>> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
>>> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>>> ---
>>> Linus or Bartosz, feel free to pick this up as the rest of this series
>>> may not be merged any time soon.
>>>
>>> Changes in v11:
>>> - Keep empty (or almost-empty) properties on a single line
>>> - Don't use | unnecessarily
>>> - Use gpio as the node name for examples
>>> - Rename brcm,bcm6345-gpio.yaml to brcm,bcm63xx-gpio.yaml
>>>
>>> Changes in v10:
>>> - New
>>>
>>>  ...m6345-gpio.yaml => brcm,bcm63xx-gpio.yaml} |  16 +--
>>>  .../devicetree/bindings/gpio/gpio-mmio.yaml   | 134 ++++++++++++++++++
>>>  .../bindings/gpio/ni,169445-nand-gpio.txt     |  38 -----
>>>  .../devicetree/bindings/gpio/wd,mbl-gpio.txt  |  38 -----
>>>  4 files changed, 135 insertions(+), 91 deletions(-)
>>>  rename Documentation/devicetree/bindings/gpio/{brcm,bcm6345-gpio.yaml => brcm,bcm63xx-gpio.yaml} (78%)
>>>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
>>>  delete mode 100644 Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
>>>  delete mode 100644 Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
>>>
>>> diff --git a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml b/Documentation/devicetree/bindings/gpio/brcm,bcm63xx-gpio.yaml
>>> similarity index 78%
>>> rename from Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>>> rename to Documentation/devicetree/bindings/gpio/brcm,bcm63xx-gpio.yaml
>>> index 4d69f79df859..e11f4af49c52 100644
>>> --- a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
>>> +++ b/Documentation/devicetree/bindings/gpio/brcm,bcm63xx-gpio.yaml
>>
>>
>>> +
>>> +description:
>>> +  Some simple GPIO controllers may consist of a single data register or a pair
>>> +  of set/clear-bit registers. Such controllers are common for glue logic in
>>> +  FPGAs or ASICs. Commonly, these controllers are accessed over memory-mapped
>>> +  NAND-style parallel busses.
>>> +
>>> +properties:
>>> +  big-endian: true
>>> +
>>> +  compatible:
>>
>> Keep compatible as first property.
> 
> I thought it was alphabetical.

There is no clear rule, except that compatible is always first. In the
DTS reg is second, in bindings usually as well but not always.

> 
>>> +    enum:
>>> +      - brcm,bcm6345-gpio # Broadcom BCM6345 GPIO controller
>>> +      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO controller
>>> +      - ni,169445-nand-gpio # National Instruments 169445 GPIO NAND controller
>>
>> I think you got comment that these comments are making things
>> unreadable. I don't see here improvement.
> 
> That was not the comment I got.

OK

> 
> | I think you can inline description: statements in the enum instead of
> | the # hash comments, however IIRC you have to use oneOf and
> | const: to do it, like I do in
> | Documentation/devicetree/bindings/input/touchscreen/cypress,cy8ctma340.yaml
> | but don't overinvest in this if it is cumbersome.
> 
> I investigated this and determined it was cumbersome.

So just :

     # Western Digital MyBook Live memory-mapped GPIO controller
     - wd,mbl-gpio

> 
>> For example first comment is useless - you say the same as compatible.
>> Same with last one. So only remaining WD comment should be made in new
>> line so everything is nicely readable.
> 
> I don't understand what you mean by "made in new line". Anyway, I will
> leave just the WD comment.
> 
>> BTW, order the enum by name.
> 
> OK
> 
>>> +
>>> +  '#gpio-cells':
>>> +    const: 2
>>> +
>>> +  gpio-controller:
>>> +    true
>>
>> I am sure I saw comments here...
>>
>> https://lore.kernel.org/all/20230308231018.GA4039466-robh@kernel.org/
> 
> OK
> 
>>> +
>>> +  reg:
>>> +    minItems: 1
>>> +    description:
>>> +      A list of registers in the controller. The width of each register is
>>> +      determined by its size.
>>
>> I don't understand this comment. Aren't you describing now what 'reg' is
>> in DT spec? If so, drop. If not, please share more.
> 
> Each register describes exactly one hardware register. In some other
> device, when you see `regs = <0x8000000 0x100>`, then you may have 64
> 32-bit registers. But for this device, it would be one 2048-bit
> register.

Ah, so you do not mean here address space size? OK then, thanks for
clarification.

> 
>>>  All registers must have the same width. The number
>>> +      of GPIOs is set by the width, with bit 0 corresponding to GPIO 0.
>>> +    items:
>>> +      - description:
>>> +          Register to READ the value of the GPIO lines. If GPIO line is high,
>>> +          the bit will be set. If the GPIO line is low, the bit will be cleared.
>>> +          This register may also be used to drive GPIOs if the SET register is
>>> +          omitted.
>>> +      - description:
>>> +          Register to SET the value of the GPIO lines. Setting a bit in this
>>> +          register will drive the GPIO line high.
>>> +      - description:
>>> +          Register to CLEAR the value of the GPIO lines. Setting a bit in this
>>> +          register will drive the GPIO line low. If this register is omitted,
>>> +          the SET register will be used to clear the GPIO lines as well, by
>>> +          actively writing the line with 0.
>>> +      - description:
>>> +          Register to set the line as OUTPUT. Setting a bit in this register
>>> +          will turn that line into an output line. Conversely, clearing a bit
>>> +          will turn that line into an input.
>>> +      - description:
>>> +          Register to set this line as INPUT. Setting a bit in this register
>>> +          will turn that line into an input line. Conversely, clearing a bit
>>> +          will turn that line into an output.
>>> +
>>> +  reg-names:
>>> +    minItems: 1
>>> +    maxItems: 5
>>> +    items:
>>> +      enum:
>>
>> Why this is in any order? Other bindings were here specific, your 'reg'
>> is also specific/fixed.
> 
> Some devicetrees have dirout first, and other have dat first. There is no
> mandatory order, and some registers can be included or left out as is
> convenient to the devicetree author.
> 
> reg is not specific/fixed either. It is just done that way for
> convenience (and to match the names here).

The items have order and usually we require strict order from DTS,
unless there is a reason. If there is no reason, use fixed order and
then fix the DTS.

> 
>>> +        - dat
>>> +        - set
>>> +        - clr
>>> +        - dirout
>>> +        - dirin
>>> +
>>> +  native-endian: true
>>> +
>>> +  no-output:
>>> +    $ref: /schemas/types.yaml#/definitions/flag
>>> +    description:
>>> +      If this property is present, the controller cannot drive the GPIO lines.
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - reg-names
>>> +  - '#gpio-cells'
>>> +  - gpio-controller
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    gpio@1f300010 {
>>> +      compatible = "ni,169445-nand-gpio";
>>> +      reg = <0x1f300010 0x4>;
>>> +      reg-names = "dat";
>>> +      gpio-controller;
>>> +      #gpio-cells = <2>;
>>> +    };
>>> +
>>> +    gpio@1f300014 {
>>> +      compatible = "ni,169445-nand-gpio";
>>> +      reg = <0x1f300014 0x4>;
>>> +      reg-names = "dat";
>>> +      gpio-controller;
>>> +      #gpio-cells = <2>;
>>> +      no-output;
>>> +    };
>>
>> No need to duplicate examples. Keep only one.
> 
> OK
> 
>> Everything is the same.
> 
> Except no-output.

I would argue that even one example with no-output is enough, but sure,
can be two in total.



Best regards,
Krzysztof

