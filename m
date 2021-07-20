Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DA903CFD64
	for <lists+devicetree@lfdr.de>; Tue, 20 Jul 2021 17:23:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241039AbhGTOj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jul 2021 10:39:58 -0400
Received: from mail.kernel.org ([198.145.29.99]:36208 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S240756AbhGTOcF (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 20 Jul 2021 10:32:05 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4FBA160BBB
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626793953;
        bh=7Of/XASfV6JyTMQYMzRYn1mvngOifV1AXb6ezqkyor8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=j4uySCYy21EidCHJIQ/anyBkgVVjngERxQ949+Y9dVPKGn922Ym/A0+zZMRotNIjw
         Bjh9uqMVeX3/Myj77ohANg8jX8pE9Z1dvob3UhttV2zl8FFwU1ENhvK9tpKkiRlGUe
         ppyzjPUXgSHqJq3L+NiTwFhxB3o+8JsQCOnBZyfBSm2hpWpNh6HjWFay8mfZClCeoM
         7X7/yGX6/AOyVrM16+LaKVDNh/9bKpsbIKClXhDzEs5+qsF50HoP+hyHczo/bGjFR4
         OpWjYsxUPKew/ARJm2qFyvZUB49PUhtAyf+6HJvADTEiVKY1ZEVot1zlMJUdJ1GoAG
         0p9A4l9nlgBvQ==
Received: by mail-ej1-f42.google.com with SMTP id go30so34846274ejc.8
        for <devicetree@vger.kernel.org>; Tue, 20 Jul 2021 08:12:33 -0700 (PDT)
X-Gm-Message-State: AOAM533iab5wC8heCyYQhYPT5H2w3nGr7dGA440I0gbdOGwXEd2bWz3M
        yg4tH4DLVuiUR66y7Oh+gE18TH43YxnkAAByXg==
X-Google-Smtp-Source: ABdhPJz3lY82HONm0CljkbjIZWS9P+XaB+Ev6J3KmlNTrH2k5doctsf/q9Po2052mW5Vp5nhPaAOK3cg5lN/FXBFPrs=
X-Received: by 2002:a17:906:5fc1:: with SMTP id k1mr32355361ejv.360.1626793951888;
 Tue, 20 Jul 2021 08:12:31 -0700 (PDT)
MIME-Version: 1.0
References: <87a6mhwyqn.wl-kuninori.morimoto.gx@renesas.com> <87wnplvk2a.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87wnplvk2a.wl-kuninori.morimoto.gx@renesas.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 20 Jul 2021 09:12:20 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJKZ-sjbnihAkdXDk4tW8xVmyhwkHLHWouZg6da0cc99g@mail.gmail.com>
Message-ID: <CAL_JsqJKZ-sjbnihAkdXDk4tW8xVmyhwkHLHWouZg6da0cc99g@mail.gmail.com>
Subject: Re: [PATCH v2 09/14] ASoC: audio-graph-card2: add Yaml Document
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 19, 2021 at 7:48 PM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
>
>
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> This patch adds Audio Graph Card2 Yaml bindings.
> It is similar to Audio Graph Card, but different.
>
>         - audio-graph-card  used "dais"  to indicate DAI-links,
>           audio-graph-card2 uses "links" to it.
>
>         - audio-graph-card  used "phandle" to indicate bitclock/frame-master,
>           audio-graph-card2 uses flag to it.
>
>         - audio-graph-card  used "format" to indicate DAI format,
>           audio-graph-card2 assumes CPU/Codec drivers have .get_fmt support.

Why do we need these changes? I'm not wild about a new generic binding
replacing an existing one which only has 2 or 3 users IIRC. Plus
there's already the Renesas variant. (On the flip side, only a few
users, easier to deprecate the old binding.)

I also would like to see the graph card replace the simple card
binding. Surely it can handle the 'simple' case too.

> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  .../sound/audio-graph-card2-items.yaml        | 80 +++++++++++++++++++
>  .../bindings/sound/audio-graph-card2.yaml     | 51 ++++++++++++
>  2 files changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card2-items.yaml
>  create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card2.yaml
>
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card2-items.yaml b/Documentation/devicetree/bindings/sound/audio-graph-card2-items.yaml
> new file mode 100644
> index 000000000000..ec94cad6b939
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-card2-items.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/audio-graph-card2-items.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Audio Graph Card2 Items Bindings
> +
> +maintainers:
> +  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - audio-graph-card2-dsp
> +      - audio-graph-card2-multi
> +      - audio-graph-card2-codec2codec

This appears to be a significant change. Why do we need to encode this
info into the compatible? Can't walking the graph tell us this info?

> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^ports(@[0-1])?$":
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port(@[0-9a-f]+)?:
> +        $ref: audio-graph-port.yaml#
> +        unevaluatedProperties: false
> +    additionalProperties: true
> +
> +required:
> +  - compatible
> +
> +additionalProperties: true
> +
> +examples:
> +  - |
> +    mix {
> +        compatible = "audio-graph-card2-dsp";
> +
> +        /* sample ports
> +        ports@0 {
> +            port@0 { mix_fe0_ep: endpoint { remote-endpoint = <&cpu0_ep>; }; };
> +            port@1 { mix_fe1_ep: endpoint { remote-endpoint = <&cpu1_ep>; }; };
> +        };
> +        ports@1 {
> +            port@0 { mix_be0_ep: endpoint { remote-endpoint = <&codec0_ep>; }; };
> +        };
> +        */
> +    };
> +
> +    multi {
> +        compatible = "audio-graph-card2-multi";
> +
> +        /* sample ports
> +        ports@0 {
> +            port@0 { multi_00_ep: endpoint { remote-endpoint = <&cpu2_ep>; }; };
> +            port@1 { multi_01_ep: endpoint { remote-endpoint = <&cpu3_ep>; }; };
> +        };
> +        ports@1 {
> +            port@0 { multi_10_ep: endpoint { remote-endpoint = <&codec1_ep>; }; };
> +            port@1 { multi_11_ep: endpoint { remote-endpoint = <&codec2_ep>; }; };
> +        };
> +        */
> +    };
> +
> +    codec2codec {
> +        compatible = "audio-graph-card2-codec2codec";
> +
> +        /* sample ports
> +        rate = <48000>;
> +        ports {
> +            port@0 { c2c_0_ep: endpoint { remote-endpoint = <&codec3_ep>; }; };
> +            port@1 { c2c_1_ep: endpoint { remote-endpoint = <&codec4_ep>; }; };
> +        };
> +        */
> +    };
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card2.yaml b/Documentation/devicetree/bindings/sound/audio-graph-card2.yaml
> new file mode 100644
> index 000000000000..4975f88de025
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-card2.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/audio-graph-card2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Audio Graph Card2 Device Tree Bindings
> +
> +maintainers:
> +  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - audio-graph-card2
> +  links:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +  label:
> +    maxItems: 1
> +  routing:
> +    description: |
> +      A list of the connections between audio components.
> +      Each entry is a pair of strings, the first being the
> +      connection's sink, the second being the connection's source.
> +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> +
> +required:
> +  - compatible
> +  - links
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sound {
> +        compatible = "audio-graph-card2";
> +
> +        links = <&cpu_port>;
> +    };
> +
> +    cpu {
> +        compatible = "cpu-driver";
> +
> +        cpu_port: port { cpu_ep: endpoint { remote-endpoint = <&codec_ep>; }; };
> +    };
> +
> +    codec {
> +        compatible = "codec-driver";
> +
> +        port { codec_ep: endpoint { remote-endpoint = <&cpu_ep>; }; };
> +    };
> --
> 2.25.1
>
