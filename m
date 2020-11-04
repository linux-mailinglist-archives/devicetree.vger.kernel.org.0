Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D2412A6EC3
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 21:33:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728679AbgKDUdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 15:33:20 -0500
Received: from mail-oo1-f68.google.com ([209.85.161.68]:43830 "EHLO
        mail-oo1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728607AbgKDUdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 15:33:20 -0500
Received: by mail-oo1-f68.google.com with SMTP id z14so5391841oom.10
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 12:33:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xx2kC9bmAU+Gqr1PijuX6iSqkOZbjEC6ChR/BZ+mPRo=;
        b=ips5gnFTZ1MAheuTLLNYAXWOyVVEuIeWhYXUAPaZgpF5dRMPfP3YhZYiaYDliezItR
         CvAgpIEOlpJfCXJo1Lbu30HiCeXjp648VdtS4PBr9f9iWd9pX6XZJIRHfHXHlp+A9oFr
         HRy5dA/gEnNYCPItGqZqbNh3LYsZSJ16AGpo/Zd3oWyuSEfbpUel2Wq2a3cHjpFOHxxB
         dibeX685OEiDqb/LPfXY7Bt/AZfhRFvyRTtPxNA8Uqp50LVEC/Crm8PZ4jLt/7US4N46
         SyJvMK0A68Bmjs1f9+aPzDZDcrW1VfHGVAcyUnoW6XaJ3XNXZyjttkmlx26m7dXQpljM
         MMEA==
X-Gm-Message-State: AOAM531mG90juwPybXO6OxkP3i8N9gkIRF/NZEnMdQfgBm4+fB3vzAnU
        8CPebpXZSze3dGDWxdRgwA==
X-Google-Smtp-Source: ABdhPJxdhDU4RU61/GDBlWhPWbMjO7Q5OJmR4vpXCPNMUjEjICp59XnGYEWISmY0Wz1Ht8fQhQRDEA==
X-Received: by 2002:a4a:be92:: with SMTP id o18mr20114625oop.22.1604521999162;
        Wed, 04 Nov 2020 12:33:19 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id w79sm710732oia.28.2020.11.04.12.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 12:33:18 -0800 (PST)
Received: (nullmailer pid 4081232 invoked by uid 1000);
        Wed, 04 Nov 2020 20:33:17 -0000
Date:   Wed, 4 Nov 2020 14:33:17 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Sameer Pujar <spujar@nvidia.com>
Subject: Re: [PATCH v5 1/3] dt-bindings: ASoC: audio-graph-card: switch to
 yaml base Documentation
Message-ID: <20201104203317.GA4068421@bogus>
References: <87zh45d0zp.wl-kuninori.morimoto.gx@renesas.com>
 <87y2jpd0yt.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y2jpd0yt.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 29, 2020 at 03:06:13PM +0900, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> This patch switches from .txt base to .yaml base Document.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../bindings/sound/audio-graph-card.txt       | 337 ------------------
>  .../bindings/sound/audio-graph-card.yaml      | 162 +++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +-
>  3 files changed, 163 insertions(+), 338 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card.yaml

> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.yaml b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
> new file mode 100644
> index 000000000000..a251d7af6f96
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
> @@ -0,0 +1,162 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/audio-graph-card.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Audio Graph Card Driver Device Tree Bindings
> +
> +maintainers:
> +  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - audio-graph-card
> +      - audio-graph-scu-card
> +
> +  dais:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +  label:
> +    maxItems: 1
> +  prefix:
> +    description: "device name prefix"
> +    $ref: /schemas/types.yaml#/definitions/string
> +  "audio-graph-card,prefix":

How'd that sneak in? Can we drop or at least mark deprecated? There's 
not any users in upstream dts files.

> +    description: "device name prefix"
> +    $ref: /schemas/types.yaml#/definitions/string
> +  routing:
> +    description: |
> +      A list of the connections between audio components.
> +      Each entry is a pair of strings, the first being the
> +      connection's sink, the second being the connection's source.
> +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> +  widgets:
> +    description: User specified audio sound widgets.
> +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> +  convert-rate:
> +    description: CPU to Codec rate convert.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +  "audio-graph-card,convert-rate":

Same here.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +    description: CPU to Codec rate convert.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +  convert-channels:
> +    description: CPU to Codec rate channels.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +  "audio-graph-card,convert-channels":
> +    description: CPU to Codec rate channels.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +  pa-gpios:
> +    maxItems: 1
> +  hp-det-gpio:
> +    maxItems: 1
> +  mic-det-gpio:
> +    maxItems: 1
> +
> +  port:
> +    description: single OF-Graph subnode
> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1
> +      prefix:
> +        description: "device name prefix"
> +        $ref: /schemas/types.yaml#/definitions/string
> +      convert-rate:
> +        description: CPU to Codec rate convert.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +      convert-channels:
> +        description: CPU to Codec rate channels.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +    patternProperties:
> +      "^endpoint(@[0-9a-f]+)?":
> +        type: object
> +        properties:
> +          remote-endpoint:
> +            maxItems: 1
> +          mclk-fs:
> +            description: |
> +              Multiplication factor between stream rate and codec mclk.
> +              When defined, mclk-fs property defined in dai-link sub nodes are ignored.
> +            $ref: /schemas/types.yaml#/definitions/uint32
> +          frame-inversion:
> +            description: dai-link uses frame clock inversion
> +            $ref: /schemas/types.yaml#/definitions/flag
> +          bitclock-inversion:
> +            description: dai-link uses bit clock inversion
> +            $ref: /schemas/types.yaml#/definitions/flag
> +          frame-master:
> +            description: Indicates dai-link frame master.
> +            $ref: /schemas/types.yaml#/definitions/phandle-array
> +            maxItems: 1
> +          bitclock-master:
> +            description: Indicates dai-link bit clock master
> +            $ref: /schemas/types.yaml#/definitions/phandle-array
> +            maxItems: 1
> +          dai-format:
> +            description: audio format.
> +            items:
> +              enum:
> +                - i2s
> +                - right_j
> +                - left_j
> +                - dsp_a
> +                - dsp_b
> +                - ac97
> +                - pdm
> +                - msb
> +                - lsb
> +          convert-rate:
> +            description: CPU to Codec rate convert.
> +            $ref: /schemas/types.yaml#/definitions/uint32
> +          convert-channels:
> +            description: CPU to Codec rate channels.
> +            $ref: /schemas/types.yaml#/definitions/uint32
> +        required:
> +          - remote-endpoint
> +
> +  ports:
> +    description: multi OF-Graph subnode
> +    type: object
> +    patternProperties:
> +      "^port(@[0-9a-f]+)?":
> +        $ref: "#/properties/port"
> +
> +required:
> +  - compatible
> +  - dais
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sound {
> +        compatible = "audio-graph-card";
> +
> +        dais = <&cpu_port_a>;
> +    };
> +
> +    cpu {
> +        /*
> +         * dai-controller own settings
> +         */
> +
> +        port {
> +            cpu_endpoint: endpoint {
> +                remote-endpoint = <&codec_endpoint>;
> +                dai-format = "left_j";
> +            };
> +        };
> +    };
> +
> +    codec {
> +        /*
> +         * codec own settings
> +         */
> +
> +        port {
> +            codec_endpoint: endpoint {
> +                remote-endpoint = <&cpu_endpoint>;
> +            };
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 2735be1a8470..a4fe8f6cec6c 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -20,7 +20,7 @@ patternProperties:
>    "^(keypad|m25p|max8952|max8997|max8998|mpmc),.*": true
>    "^(pinctrl-single|#pinctrl-single|PowerPC),.*": true
>    "^(pl022|pxa-mmc|rcar_sound|rotary-encoder|s5m8767|sdhci),.*": true
> -  "^(simple-audio-card|st-plgpio|st-spics|ts),.*": true
> +  "^(simple-audio-card|audio-graph-card|st-plgpio|st-spics|ts),.*": true
>  
>    # Keep list in alphabetical order.
>    "^70mai,.*":
> -- 
> 2.25.1
> 
