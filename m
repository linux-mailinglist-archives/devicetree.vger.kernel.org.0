Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80D0F2B765F
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 07:40:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726096AbgKRGik (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 01:38:40 -0500
Received: from mail.v3.sk ([167.172.186.51]:60544 "EHLO shell.v3.sk"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725800AbgKRGik (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Nov 2020 01:38:40 -0500
Received: from localhost (localhost.localdomain [127.0.0.1])
        by zimbra.v3.sk (Postfix) with ESMTP id 38C32DF8A5;
        Wed, 18 Nov 2020 06:35:58 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
        by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id NqEWOd0Kgx6T; Wed, 18 Nov 2020 06:35:57 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
        by zimbra.v3.sk (Postfix) with ESMTP id 079A0E0190;
        Wed, 18 Nov 2020 06:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
        by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 2RffOTGIp8l2; Wed, 18 Nov 2020 06:35:56 +0000 (UTC)
Received: from localhost (unknown [109.183.109.54])
        by zimbra.v3.sk (Postfix) with ESMTPSA id B17DDDF8A5;
        Wed, 18 Nov 2020 06:35:56 +0000 (UTC)
Date:   Wed, 18 Nov 2020 07:38:36 +0100
From:   Lubomir Rintel <lkundrak@v3.sk>
To:     Rob Herring <robh@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Sameer Pujar <spujar@nvidia.com>
Subject: Re: [PATCH 3/4] ASoC: dt-bindings: marvell,mmp-sspa: Use
 audio-graph-port schema
Message-ID: <20201118063836.GA5540@demiurge.local>
References: <20201117013349.2458416-1-robh@kernel.org>
 <20201117013349.2458416-4-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201117013349.2458416-4-robh@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 16, 2020 at 07:33:48PM -0600, Rob Herring wrote:
> Now that we have a graph schema, reference it from the marvell,mmp-sspa
> schema.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Lubomir Rintel <lkundrak@v3.sk>

Thank you
Lubo

> ---
>  .../bindings/sound/marvell,mmp-sspa.yaml      | 25 +++----------------
>  1 file changed, 3 insertions(+), 22 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml b/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml
> index 6d20a24a2ae9..234f64a32184 100644
> --- a/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml
> +++ b/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml
> @@ -9,6 +9,9 @@ title: Marvel SSPA Digital Audio Interface Bindings
>  maintainers:
>    - Lubomir Rintel <lkundrak@v3.sk>
>  
> +allOf:
> +  - $ref: audio-graph-port.yaml#
> +
>  properties:
>    $nodename:
>      pattern: "^audio-controller(@.*)?$"
> @@ -58,29 +61,9 @@ properties:
>          type: object
>  
>          properties:
> -          remote-endpoint: true
> -
> -          frame-master:
> -            type: boolean
> -            description: SoC generates the frame clock
> -
> -          bitclock-master:
> -            type: boolean
> -            description: SoC generates the bit clock
> -
>            dai-format:
> -            $ref: /schemas/types.yaml#/definitions/string
> -            description: The digital audio format
>              const: i2s
>  
> -        required:
> -          - remote-endpoint
> -
> -    required:
> -      - endpoint
> -
> -    additionalProperties: false
> -
>  required:
>    - "#sound-dai-cells"
>    - compatible
> @@ -112,8 +95,6 @@ examples:
>        port {
>          endpoint {
>            remote-endpoint = <&rt5631_0>;
> -          frame-master;
> -          bitclock-master;
>            dai-format = "i2s";
>          };
>        };
> -- 
> 2.25.1
> 
