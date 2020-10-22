Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE0622957D4
	for <lists+devicetree@lfdr.de>; Thu, 22 Oct 2020 07:19:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2507883AbgJVFTx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 01:19:53 -0400
Received: from hqnvemgate24.nvidia.com ([216.228.121.143]:7954 "EHLO
        hqnvemgate24.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2444362AbgJVFTx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 01:19:53 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f91161b0000>; Wed, 21 Oct 2020 22:18:19 -0700
Received: from [10.25.102.106] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 22 Oct
 2020 05:19:48 +0000
Subject: Re: [PATCH v3 1/3] ASoC: dt-bindings: audio-graph-card: switch to
 yaml base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
References: <87a6wfay7t.wl-kuninori.morimoto.gx@renesas.com>
 <878sbzay6u.wl-kuninori.morimoto.gx@renesas.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <75ca7528-3177-46cb-73c5-46e32e63ad44@nvidia.com>
Date:   Thu, 22 Oct 2020 10:49:43 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <878sbzay6u.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603343899; bh=4ga9u9EaTXgZqZYV9Tg6o4laYNM9aVw6ALQdX3oH9TM=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=UXbIIDNC6MgtL/Ip2uBR5+o9PLCTRcTd9dQE9ABEA6eKGefH+7Z1aFh66kUntwatf
         2KeMs4oBjtmW+yvHkgj5YF/SQWnyh0haCkBFzIt9Wal9NKK2VtLvtVu2dOU0Mu/0IW
         cKalLe7UPbwPwneJTPLPc1piSiqc8aoAkwZ3EoF/7Asj5WhBVOmtMI65PikdvzmhTx
         9IEdt/uw/OYCdyalqZX64qXSDKtAUTXEaCXQNsBduRswzPCJTv2tCR7AGQ47EMbhoZ
         5UczD0CMjUkAfp6T63f2ezfUOOIqD/nJs8b7ag0tvLMm+x7DgZKDgWsECFURzbMyWN
         gNCzU5sV0gxRQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Morimoto-san,

> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> This patch switches from .txt base to .yaml base Document.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>   .../bindings/sound/audio-graph-card.txt       | 337 ------------------
>   .../bindings/sound/audio-graph-card.yaml      | 165 +++++++++
>   .../devicetree/bindings/vendor-prefixes.yaml  |   2 +-
>   3 files changed, 166 insertions(+), 338 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card.txt
>   create mode 100644 Documentation/devicetree/bindings/sound/audio-graph-card.yaml
>
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.txt b/Documentation/devicetree/bindings/sound/audio-graph-card.txt
> deleted file mode 100644
> index d5f6919a2d69..000000000000
> --- a/Documentation/devicetree/bindings/sound/audio-graph-card.txt
> +++ /dev/null
> @@ -1,337 +0,0 @@
...
> diff --git a/Documentation/devicetree/bindings/sound/audio-graph-card.yaml b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
> new file mode 100644
> index 000000000000..9ccffbda86a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/audio-graph-card.yaml
> @@ -0,0 +1,165 @@
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

Since I am trying to re-use most of audio-graph for Tegra, can 
'compatible' be moved to a separate schema?
For example,
audio-graph.yaml -> defines all the common stuff
audio-graph-card.yaml -> audio-graph.yaml + 'compatible' property
Similarly, tegra-audio-graph-card.yaml -> audio-graph.yaml + Tegra 
'compatible' property

> +
> +  dais:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +  label:
> +    maxItems: 1
> +  prefix:
> +    description: "device name prefix"
> +    $ref: /schemas/types.yaml#/definitions/string
> +  "audio-graph-card,prefix":
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

> +  endpoint:
> +    type: object
> +    properties:
> +      remote-endpoint:
> +        maxItems: 1
> +      mclk-fs:
> +        description: |
> +          Multiplication factor between stream rate and codec mclk.
> +          When defined, mclk-fs property defined in dai-link sub nodes are ignored.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +      frame-inversion:
> +        description: dai-link uses frame clock inversion
> +        $ref: /schemas/types.yaml#/definitions/flag
> +      bitclock-inversion:
> +        description: dai-link uses bit clock inversion
> +        $ref: /schemas/types.yaml#/definitions/flag
> +      frame-master:
> +        description: Indicates dai-link frame master.
> +        $ref: /schemas/types.yaml#/definitions/phandle-array
> +        maxItems: 1
> +      bitclock-master:
> +        description: Indicates dai-link bit clock master
> +        $ref: /schemas/types.yaml#/definitions/phandle-array
> +        maxItems: 1
> +      dai-format:
> +        description: audio format.
> +        items:
> +          enum:
> +            - i2s
> +            - right_j
> +            - left_j
> +            - dsp_a
> +            - dsp_b
> +            - ac97
> +            - pdm
> +            - msb
> +            - lsb
> +      convert-rate:
> +        description: CPU to Codec rate convert.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +      convert-channels:
> +        description: CPU to Codec rate channels.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +    required:
> +      - remote-endpoint

Is it possible to have endpoint without port nodes?

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
> +        $ref: "#/properties/endpoint"
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

This needs to be true when other files want to reference this schema 
and/or define some additional properties.

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
> index 63996ab03521..5ada35ddac7e 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -20,7 +20,7 @@ patternProperties:
>     "^(keypad|m25p|max8952|max8997|max8998|mpmc),.*": true
>     "^(pinctrl-single|#pinctrl-single|PowerPC),.*": true
>     "^(pl022|pxa-mmc|rcar_sound|rotary-encoder|s5m8767|sdhci),.*": true
> -  "^(simple-audio-card|st-plgpio|st-spics|ts),.*": true
> +  "^(simple-audio-card|audio-graph-card|st-plgpio|st-spics|ts),.*": true
>
>     # Keep list in alphabetical order.
>     "^70mai,.*":
> --
> 2.25.1
>

