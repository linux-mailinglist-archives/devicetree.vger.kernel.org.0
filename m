Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4262D123CAB
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2019 02:50:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726296AbfLRBu0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 20:50:26 -0500
Received: from mail.kernel.org ([198.145.29.99]:36406 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726227AbfLRBu0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Dec 2019 20:50:26 -0500
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 77E4A24672
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2019 01:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1576633824;
        bh=1ER1+Te1M9LX+7Gk5H0lMylo+O7IaUKXOyMSLvBiGdw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=tJpSKwz5LbEq7uihFvq3h9Vn+kqe2zX0nuh1C6Oyxz1Bh5yu727s9JLudZAIGOLME
         13Pvb1K294A5bXi6JTYLI6JjXhHVpHf494NE+C3jR07jFkcDCctJJzZ249RxBZUxcc
         jsGzkR+hETe5uFKg6+YJWST+cCClE/3mWd3hTLxw=
Received: by mail-qt1-f172.google.com with SMTP id e5so660400qtm.6
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2019 17:50:24 -0800 (PST)
X-Gm-Message-State: APjAAAV3jfj/yazJKhewr841i04/GRHB4SY9SuOIA4x6TTF4n+oD6OOi
        95mnbMZcj6RUXUaMiyaOPKoUn1V4uWW1GNB1Lw==
X-Google-Smtp-Source: APXvYqxzmxWo6m2szzNin7/6pi1AzpfPnPJsh7QcQlbw7BCYatEkJb5KqW7BvgSxSjL0yCZQCCBYdTj8oKhbarpsrhE=
X-Received: by 2002:ac8:1c4e:: with SMTP id j14mr159494qtk.300.1576633823583;
 Tue, 17 Dec 2019 17:50:23 -0800 (PST)
MIME-Version: 1.0
References: <20191209093441.50694-1-maxime@cerno.tech> <20191209093441.50694-4-maxime@cerno.tech>
In-Reply-To: <20191209093441.50694-4-maxime@cerno.tech>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 17 Dec 2019 19:50:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ0Nq8P6bXeNsb20t0M5qj6XH1XW77bQH4PWL0bzspZvg@mail.gmail.com>
Message-ID: <CAL_JsqJ0Nq8P6bXeNsb20t0M5qj6XH1XW77bQH4PWL0bzspZvg@mail.gmail.com>
Subject: Re: [PATCH 4/4] dt-bindings: sram: Convert Allwinner A10 system
 controller to a schema
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 9, 2019 at 3:34 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The older Allwinner SoCs have a system controller that is supported in
> Linux, with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../allwinner,sun4i-a10-system-control.yaml   | 140 ++++++++++++++++++
>  .../devicetree/bindings/sram/sunxi-sram.txt   | 113 --------------
>  2 files changed, 140 insertions(+), 113 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sram/sunxi-sram.txt
>
> diff --git a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
> new file mode 100644
> index 000000000000..3a368fbdff58
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
> @@ -0,0 +1,140 @@
> +# SPDX-License-Identifier: GPL-2.0+
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sram/allwinner,sun4i-a10-system-control.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 System Control Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +description:
> +  The SRAM controller found on most Allwinner devices is represented
> +  by a regular node for the SRAM controller itself, with sub-nodes
> +  representing the SRAM handled by the SRAM controller.
> +
> +properties:
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun4i-a10-sram-controller
> +        deprecated: true
> +      - const: allwinner,sun4i-a10-system-control
> +      - const: allwinner,sun5i-a13-system-control
> +      - items:
> +        - const: allwinner,sun7i-a20-system-control
> +        - const: allwinner,sun4i-a10-system-control
> +      - const: allwinner,sun8i-a23-system-control
> +      - const: allwinner,sun8i-h3-system-control
> +      - const: allwinner,sun50i-a64-sram-controller
> +        deprecated: true
> +      - const: allwinner,sun50i-a64-system-control
> +      - const: allwinner,sun50i-h5-system-control
> +      - items:
> +        - const: allwinner,sun50i-h6-system-control
> +        - const: allwinner,sun50i-a64-system-control
> +      - items:
> +        - const: allwinner,suniv-f1c100s-system-control
> +        - const: allwinner,sun4i-a10-system-control
> +
> +  reg:
> +    maxItems: 1
> +
> +  ranges: true
> +
> +patternProperties:
> +  "^sram@[a-z0-9]+":
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: mmio-sram
> +
> +    patternProperties:
> +      "^sram-section?@[a-f0-9]+$":
> +        type: object
> +
> +        compatible:

This should be under 'properties'. I fixed it up.

I think this should have triggered an error before, but I reworked the
meta-schema a bit today as there were several cases where we weren't
descending levels correctly.

Rob
