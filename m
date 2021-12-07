Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A44AF46C14A
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 18:04:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239785AbhLGRHo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 12:07:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235159AbhLGRHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 12:07:44 -0500
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25590C061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 09:04:14 -0800 (PST)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 73F7C556;
        Tue,  7 Dec 2021 18:04:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1638896652;
        bh=Oo3zNiuAJNfk53ZJOP0z97e653AwK2d7kec4ofNwVdI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kl/KMtXAAHUo291X7sZ3J72YBdOLxgQv40+/sKNiZzsQd9cbJLtxMnUh84tOxWayN
         h7dbg8Kha+OSxqo6uQXCSpQpgiRBtVSx96wML0dKuKO8EchOrd1mogRIrvfXWDGVtB
         7GrhLJN4iicVjJEeDSYFY3VSVjChOXQIZcgopnNY=
Date:   Tue, 7 Dec 2021 19:03:43 +0200
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
Message-ID: <Ya+T7zPigqtBzdR+@pendragon.ideasonboard.com>
References: <20211127032405.283435-1-marex@denx.de>
 <Ya+PRMvq3cjJ46s/@pendragon.ideasonboard.com>
 <1a7967f0-ed4b-9cd2-28c8-eb9d181448ae@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1a7967f0-ed4b-9cd2-28c8-eb9d181448ae@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 07, 2021 at 05:47:29PM +0100, Marek Vasut wrote:
> On 12/7/21 17:43, Laurent Pinchart wrote:
> 
> [...]
> 
> >> diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> >> index f1541cc05297..5cfda6f2ba69 100644
> >> --- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> >> +++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
> >> @@ -61,8 +61,8 @@ properties:
> >>         port@1:
> >>           $ref: /schemas/graph.yaml#/properties/port
> >>           description: |
> >> -            DPI input port. The remote endpoint phandle should be a
> >> -            reference to a valid DPI output endpoint node
> >> +            DPI input/output port. The remote endpoint phandle should be a
> >> +            reference to a valid DPI output or input endpoint node.
> > 
> > I assume the mode of operation (input or output) will be fixed for a
> > given hardware design. Isn't this something that should be recorded in
> > DT ? It would simplify configuration of the device in the driver.
> 
> Currently the configuration (DSI-to-DPI / DPI-to-eDP) is inferred from 
> the presence of DPI panel. If DPI panel present, DSI-to-DPI, else, 
> DPI-to-eDP.

I've had a look at the driver side, and it seems to complicate things
quite a bit. It seems that specifying the mode of operation explicitly
in DT could make software implementations quite a bit simpler.

-- 
Regards,

Laurent Pinchart
