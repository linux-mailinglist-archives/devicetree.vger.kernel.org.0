Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4DC9C5E5C9
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 15:53:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726305AbfGCNx4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 09:53:56 -0400
Received: from mail.kernel.org ([198.145.29.99]:36102 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725944AbfGCNx4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Jul 2019 09:53:56 -0400
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 310CF218A3
        for <devicetree@vger.kernel.org>; Wed,  3 Jul 2019 13:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1562162035;
        bh=GaHJH7ci1lnl9SdK7IksmhrciNcStOWd4KG2edCXGwY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=qQfxB8sUQhI1Cy/5lL/VlWqTYi7tXlQuYCBybQMuA6s4NMTtd6hcybLoWaRJ3Fw+2
         PEl9QBzOWIGhbOt5EEmxRNbvev0iHRiyLp17LGVerFuhACRSBNerJpvWatsiCFny5M
         Ia9TXhUoNk2Ol4vZ/TCuMnjG4Qu+GQQ0Iu+prank=
Received: by mail-qt1-f181.google.com with SMTP id x47so3182483qtk.11
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 06:53:55 -0700 (PDT)
X-Gm-Message-State: APjAAAWdhX/Df7lrEdLEY5GpGg9h8FQnN+2eJf2H/5nS0lG9NQ2Vrzxg
        SBbY7S5Dn+0zZvg8XennAMiMU3euTkOlyT/W8w==
X-Google-Smtp-Source: APXvYqzG7wgw8lGTLe2v2MIVZoD4Z7e39f8ylJ7HMU0OZEmD7lGyOBzvX6FnSovK57RO/fihbAZSWsK+ZdZNgDxW1OI=
X-Received: by 2002:ac8:3908:: with SMTP id s8mr30569110qtb.224.1562162034446;
 Wed, 03 Jul 2019 06:53:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190703095513.12340-1-maxime.ripard@bootlin.com> <20190703095513.12340-3-maxime.ripard@bootlin.com>
In-Reply-To: <20190703095513.12340-3-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 3 Jul 2019 07:53:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKgBXxbg_9ZKfmj6y0s_5Z5QZw3RmdJfSHEpjh84m9brg@mail.gmail.com>
Message-ID: <CAL_JsqKgBXxbg_9ZKfmj6y0s_5Z5QZw3RmdJfSHEpjh84m9brg@mail.gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: net: mdio: Add child nodes
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 3, 2019 at 3:55 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The child nodes of a mdio bus are supposed to be ethernet PHYs, with a reg
> property. Make sure that's validated as well.

I don't think this is always true. I seem to recall there's some
timestamping devices connected via mdio.

In any case, it's not a long list of names, so we can probably just
enumerate them as needed. Does this generate any warnings?

>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/mdio.yaml | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/net/mdio.yaml b/Documentation/devicetree/bindings/net/mdio.yaml
> index 24d67074d494..5d08d2ffd4eb 100644
> --- a/Documentation/devicetree/bindings/net/mdio.yaml
> +++ b/Documentation/devicetree/bindings/net/mdio.yaml
> @@ -39,6 +39,20 @@ properties:
>        and must therefore be appropriately determined based on all PHY
>        requirements (maximum value of all per-PHY RESET pulse widths).
>
> +patternProperties:
> +  "^ethernet-phy@[0-9a-f]+$":
> +    type: object
> +
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 31
> +        description:
> +          The ID number for the PHY.
> +
> +    required:
> +      - reg
> +
>  examples:
>    - |
>      davinci_mdio: mdio@5c030000 {
> --
> 2.21.0
>
