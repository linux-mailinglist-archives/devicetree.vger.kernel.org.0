Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A25014F13A
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2020 18:23:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727039AbgAaRXk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jan 2020 12:23:40 -0500
Received: from bhuna.collabora.co.uk ([46.235.227.227]:58502 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726139AbgAaRXk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jan 2020 12:23:40 -0500
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DA248295711;
        Fri, 31 Jan 2020 17:23:37 +0000 (GMT)
Date:   Fri, 31 Jan 2020 18:23:34 +0100
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Lucas Stach <l.stach@pengutronix.de>,
        Chris Healy <cphealy@gmail.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Nikita Yushchenko <nikita.yoush@cogentembedded.com>,
        kernel@collabora.com, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, intel-gfx-trybot@lists.freedesktop.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v10 09/12] dt-bindings: display: bridge: lvds-codec: Add
 new bus-width prop
Message-ID: <20200131182334.6b91f1b9@collabora.com>
In-Reply-To: <20200131171248.GB5464@ravnborg.org>
References: <20200128135514.108171-1-boris.brezillon@collabora.com>
        <20200128135514.108171-10-boris.brezillon@collabora.com>
        <20200131171248.GB5464@ravnborg.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 31 Jan 2020 18:12:48 +0100
Sam Ravnborg <sam@ravnborg.org> wrote:

> Hi Boris.
> 
> On Tue, Jan 28, 2020 at 02:55:11PM +0100, Boris Brezillon wrote:
> > Add the bus-width property to describe the input bus format.
> > 
> > v10:
> > * Add changelog to the commit message
> > * Add Rob's R-b
> > 
> > v8 -> v9:
> > * No changes
> > 
> > v7:
> > * Rebase on top of lvds-codec changes
> > * Drop the data-mapping property
> > 
> > v4 -> v6:
> > * Not part of the series
> > 
> > v3:
> > * New patch
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../devicetree/bindings/display/bridge/lvds-codec.yaml    | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > index 8f373029f5d2..7c4e42f4de61 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > @@ -55,6 +55,14 @@ properties:
> >          description: |
> >            For LVDS encoders, port 0 is the parallel input
> >            For LVDS decoders, port 0 is the LVDS input
> > +        properties:
> > +          bus-width:
> > +            allOf:
> > +              - $ref: /schemas/types.yaml#/definitions/uint32
> > +              - enum: [18, 24]
> > +              - default: 24
> > +          description:
> > +            Number of data lines used to transmit the RGB data.  
> 
> Would this be a candidate for a bridge-common.yaml?
> So we share the same definition across all bridges using it.

Could be, though the default and accepted values is likely to be
overloaded on a per-bridge basis. Anyway, looks like bridge-common.yaml
doesn't exists yet, so maybe we should merge this change and move the
field definition when another bridge starts using this property.
