Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7F9148C20A
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 11:14:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352415AbiALKON (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 05:14:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352409AbiALKOM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 05:14:12 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A1C7C06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 02:14:12 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id o6so7888029edc.4
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 02:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zaWuBNHxozNxzNM9J6PR/5yD+oYCyQlPP8vgC02A3NI=;
        b=dhidD4skLUUGW5w/bKoK19NMGl8HQbs/nHuw2bc9l62v6XdbTRg8zNeERBh5i5s5M1
         sWE1ak8/QGM1PODTtwyeA44+n/0ll1lPm6GLTYVd/bFSyzvWDPfl27tyhlRsOmlopIrJ
         6+m5YHx2xtpqx4MuTp54u+0P5jv2L0xEHqSm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zaWuBNHxozNxzNM9J6PR/5yD+oYCyQlPP8vgC02A3NI=;
        b=zl8c4TlC0d+aH7RL1MsbQunuU+yod8khkoTWJuywXCT+bK4qa6Pt4NGzgDrrXLN4Lo
         sDZP8hSyL1OdoqFqQLnzDYwhCEGEasEoXmjjN2Bs42mMozv7jkiA15QjkzhUNsczUXLx
         jI7ui0CgTvTQ2DwHh2FVO2yi99wCWF49HvhiyVcdQOBJGS/EygymDuYSGxrJ0EM8Bo2U
         DOjHLAnTKayHwzMXMK8qtUvNMuNEkz5sFNb4XaZ3mBjhR6SamIpjZ5iOOs/aZVXXfsZy
         a52Xnz05JvCL0QdlZSIrLRZnxzLvyqzss5gjxszNcx4dOblCZDSwaPUoAt8QHZjXl8cH
         Nx7w==
X-Gm-Message-State: AOAM5303PE1W4zU8DMGVwpXIg5vLL+9/+w8X6dNtMFRRf9eBYxi9AK4i
        XeuTcUP7uVYJ1vDcEA7DLXiCdJNZz8QEWl3jpGOVzg==
X-Google-Smtp-Source: ABdhPJwRHJuOgqEAR9BlE5VCLT3E7Y1wLIAbCllAB0lvfavXypObljZFAF0wB8rw7mU/zsbKCvI15DKJDnO/Im11UH0=
X-Received: by 2002:a17:907:3e09:: with SMTP id hp9mr7440735ejc.537.1641982450946;
 Wed, 12 Jan 2022 02:14:10 -0800 (PST)
MIME-Version: 1.0
References: <20220111183152.494923-1-jagan@amarulasolutions.com> <20220112100338.alaaggidlydoiiso@houat>
In-Reply-To: <20220112100338.alaaggidlydoiiso@houat>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 12 Jan 2022 15:44:00 +0530
Message-ID: <CAMty3ZBZR24AQYydoPz3bONtpwGLsiVUmt7TLv9ivT_-bfcW0w@mail.gmail.com>
Subject: Re: [PATCH v3] drm: of: Lookup if child node has panel or bridge
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 12, 2022 at 3:33 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Wed, Jan 12, 2022 at 12:01:52AM +0530, Jagan Teki wrote:
> > Some OF graphs don't require 'port' or 'ports' to represent the
> > downstream panel or bridge; instead it simply adds a child node
> > on a given parent node.
>
> All bindings using OF graph nodes require either port or ports.
>
> DSI Host however don't have to use the OF graph, and that's what you're
> talking about.

Yes, right now I can see DSI but this change is generic to any OF graph.

>
> > drm_of_find_panel_or_bridge can lookup panel or bridge for a given
> > node based on the OF graph port and endpoint and it fails to use
> > if the given node has a child panel or bridge.
> >
> > This patch add support to lookup that given node has child panel
> > or bridge however that child node is neither a 'port' nor a 'ports'
> > node.
> >
> > Example OF graph representation of DSI host, which has 'port'
> > but not has 'ports' and has child panel node.
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
> > Example OF graph representation of DSI host, which has 'ports'
> > but not has 'port' and has child panel node.
> >
> > dsi {
> >         compatible = "samsung,exynos5433-mipi-dsi";
> >         #address-cells = <1>;
> >         #size-cells = <0>;
> >
> >       ports {
> >               #address-cells = <1>;
> >               #size-cells = <0>;
> >
> >               port@0 {
> >                       reg = <0>;
> >
> >                       dsi_to_mic: endpoint {
> >                               remote-endpoint = <&mic_to_dsi>;
> >                       };
> >                 };
> >         };
> >
> >         panel@0 {
> >                 reg = <0>;
> >         };
> > };
>
> I can't see how that one makes sense. The endpoint seems to have a
> single output, yet you also have a panel under it which is also an
> output? You should have at least the virtual channel of that endpoint
> somewhere to differentiate data between the panel and whatever is
> connected on the other side of that endpoint.

Same that I understood so far (based on v2 change), However we have
exynos5433 has this pipeline and Andrzej mentioned it is valid
pipeline on other thread.

May be Andrzej, can give more conclusive evidence for it.

>
> > Example OF graph representation of DSI host, which has neither
> > a 'port' nor a 'ports' but has child panel node.
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
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v3:
> > - updated based on other usecase where 'ports' used along with child
> > Changes for v2:
> > - drop of helper
> > https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.461029-1-jagan@amarulasolutions.com/
> > - support 'port' alone OF graph
> > - updated comments
> > - added simple code
> >
> >  drivers/gpu/drm/drm_of.c | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > index 59d368ea006b..aeddd39b8df6 100644
> > --- a/drivers/gpu/drm/drm_of.c
> > +++ b/drivers/gpu/drm/drm_of.c
> > @@ -249,6 +249,22 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> >       if (panel)
> >               *panel = NULL;
> >
> > +     /**
> > +      * Some OF graphs don't require 'port' or 'ports' to represent the
> > +      * downstream panel or bridge; instead it simply adds a child node
> > +      * on a given parent node.
>
> All OF graphs require either port or ports. DSI hosts can just have a
> child node.

As commented above, it can be DSI or any host which has child nodes
and are looking to find panel/bridge.

Thanks,
Jagan.
