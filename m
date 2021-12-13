Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18ED3472C64
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 13:39:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233776AbhLMMjg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 07:39:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231831AbhLMMjg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 07:39:36 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A09ECC061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:39:35 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id g14so50769753edb.8
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RWEOCMj0qpG/0DpAdqm0pF3v2BxX5aGkY8sxh3j19KM=;
        b=EprchnaSWdm0Qwesf+0NfoybtR6KIwJX8Q5KXlA3KrYDThemGX3syydUBPT/7E/xiY
         4c/chTWukVoKPP48ho2Fhlm80CYvnwwn73bz+sCzcWZLcAU+DvFOJdORhmkAgXpbQ2MY
         kPAndWCppyVXVAd6ZMGy8/Zlue+teL5HCWLyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RWEOCMj0qpG/0DpAdqm0pF3v2BxX5aGkY8sxh3j19KM=;
        b=duv5cTcU5j0VWZIOCd4QKVtXGd0KvNYbafKGREZxN2r2hyuCqErOSUI9R4D4wRqsjo
         e5f0VoLk0r9ksLKytsY87U/8AvG7PLmlsF/X0DRMxrt/gs4APABPZLLuWFTURhhwDajj
         AEsBwT4wUk3M6gymlBbV/Vk0kDNbdCHpBI0hc8ApQK4o/WDOY13NIEjc8uE0XaCaCGYu
         ec4yroIFvLzsGc/1PD9tKZDWz2Tx5XHl5gb2haPKLEobetvqmbpWB7BJfXN8M29JQlN9
         YdgnifreT8QZlmpjaj9LfTUwtT3s9bEnnkoNz28Ss34Ipx60JOfVQVTAlp3nrBE6fBpU
         FDXQ==
X-Gm-Message-State: AOAM530ymtFiRMs9S1vBGTegGEfi3L7uE7MZSd+UjreJNy5/M7H+StvZ
        zBaOmq6NCCoge90SJMZpGfGnMQXllo43UJsHIUsDXQ==
X-Google-Smtp-Source: ABdhPJw5YrezlLZ1UgOrQkTPUtYJQI6VwPo8Vlu5CTQzlBcrJVI0Aa2UmOPP4WSLywzaFm6vgH9/7KDtF0XgucK60zo=
X-Received: by 2002:a17:907:d89:: with SMTP id go9mr44287227ejc.330.1639399174070;
 Mon, 13 Dec 2021 04:39:34 -0800 (PST)
MIME-Version: 1.0
References: <20211213121929.3377752-1-jagan@amarulasolutions.com> <Ybc9KdVOb0bxknyQ@pendragon.ideasonboard.com>
In-Reply-To: <Ybc9KdVOb0bxknyQ@pendragon.ideasonboard.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 13 Dec 2021 18:09:23 +0530
Message-ID: <CAMty3ZCd9a8PZMEO_MhF7x4v_HoL9Bk6T-YiaUxF2R-YXQXxvw@mail.gmail.com>
Subject: Re: [PATCH] drm: bridge: tc358764: Use drm panel_bridge API
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

On Mon, Dec 13, 2021 at 6:02 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> Thank you for the patch.
>
> On Mon, Dec 13, 2021 at 05:49:29PM +0530, Jagan Teki wrote:
> > Replace the manual panel handling code by a drm panel_bridge via
> > devm_drm_of_get_bridge().
> >
> > Adding panel_bridge handling,
> >
> > - Drops drm_connector and related operations as drm_bridge_attach
> >   creates connector during attachment.
> >
> > - Drops panel pointer and panel healpers.
> >
> > This simplifies the driver and allows all components in the display
> > pipeline to be treated as bridges.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/gpu/drm/bridge/tc358764.c | 99 ++-----------------------------
> >  1 file changed, 6 insertions(+), 93 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/tc358764.c b/drivers/gpu/drm/bridge/tc358764.c
> > index c1e35bdf9232..28480bdc4287 100644
> > --- a/drivers/gpu/drm/bridge/tc358764.c
> > +++ b/drivers/gpu/drm/bridge/tc358764.c
> > @@ -153,10 +153,9 @@ static const char * const tc358764_supplies[] = {
> >  struct tc358764 {
> >       struct device *dev;
> >       struct drm_bridge bridge;
> > -     struct drm_connector connector;
> > +     struct drm_bridge *panel_bridge;
>
> s/panel_bridge/next_bridge/ as it may not be a panel.

Sometime, I'm a strong believer of my own notation (I may be wrong)
based on my understanding. This is downstream bridge and the only
option it to connect is panel and panel in bridge terminology are
treated as panel_bridge. This is the reason I have used panel_bridge.
next_bridge notation will be used if the bridge connected to any
downstream bridge, like we can use next_bridge notation in host bridge
drivers as host bridge can be an option of connecting downstream
bridge or panel.

This is what I understood so-far with DRM bridges. May be you can
correct if I'm wrong.

>
> >       struct regulator_bulk_data supplies[ARRAY_SIZE(tc358764_supplies)];
> >       struct gpio_desc *gpio_reset;
> > -     struct drm_panel *panel;
>
> Are there #includes that you can drop ?

I think, yes. I will update it in v2.

Thanks,
Jagan.
