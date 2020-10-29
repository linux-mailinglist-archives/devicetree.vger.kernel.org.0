Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8425A29E55B
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:56:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731515AbgJ2H4j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:56:39 -0400
Received: from hqnvemgate24.nvidia.com ([216.228.121.143]:14196 "EHLO
        hqnvemgate24.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732492AbgJ2H4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:56:38 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f9a46d80002>; Wed, 28 Oct 2020 21:36:40 -0700
Received: from [10.25.99.37] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 29 Oct
 2020 04:36:32 +0000
Subject: Re: [PATCH v4 1/3] dt-bindings: ASoC: audio-graph-card: switch to
 yaml base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
References: <87h7qdew9h.wl-kuninori.morimoto.gx@renesas.com>
 <87ft5xew8r.wl-kuninori.morimoto.gx@renesas.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <53ecc751-b0b2-2bc2-75f4-88b56b22b6c6@nvidia.com>
Date:   Thu, 29 Oct 2020 10:06:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87ft5xew8r.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603946200; bh=N/OonI3BYrh++vfoFQQBclzWofppYAqFrCphMW/Is7Y=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=kHd3pa0oA31npbhqxKNskeUG5xJ+7P2YxlFwBZzCT1Rkeyi1NnxaJCJlbxUWbHY1T
         jNMhk7F4gGY7rD25AMFscTQOWYs9tH8EkbXlP0UTUqFuMRzp6pJzMHslSvrv/4vQ1Q
         VDkhCK4XDxKUR3BFs6mMKfs8DT32Zlip+q4BMbK5gAaQ7W9c+kKOGvp0HjnaUUowzt
         NdI6ecYqJVf5MNVR7ZMbZ7HWHwjAWa2rEazS50TDUp+1XwYaOdDdmPWLBZ0d8pclM/
         pLj4zUF6I32aAB9npyPGIZwYgozFrcpHbguTLLR+U9BXwSdfBzgYuVhX7FDAYPhZdS
         WkVdO9qRqByVg==
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
> +

Sorry this point was not clear to me. Can 'endpoint' exist without 
port/ports? Should this rather be moved inside of port?

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

...

