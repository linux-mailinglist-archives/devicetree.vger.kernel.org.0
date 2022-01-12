Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42CA848C136
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 10:44:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352160AbiALJot (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 04:44:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346466AbiALJos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 04:44:48 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90A14C06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 01:44:48 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id a18so7537876edj.7
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 01:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XuEB7XobBbMPiun2kANzZ4rmnxZhoUqmnnzoGvSJy4M=;
        b=oL62e0IiaN+eD6SeB2lFLyZGrqEVageVaLzdhUbwczBxeYnMVJnJIURVVrIW2iTwOF
         ZON95P83mpKjyDXjC+eLYnTvm3pQdyZylOrxgjhxkW+4nN301BlJ69iXcMTukwK4WYs6
         BYo03WBwCcJLHIKK09Ccc9KXHQqZ7CghYBGmE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XuEB7XobBbMPiun2kANzZ4rmnxZhoUqmnnzoGvSJy4M=;
        b=L6u5Wlmm5z8N2G8D/GFeMuB6raD8O8e8dumro0EFPIeE4lJbEbIFMiRgHiXQLu0zG8
         kjDKMlCuqoqC9yWHmDo6li08PFjd7VwXv6xoY/wDhK8tTJ8afSz/37akN+6Q2W/GRk+t
         BI5C5taeIoLhyt5LNlqRIgp1mN039O25sZqaVJKilcP5roZeFZQwAjNf+aftXTHOX0B9
         0vvB51vHTh4QcpH3EBP7KHgnDvSWDSWmUGoe/tOO8vm1NshPncGnPSOTim5Uvf6pnDXK
         tOrKC4HXFh3LIQcoyaI5WjXpj6edUI9I14+UtUUmiAm8ENmbd65pFp3zeJd3gGDTyo8N
         /bAw==
X-Gm-Message-State: AOAM533PV3lHQ3DuYSnaroNMZy7aAHKMPNwaSVkWDdav1S/Z6GMoBLsa
        LOsUIULETYcOf7owMOERemOO+uMCmld1rBqslnnp1A==
X-Google-Smtp-Source: ABdhPJwsGruFhoSkXJcexYexnA9MIs9p1BsIynp5patwuVcqVw58t9hofGxWLsVN5kqJFZW2m1bdeJW8Cd9Zox7QaDo=
X-Received: by 2002:a17:906:7cc9:: with SMTP id h9mr4173842ejp.111.1641980687049;
 Wed, 12 Jan 2022 01:44:47 -0800 (PST)
MIME-Version: 1.0
References: <20211213121613.3377432-1-jagan@amarulasolutions.com> <Ybc8dym7NWvBmYYf@pendragon.ideasonboard.com>
In-Reply-To: <Ybc8dym7NWvBmYYf@pendragon.ideasonboard.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 12 Jan 2022 15:14:35 +0530
Message-ID: <CAMty3ZC1qOS42jvUTyGtOWBDT0ewghnivK3Rej8NGN2dqVNcug@mail.gmail.com>
Subject: Re: [PATCH v2] drm: of: Lookup if child node has panel or bridge
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

On Mon, Dec 13, 2021 at 5:59 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> Thank you for the patch.
>
> On Mon, Dec 13, 2021 at 05:46:13PM +0530, Jagan Teki wrote:
> > Some OF graphs don't require 'ports' to represent the
> > downstream panel or bridge; instead it simply adds a child
> > node on a given parent node.
> >
> > drm_of_find_panel_or_bridge can lookup panel or bridge for
> > a given node based on the OF graph port and endpoint and it
> > fails to use if the given node has a child panel or bridge.
> >
> > This patch add support to lookup that given node has child
> > panel or bridge however that child node cannot be a 'port'
> > alone or it cannot be a 'port' node too.
> >
> > Example OF graph representation of DSI host, which doesn't
> > have 'ports' and has child panel.
> >
> > dsi {
> >       compatible = "allwinner,sun6i-a31-mipi-dsi";
> >       #address-cells = <1>;
> >       #size-cells = <0>;
> >
> >       port {
> >               dsi_in_tcon0: endpoint {
> >                       remote-endpoint = <tcon0_out_dsi>;
> >       };
> >
> >       panel@0 {
> >               reg = <0>;
> >       };
> > };
> >
> > Example OF graph representation of DSI host, which doesn't
> > have 'ports' and has child bridge.
> >
> > dsi {
> >       compatible = "allwinner,sun6i-a31-mipi-dsi";
> >       #address-cells = <1>;
> >       #size-cells = <0>;
> >
> >       port {
> >               dsi_in_tcon0: endpoint {
> >                       remote-endpoint = <tcon0_out_dsi>;
> >       };
> >
> >       bridge@0 {
> >               reg = <0>;
> >
> >               ports {
> >                       #address-cells = <1>;
> >                       #size-cells = <0>;
> >
> >                       bridge_out: port@1 {
> >                               reg = <1>;
> >
> >                               bridge_out_panel: endpoint {
> >                                       remote-endpoint = <&panel_out_bridge>;
> >                               };
> >                       };
> >               };
> >       };
> > };
> >
> > Example OF graph representation of DSI host, which doesn't
> > have 'ports' or 'port' and has child panel.
> >
> > dsi0 {
> >       compatible = "ste,mcde-dsi";
> >       #address-cells = <1>;
> >       #size-cells = <0>;
> >
> >       panel@0 {
> >               reg = <0>;
> >       };
> > };
> >
> > Example OF graph representation of LTDC host, which doesn't
> > have 'ports' or child panel/bridge and has 'port'.
> >
> > ltdc {
> >       compatible = "st,stm32-ltdc";
> >       #address-cells = <1>;
> >       #size-cells = <0>;
> >
> >       port {
> >       };
> > };
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v2:
> > - drop of helper
> > https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.461029-1-jagan@amarulasolutions.com/
> > - support 'port' alone OF graph
> > - updated comments
> > - added simple code
> >
> >  drivers/gpu/drm/drm_of.c | 23 +++++++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > index 59d368ea006b..7d018ff8bc83 100644
> > --- a/drivers/gpu/drm/drm_of.c
> > +++ b/drivers/gpu/drm/drm_of.c
> > @@ -249,6 +249,27 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >       if (panel)
> >               *panel = NULL;
> >
> > +     /**
> > +      * Some OF graphs don't require 'ports' to represent the downstream
> > +      * panel or bridge; instead it simply adds a child node on a given
> > +      * parent node.
> > +      *
> > +      * Lookup that child node for a given parent however that child
> > +      * cannot be a 'port' alone or it cannot be a 'port' node too.
> > +      */
> > +     if (!of_get_child_by_name(np, "ports")) {
> > +             if (of_get_child_by_name(np, "port") && (of_get_child_count(np) == 1))
>
> This messes up reference counting of device_node.
>
> > +                     goto of_graph_get_remote;
> > +
> > +             for_each_available_child_of_node(np, remote) {
> > +                     if (of_node_name_eq(remote, "port"))
> > +                             continue;
> > +
> > +                     goto of_find_panel_or_bridge;
> > +             }
> > +     }
>
> This really looks like a hack to me, I'm worried it may cause issues. It
> would be better, I think, to split the drm_of_find_panel_or_bridge()
> function in two, with the of_graph_get_remote_node() call moved to a
> wrapper function, calling an inner function that takes the remote
> device_node pointer. For the DSI use case, you could either look up the
> panel DT node in the display driver and call the inner function
> directly, or implement a DSI-specific wrapper.

I sent the V3 for this, and considered whole video pipeline use cases.
Please have a look and comment.

Thanks,
Jagan.
