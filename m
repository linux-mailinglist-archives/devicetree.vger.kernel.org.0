Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 42C10A3A73
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 17:36:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727935AbfH3PgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 11:36:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:50812 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727434AbfH3PgS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Aug 2019 11:36:18 -0400
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 9756423427
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 15:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1567179377;
        bh=A1QrV49tH9q9dlQhAxJiuEe1Gg2tCFFNDHsDHnohYu4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=dBSnWY0LCPv9EeotfjqGDgXVxUGuh8MDpDsFA1gcJk+hfMsODcgD4hMDFQwXA9RMK
         1TvokkDW8cWVEKAd8CzIvtLwVoWRdz91wpnLG2UOzHo0U7XHHRvBAKDH6OMIbq/4gg
         pnnWoxMK2njiZ8oR2e6ZDD7Gl9CilQTsyAjDm2Gw=
Received: by mail-qt1-f181.google.com with SMTP id r15so2360151qtn.12
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 08:36:17 -0700 (PDT)
X-Gm-Message-State: APjAAAW2y9Ayk2Re/92tE2lJdIg9DpyoNX3bbkQLzTKG1cA9GzRjx2Bu
        LPcGSSIqmSfM8ywHLkmUGwLMiS66WZPBN8Lp9w==
X-Google-Smtp-Source: APXvYqyqu+wKSjq8CtuKESA3gZWEHLsO/lSYJHQHqy8f0pK610bo1aWQwIn6ZI6qr6CNseMYx/sE4s//KRRz/X/Ntyc=
X-Received: by 2002:aed:24f4:: with SMTP id u49mr16247909qtc.110.1567179376775;
 Fri, 30 Aug 2019 08:36:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org> <20190828125209.28173-2-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-2-mripard@kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 30 Aug 2019 10:36:04 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLatP9BaaHZvW=ax+X98imPR1rxYiQCb8rKLvAbyV8Y7A@mail.gmail.com>
Message-ID: <CAL_JsqLatP9BaaHZvW=ax+X98imPR1rxYiQCb8rKLvAbyV8Y7A@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] ASoC: dt-bindings: Convert Allwinner A10 codec to
 a schema
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 28, 2019 at 7:52 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner SoCs have an embedded audio codec that is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../sound/allwinner,sun4i-a10-codec.yaml      | 162 ++++++++++++++++++
>  .../devicetree/bindings/sound/sun4i-codec.txt |  94 ----------
>  2 files changed, 162 insertions(+), 94 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun4i-codec.txt
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
> new file mode 100644
> index 000000000000..44feefae0ef0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-codec.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/allwinner,sun4i-a10-codec.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 Codec Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - allwinner,sun4i-a10-codec
> +      - allwinner,sun6i-a31-codec
> +      - allwinner,sun7i-a20-codec
> +      - allwinner,sun8i-a23-codec
> +      - allwinner,sun8i-h3-codec
> +      - allwinner,sun8i-v3s-codec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    items:
> +      - const: apb
> +      - const: codec
> +
> +  dmas:
> +    items:
> +      - description: RX DMA Channel
> +      - description: TX DMA Channel
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +      - const: tx
> +
> +  resets:
> +    maxItems: 1
> +
> +  allwinner,audio-routing:
> +    $ref: /schemas/types.yaml#definitions/non-unique-string-array
> +    description: |-
> +      A list of the connections between audio components.  Each entry
> +      is a pair of strings, the first being the connection\'s sink, the
> +      second being the connection\'s source. Valid names include
> +
> +        Audio pins on the SoC
> +          HP
> +          HPCOM
> +          LINEIN    (not on sun8i-v3s)
> +          LINEOUT   (not on sun8i-a23 or sun8i-v3s)
> +          MIC1
> +          MIC2      (not on sun8i-v3s)
> +          MIC3      (only on sun6i-a31)
> +
> +        Microphone biases from the SoC
> +          HBIAS
> +          MBIAS     (not on sun8i-v3s)
> +
> +        Board connectors
> +          Headphone
> +          Headset Mic
> +          Line In
> +          Line Out
> +          Mic
> +          Speaker

All these strings should be in an enum. If 'items' is a schema rather
than a list, it applies to all items.

Also, I assume that maxItems can be 18 and minItems is 2?

> +
> +  allwinner,codec-analog-controls:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the codec analog controls in the PRCM
> +
> +  allwinner,pa-gpios:
> +    description: GPIO to enable the external amplifier
> +
> +required:
> +  - "#sound-dai-cells"
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - dmas
> +  - dma-names
> +
> +if:
> +  properties:
> +    compatible:
> +      enum:
> +        - allwinner,sun6i-a31-codec
> +        - allwinner,sun8i-a23-codec
> +        - allwinner,sun8i-h3-codec
> +        - allwinner,sun8i-v3s-codec
> +
> +then:
> +  if:
> +    properties:
> +      compatible:
> +        const: allwinner,sun6i-a31-codec
> +
> +  then:
> +    required:
> +      - resets
> +      - allwinner,audio-routing
> +
> +  else:
> +    required:
> +      - resets
> +      - allwinner,audio-routing
> +      - allwinner,codec-analog-controls
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    codec@1c22c00 {
> +        #sound-dai-cells = <0>;
> +        compatible = "allwinner,sun7i-a20-codec";
> +        reg = <0x01c22c00 0x40>;
> +        interrupts = <0 30 4>;
> +        clocks = <&apb0_gates 0>, <&codec_clk>;
> +        clock-names = "apb", "codec";
> +        dmas = <&dma 0 19>, <&dma 0 19>;
> +        dma-names = "rx", "tx";
> +    };
> +
> +  - |
> +    codec@1c22c00 {
> +        #sound-dai-cells = <0>;
> +        compatible = "allwinner,sun6i-a31-codec";
> +        reg = <0x01c22c00 0x98>;
> +        interrupts = <0 29 4>;
> +        clocks = <&ccu 61>, <&ccu 135>;
> +        clock-names = "apb", "codec";
> +        resets = <&ccu 42>;
> +        dmas = <&dma 15>, <&dma 15>;
> +        dma-names = "rx", "tx";
> +        allwinner,audio-routing =
> +            "Headphone", "HP",
> +            "Speaker", "LINEOUT",
> +            "LINEIN", "Line In",
> +            "MIC1", "MBIAS",
> +            "MIC1", "Mic",
> +            "MIC2", "HBIAS",
> +            "MIC2", "Headset Mic";
> +    };
> +
> +...
