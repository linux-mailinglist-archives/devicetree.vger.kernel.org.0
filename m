Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AB7C8472CAA
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 13:57:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232278AbhLMM5v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 07:57:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231465AbhLMM5u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 07:57:50 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 496C8C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:57:50 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id t5so51440826edd.0
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 04:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9LQ6YLHJiVc29M1DNX9OzXvknZCHbxU5ii5+RPTZA+4=;
        b=PeR6CIJIXUUUzSMwqXD6v86SitIvGiNLqR52OnxGFiPmAsoQKX9A5xuikK2xSMPWx2
         9zvWfQp28+z0nXS3NukiY0b5X72+sqwkK2xLk9BcJt/Yt/FSQOhI6HJ65Fk0wHVxdTsR
         AF+cmohb86Ek/lFjqYgtHTNJupWJMRtkOvpJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9LQ6YLHJiVc29M1DNX9OzXvknZCHbxU5ii5+RPTZA+4=;
        b=oHOzCJC/wrfCSyA9adYyaxH6cni/Hq+PM5bpFWiSSSJ/sSPZxjGyxzHkZKfZiSHKOK
         GzoynPIf7ZhrzXoxILyk9HgtnVUaBNzDB8P9b5L8UBwBRJ0Jmr3UyMWdo+OODZAa1UXp
         UzPbFGEgVGMIcCUrkeDRD6se9D91O3g+XE/b28sHQcTvQ276WWt60bfsh9EBW7LIcAzX
         tQW2puIb2t1bU3aDvUSespwxixRGu8GGc6M5ZzzBddfYLEsgPyozsoRBnJR576QRMM2c
         oyo7CGtWuWidflgTHOqShTPP6RhZvsa8VFMKYt8fGpgfz2JY0Q6tr1ODOVLVW0B66WBA
         5PMg==
X-Gm-Message-State: AOAM532Pfh/j1j53yhifZ2yVbL65XVdJ7Kr/hUkPPE2Sf9A1Kkr/Ao6+
        mNyVYwu/yw/bNpreiTKHbPbISmTDJOkvcC9M4vwGvA==
X-Google-Smtp-Source: ABdhPJz0d4K2Rd1ZyWyn30iT0L1DU/NDz5ATb2hPRJWOFoL4INeZZdHwgFLfhPGp0VAyZaI3B03yuT5duv9b4upa7uI=
X-Received: by 2002:a17:907:7850:: with SMTP id lb16mr43816919ejc.67.1639400268858;
 Mon, 13 Dec 2021 04:57:48 -0800 (PST)
MIME-Version: 1.0
References: <20211213121929.3377752-1-jagan@amarulasolutions.com>
 <Ybc9KdVOb0bxknyQ@pendragon.ideasonboard.com> <CAMty3ZCd9a8PZMEO_MhF7x4v_HoL9Bk6T-YiaUxF2R-YXQXxvw@mail.gmail.com>
 <YbdAglrp5ZNMm2Vx@pendragon.ideasonboard.com>
In-Reply-To: <YbdAglrp5ZNMm2Vx@pendragon.ideasonboard.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 13 Dec 2021 18:27:37 +0530
Message-ID: <CAMty3ZDiiK_LSqwY87RrZ5W6=gyxUXB8tyG5Zp5x_LJcZ-pRCA@mail.gmail.com>
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

On Mon, Dec 13, 2021 at 6:16 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Mon, Dec 13, 2021 at 06:09:23PM +0530, Jagan Teki wrote:
> > Hi Laurent,
> >
> > On Mon, Dec 13, 2021 at 6:02 PM Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:
> > >
> > > Hi Jagan,
> > >
> > > Thank you for the patch.
> > >
> > > On Mon, Dec 13, 2021 at 05:49:29PM +0530, Jagan Teki wrote:
> > > > Replace the manual panel handling code by a drm panel_bridge via
> > > > devm_drm_of_get_bridge().
> > > >
> > > > Adding panel_bridge handling,
> > > >
> > > > - Drops drm_connector and related operations as drm_bridge_attach
> > > >   creates connector during attachment.
> > > >
> > > > - Drops panel pointer and panel healpers.
> > > >
> > > > This simplifies the driver and allows all components in the display
> > > > pipeline to be treated as bridges.
> > > >
> > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > ---
> > > >  drivers/gpu/drm/bridge/tc358764.c | 99 ++-----------------------------
> > > >  1 file changed, 6 insertions(+), 93 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/bridge/tc358764.c b/drivers/gpu/drm/bridge/tc358764.c
> > > > index c1e35bdf9232..28480bdc4287 100644
> > > > --- a/drivers/gpu/drm/bridge/tc358764.c
> > > > +++ b/drivers/gpu/drm/bridge/tc358764.c
> > > > @@ -153,10 +153,9 @@ static const char * const tc358764_supplies[] = {
> > > >  struct tc358764 {
> > > >       struct device *dev;
> > > >       struct drm_bridge bridge;
> > > > -     struct drm_connector connector;
> > > > +     struct drm_bridge *panel_bridge;
> > >
> > > s/panel_bridge/next_bridge/ as it may not be a panel.
> >
> > Sometime, I'm a strong believer of my own notation (I may be wrong)
> > based on my understanding. This is downstream bridge and the only
> > option it to connect is panel and panel in bridge terminology are
> > treated as panel_bridge. This is the reason I have used panel_bridge.
> > next_bridge notation will be used if the bridge connected to any
> > downstream bridge, like we can use next_bridge notation in host bridge
> > drivers as host bridge can be an option of connecting downstream
> > bridge or panel.
>
> The downstream bridge doesn't have to be a DSI panel, it could be an
> LVDS-to-DPI bridge for instance, or an LVDS-to-HDMI encoder.

Okay. What are use-cases where we can use panel_bridge?

Jagan.
