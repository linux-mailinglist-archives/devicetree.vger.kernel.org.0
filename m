Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1314F693FD0
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:43:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbjBMInD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:43:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229747AbjBMInC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:43:02 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B753C10C6
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:42:56 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o36so8159158wms.1
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:42:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0OmNYTifheZvD9PPxr9kkTRGJzSHdY4kbukQrLTBAW4=;
        b=FWK+6HEinSgiua2XGF21FAE0FGr7XnSb0PdJdZ9WqkvUH6IQkN/6MpvTzOiSj6sRXf
         zXiotXiz2tKlhrUQtBXKHMnYDZUpB0vKM2ljHRS+fjTBSQC9SghhIPCD3y0zOUfWvxq7
         tLTs4/cdzxdWgO7LD1m2vTWQyDHKHbXCQdhjXEtPXRmuJ1iwXmHE7Mf5mzrb6AuISa5b
         c30So5xwqsPrNf2KF6BbOA6IQXmj4APwUxT2UVzvjrui7Nv3meQpChtmA1F2nrXIr1Na
         x1ZdfYz0cXRjiQ35Ecbt9OykdOGic1HoLZrOFvydYRCOKO0ltE+xXxUNuXe0oQmA5SDg
         QV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0OmNYTifheZvD9PPxr9kkTRGJzSHdY4kbukQrLTBAW4=;
        b=Ojuz5r3kY9L2vn99jSPwKqInntE29WKXCRvxjF1iVnHWYysN6p4r8BTn7dKnXhHhIT
         Yn8j9Vq6hSjC+BudV7THXHucDdIqBYXMLlDfuFdR7maFF9YwxAyZZ6HGE102ba27Xt/E
         a7BFRcHRCmoTtNUYdoFfFl1mkCqdAtgvGSOJRF+h/IRRqg6Wp4AS4DLVXFW72ZDDF+Mn
         0yEpwQtsaU5Xp66CrypqC5Y5ih4a8uXOBtEa3t4lURPX4KibFzZ3muPl1X9Xrdsm77Rx
         Pl2zSSpmPEBTl5co1Qux3GWPHsficL0an2GQeCU/DzeLkwIitBsu8iiy30F9Sp6ba+oa
         KwPA==
X-Gm-Message-State: AO0yUKWZ3cjtSUuo24dLuFBa6oynhWmAymsgzALmJg/tILYkZPSVPsKG
        oubcBp7ccqHIj1njWP9TVBw5yg==
X-Google-Smtp-Source: AK7set8dt7dKV4KWBja4N7OSEnkrJwuXkwT2UiLf0cdeBzHUv/RBuhO0QLIFvWWvTbc6kQb0Ztts5w==
X-Received: by 2002:a05:600c:a687:b0:3db:bc5:b2ae with SMTP id ip7-20020a05600ca68700b003db0bc5b2aemr17827029wmb.41.1676277775347;
        Mon, 13 Feb 2023 00:42:55 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q14-20020a05600c46ce00b003db12112fcfsm14458194wmo.4.2023.02.13.00.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 00:42:54 -0800 (PST)
Message-ID: <7c6741e1-ae41-ba20-b859-736214c680e8@linaro.org>
Date:   Mon, 13 Feb 2023 09:42:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [RFC PATCH] dt-bindings: Add AST2600 i3c controller binding
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>, devicetree@vger.kernel.org
Cc:     linux-aspeed@lists.ozlabs.org, linux-i3c@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
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

On 13/02/2023 08:41, Jeremy Kerr wrote:
> This change adds a devicetree binding for the ast2600 i3c controller

1. Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

2. Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

3. Subject: drop second/last, redundant "binding". The "dt-bindings"
prefix is already stating that these are bindings.

4. Where is the driver? Where is the DTS? Why do we want unused binding
in the kernel?

> hardware. This is heavily based on the designware i3c hardware, plus a
> reset facility and two platform-specific properties:
> 
>  - sda-pullup-ohms: to specify the value of the configurable pullup
>    resistors on the SDA line
> 
>  - global-regs: to reference the (ast2600-specific) i3c global register
>    block, and the device index to use within it.
> 
> Signed-off-by: Jeremy Kerr <jk@codeconstruct.com.au>
> ---
> RFC: the example in this depends on some not-yet-accepted patches for
> the clock and reset linkages:
> 
>   https://lore.kernel.org/linux-devicetree/cover.1676267865.git.jk@codeconstruct.com.au/T/
> 
> I'm also keen to get some review on the pullup configuration too.
> 
> ---
>  .../bindings/i3c/aspeed,ast2600-i3c.yaml      | 75 +++++++++++++++++++
>  1 file changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml b/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
> new file mode 100644
> index 000000000000..ef28a8b77c94
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i3c/aspeed,ast2600-i3c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED AST2600 i3c controller
> +
> +maintainers:
> +  - Jeremy Kerr <jk@codeconstruct.com.au>
> +
> +allOf:
> +  - $ref: i3c.yaml#
> +
> +properties:
> +  compatible:
> +    const: aspeed,ast2600-i3c
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  sda-pullup-ohms:
> +    enum: [545, 750, 2000]
> +    default: 2000
> +    description: |
> +      Value of SDA pullup resistor in Ohms

Why this is property of i3c, not pinctrl?

> +
> +  global-regs:

Missing vendor prefix

> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: |
> +      A (phandle, controller index) reference to the i3c global register set
> +      used for this device.

Missing items description:
https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42


> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - global-regs
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/ast2600-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    i3c-master@2000 {
> +        #address-cells = <3>;
> +        #size-cells = <0>;
> +        compatible = "aspeed,ast2600-i3c";
> +        reg = <0x2000 0x1000>;

compatible and reg are first properties.

> +        clocks = <&syscon ASPEED_CLK_GATE_I3C0CLK>;
> +        resets = <&syscon ASPEED_RESET_I3C0>;
> +        global-regs = <&i3c_global 0>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&pinctrl_i3c1_default>;
> +        interrupts = <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +
> +    i3c_global: i3c-global@0 {

Drop node, unrelated.

> +        compatible = "aspeed,ast2600-i3c-global", "simple-mfd", "syscon";
> +        resets = <&syscon ASPEED_RESET_I3C_DMA>;
> +        reg = <0x0 0x1000>;
> +    };
> +...

Best regards,
Krzysztof

