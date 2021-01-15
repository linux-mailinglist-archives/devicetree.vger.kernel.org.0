Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94A3A2F7392
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 08:17:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727331AbhAOHR3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 02:17:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727174AbhAOHR3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 02:17:29 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F60FC061575
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 23:16:49 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B1248527;
        Fri, 15 Jan 2021 08:16:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1610695007;
        bh=gamGWFO0GQAi/WL0Lg3L9ryjC7mD4gRdawqKpPvbAAk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tSYOuH1W2wXjqXJ1aAukCUl16iRrYvUoh2rT7n+WPXFugBpphabBII0PwETYO+dtJ
         DrM12km2h2NN6IPvAO61zyvwO5+PI8gGhKjLhse88mcvbk34BxKmoKbAFUwT5MSkna
         kkevx8+yM1uPCsTN7jLnoJ+AuQXTlL3bSu4RaZY8=
Date:   Fri, 15 Jan 2021 09:16:30 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 04/19] dt-bindings: bridge: simple: Add corpro,gm7123
 compatible
Message-ID: <YAFBTt6MsFCy1Hkl@pendragon.ideasonboard.com>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <20210114113538.1233933-4-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210114113538.1233933-4-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

Thank you for the patch.

On Thu, Jan 14, 2021 at 12:35:23PM +0100, Maxime Ripard wrote:
> The corpro,gm7123 was in use in a DT but was never properly documented,
> let's add it.
> 
> Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/display/bridge/simple-bridge.yaml     | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> index 64e8a1c24b40..97ca07b56cbc 100644
> --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> @@ -22,6 +22,10 @@ properties:
>                - ti,ths8134a
>                - ti,ths8134b
>            - const: ti,ths8134
> +      - items:
> +          - const: corpro,gm7123
> +          - const: adi,adv7123

Do we need adi,adv7123 ?

> +          - const: dumb-vga-dac
>        - enum:
>            - adi,adv7123
>            - dumb-vga-dac

-- 
Regards,

Laurent Pinchart
