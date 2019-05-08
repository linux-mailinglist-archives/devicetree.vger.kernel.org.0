Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 134AB1807E
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 21:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727082AbfEHTfZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 15:35:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:44438 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726992AbfEHTfY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 8 May 2019 15:35:24 -0400
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6CBE02173E
        for <devicetree@vger.kernel.org>; Wed,  8 May 2019 19:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1557344123;
        bh=mphS1ZN+kXNeKFWy1pdoLamsdXu3KBM/8iy2Ccq1Jww=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Qis8XcF09odtVtYH48hq892KgXbEy2WFYjgITzLgPd/MhviV3TODGnumc5xgy4zz1
         Dl93P6CJHOMqwvU4+fWCNgxaqCsADXphF/ii+5AYJrk7PyfyGe0oDXYj0EmBVX21Fc
         BvhILC//l4J2vSVC4rCVjprIovyUqdXFlelxVU54=
Received: by mail-qt1-f180.google.com with SMTP id f24so14207847qtk.11
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 12:35:23 -0700 (PDT)
X-Gm-Message-State: APjAAAWo5bpPTUPY08IuA3mAPLGXULRIa5WsquavXdhMSmCON07t34ml
        tV7xpN7xbRdO4hOU01DUHhvYlKqhW61FX/Kurw==
X-Google-Smtp-Source: APXvYqwTXK9BQC3/v8jqMr3QUXehY36ghelKZ/C7r+S4saAFToONVr37WTIeh/DAe2dCDHllum/rv91d81sXjmRd9Dc=
X-Received: by 2002:aed:306c:: with SMTP id 99mr32486801qte.38.1557344122609;
 Wed, 08 May 2019 12:35:22 -0700 (PDT)
MIME-Version: 1.0
References: <dc84c7e9ce272109052f553a5e050bfe1a09e9d6.1557252411.git-series.maxime.ripard@bootlin.com>
 <d9afb19c32f8b9b2c40c8d4c0c3df74bff0ccf35.1557252411.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <d9afb19c32f8b9b2c40c8d4c0c3df74bff0ccf35.1557252411.git-series.maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 8 May 2019 14:35:10 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+iLmzti5TX-TUU3PN4taC66UMqHMk-aKTjZKt1kVRtMQ@mail.gmail.com>
Message-ID: <CAL_Jsq+iLmzti5TX-TUU3PN4taC66UMqHMk-aKTjZKt1kVRtMQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: sound: sun4i-spdif: Document that the
 RX channel can be missing
To:     Maxime Ripard <maxime.ripard@bootlin.com>
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

On Tue, May 7, 2019 at 1:07 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The H3 and compatibles controllers don't have any reception capabilities,
> even though it was never documented as such in the binding before.
>
> Therefore, on those controllers, we don't have the option to set an RX DMA
> channel.
>
> This was already done in the DTSI, but the binding itself was never
> updated. Let's add a special case in the schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - switch to a draft7 conditional
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml | 45 ++++++++++++++++++++++++++++++++++++---------
>  1 file changed, 36 insertions(+), 9 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
> index 5698e5de5e31..8f1bc1a1af96 100644
> --- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
> @@ -44,15 +44,8 @@ properties:
>        - const: apb
>        - const: spdif
>
> -  dmas:
> -    items:
> -      - description: RX DMA Channel
> -      - description: TX DMA Channel
> -
> -  dma-names:
> -    items:
> -      - const: rx
> -      - const: tx
> +  dmas: true
> +  dma-names: true
>
>    resets:
>      maxItems: 1
> @@ -70,6 +63,40 @@ allOf:
>        required:
>          - resets
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun8i-h3-spdif
> +
> +    then:
> +      properties:
> +        dmas:
> +          maxItems: 1

In this and below, these should get added automatically by
fixup_schema. If not present, we set minItems/maxItems to the size of
the items list. It look like you added support for that, so left over
from before you addressed that for if/then/else?

> +          items:
> +            - description: RX DMA Channel

s/RX/TX/

> +
> +        dma-names:
> +          maxItems: 1
> +          items:
> +            - const: tx
> +
> +    else:
> +      properties:
> +        dmas:
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            - description: RX DMA Channel
> +            - description: TX DMA Channel
> +
> +        dma-names:
> +          minItems: 2
> +          maxItems: 2
> +          items:
> +            - const: rx
> +            - const: tx

I'm really on the fence whether it's worth it to add all this just add
the restrictions based on the compatible. I guess with copy-n-paste
this would be a common error.

Rob
