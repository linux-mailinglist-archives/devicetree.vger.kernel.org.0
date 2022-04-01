Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F8904EFA22
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 20:48:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344949AbiDASuZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 14:50:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351387AbiDASuY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 14:50:24 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4CA63DDFC
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 11:48:33 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1A8D62F7;
        Fri,  1 Apr 2022 20:48:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1648838911;
        bh=dujnelcPNk6p4CPVgNhMrG7u9/pxO/a8Ef1tc/FG5g8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=C448RAHkb851knPnWOoU22kqCqcMUdrSIT3Y4q7CH3s994gbPtVuGPfDqeLYp4+zd
         utH2X1f/E1dP4O4zB4ACZY6bxCJ5dRmH75CcgMQSHj1LFRpwOsuhtH8vvqrRQ2LFvf
         wlEg+JOPFA2JZfVDZ//EBsfNPkmVMedLFeYNLoPY=
Date:   Fri, 1 Apr 2022 21:48:28 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Robert Foss <robert.foss@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Message-ID: <YkdI/BSp/lvKYRjO@pendragon.ideasonboard.com>
References: <20220323154823.839469-1-maxime@cerno.tech>
 <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
 <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de>
 <Ykc3wm5pqJIA1jCn@robh.at.kernel.org>
 <1fddec5f-5fb3-4ea0-a1e5-9d1b9e54de81@denx.de>
 <CAL_JsqLmin2qXdeNrvraAf=fGzttOAYxwFCUSbC5TeHYaN+LhQ@mail.gmail.com>
 <30ea889f-f65e-e887-e230-935d6207c919@denx.de>
 <CAL_JsqLHsZW0DJNDxKNApk1AKo=91JYnTNVvemF4iCkyYq88bQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_JsqLHsZW0DJNDxKNApk1AKo=91JYnTNVvemF4iCkyYq88bQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 01, 2022 at 01:33:15PM -0500, Rob Herring wrote:
> On Fri, Apr 1, 2022 at 1:25 PM Marek Vasut wrote:
> > On 4/1/22 20:21, Rob Herring wrote:
> > > On Fri, Apr 1, 2022 at 1:06 PM Marek Vasut wrote:
> > >> On 4/1/22 19:34, Rob Herring wrote:
> > >>> On Fri, Apr 01, 2022 at 03:22:19AM +0200, Marek Vasut wrote:
> > >>>> On 4/1/22 01:52, Rob Herring wrote:
> > >>>>> On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
> > >>>>>> MIPI-DSI devices, if they are controlled through the bus itself, have to
> > >>>>>> be described as a child node of the controller they are attached to.
> > >>>>>>
> > >>>>>> Thus, there's no requirement on the controller having an OF-Graph output
> > >>>>>> port to model the data stream: it's assumed that it would go from the
> > >>>>>> parent to the child.
> > >>>>>>
> > >>>>>> However, some bridges controlled through the DSI bus still require an
> > >>>>>> input OF-Graph port, thus requiring a controller with an OF-Graph output
> > >>>>>> port. This prevents those bridges from being used with the controllers
> > >>>>>> that do not have one without any particular reason to.
> > >>>>>>
> > >>>>>> Let's drop that requirement.
> > >>>>>>
> > >>>>>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > >>>>>> ---
> > >>>>>>     .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
> > >>>>>>     .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
> > >>>>>>     2 files changed, 2 deletions(-)
> > >>>>>>
> > >>>>>
> > >>>>> I tend to agree with port@0 not being needed and really like
> > >>>>> consistency.
> > >>>>
> > >>>> The consistent thing to do would be to always use port@0 and OF graph, no ?
> > >>>
> > >>> I guess it depends how wide our scope for consistency is. Just DSI bus
> > >>> controlled bridges? DSI panels? All bridges and panels? Any panel
> > >>> without a control interface has the same dilemma as those can be a child
> > >>> of the display controller (or bridge) and not even use OF graph.
> > >>
> > >> I would likely opt for the OF graph in all cases, panels, bridges,
> > >> controllers. Then it would be consistent.
> > >>
> > >>> All simple panels don't require 'port' either. That's presumably only
> > >>> consistent because we made a single schema. I'd assume 'non-simple'
> > >>> panels with their own schema are not consistent.
> > >>
> > >> Maybe we would start requiring that port even for simple panels ?
> > >> The port is physically there on that panel after all.
> > >
> > > Fix this in all the dts files and then I'll agree. Though I think this
> > > ship has already sailed. I'd like to someday get to platforms without
> > > warnings and not just keep adding new warnings.
> >
> > I doubt we can fix existing DTs, but can we at least require it for new
> > DTs ?
> 
> We don't have any way to do that currently and get to warning free for
> all DTs. We'd need to be able to disable specific checks for specific
> DTs. I've thought about it, but haven't come up with a way to do it.

I think Marek may have meant new bindings. While I do agree that
inconsistencies in sources can cause new submissions to blindly copy
mistakes, it shouldn't be a reason in itself to carry historical binding
design mistakes in new bindings.

-- 
Regards,

Laurent Pinchart
