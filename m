Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DFD8645A9C
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 14:19:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229929AbiLGNTA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 08:19:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229947AbiLGNSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 08:18:52 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 867E511475
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 05:18:50 -0800 (PST)
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B07B83F12D
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 13:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1670419129;
        bh=TJPCP4AbYzmGzRRwQknWvZ7ec7wLffR2M+z5Bb6OJxQ=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=lM9+uRKFOl3/Jc/pJh2y8reppEdWHW2YQ6C6KOQmrbnK7e4daXuiuj3szFS0oQkXU
         lTPzE5wIT7YZh3RZCcfglMzFOVLbMD20n3E9rr87l/eJZ4BkrM0NYAi6VqW9RPiv/u
         HQ7TTyOkLZF88L8ZBnIhv0ww5Y731Z1z4s0geyjsYO5CVMUaczVcq7wQhZnFlMUgan
         J7SfaUI6tNTpARrOl0OTj8IZQTK74OQyXUNbj42L4k8CM0Hc7PrCDofIrtWt7uWP5R
         vabXEWBdXC6yec1MfjwrALrBlwpJ1PC4gAxWBIcwftdinJ7kel+XQELjN0jrMDv1VB
         Tn19bjxjjNHaA==
Received: by mail-yb1-f199.google.com with SMTP id i7-20020a056902068700b006f848e998b5so19118330ybt.10
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 05:18:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TJPCP4AbYzmGzRRwQknWvZ7ec7wLffR2M+z5Bb6OJxQ=;
        b=xZh0yICEPgn/ZLMoCkY+cTu5KfoVZpHDp/blkWSarqS0zwiUDox6uHBmJfJaGdyZ1g
         LOYvnvLEB7XxZkw7S02HerJa5lvJqoPUqMM+1LbWqoHS3J+v9sfbSTlo+YFI8vBwC1sI
         713zm+J7duXRP1AkZIt+24/k+bHvt/XgVkNFDtZBZBPl/RcMCHjfwbzhJEYOMXXwHY7G
         eiQ9NeNUoLupSA3a/Qf6RHH6fxeDd49lotAjVit4U9rG0nBbcfX62JOq4uzLO6YiPi2q
         3vJt+npD9q92evfCjdcZWiCFnhYaweAvIDM1JlaparP9Q4ZtQvzKCVDuK/xildFYwjoT
         ewYw==
X-Gm-Message-State: ANoB5pkwcT7IupcH2P8fDP7xdMNnSaTUR9uxqLCTl5vNR8aK3r1mtKOe
        /SLy/dFHHFoLYGeXbILJuPywWsWiq64Imhs6aZpc6P+9spyvy7ykd6FChCoXzlVMpYugZs7Kzjw
        unbKcCAH14WLhZSQbThQpL616SmwxQcd+lLqcNS60xuzQoap2bL6/1x0=
X-Received: by 2002:a25:cacc:0:b0:703:7a54:1eb4 with SMTP id a195-20020a25cacc000000b007037a541eb4mr6402941ybg.92.1670419128748;
        Wed, 07 Dec 2022 05:18:48 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4Ct0zcjhvO/lIYRqtfmC2g6qD1HFP4oBj9GYyJSZASF1KApk+xbXqqU8oZ8UVDSlhwK1eLfQPHOy1Noi9MuAA=
X-Received: by 2002:a25:cacc:0:b0:703:7a54:1eb4 with SMTP id
 a195-20020a25cacc000000b007037a541eb4mr6402917ybg.92.1670419128448; Wed, 07
 Dec 2022 05:18:48 -0800 (PST)
MIME-Version: 1.0
References: <20221118011108.70715-1-hal.feng@starfivetech.com>
 <20221118011108.70715-3-hal.feng@starfivetech.com> <468b06ea-e314-ce51-7fe5-12b83032a382@linaro.org>
 <2a2cc5c9-650b-d2c8-f547-a2aadf5c7af4@starfivetech.com>
