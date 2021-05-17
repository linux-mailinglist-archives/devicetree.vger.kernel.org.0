Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87A0D386D76
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 01:02:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237152AbhEQXDn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 19:03:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233727AbhEQXDn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 19:03:43 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 053D5C061573
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 16:02:26 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 68C2B3EE;
        Tue, 18 May 2021 01:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1621292544;
        bh=gZd70/DMl64tRQIkgUsxhP7a8rA16Ar5WLUWeUxCsBc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MCp/Cg7nReZ6WsicUql2QY/KiK210I4gFe0WXc7TaBERzQLXC3elAdsFn2wTcNreV
         auk/Lx2TwxRN2hGyH6CsANYugKMfpHHi0TbWEOOCv8P55uPL+fLRxzcKASnzpRBNC/
         CrZqBw3GyBtHj7NrouPMqxTRicm4A46mb5lqT5Tw=
Date:   Tue, 18 May 2021 02:02:23 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, ch@denx.de,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: bridge: lvds-codec: Document
 LVDS data mapping select
Message-ID: <YKL1//4p/voXAR1q@pendragon.ideasonboard.com>
References: <20210515204656.367442-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210515204656.367442-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Sat, May 15, 2021 at 10:46:55PM +0200, Marek Vasut wrote:
> Decoder input LVDS format is a property of the decoder chip or even
> its strapping. Add DT property data-mapping the same way lvds-panel
> does, to define the LVDS data mapping.

The information could also be derived by the driver from the compatible
string in the case when this is an intrinsic property of the device (or
when it's configurable by software), but the fact that it can also be
controlled by strapping makes a DT property needed. We may want to limit
the usage of the DT property to the strapping case though, but I don't
have a real preference here, so I'm fine with this approach.

> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../bindings/display/bridge/lvds-codec.yaml   | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> index f4dd16bd69d2..f0abb94f8f2e 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> @@ -64,6 +64,15 @@ properties:
>        - port@0
>        - port@1
>  
> +  data-mapping:
> +    enum:
> +      - jeida-18
> +      - jeida-24
> +      - vesa-24
> +    description: |
> +      The color signals mapping order. See details in
> +      Documentation/devicetree/bindings/display/panel/lvds.yaml
> +
>    pclk-sample:
>      description:
>        Data sampling on rising or falling edge.
> @@ -79,6 +88,16 @@ properties:
>  
>    power-supply: true
>  
> +if:
> +  not:
> +    properties:
> +      compatible:
> +        contains:
> +          const: lvds-decoder
> +then:
> +  properties:
> +    data-mapping: false
> +
>  if:
>    not:
>      properties:

Unless I'm mistaken, you can't have identically named properties at the
same level (multiple 'if' at the root level). You can group them in a
'allOf' property.

-- 
Regards,

Laurent Pinchart
