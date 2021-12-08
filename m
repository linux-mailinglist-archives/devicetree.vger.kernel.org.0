Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C461D46DA97
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 18:58:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236396AbhLHSBf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 13:01:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232082AbhLHSBf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 13:01:35 -0500
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24544C0617A1
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 09:58:03 -0800 (PST)
Received: by mail-io1-xd36.google.com with SMTP id 14so3723636ioe.2
        for <devicetree@vger.kernel.org>; Wed, 08 Dec 2021 09:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S3HXA1Ve98WII4shKQ11gzv1Wq/UjFYizlO2WiLM/Mk=;
        b=gwCHnY7kjXA5Eb70ZKvE32AjrpYIkrhWgOut6jE7VVk4sxtz8Dx9w/yVluLk2vWwnF
         PLrbfvsFiAhN79RqMvukqR68/5Rgss8OYLZI6uYFDYIgz+b4FP8m0kjLX+zTEABONG4I
         iOMBJ3B8wL6GI5tD3cLTJxgp0Bj+uigWg+podPVMM74J8wSxyIofsxclJmRoz1eVOqqt
         KuZRgxxYgsS/wZJoAUqoQnxJnjrDOBOfaJucu9glWaQRp3nw8Md0LD+xLCkzqH06SzgK
         1Dp8ddRoSVRlodbMXspa+BQNIHgrm7xPuaOGN8F6QccCZce/zFaONbDT8Z5SSkzXnDzi
         F/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S3HXA1Ve98WII4shKQ11gzv1Wq/UjFYizlO2WiLM/Mk=;
        b=CDefNGJuNk9PE3Zp+l8xpP0PhUMCAPr1drqjwU5NOdTageZFzLh71Arm63eFHId/QV
         fFDDPc7ZrfNeruALpIzOyTPrkTS3jNDoamNR3q48LA99F15Gn6SLjeFjCmReTl96tAqc
         IA6R163lDe2VbImkmI0f92d73UNGgdDTSlIj+mQV3XwQ3N8ux1WjAJTOXMMetq8rb3dc
         vWO+5jpLy1jxq0sBbJwXOUXIMKjVf+RwVf2ELnK6Kfl2BWsGLmeInild1+A/CGX8jBoM
         +ftYjHwSTSpPcRtg8RxCSigEtX9p3MlPMEReN3ZRKKF50MhUIjIab/d5xenqSUUhnxiF
         VeOw==
X-Gm-Message-State: AOAM5334BLDiLhhHG9BswZkLLf7NVHXcO23QZ+fTvyTWquIToAp9kTbX
        fI9apk627S6stL4iQ+1Sm7DOASx+tXn7U4kdQrniWw==
X-Google-Smtp-Source: ABdhPJyaGUfzlgGbnqNRRCg6oJVT6F24bwuXMAp2oCdmOJvfdCfF9ozrmWn9AYp0979OpBasyY+B7nT7SjP3j46xb6k=
X-Received: by 2002:a02:ba07:: with SMTP id z7mr1415602jan.84.1638986282362;
 Wed, 08 Dec 2021 09:58:02 -0800 (PST)
MIME-Version: 1.0
References: <20211109113239.93493-1-robert.marko@sartura.hr> <20211109113239.93493-5-robert.marko@sartura.hr>
In-Reply-To: <20211109113239.93493-5-robert.marko@sartura.hr>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Wed, 8 Dec 2021 18:57:51 +0100
Message-ID: <CA+HBbNHj-SU2kETsxA52Xq7qkJJnEtB_b8OCuv_kksYGQnX++A@mail.gmail.com>
Subject: Re: [PATCH v9 5/6] dt-bindings: mfd: Add Delta TN48M CPLD drivers bindings
To:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Michael Walle <michael@walle.cc>, Andrew Lunn <andrew@lunn.ch>
Cc:     Luka Perkov <luka.perkov@sartura.hr>,
        Bruno Banelli <bruno.banelli@sartura.hr>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 9, 2021 at 12:32 PM Robert Marko <robert.marko@sartura.hr> wrote:
