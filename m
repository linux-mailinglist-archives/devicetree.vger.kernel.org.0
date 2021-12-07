Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD19546C0E6
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 17:44:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230316AbhLGQru (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 11:47:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229837AbhLGQru (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 11:47:50 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2595C061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 08:44:19 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 4F70F556;
        Tue,  7 Dec 2021 17:44:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1638895457;
        bh=bWd6lEiREDRAZ+PDNC285hxwR6IPlUo4UOngm3Ag1Rc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=vvf11SNig+AISPQZgOWs4IVJVw8w4TpobVC0ZeGsWIY6m8GlycE1D4l6/3VnWV9oq
         gFUKidx6WLphcY54U5GvBnBTwVLSV6CJhVO3luz1H6a5UBbLh0AA6La3p1DOZ7ggP0
         8cgL0CEbfHmt+fv/ye1dW2eHxwDV68MEBvMhUzjQ=
Date:   Tue, 7 Dec 2021 18:43:48 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: display: bridge: tc358867: Document DPI
 output support
Message-ID: <Ya+PRMvq3cjJ46s/@pendragon.ideasonboard.com>
References: <20211127032405.283435-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211127032405.283435-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

Thank you for the patch.

On Sat, Nov 27, 2021 at 04:24:02AM +0100, Marek Vasut wrote:
> The TC358767/TC358867/TC9595 are all capable of operating in multiple
> modes, DPI-to-(e)DP, DSI-to-(e)DP, DSI-to-DPI. Document support for the
> DPI output port, which can now be connected both as input and output.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Jernej Skrabec <jernej.skrabec@siol.net>
> Cc: Jonas Karlman <jonas@kwiboo.se>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml  | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> index f1541cc05297..5cfda6f2ba69 100644
> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> @@ -61,8 +61,8 @@ properties:
>        port@1:
>          $ref: /schemas/graph.yaml#/properties/port
>          description: |
> -            DPI input port. The remote endpoint phandle should be a
> -            reference to a valid DPI output endpoint node
> +            DPI input/output port. The remote endpoint phandle should be a
> +            reference to a valid DPI output or input endpoint node.

I assume the mode of operation (input or output) will be fixed for a
given hardware design. Isn't this something that should be recorded in
DT ? It would simplify configuration of the device in the driver.

>  
>        port@2:
>          $ref: /schemas/graph.yaml#/properties/port
> 

-- 
Regards,

Laurent Pinchart
