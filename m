Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64DB4DB0ED
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 17:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405672AbfJQPRw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 11:17:52 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:38563 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404909AbfJQPRw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 11:17:52 -0400
Received: by mail-oi1-f195.google.com with SMTP id k10so171967oij.5
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 08:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6tlDHmC6wlZ5TK6UmlVKTwMVjF5/yhTWEc3F91aKg24=;
        b=kVFYtNMLoieGIHim43g4qoHdRv+TfrHMppysmtPYdQmFpQ8AAVGtvOS5SFDe79ELLD
         ZFC8PJZL31LKEnbLFaAcMHxM840aoGBhMAdxX1rue5Y+DvX0cEwvXPD+cNjQWnaaVvLX
         EKxymEzRR+BQLmhWQ2OwFbhclVX08imRm3wWFjPC5dOYVKgxolaO89nSjbayGcm30K8/
         MO0u6oDdsGptvpsxhQcv+TfONcrc+qFTYiG2AtYBkuJf/+jsOCxVUH91gM+DS+uO+eEj
         pTXgyRSSd9bx2uQThNkVkAfoQUroVL82i7pvZRsnTn9MOvig2YisHYB5Ba7eVqupy6pB
         Tadg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6tlDHmC6wlZ5TK6UmlVKTwMVjF5/yhTWEc3F91aKg24=;
        b=cYJ0VCmqHwAv8Eg5RZXiTi/M4LeauO/oX+oGd6U6rxE07euOvG8WtcHQwZufZlcEo4
         +n2J9mrmJRmySRTJzidYttHLfqSkUxHkDsjRIJqJqS4lHo9I/vR7LoaQspaW4SVSNzp7
         r9RPXC1I7RjE4pv40RtHHWRLrIc1hgvaj79+2lMmWZZG7eUVdJS54Na/T2YvoBxqYZQk
         PXjSf38fRXLyqZIbaodwINGeBD+GIsLzk5ARPVAUB4Vkm0bOzAUCMHWWUSDuFwIpP596
         YN1x4+7GF/jJtFBALBJ1aL2BRzX0CPRpKYxGaNc6M8feT2po7ryibPKKFJw+Ev6mDegz
         jo0A==
X-Gm-Message-State: APjAAAU0YoaIsmWygjU5CuLov228knD1dpBMC16ZijfcDWZa7RXoC7cm
        fiT1vJsZxZDJ7wz4qd0Q2uMlXc709TmtPKTlOwJArA==
X-Google-Smtp-Source: APXvYqxiWsXZ2j9DUQLFGq87hxZDl0mle0KZeE0MzrbCxrr1SAMYc1t/T3AwFp1T5iXEUyNqtcAKVA1xZBO4JVtcpiU=
X-Received: by 2002:a05:6808:114:: with SMTP id b20mr3772123oie.114.1571325471084;
 Thu, 17 Oct 2019 08:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191017031051.20366-1-chris.packham@alliedtelesis.co.nz> <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191017031051.20366-2-chris.packham@alliedtelesis.co.nz>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Thu, 17 Oct 2019 17:17:40 +0200
Message-ID: <CAMpxmJUY3_Fv6mMw=ARAedXUM611Mr91UZrQpPAz28i2=Q_srQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: brcm: Add bindings for xgs-iproc
To:     Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, rjui@broadcom.com,
        sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

czw., 17 pa=C5=BA 2019 o 05:11 Chris Packham
<chris.packham@alliedtelesis.co.nz> napisa=C5=82(a):
>
> This GPIO controller is present on a number of Broadcom switch ASICs
> with integrated SoCs. It is similar to the nsp-gpio and iproc-gpio
> blocks but different enough to require a separate driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>
> Notes:
>     Changes in v2:
>     - Document as DT schema
>     - Include ngpios, #gpio-cells and gpio-controller properties
>
>  .../bindings/gpio/brcm,xgs-iproc.yaml         | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/brcm,xgs-iproc=
.yaml
>
> diff --git a/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml b=
/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
> new file mode 100644
> index 000000000000..71998551209e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/brcm,xgs-iproc.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/brcm,xgs-iproc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom XGS iProc GPIO controller
> +
> +maintainers:
> +  - Chris Packham <chris.packham@alliedtelesis.co.nz>
> +
> +description: |
> +  This controller is the Chip Common A GPIO present on a number of Broad=
com
> +  switch ASICs with integrated SoCs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,iproc-gpio-cca

I believe this should be:

    const: brcm,iproc-gpio-cca

Bart

> +
> +  reg:
> +    minItems: 2
> +    maxItems: 2
> +    description:
> +      The first region defines the base I/O address containing
> +      the GPIO controller registers. The second region defines
> +      the I/O address containing the Chip Common A interrupt
> +      registers.
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +      const: 2
> +
> +  ngpios:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 32
> +
> +  interrupt-controller:
> +    type: boolean
> +
> +  '#interrupt-cells':
> +    const: 2
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#gpio-cells"
> +  - gpio-controller
> +
> +allOf:
> + - if:
> +     properties:
> +       interrupt-controller:
> +         contains:
> +           const: true
> +   then:
> +     required:
> +       - interrupts
> +       - '#interrupt-cells'
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    gpio@18000060 {
> +        compatible =3D "brcm,iproc-gpio-cca";
> +        #gpio-cells =3D <2>;
> +        reg =3D <0x18000060 0x50>,
> +              <0x18000000 0x50>;
> +        ngpios =3D <12>;
> +        gpio-controller;
> +        interrupt-controller;
> +        #interrupt-cells =3D <2>;
> +        interrupts =3D <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +
> +
> +...
> --
> 2.23.0
>
