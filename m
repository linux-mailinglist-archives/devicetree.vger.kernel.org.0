Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F10742970E9
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 15:52:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1750138AbgJWNw4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 09:52:56 -0400
Received: from hqnvemgate25.nvidia.com ([216.228.121.64]:7892 "EHLO
        hqnvemgate25.nvidia.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1750135AbgJWNwz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 09:52:55 -0400
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate25.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
        id <B5f92e0050000>; Fri, 23 Oct 2020 06:52:06 -0700
Received: from [10.25.102.106] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 23 Oct
 2020 13:52:51 +0000
Subject: Re: [PATCH v3 1/3] ASoC: dt-bindings: audio-graph-card: switch to
 yaml base Documentation
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>
CC:     <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>
References: <87a6wfay7t.wl-kuninori.morimoto.gx@renesas.com>
 <878sbzay6u.wl-kuninori.morimoto.gx@renesas.com>
From:   Sameer Pujar <spujar@nvidia.com>
Message-ID: <92de1324-7845-a0ee-7962-aa297c0dced7@nvidia.com>
Date:   Fri, 23 Oct 2020 19:22:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <878sbzay6u.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
        t=1603461126; bh=ZPDgPLTUKaq3JJ4tj2Ik48+/DmklB6SRRUM9ywC7jcE=;
        h=Subject:To:CC:References:From:Message-ID:Date:User-Agent:
         MIME-Version:In-Reply-To:Content-Type:Content-Transfer-Encoding:
         Content-Language:X-Originating-IP:X-ClientProxiedBy;
        b=kLDgSUqMQ1b5hea13RYJQ+lwwlmiXIUaQeOmmRXc+P3NPwKWbZawwzXPN4EL5suyM
         5PGDpUYcOD+BsqL40x4qNuo9dyqj2pPp+rT+4hJ83QuMEkMP0j35uxs9uoG233JXip
         prBJ7UeIszZVSbhAN59Hkq2+QRibl1W0Hdd1QvpP2gC+8GSVLXatm5Aw8EXJpoQecS
         jgOxmOuZrBNV8cDXy9Um9Z3ZjzBNdY97/BajAZ7pQ8rYg8z+XqbADz72IQxjwB0P6h
         hkIcdCkZN41HVKtBBFkbH9VR7drlMQdB5VqndKWU1mEJhrPrFevqJFW7UlTG5xCN57
         ZEek+r/CVPnKA==
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

...

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

Can these be referenced from graph.yaml (port and ports properties) and 
only additonal properties (specific to audio-graph) could be populated here?

...

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

