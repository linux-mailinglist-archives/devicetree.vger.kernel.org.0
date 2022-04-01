Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B24DB4EEAD8
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 11:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245632AbiDAKAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 06:00:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242579AbiDAKAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 06:00:50 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAF9E5C369
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 02:58:59 -0700 (PDT)
Received: from pendragon.ideasonboard.com (85-76-78-4-nat.elisa-mobile.fi [85.76.78.4])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 850A0F8;
        Fri,  1 Apr 2022 11:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1648807136;
        bh=dTWPmCCjy6b9dJ4ZjNnrKHUT7VqULi/xRJ1mlbqiPrE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YR3zqMT8fcikfNFRBdmLEF9wdgeYK7ieQTkNzsBquzn0CWEFhZT+6CsbibiIWT02M
         B+4i4KrcMyyi4HdgMQBMUh7MJ48y1Q5hwVzPB3edOqUt3NSCUz9446/s+L7ZYHTOjE
         XgLalRGp3xdefq5osvibleckLyQ/JsaMCj1tXWog=
Date:   Fri, 1 Apr 2022 12:58:54 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     Rob Herring <robh@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Robert Foss <robert.foss@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Message-ID: <YkbM3lkX61F2gbxE@pendragon.ideasonboard.com>
References: <20220323154823.839469-1-maxime@cerno.tech>
 <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
 <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 01, 2022 at 03:22:19AM +0200, Marek Vasut wrote:
> On 4/1/22 01:52, Rob Herring wrote:
> > On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
> >> MIPI-DSI devices, if they are controlled through the bus itself, have to
> >> be described as a child node of the controller they are attached to.
> >>
> >> Thus, there's no requirement on the controller having an OF-Graph output
> >> port to model the data stream: it's assumed that it would go from the
> >> parent to the child.
> >>
> >> However, some bridges controlled through the DSI bus still require an
> >> input OF-Graph port, thus requiring a controller with an OF-Graph output
> >> port. This prevents those bridges from being used with the controllers
> >> that do not have one without any particular reason to.
> >>
> >> Let's drop that requirement.
> >>
> >> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >> ---
> >>   .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
> >>   .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
> >>   2 files changed, 2 deletions(-)
> >>
> > 
> > I tend to agree with port@0 not being needed and really like
> > consistency.
> 
> The consistent thing to do would be to always use port@0 and OF graph, no ?

I think that's the direction we should take in the long term. I'm not
opposed to a short-term consistency-focussed patch that makes the port
optional, as long as there's an agreement on the long term goal and this
patch won't be used as an argument against it in the future.

-- 
Regards,

Laurent Pinchart