In-Reply-To: <2a2cc5c9-650b-d2c8-f547-a2aadf5c7af4@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 7 Dec 2022 14:18:31 +0100
Message-ID: <CAJM55Z9h2eiVEYf4OEmj8C8OZS5SAe=TR1t5v6wMELKUTzi9pA@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: pinctrl: Add StarFive JH7110 sys pinctrl
To:     Jianlong Huang <jianlong.huang@starfivetech.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Hal Feng <hal.feng@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Nov 2022 at 02:04, Jianlong Huang
<jianlong.huang@starfivetech.com> wrote:
>
> On 2022/11/21 16:43, Krzysztof Kozlowski wrote:
> > On 18/11/2022 02:11, Hal Feng wrote:
> >> From: Jianlong Huang <jianlong.huang@starfivetech.com>
> >>
> >> Add pinctrl bindings for StarFive JH7110 SoC sys pinctrl controller.
> >>
> >> Signed-off-by: Jianlong Huang <jianlong.huang@starfivetech.com>
> >> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> >> ---
> >>  .../pinctrl/starfive,jh7110-sys-pinctrl.yaml  | 165 ++++++++++++++++++
> >>  1 file changed, 165 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/pinctrl/starfive,jh7110-sys-pinctrl.yaml
> >>
> >> diff --git a/Documentation/devicetree/bindings/pinctrl/starfive,jh7110-sys-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/starfive,jh7110-sys-pinctrl.yaml
> >> new file mode 100644
> >> index 000000000000..79623f884a9c
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/pinctrl/starfive,jh7110-sys-pinctrl.yaml
> >> @@ -0,0 +1,165 @@
> >> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/pinctrl/starfive,jh7110-sys-pinctrl.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: StarFive JH7110 Sys Pin Controller
> >> +
> >> +description: |
> >> +  Bindings for the JH7110 RISC-V SoC from StarFive Technology Ltd.
> >> +
> >> +  Out of the SoC's many pins only the ones named PAD_GPIO0 to PAD_GPIO63
> >> +  can be multiplexed and have configurable bias, drive strength,
> >> +  schmitt trigger etc.
> >> +  Some peripherals have their I/O go through the 64 "GPIOs". This also
> >> +  includes a number of other UARTs, I2Cs, SPIs, PWMs etc.
> >> +  All these peripherals are connected to all 64 GPIOs such that
> >> +  any GPIO can be set up to be controlled by any of the peripherals.
> >> +
> >> +maintainers:
> >> +  - Jianlong Huang <jianlong.huang@starfivetech.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: starfive,jh7110-sys-pinctrl
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  reg-names:
> >> +    items:
> >> +      - const: control
> >
> > Why reg-names for one entry? Perhaps just drop it.
>
> Will fix, drop it.
>
> >
> >> +
> >> +  clocks:
> >> +    maxItems: 1
> >> +
> >> +  resets:
> >> +    maxItems: 1
> >> +
> >> +  gpio-controller: true
> >> +
> >> +  "#gpio-cells":
> >> +    const: 2
> >> +
> >> +  interrupts:
> >> +    maxItems: 1
> >> +    description: The GPIO parent interrupt.
> >
> > Drop description, it's obvious.
>
> Will fix, drop it.
>
> >
> >> +
> >> +  interrupt-controller: true
> >> +
> >> +  "#interrupt-cells":
> >> +    const: 2
> >> +
> >> +required:
> >> +  - compatible
> >> +  - reg
> >> +  - reg-names
> >> +  - clocks
> >> +  - gpio-controller
> >> +  - "#gpio-cells"
> >> +  - interrupts
> >> +  - interrupt-controller
> >> +  - "#interrupt-cells"
> >> +
> >> +patternProperties:
> >> +  '-[0-9]+$':
> >
> > Keep consistent quotes, either ' or "
> >
> > How do you differentiate hogs? The pattern is a bit unspecific.
>
> Will fix.
> Keep consisitent quotes, use '
>
> >
> >> +    type: object
> >> +    patternProperties:
> >> +      '-pins$':
> >> +        type: object
> >> +        description: |
> >> +          A pinctrl node should contain at least one subnode representing the
> >> +          pinctrl groups available on the machine. Each subnode will list the
> >> +          pins it needs, and how they should be configured, with regard to
> >> +          muxer configuration, system signal configuration, pin groups for
> >> +          vin/vout module, pin voltage, mux functions for output, mux functions
> >> +          for output enable, mux functions for input.
> >> +
> >> +        properties:
> >> +          pinmux:
> >> +            description: |
> >> +              The list of GPIOs and their mux settings that properties in the
> >> +              node apply to. This should be set using the GPIOMUX macro.
> >> +            $ref: "/schemas/pinctrl/pinmux-node.yaml#/properties/pinmux"
> >
> > Drop quotes.
>
> Will fix, drop quotes.
>
> >
> >> +
> >> +          bias-disable: true
> >> +
> >> +          bias-pull-up:
> >> +            type: boolean
> >> +
> >> +          bias-pull-down:
> >> +            type: boolean
> >> +
> >> +          drive-strength:
> >> +            enum: [ 2, 4, 8, 12 ]
> >> +
> >> +          input-enable: true
> >> +
> >> +          input-disable: true
> >> +
> >> +          input-schmitt-enable: true
> >> +
> >> +          input-schmitt-disable: true
> >> +
> >> +          slew-rate:
> >> +            maximum: 1
> >> +
> >> +        additionalProperties: false
> >> +
> >> +    additionalProperties: false
> >> +
> >> +additionalProperties: false
> >> +
> >> +examples:
> >> +  - |
> >> +    #include <dt-bindings/clock/starfive-jh7110.h>
> >> +    #include <dt-bindings/reset/starfive-jh7110.h>
> >> +    #include <dt-bindings/pinctrl/pinctrl-starfive-jh7110.h>
> >> +
> >> +        soc {
> >
> > Use 4 spaces for example indentation.
>
> Will fix.
>
> >
> >> +                #address-cells = <2>;
> >> +                #size-cells = <2>;

You can also drop these to lines..

> >> +
> >> +                gpio: gpio@13040000 {
> >> +                        compatible = "starfive,jh7110-sys-pinctrl";
> >> +                        reg = <0x0 0x13040000 0x0 0x10000>;

..and then just make this
reg = <0x13040000 0x10000>;

> >> +                        reg-names = "control";
> >> +                        clocks = <&syscrg_clk JH7110_SYSCLK_IOMUX>;
> >> +                        resets = <&syscrg_rst JH7110_SYSRST_IOMUX>;
> >> +                        interrupts = <86>;
> >> +                        interrupt-controller;
> >> +                        #interrupt-cells = <2>;
> >> +                        #gpio-cells = <2>;
> >> +                        gpio-controller;
> >> +                        status = "okay";
> >
> > No status in examples.
>
> Will fix, drop it.
>
> >
> >> +
> >> +                        uart0_pins: uart0-0 {
> >> +                                tx-pins {
> >> +                                        pinmux = <GPIOMUX(5, GPOUT_SYS_UART0_TX, GPOEN_ENABLE, GPI_NONE)>;
> >> +                                        bias-disable;
> >> +                                        drive-strength = <12>;
> >> +                                        input-disable;
> >> +                                        input-schmitt-disable;
> >> +                                        slew-rate = <0>;
> >> +                                };
> >> +
> >> +                                rx-pins {
> >> +                                        pinmux = <GPIOMUX(6, GPOUT_LOW, GPOEN_DISABLE, GPI_SYS_UART0_RX)>;
> >> +                                        bias-pull-up;
> >> +                                        drive-strength = <2>;
> >> +                                        input-enable;
> >> +                                        input-schmitt-enable;
> >> +                                        slew-rate = <0>;
> >> +                                };
> >> +                        };
> >> +                };
> >> +
> >> +                uart0 {
> >> +                        pinctrl-names = "default";
> >> +                        pinctrl-0 = <&uart0_pins>;
> >> +                        status = "okay";
> >
> > Drop this node, useless.
>
> Will fix, drop this node.
>
> >
> >> +                };
> >> +        };
> >> +
> >> +...
> >
>
> Best regards,
> Jianlong Huang
>
>
