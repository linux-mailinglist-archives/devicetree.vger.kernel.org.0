Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D12EA48C9C0
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 18:35:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355749AbiALRey (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 12:34:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355727AbiALReS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 12:34:18 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE1A4C061763
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 09:34:07 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id z22so12817256edd.12
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 09:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=is2zedBcgbWczj39+bZ1LmMmyVCz+G/d2u8M3IWXYXI=;
        b=qIc1wQQYOeT4kmkAnkReq9q6QvgP2iCfpVYu25Ew4jiFLeQv85VbMHLpT+I1r+ca6t
         EJtyzL6mWqhwiKPU0Dlpo1F62aeDp7mZhBihO80Yturgdow498jmyah1r1Lwmu9Yg6e2
         rmN4yVtkATC46DwOtJevkJwg5aOFtSLCrKa5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=is2zedBcgbWczj39+bZ1LmMmyVCz+G/d2u8M3IWXYXI=;
        b=jzmWOSWyoFH8LzuMP+d162qDxF99yPBp7HSBXHFR7AIjwqdCb0hzlChjMpJfj3nwI2
         7AJgADEJ/5x0/uy53JkEgfPvsaSGqkXXUGEIzuaHuM/eaVbR16WlxWhrWXCIKAfRlDtB
         ilK35uLPtst0fyfAn7VBX11AszZmKBcF01u+OEn9e3WuOYb6jBE5sG+z9b2oYune90is
         EhU662sr7MLv9RLH2yAPEoL63gc0ACNPPjci2GD+Lh3ktaAnH8/PPufhMQqslIafqFz8
         Heak6SUNi7OR6FsVvAUdyjVnkt3yqTsel691LUwLlKTqrTvRVHhRuWoyocnZXZYbJuA0
         q2/w==
X-Gm-Message-State: AOAM530tmU3TWEzFbYm3VRiRIHBu5SPaAm8oTPQhxDr59rgX2lWrxOOZ
        cDW6Vtnd0XHXNKQet3dyi8QjOGwi7A4WQzC6OuomFA==
X-Google-Smtp-Source: ABdhPJzF/gKvYeAhE4kjdvcwuDhbDSCcZ1NRu7uLIYqpvPheZAFR/PKAU/fjEiWnfEEak0aUuFUk75RdKCHziGYzQEs=
X-Received: by 2002:a05:6402:51d0:: with SMTP id r16mr615102edd.271.1642008846329;
 Wed, 12 Jan 2022 09:34:06 -0800 (PST)
MIME-Version: 1.0
References: <20220111183152.494923-1-jagan@amarulasolutions.com>
 <20220112100338.alaaggidlydoiiso@houat> <CAMty3ZBZR24AQYydoPz3bONtpwGLsiVUmt7TLv9ivT_-bfcW0w@mail.gmail.com>
 <20220112130705.zevbywvp5i63ixrf@houat>
In-Reply-To: <20220112130705.zevbywvp5i63ixrf@houat>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 12 Jan 2022 23:03:55 +0530
Message-ID: <CAMty3ZAz+3AcjsTZk6xmDpYueV1qNL05Gd-d7qeXEoPmiEoR_g@mail.gmail.com>
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

On Wed, Jan 12, 2022 at 6:37 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Wed, Jan 12, 2022 at 03:44:00PM +0530, Jagan Teki wrote:
> > On Wed, Jan 12, 2022 at 3:33 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > On Wed, Jan 12, 2022 at 12:01:52AM +0530, Jagan Teki wrote:
> > > > Some OF graphs don't require 'port' or 'ports' to represent the
> > > > downstream panel or bridge; instead it simply adds a child node
> > > > on a given parent node.
> > >
> > > All bindings using OF graph nodes require either port or ports.
> > >
> > > DSI Host however don't have to use the OF graph, and that's what you're
> > > talking about.
> >
> > Yes, right now I can see DSI but this change is generic to any OF graph.
>
> Not really? Generic to all users of drm_of_find_panel_or_bridge sure,
> but DSI is the only use case where we could have bridges or panels that
> would be child of the user.
>
> > > > drm_of_find_panel_or_bridge can lookup panel or bridge for a given
> > > > node based on the OF graph port and endpoint and it fails to use
> > > > if the given node has a child panel or bridge.
> > > >
> > > > This patch add support to lookup that given node has child panel
> > > > or bridge however that child node is neither a 'port' nor a 'ports'
> > > > node.
> > > >
> > > > Example OF graph representation of DSI host, which has 'port'
> > > > but not has 'ports' and has child panel node.
> > > >
> > > > dsi {
> > > >       compatible = "allwinner,sun6i-a31-mipi-dsi";
> > > >       #address-cells = <1>;
> > > >       #size-cells = <0>;
> > > >
> > > >       port {
> > > >               dsi_in_tcon0: endpoint {
> > > >                       remote-endpoint = <tcon0_out_dsi>;
> > > >       };
> > > >
> > > >       panel@0 {
> > > >               reg = <0>;
> > > >       };
> > > > };
> > > >
> > > > Example OF graph representation of DSI host, which has 'ports'
> > > > but not has 'port' and has child panel node.
> > > >
> > > > dsi {
> > > >         compatible = "samsung,exynos5433-mipi-dsi";
> > > >         #address-cells = <1>;
> > > >         #size-cells = <0>;
> > > >
> > > >       ports {
> > > >               #address-cells = <1>;
> > > >               #size-cells = <0>;
> > > >
> > > >               port@0 {
> > > >                       reg = <0>;
> > > >
> > > >                       dsi_to_mic: endpoint {
> > > >                               remote-endpoint = <&mic_to_dsi>;
> > > >                       };
> > > >                 };
> > > >         };
> > > >
> > > >         panel@0 {
> > > >                 reg = <0>;
> > > >         };
> > > > };
> > >
> > > I can't see how that one makes sense. The endpoint seems to have a
> > > single output, yet you also have a panel under it which is also an
> > > output? You should have at least the virtual channel of that endpoint
> > > somewhere to differentiate data between the panel and whatever is
> > > connected on the other side of that endpoint.
> >
> > Same that I understood so far (based on v2 change), However we have
> > exynos5433 has this pipeline and Andrzej mentioned it is valid
> > pipeline on other thread.
> >
> > May be Andrzej, can give more conclusive evidence for it.
> >
> > >
> > > > Example OF graph representation of DSI host, which has neither
> > > > a 'port' nor a 'ports' but has child panel node.
> > > >
> > > > dsi0 {
> > > >       compatible = "ste,mcde-dsi";
> > > >       #address-cells = <1>;
> > > >       #size-cells = <0>;
> > > >
> > > >       panel@0 {
> > > >               reg = <0>;
> > > >       };
> > > > };
> > > >
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > ---
> > > > Changes for v3:
> > > > - updated based on other usecase where 'ports' used along with child
> > > > Changes for v2:
> > > > - drop of helper
> > > > https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.461029-1-jagan@amarulasolutions.com/
> > > > - support 'port' alone OF graph
> > > > - updated comments
> > > > - added simple code
> > > >
> > > >  drivers/gpu/drm/drm_of.c | 18 ++++++++++++++++++
> > > >  1 file changed, 18 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > > > index 59d368ea006b..aeddd39b8df6 100644
> > > > --- a/drivers/gpu/drm/drm_of.c
> > > > +++ b/drivers/gpu/drm/drm_of.c
> > > > @@ -249,6 +249,22 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
> > > >       if (panel)
> > > >               *panel = NULL;
> > > >
> > > > +     /**
> > > > +      * Some OF graphs don't require 'port' or 'ports' to represent the
> > > > +      * downstream panel or bridge; instead it simply adds a child node
> > > > +      * on a given parent node.
> > >
> > > All OF graphs require either port or ports. DSI hosts can just have a
> > > child node.
> >
> > As commented above, it can be DSI or any host which has child nodes
> > and are looking to find panel/bridge.
>
> DSI is the only case in this situation, but ok. It still has nothing to
> do with OF graph. All bindings using OF graph will require either port
> or ports, and the DSI binding doesn't mandate to use OF graph. So the
> comment above is misleading at best.

Okay. How about this updated comment?

        /**
         * All bindings using OF graph will require either 'port' or 'ports'
         * to represent the downstream panel or bridge however the DSI binding
         * doesn't mandate to use OF graph; instead it simply adds a panel or
         * bridge in child node.
         *
         * Lookup that child node for a given parent however that child is
         * neither a 'port' nor a 'ports' node.
         */

Thanks,
Jagan.
