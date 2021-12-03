Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6C654680A2
	for <lists+devicetree@lfdr.de>; Sat,  4 Dec 2021 00:34:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354147AbhLCXiQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 18:38:16 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:60024 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383542AbhLCXiM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 18:38:12 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2275362D3C
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 23:34:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 819F8C53FCD
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 23:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638574487;
        bh=ZM9neIJMB2USARxzYr2mLwWt4b0SXXjybmzBBgT0ISw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=YptgcRAoPCRpjBmuxSW9DNhpAb4Mo8RyV1fyk1HmGBMbG7o76Gekct5RX8eZcgtcX
         1t2gcZfcMLiL1Dib4PUc1pOrpovrgldoXmTgzIQDXltJ6mTNjjl/kTXa4JzonlrGRc
         RRhdl8HfZaf25ob0Cgh1Ru0lFTX/xJU5TwBHkInFRQMUvsq3Oj4PxnBzTSDLEAlp+x
         9KQ4OWAdJLLi+KN5uGseRDg4dv7j+geAFm9QEAuP95PYkjRtx/yOSzxMgA6qLCTt+s
         +Mqbc5UsRwT9gUuJ97E+i+VEYdGJHzYHal3Aqz5idbkwU5gUhUJcBp+1SWes5qx2V2
         z9YXUsQrIjGiw==
Received: by mail-ed1-f53.google.com with SMTP id t5so17642810edd.0
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 15:34:47 -0800 (PST)
X-Gm-Message-State: AOAM530AhpQ1N0ZVFkTHVYAshKVSLgVtRsTR533Ty+IXYjmE97TvTBFq
        OKjnOOVv2TxMmuV5U1TlJI/SDbnwLirDT9EVEQ==
X-Google-Smtp-Source: ABdhPJy0ZGubsg4teT1tbwpxEuhlDhZMm3LqPoZxGl5D1+z7q7SCXtD+zQYj0+6By2HInGfHwBhumWnDYnZudC1dSq8=
X-Received: by 2002:a17:907:16ac:: with SMTP id hc44mr26216368ejc.363.1638574485841;
 Fri, 03 Dec 2021 15:34:45 -0800 (PST)
MIME-Version: 1.0
References: <cover.1638530442.git.robin.murphy@arm.com> <5f0b372f808f1468e6d9500cedafbecd10254674.1638530442.git.robin.murphy@arm.com>
In-Reply-To: <5f0b372f808f1468e6d9500cedafbecd10254674.1638530442.git.robin.murphy@arm.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 3 Dec 2021 17:34:34 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJAT515VwUgvCbC6jpsWxSCfcjji-_tHrgn1P=xcMGJQQ@mail.gmail.com>
Message-ID: <CAL_JsqJAT515VwUgvCbC6jpsWxSCfcjji-_tHrgn1P=xcMGJQQ@mail.gmail.com>
Subject: Re: [PATCH 12/14] dt-bindings: perf: arm-cmn: Add CI-700
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     will@kernel.org, mark.rutland@arm.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 3, 2021 at 5:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> CI-700 is a new client-level coherent interconnect derived from
> the enterprise-level CMN family, and shares the same PMU design.
>
> CC: devicetree@vger.kernel.org
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../devicetree/bindings/perf/arm,cmn.yaml     | 21 ++++++++++++++-----
>  1 file changed, 16 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/perf/arm,cmn.yaml b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
> index 42424ccbdd0c..2d4219ec7eda 100644
> --- a/Documentation/devicetree/bindings/perf/arm,cmn.yaml
> +++ b/Documentation/devicetree/bindings/perf/arm,cmn.yaml
> @@ -12,12 +12,14 @@ maintainers:
>
>  properties:
>    compatible:
> -    const: arm,cmn-600
> +    enum:
> +      - arm,cmn-600
> +      - arm,ci-700
>
>    reg:
>      items:
>        - description: Physical address of the base (PERIPHBASE) and
> -          size (up to 64MB) of the configuration address space.
> +          size of the configuration address space.
>
>    interrupts:
>      minItems: 1
> @@ -31,14 +33,23 @@ properties:
>
>    arm,root-node:
>      $ref: /schemas/types.yaml#/definitions/uint32
> -    description: Offset from PERIPHBASE of the configuration
> -      discovery node (see TRM definition of ROOTNODEBASE).
> +    description: Offset from PERIPHBASE of CMN-600's configuration
> +      discovery node (see TRM definition of ROOTNODEBASE). Not
> +      relevant for newer CMN/CI products.
>
>  required:
>    - compatible
>    - reg
>    - interrupts
> -  - arm,root-node
> +
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: arm,cmn-600
> +then:
> +  required:
> +    - arm,root-node

If you want to disallow arm,root-node as the description above suggests:

else:
  properties:
    arm,root-node: false

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

>
>  additionalProperties: false

>
> --
> 2.28.0.dirty
>
