Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2ED2C4E59F9
	for <lists+devicetree@lfdr.de>; Wed, 23 Mar 2022 21:38:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbiCWUj4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Mar 2022 16:39:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240098AbiCWUjz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Mar 2022 16:39:55 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B84213980F
        for <devicetree@vger.kernel.org>; Wed, 23 Mar 2022 13:38:22 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6BC3D9DE;
        Wed, 23 Mar 2022 21:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1648067900;
        bh=WSW94vMBnEmYZ14bodFNcPMJ6dUevtZakV9qp0LsYe0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QIm3Kz2L49M0543NKRuRHiSUj6Ju15ML14khw6sLQYEmFgjk2JY06QVOQoJwONY6F
         3GD2KXk7abNBhPrj0amrhRBIWqPbYEfKtNqUi5OfkY18oT86/12xGWCkRK6vJAE6lf
         D150LA+ETWN16OUQ9gWrk/iNTxuWoqfhrUZm2UcI=
Date:   Wed, 23 Mar 2022 22:38:19 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Marek Vasut <marex@denx.de>, Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Message-ID: <YjuFO45Gr1vmKxWG@pendragon.ideasonboard.com>
References: <20220323154823.839469-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220323154823.839469-1-maxime@cerno.tech>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

(CC'ing Sakari)

Thank you for the patch.

On Wed, Mar 23, 2022 at 04:48:23PM +0100, Maxime Ripard wrote:
> MIPI-DSI devices, if they are controlled through the bus itself, have to
> be described as a child node of the controller they are attached to.
> 
> Thus, there's no requirement on the controller having an OF-Graph output
> port to model the data stream: it's assumed that it would go from the
> parent to the child.
> 
> However, some bridges controlled through the DSI bus still require an
> input OF-Graph port, thus requiring a controller with an OF-Graph output
> port. This prevents those bridges from being used with the controllers
> that do not have one without any particular reason to.
> 
> Let's drop that requirement.

I'm sure this won't come as a surprise, I'm very much opposed to this
change, for two reasons.

First, ports are part of the hardware, even if they're not connected. It
thus simplifies handling in drivers if they're always present.

Then, and that's the most important reason, I think it's a mistake not
to model the DSI data connection using OF graph unconditionally, even
when the DSI sink device is also controlled through the DSI bus (using
DCS) and is in that case a child of the DSI source device in the DT
hierarchy.

The device tree describes a control hierarchy between devices. OF graph
overlays on top of that a data transfer graph. The two are different
concepts, and the fact that DSI can sometimes be used as a control bus
doesn't change the concept. Using OF graph unconditionally to describe
the data connections for DSI leads to less variation in the device tree
structure, and thus less complexity in the implementation. We're
suffering from the fact we haven't made it a requirement in the first
place, which can't be fixed due to ABI breakage constraints, but let's
not acknowledge it as a good idea.

> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
>  .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
>  2 files changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> index 62c3bd4cb28d..7257fd0ae4da 100644
> --- a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.yaml
> @@ -51,7 +51,6 @@ properties:
>            Video port for MIPI DPI output (panel or connector).
>  
>      required:
> -      - port@0
>        - port@1
>  
>  required:
> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
> index 5216c27fc0ad..a412a1da950f 100644
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358762.yaml
> @@ -39,7 +39,6 @@ properties:
>            Video port for MIPI DPI output (panel or connector).
>  
>      required:
> -      - port@0
>        - port@1
>  
>  required:

-- 
Regards,

Laurent Pinchart
