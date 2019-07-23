Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1A98F71CFA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 18:32:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388007AbfGWQc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 12:32:56 -0400
Received: from mail.kernel.org ([198.145.29.99]:37746 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729903AbfGWQc4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Jul 2019 12:32:56 -0400
Received: from mail-yw1-f47.google.com (mail-yw1-f47.google.com [209.85.161.47])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 96A7F227C0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 16:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563899574;
        bh=UkC9CMAg2OA3YyFW059HsAnan8UVUBUydqVwz+KnGXo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JFx1udfR2Smg079z8oHQ9gAztG5ijfvP0ayA7dJh/CWZ+dFoSF0CSse1tkcFPy/+j
         dmrr4zl3dAdoODQEILGkWHAeR6RBe16FOqzohVwKhIrEUCsotVnaUudtjwAzTUAuvA
         uWFSMcttwIlJLgdwfw0vGKTqDXmgJVLvsTtyJV80=
Received: by mail-yw1-f47.google.com with SMTP id i138so17161623ywg.8
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 09:32:54 -0700 (PDT)
X-Gm-Message-State: APjAAAWFYYkgpL93Cfb7xL2vD6Bq3pYWrTv17z8q0G1a2qpm2arjFejL
        eYSHCZjWDEH+zAsckbv3IAbQlYo+QBTJqNfivQ==
X-Google-Smtp-Source: APXvYqzTkj0IYYWKDgZSL/Io1oTkkh3szkCRGZDjVJgYHjvYn6KAws+dxyPhaOCU7BlGZaFaH9GYfScLchP2GVsEVbs=
X-Received: by 2002:a81:6a05:: with SMTP id f5mr47818045ywc.368.1563899573743;
 Tue, 23 Jul 2019 09:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190723132658.5068-1-maxime.ripard@bootlin.com> <20190723132658.5068-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190723132658.5068-2-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 23 Jul 2019 10:32:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
Message-ID: <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: irq: Convert Allwinner NMI Controller to
 a schema
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>, maz@kernel.org,
        devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Chen-Yu Tsai <wens@csie.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 23, 2019 at 7:27 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs have an interrupt controller called NMI supported in
> Linux, with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../allwinner,sun7i-a20-sc-nmi.yaml           | 83 +++++++++++++++++++
>  .../allwinner,sunxi-nmi.txt                   | 29 -------
>  2 files changed, 83 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> new file mode 100644
> index 000000000000..cb8077b0c8dd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - allwinner,sun6i-a31-r-intc
> +          - allwinner,sun7i-a20-sc-nmi
> +          - allwinner,sun9i-a80-sc-nmi

This should have all the possible compatibles in case all are not listed.

> +
> +          # Deprecated
> +          - allwinner,sun6i-a31-sc-nmi

I know we already did things this way before, but perhaps this should
be listed below with the 'deprecated' property. The tools can include
it in select, but then remove it from compatible property.

> +
> +  required:
> +    - compatible
> +
> +properties:
> +  "#interrupt-cells":
> +    const: 2
> +    description:
> +      The first cell is the IRQ number, the second cell the trigger
> +      type as defined in interrupt.txt in this directory.
> +
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun6i-a31-r-intc
> +      - const: allwinner,sun7i-a20-sc-nmi
> +      - items:
> +        - const: allwinner,sun8i-a83t-r-intc
> +        - const: allwinner,sun6i-a31-r-intc
> +      - const: allwinner,sun9i-a80-sc-nmi
> +      - items:
> +        - const: allwinner,sun50i-a64-r-intc
> +        - const: allwinner,sun6i-a31-r-intc
> +      - items:
> +        - const: allwinner,sun50i-h6-r-intc
> +        - const: allwinner,sun6i-a31-r-intc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +required:
> +  - "#interrupt-cells"
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-controller
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false
> +
> +examples:
> +  - |
> +    interrupt-controller@1c00030 {
> +        compatible = "allwinner,sun7i-a20-sc-nmi";
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +        reg = <0x01c00030 0x0c>;
> +        interrupt-parent = <&gic>;
> +        interrupts = <0 0 4>;
> +    };
> +
> +...
