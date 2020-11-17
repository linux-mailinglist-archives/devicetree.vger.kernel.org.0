Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECA992B65DE
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 15:01:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728877AbgKQN6f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 08:58:35 -0500
Received: from mail.kernel.org ([198.145.29.99]:55868 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729915AbgKQNVu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 17 Nov 2020 08:21:50 -0500
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B0123246BA
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 13:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605619309;
        bh=v+/G59JYBqBoSCJBGfn/gJBVJNoRxaY555CLXSlnTpo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=KiB1VrymmqI5YRcjTxlhJMnKT9i/Zga2lBgoRbw2/QRnlptFGOmbgW7P9j99uEP5Q
         V3lYcMy3TVW2YINh6koMgAf1FdRBHixdrDIDawxlwlF/nY9Z7Yhb0RhltxFDh9WE/5
         MILBmGuY34616lhHvAb/GoX00rTE0Y6+W6GHeZfw=
Received: by mail-oi1-f173.google.com with SMTP id m17so22528134oie.4
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 05:21:49 -0800 (PST)
X-Gm-Message-State: AOAM5314eyoEpF1+u/NwqCQSdT4chdikTcNbTyyA4Jgaw2nUITznqZ2+
        6vMXQqIcROYY3Pf/aKRVMvc68DhGFxAQTDIfzg==
X-Google-Smtp-Source: ABdhPJwtT1B73XKuI+UEnqLmkc/EoLlCar+k7RL8RIUp1J1DzXcp0cBmo01Eq+Tr6tken8ZN3vK6fQ+xQ3pyW0fZoSU=
X-Received: by 2002:aca:fdd4:: with SMTP id b203mr2357739oii.152.1605619308954;
 Tue, 17 Nov 2020 05:21:48 -0800 (PST)
MIME-Version: 1.0
References: <20201117013703.2477151-1-robh@kernel.org> <20201117094257.GA3940@pendragon.ideasonboard.com>
In-Reply-To: <20201117094257.GA3940@pendragon.ideasonboard.com>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 17 Nov 2020 07:21:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLkyvMAqLHVLeL_LdUpA7FABayVi2VgP5nAQokppWNFDA@mail.gmail.com>
Message-ID: <CAL_JsqLkyvMAqLHVLeL_LdUpA7FABayVi2VgP5nAQokppWNFDA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: Use OF graph schema
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Maxime Ripard <mripard@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 3:43 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Rob,
>
> Thank you for the patch.
>
> On Mon, Nov 16, 2020 at 07:37:03PM -0600, Rob Herring wrote:
> > Now that we have a graph schema, rework the display related schemas to use
> > it. Mostly this is adding a reference to graph.yaml and dropping duplicate
> > parts from schemas.
> >
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> > graph.yaml is in the dtschema repo, so this can go into drm-misc and
> > hopefully anything afterwards be fixed up to use graph.yaml.
> >
> >  .../allwinner,sun4i-a10-display-backend.yaml  | 14 +---
> >  .../allwinner,sun4i-a10-display-frontend.yaml | 16 +----
> >  .../display/allwinner,sun4i-a10-hdmi.yaml     | 16 +----
> >  .../display/allwinner,sun4i-a10-tcon.yaml     | 16 +----
> >  .../allwinner,sun4i-a10-tv-encoder.yaml       |  2 +-
> >  .../display/allwinner,sun6i-a31-drc.yaml      | 16 +----
> >  .../display/allwinner,sun6i-a31-mipi-dsi.yaml |  6 +-
> >  .../allwinner,sun8i-a83t-de2-mixer.yaml       | 16 +----
> >  .../display/allwinner,sun8i-a83t-dw-hdmi.yaml | 16 +----
> >  .../display/allwinner,sun8i-r40-tcon-top.yaml | 19 +-----
> >  .../display/allwinner,sun9i-a80-deu.yaml      | 16 +----
> >  .../bindings/display/brcm,bcm2835-dpi.yaml    |  7 +-
> >  .../display/bridge/analogix,anx7625.yaml      |  5 +-
> >  .../display/bridge/analogix,anx7814.yaml      | 18 +----
> >  .../bindings/display/bridge/anx6345.yaml      | 15 ++--
> >  .../display/bridge/cdns,mhdp8546.yaml         | 18 +----
> >  .../display/bridge/chrontel,ch7033.yaml       |  3 +
> >  .../display/bridge/intel,keembay-dsi.yaml     |  9 +--
> >  .../bindings/display/bridge/ite,it6505.yaml   |  2 +-
> >  .../display/bridge/lontium,lt9611.yaml        | 68 ++-----------------
> >  .../bindings/display/bridge/lvds-codec.yaml   | 15 +---
> >  .../bindings/display/bridge/nwl-dsi.yaml      | 17 +----
> >  .../bindings/display/bridge/ps8640.yaml       | 21 ++----
> >  .../bindings/display/bridge/renesas,lvds.yaml | 15 +---
> >  .../display/bridge/simple-bridge.yaml         | 15 +---
> >  .../display/bridge/snps,dw-mipi-dsi.yaml      |  5 +-
> >  .../display/bridge/thine,thc63lvd1024.yaml    | 16 +----
> >  .../bindings/display/bridge/ti,sn65dsi86.yaml | 27 +-------
> >  .../bindings/display/bridge/ti,tfp410.yaml    | 15 +---
> >  .../display/bridge/toshiba,tc358762.yaml      | 51 ++------------
> >  .../display/bridge/toshiba,tc358768.yaml      | 11 +--
> >  .../display/bridge/toshiba,tc358775.yaml      | 17 ++---
> >  .../connector/analog-tv-connector.yaml        |  1 +
> >  .../display/connector/dvi-connector.yaml      |  1 +
> >  .../display/connector/hdmi-connector.yaml     |  1 +
> >  .../display/connector/vga-connector.yaml      |  1 +
> >  .../bindings/display/imx/nxp,imx8mq-dcss.yaml |  2 +-
> >  .../bindings/display/ingenic,lcd.yaml         |  7 +-
> >  .../display/intel,keembay-display.yaml        |  2 +-
> >  .../display/panel/advantech,idk-2121wr.yaml   |  5 ++
> >  .../bindings/display/panel/panel-common.yaml  | 11 +--
> >  .../rockchip/rockchip,rk3066-hdmi.yaml        | 13 +---
> >  .../display/rockchip/rockchip-vop.yaml        |  5 +-
> >  .../bindings/display/st,stm32-dsi.yaml        | 13 ++--
> >  .../bindings/display/st,stm32-ltdc.yaml       |  7 +-
> >  .../bindings/display/ti/ti,am65x-dss.yaml     | 16 +----
> >  .../bindings/display/ti/ti,j721e-dss.yaml     | 18 +----
> >  .../bindings/display/ti/ti,k2g-dss.yaml       |  4 +-
> >  48 files changed, 121 insertions(+), 509 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml
> > index 86057d541065..7e8798b43c2a 100644
> > --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml
> > +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-display-backend.yaml
> > @@ -85,17 +85,9 @@ properties:
> >
> >    ports:
> >      type: object
>
> Do we need to specify the type here (and in all the locations below),
> give that it's specified in /schemas/graph.yaml#/properties/ports ?

The metaschema enforces that we have 'type' if we have 'properties'
(except at the top level), so yes. Now that I think about it more,
maybe I can rework it such that we required at least 'type' or '$ref'
when we have 'properties'. Though that's not going to remove 'type'
for 'port@n' schemas.

[...]

> > diff --git a/Documentation/devicetree/bindings/display/panel/panel-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
> > index cd6dc5461721..5b38dc89cb21 100644
> > --- a/Documentation/devicetree/bindings/display/panel/panel-common.yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/panel-common.yaml
> > @@ -68,16 +68,7 @@ properties:
> >
> >    # Connectivity
> >    port:
> > -    type: object
> > -
> > -  ports:
> > -    type: object
> > -    description:
> > -      Panels receive video data through one or multiple connections. While
> > -      the nature of those connections is specific to the panel type, the
> > -      connectivity is expressed in a standard fashion using ports as specified
> > -      in the device graph bindings defined in
> > -      Documentation/devicetree/bindings/graph.txt.
> > +    $ref: /schemas/graph.yaml#/properties/port
>
> This drops "ports", is it intentional ?

Yes, I forgot to note that in the commit. The reason is defining ports
here is not that useful. We don't want single port cases just randomly
picking whether they use port or ports. If you use 'ports' then you
need a schema defining each 'port'.

[...]

> > diff --git a/Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
> > index 8f87b82c6695..74dd1ce46d00 100644
> > --- a/Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
> > +++ b/Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml
> > @@ -55,9 +55,7 @@ properties:
> >
> >    port:
> >      type: object
> > -    description:
> > -      Port as described in Documentation/devicetree/bindings/graph.txt.
> > -      The DSS DPI output port node
>
> I think the second line of the description should be kept.

Yes.

Rob
