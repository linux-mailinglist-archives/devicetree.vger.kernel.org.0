Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBB91361A0C
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 08:50:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237022AbhDPGuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 02:50:05 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:56544 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235140AbhDPGuE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 02:50:04 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id EF4025A5;
        Fri, 16 Apr 2021 08:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1618555779;
        bh=QIXyCa/8U0k79+9j+v6xpl3VfrISRiU8LkDQ0NjttsE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tY2Y6crMcalol7VTk3NVy5/CUAh5s18Yt0m8rqYNN671OD/zNRzNDBdWI+ykOQJgi
         Mzw3I85Drvgo1UNlyzxrydjMZNW9kXbZyg22YvnvZcsT0PR3SzkU2D1lKVtb3Exd9y
         OfBWwJC0YqJtZ/syVWIQxqkrCAM/cgarLmPp4I04=
Date:   Fri, 16 Apr 2021 09:49:35 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Antonio Borneo <antonio.borneo@st.com>,
        Vincent Abriou <vincent.abriou@st.com>,
        Philippe Cornu <philippe.cornu@st.com>,
        dri-devel@lists.freedesktop.org,
        Yannick Fertre <yannick.fertre@st.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH V2] drm/bridge: lvds-codec: Add support for pixel data
 sampling edge select
Message-ID: <YHkzf0fswqGYbU7R@pendragon.ideasonboard.com>
References: <20201224061832.92010-1-marex@denx.de>
 <YFfvjyllBa/tqTqI@pendragon.ideasonboard.com>
 <4372d1cd-ffdb-e545-7262-d1ad1a649770@denx.de>
 <YFhze79nDdtf7KQS@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YFhze79nDdtf7KQS@pendragon.ideasonboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

There's a question for you below.

On Mon, Mar 22, 2021 at 12:37:47PM +0200, Laurent Pinchart wrote:
> Hi Marek,
> 
> (CC'ing Ron and the DT mailing list for the DT discussion)
> 
> On Mon, Mar 22, 2021 at 11:29:04AM +0100, Marek Vasut wrote:
> > On 3/22/21 2:14 AM, Laurent Pinchart wrote:
> > > Hi Marek,
> > 
> > Hi,
> > 
> > [...]
> > 
> > >> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > >> index e5e3c72630cf..399a6528780a 100644
> > >> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > >> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> > >> @@ -74,6 +74,13 @@ properties:
> > >>   
> > >>       additionalProperties: false
> > >>   
> > >> +  pixelclk-active:
> > >> +    description: |
> > >> +      Data sampling on rising or falling edge.
> > >> +      Use 0 to sample pixel data on rising edge and
> > >> +      Use 1 to sample pixel data on falling edge and
> > >> +    enum: [0, 1]
> > > 
> > > The idea is good, but instead of adding a custom property, how about
> > > reusing the pclk-sample property defined in
> > > ../../media/video-interfaces.yaml ?
> > 
> > Repeating myself from V1 discussion ... Either is fine by me, but I 
> > think pixelclk-active, which comes from panel-timings.yaml is closer to 
> > the video than multimedia bindings.
> 
> That's a good point. The part that bothers me a bit is that it would be
> nice to define the property in a single YAML schema, referenced by
> individual bindings. video-interfaces.yaml is there for that purpose. We
> could do something similar on the display side, or consider the
> pixelclk-active usage in panel-timings.yaml an exception that we can't
> switch to video-interfaces.yaml as backward compatibility must be
> preserved.
> 
> I don't have a too strong preference, whatever Rob prefers would be fine
> with me.
> 
> > > The property is only valid for encoders, so I would at least mention
> > > that in the description, or, better, handle this based on the compatible
> > > string to allow validation.
> > 
> > How does that work in the Yaml file ?
> 
> Something along the lines of
> 
> if:
>   not:
>     properties:
>       compatible:
>         contains:
>           const: lvds-encoder
> then:
>   properties:
>     pixelclk-active: false
> 
> My YAML schema foo is a bit rusty though, I apologize if this doesn't
> work as-is. There are lots of similar examples in DT bindings that
> should hopefully be right :-)
> 
> > >> +
> > >>     powerdown-gpios:
> > >>       description:
> > >>         The GPIO used to control the power down line of this device.
> > >> diff --git a/drivers/gpu/drm/bridge/lvds-codec.c b/drivers/gpu/drm/bridge/lvds-codec.c
> > >> index dcf579a4cf83..cab81ccd895d 100644
> > >> --- a/drivers/gpu/drm/bridge/lvds-codec.c
> > >> +++ b/drivers/gpu/drm/bridge/lvds-codec.c
> > 
> > [...]
> > 
> > >> @@ -126,6 +146,7 @@ static int lvds_codec_probe(struct platform_device *pdev)
> > >>   	 */
> > >>   	lvds_codec->bridge.of_node = dev->of_node;
> > >>   	lvds_codec->bridge.funcs = &funcs;
> > >> +	lvds_codec->bridge.timings = &lvds_codec->timings;
> > >>   	drm_bridge_add(&lvds_codec->bridge);
> > >>   
> > >>   	platform_set_drvdata(pdev, lvds_codec);
> > >> @@ -142,19 +163,20 @@ static int lvds_codec_remove(struct platform_device *pdev)
> > >>   	return 0;
> > >>   }
> > >>   
> > >> +static const struct lvds_codec_data decoder_data = {
> > >> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> > >> +	.is_encoder = false,
> > > 
> > > The two fields are a bit redundant, as the decoder is always
> > > LVDS-to-DPI, and the encoder DPI-to-LVDS. I don't mind too much, but
> > > maybe we could drop the connector_type field, and derive the connector
> > > type from is_encoder ?
> > 
> > Or the other way around instead ? That is, if the connector_type is 
> > LVDS, then it is encoder , otherwise its decoder ?
> 
> Either way works for me.
> 
> > > One may then say that we could drop the lvds_codec_data structure as it
> > > contains a single field, but I foresee a need to have device-specific
> > > timings at some point, so I think it's a good addition.
> > 
> > [...]

-- 
Regards,

Laurent Pinchart
