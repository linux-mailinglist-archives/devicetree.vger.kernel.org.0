Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7594771C99
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 18:14:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729139AbfGWQOV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jul 2019 12:14:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:58180 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728815AbfGWQOV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Jul 2019 12:14:21 -0400
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id F1BB5227BF
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 16:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563898460;
        bh=lWPON7VBjbQx5DMKFjEWYTP1sMIlP0q/j6mSvaUBvhE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=D8KhtYZQrcoPEkkm3wYKnMsfIcM2e2yhkPUxvjgGgVS7D+jMQ4dkS3exde44rqTFX
         sKdTgCo0CVqKbzns8jZN244/VJwXx1s1U8WkzpgJ40WGg/AJV4DYKF8xew2TCmd0sM
         IFppg/5EnROqyfzvAAKxNcPOpHw19Cap/eCuIbKU=
Received: by mail-yb1-f176.google.com with SMTP id d9so9914986ybf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 09:14:19 -0700 (PDT)
X-Gm-Message-State: APjAAAUN8AEV6eEBvcW3Y1KD4GoUQDgM1kvM3N+FYWG6A+QhRch5AdUq
        zRoLGqd/pZ7LOtz1WvnRnE1rKq7GPLxJtavpUQ==
X-Google-Smtp-Source: APXvYqyzeNUQAlAwydptK7cxSXY+LELavm+ycMB0Sosh3OqniGOOGEBzozTbgVuUCJlBnIXtiZlPwtUGhspw2Zn1rhI=
X-Received: by 2002:a25:7c05:: with SMTP id x5mr47406679ybc.358.1563898459148;
 Tue, 23 Jul 2019 09:14:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190723132658.5068-1-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 23 Jul 2019 10:14:06 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJJTwBwjXixjgr8KbiM-p6uTkVTcBwzUawdgkeybABxOQ@mail.gmail.com>
Message-ID: <CAL_JsqJJTwBwjXixjgr8KbiM-p6uTkVTcBwzUawdgkeybABxOQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: irq: Convert Allwinner IRQ Controller to
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
> The Allwinner SoCs have an interrupt controller supported in Linux, with a
> matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../allwinner,sun4i-a10-ic.yaml               | 49 +++++++++++++++++++
>  .../allwinner,sun4i-ic.txt                    | 20 --------
>  2 files changed, 49 insertions(+), 20 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-ic.txt
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
> new file mode 100644
> index 000000000000..806cf4770f75
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun4i-a10-ic.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun4i-a10-ic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 Interrupt Controller Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +
> +properties:
> +  "#interrupt-cells":
> +    const: 1
> +
> +  compatible:
> +    enum:
> +      - allwinner,sun4i-a10-ic
> +      - allwinner,suniv-f1c100s-ic
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +required:
> +  - "#interrupt-cells"
> +  - compatible
> +  - reg
> +  - interrupt-controller
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false

Looks to me like you could enable this.

BTW, I think the fix is going to be just the new
'unevaluatedProperties: false'. We could start putting that in as
unknown keys are ignored (though the meta-schema will need an update
to allow it).

> +
> +examples:
> +  - |
> +    intc: interrupt-controller {

unit-address needed.

I need to figure out how to enable dtc warnings by default on the examples...

> +        compatible = "allwinner,sun4i-a10-ic";
> +        reg = <0x01c20400 0x400>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +    };
> +
> +...
