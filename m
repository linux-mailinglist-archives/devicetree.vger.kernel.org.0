Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9E464A6D61
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 10:00:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230462AbiBBI76 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 03:59:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232688AbiBBI7y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 03:59:54 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D0B0C06173B
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 00:59:54 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id p15so63120771ejc.7
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 00:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RUbHe6OkUS7VK/8n9PfmB1KOiLdx1b8u/oec8YAc/Ao=;
        b=EnUh7nffM9AhyVpU7yINr5/KFAk8j7ARRu+SyqgMRskQVidbz760nxXh5OOIePMg2w
         LeldPAg++vmGYUxHKN/CQZq9kDNwLMX/q22av6Jv7yvE+xfJ5oNwAgaMEh972RDyUI+K
         dR0QyPGJ3bY31GYk5bfo/E+W8g4f5wUanQsa2oPO4w0nOf9MBSiojEy4iyX40UOxPU1D
         xAptxdWo8kA4YijFNcXgqCqIAslvx5oFXEKKHJUdIoDjnm7dTh83UpKMa8ixLDjQTfzg
         7wTiXNCKmch4JpL+rUck9uiZLqBdvRy0GVSat0+2vUL5IO6d2GRd7ZlHMYRwVmRKe5Kl
         OmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RUbHe6OkUS7VK/8n9PfmB1KOiLdx1b8u/oec8YAc/Ao=;
        b=xOwiZ8mI+aG9uX2VsPpTMdbv5QMKGyufVeDgTalOoPitHVTJIqXj93c7U3WMnztBvq
         9dRRk6I72QZaT5c9Bu27TxOFJRnn2xDvKCNBZWJdJ706qZp6SV2/Yg2xGyAOTWPK6vmT
         HBj/yla43T8P9Er7iS5gHkRnVo6+Iqb6n+ymvhwc+etrR0NEQkO+Lf0Eyf6NC5H8p3kO
         sESwHvnfc0CUp1q64XLac5haw6M5kUpW8q2BLvxdKX9ygpd2KigytBAMiMtEIFWJ+dP6
         DEiATGkKhktkZTPzpCQvQ7EhyG4dahEeDEU5YRwYwfnrh1XCSms/nXPbxlOUxeQxUiOy
         oQlw==
X-Gm-Message-State: AOAM532oRTvOrP15GTtxZwUQSM9JaJgB5i5K8Z+OUfBp0y90N1KnIt+V
        xOdFX5ChLLQwRxoDrmZ4wtToO8XKa1dlVJA+7mc2mg==
X-Google-Smtp-Source: ABdhPJzu+WSSKKxQCLIasCeuycrfPH+UyEyFANSKUe7LY+Bi9c+B08whOe7Bg2pb86j+6pwrfpMa+E8LPCv8pIWL0ds=
X-Received: by 2002:a17:907:6e1f:: with SMTP id sd31mr24745804ejc.286.1643792392532;
 Wed, 02 Feb 2022 00:59:52 -0800 (PST)
MIME-Version: 1.0
References: <20220127123028.3992288-1-clabbe@baylibre.com>
In-Reply-To: <20220127123028.3992288-1-clabbe@baylibre.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 2 Feb 2022 09:59:41 +0100
Message-ID: <CAMRc=MfmYwen46rDZ4auKttfw6ToNDkkR1nsYEBm_EvgH3yK0A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: convert faraday,ftgpio01 to yaml
To:     Corentin Labbe <clabbe@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     conleylee@foxmail.com, Linus Walleij <linus.walleij@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 27, 2022 at 1:30 PM Corentin Labbe <clabbe@baylibre.com> wrote:
>
> Converts gpio/faraday,ftgpio010.txt to yaml.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>
> This commit will cause arch/arm/boot/dts/moxart-uc7112lx.dts to fail DT validation,
> but the GPIO driver need an interrupt so the current moxart DT is incomplete and the error is appropriate.
>
>  .../bindings/gpio/faraday,ftgpio010.txt       | 27 ---------
>  .../bindings/gpio/faraday,ftgpio010.yaml      | 59 +++++++++++++++++++
>  2 files changed, 59 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/gpio/faraday,ftgpio010.txt
>  create mode 100644 Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml
>
> diff --git a/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.txt b/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.txt
> deleted file mode 100644
> index d04236558619..000000000000
> --- a/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -Faraday Technology FTGPIO010 GPIO Controller
> -
> -Required properties:
> -
> -- compatible : Should be one of
> -  "cortina,gemini-gpio", "faraday,ftgpio010"
> -  "moxa,moxart-gpio", "faraday,ftgpio010"
> -  "faraday,ftgpio010"
> -- reg : Should contain registers location and length
> -- interrupts : Should contain the interrupt line for the GPIO block
> -- gpio-controller : marks this as a GPIO controller
> -- #gpio-cells : Should be 2, see gpio/gpio.txt
> -- interrupt-controller : marks this as an interrupt controller
> -- #interrupt-cells : a standard two-cell interrupt flag, see
> -  interrupt-controller/interrupts.txt
> -
> -Example:
> -
> -gpio@4d000000 {
> -       compatible = "cortina,gemini-gpio", "faraday,ftgpio010";
> -       reg = <0x4d000000 0x100>;
> -       interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
> -       gpio-controller;
> -       #gpio-cells = <2>;
> -       interrupt-controller;
> -       #interrupt-cells = <2>;
> -};
> diff --git a/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml b/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml
> new file mode 100644
> index 000000000000..dfd10b76c9d5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/faraday,ftgpio010.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/faraday,ftgpio010.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Faraday Technology FTGPIO010 GPIO Controller
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: "cortina,gemini-gpio"
> +          - const: "faraday,ftgpio010"
> +      - items:
> +          - const: "moxa,moxart-gpio"
> +          - const: "faraday,ftgpio010"
> +      - const: "faraday,ftgpio010"
> +  reg:
> +    maxItems: 1
> +  resets:
> +    maxItems: 1
> +  clocks:
> +    maxItems: 1
> +  interrupts:
> +    maxItems: 1
> +    description: Should contain the interrupt line for the GPIO block
> +  gpio-controller: true
> +  "#gpio-cells":
> +    const: 2
> +  interrupt-controller: true
> +  "#interrupt-cells":
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#gpio-cells"
> +  - interrupt-controller
> +  - "#interrupt-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    gpio@4d000000 {
> +      compatible = "cortina,gemini-gpio", "faraday,ftgpio010";
> +      reg = <0x4d000000 0x100>;
> +      interrupts = <22 IRQ_TYPE_LEVEL_HIGH>;
> +      gpio-controller;
> +      #gpio-cells = <2>;
> +      interrupt-controller;
> +      #interrupt-cells = <2>;
> +    };
> --
> 2.34.1
>

Looks good to me but I'll wait for Rob's ack on that.

Bart