>
> Add binding documents for the Delta TN48M CPLD drivers.
>
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
> Changes in v7:
> * Update bindings to reflect driver updates
>
> Changes in v3:
> * Include bindings for reset driver
>
> Changes in v2:
> * Implement MFD as a simple I2C MFD
> * Add GPIO bindings as separate
> ---
>  .../bindings/gpio/delta,tn48m-gpio.yaml       | 39 ++++++++
>  .../bindings/mfd/delta,tn48m-cpld.yaml        | 90 +++++++++++++++++++
>  .../bindings/reset/delta,tn48m-reset.yaml     | 35 ++++++++
>  3 files changed, 164 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml
>  create mode 100644 Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
>
> diff --git a/Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml b/Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
> new file mode 100644
> index 000000000000..e3e668a12091
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/delta,tn48m-gpio.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/delta,tn48m-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Delta Networks TN48M CPLD GPIO controller
> +
> +maintainers:
> +  - Robert Marko <robert.marko@sartura.hr>
> +
> +description: |
> +  This module is part of the Delta TN48M multi-function device. For more
> +  details see ../mfd/delta,tn48m-cpld.yaml.
> +
> +  Delta TN48M has an onboard Lattice CPLD that is used as an GPIO expander.
> +  It provides 12 pins in total, they are input-only or ouput-only type.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - delta,tn48m-gpo
> +      - delta,tn48m-gpi
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#gpio-cells":
> +    const: 2
> +
> +  gpio-controller: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#gpio-cells"
> +  - gpio-controller
> +
> +additionalProperties: false
> diff --git a/Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml b/Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml
> new file mode 100644
> index 000000000000..f6967c1f6235
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/delta,tn48m-cpld.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/delta,tn48m-cpld.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Delta Networks TN48M CPLD controller
> +
> +maintainers:
> +  - Robert Marko <robert.marko@sartura.hr>
> +
> +description: |
> +  Lattice CPLD onboard the TN48M switches is used for system
> +  management.
> +
> +  It provides information about the hardware model, revision,
> +  PSU status etc.
> +
> +  It is also being used as a GPIO expander and reset controller
> +  for the switch MAC-s and other peripherals.
> +
> +properties:
> +  compatible:
> +    const: delta,tn48m-cpld
> +
> +  reg:
> +    description:
> +      I2C device address.
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +patternProperties:
> +  "^gpio(@[0-9a-f]+)?$":
> +    $ref: ../gpio/delta,tn48m-gpio.yaml
> +
> +  "^reset-controller?$":
> +    $ref: ../reset/delta,tn48m-reset.yaml
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        cpld@41 {
> +            compatible = "delta,tn48m-cpld";
> +            reg = <0x41>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            gpio@31 {
> +                compatible = "delta,tn48m-gpo";
> +                reg = <0x31>;
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +            };
> +
> +            gpio@3a {
> +                compatible = "delta,tn48m-gpi";
> +                reg = <0x3a>;
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +            };
> +
> +            gpio@40 {
> +                compatible = "delta,tn48m-gpi";
> +                reg = <0x40>;
> +                gpio-controller;
> +                #gpio-cells = <2>;
> +            };
> +
> +            reset-controller {
> +              compatible = "delta,tn48m-reset";
> +              #reset-cells = <1>;
> +            };
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml b/Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
> new file mode 100644
> index 000000000000..0e5ee8decc0d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/delta,tn48m-reset.yaml
> @@ -0,0 +1,35 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/delta,tn48m-reset.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Delta Networks TN48M CPLD reset controller
> +
> +maintainers:
> +  - Robert Marko <robert.marko@sartura.hr>
> +
> +description: |
> +  This module is part of the Delta TN48M multi-function device. For more
> +  details see ../mfd/delta,tn48m-cpld.yaml.
> +
> +  Reset controller modules provides resets for the following:
> +  * 88F7040 SoC
> +  * 88F6820 SoC
> +  * 98DX3265 switch MAC-s
> +  * 88E1680 PHY-s
> +  * 88E1512 PHY
> +  * PoE PSE controller
> +
> +properties:
> +  compatible:
> +    const: delta,tn48m-reset
> +
> +  "#reset-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - "#reset-cells"
> +
> +additionalProperties: false
> --
> 2.33.1
>

Linus, do you have any improvement points to the bindings?
Regards,
Robert
-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
