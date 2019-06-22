Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 39A684F323
	for <lists+devicetree@lfdr.de>; Sat, 22 Jun 2019 03:55:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726114AbfFVBzL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 21:55:11 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:45985 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726083AbfFVBzK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 21:55:10 -0400
Received: by mail-vs1-f65.google.com with SMTP id h28so2045449vsl.12
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 18:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rJNwQ3mLV8c2DQL6zapl2FGuDETRbFo/82UxBr+AH6A=;
        b=dvw6+h32jWORvo7jMZPESQgSthDbn7z03u9GLjsid38O6nYq1at3dkhVnc+MFLAUfy
         XMWuL+lGSbdU4YUp+4DzaZDxDYW6Z8e8x/6ETdnfog16NJl7DmSRta5asKt5t2HKHSPo
         iLp6MEOb/l0yLyh0JhQe7+EJtudxCM2ivTJ3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rJNwQ3mLV8c2DQL6zapl2FGuDETRbFo/82UxBr+AH6A=;
        b=poyZqlGqwayS/5Q+BdrvXI6YaajI5l6+NAfSwr+LW5OmPCyPfWJUTLcEfHaNRSvdjO
         6ljkXxX36sOQZFDzl9puZVhwL5IWtpeZ3vVaTxLFIDvnber8zj56FfixE/NgwZQOaeBO
         v+V1jyY7FrUtixdtvtDh6m/Ah+dxFfhINq4h+Bt1AhwCOlbqzuA6adKZWQAyIVvJjDuH
         ua98XakN0uRmw/k5uOS3pF9JLv6CbGDmiAVITtu3NNn6LTUtqoVPHi4KVXrkre6BxUTa
         bzJ1Yl/xJ/ywC/4ISG7EL/Ype8OwTSw+sWsa7QBHPsFXamoKoihIzMPH+Zz5d7VtpcKT
         KWDQ==
X-Gm-Message-State: APjAAAWE/BDOon+VtsZ3QxwGmQVsc9rKecG+2C6UP/V45Z/dxhhyD143
        jhV4oUkAsRUVbhUDmn2xdaTEdJQs7ECIS6UqqCTGDw==
X-Google-Smtp-Source: APXvYqxIUQ4BIsLDa7mjdOr3DxZ0fEYbaLvNVTh2X5FXEq12gxCyd4wyEmkfrQB7bvfwwvie1eNDWlSCYOg/Tnvc+qM=
X-Received: by 2002:a67:7d13:: with SMTP id y19mr57281881vsc.232.1561168509102;
 Fri, 21 Jun 2019 18:55:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org> <20190611085722.GX21222@phenom.ffwll.local>
 <CAGAzgsr2sh5B1xi_ztQPN0xoQsZd26DDXwWT_qqJ68XeKReJ_Q@mail.gmail.com> <20190621091928.GA11839@ulmo>
In-Reply-To: <20190621091928.GA11839@ulmo>
From:   "dbasehore ." <dbasehore@chromium.org>
Date:   Fri, 21 Jun 2019 18:54:57 -0700
Message-ID: <CAGAzgsqkJnc4jESSVMtYEQ4=DhmLVKbo_8CTk9cwH0j+55ZuTw@mail.gmail.com>
Subject: Re: [PATCH 3/5] drm/panel: Add attach/detach callbacks
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        CK Hu <ck.hu@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org,
        Intel Graphics <intel-gfx@lists.freedesktop.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 21, 2019 at 2:19 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> On Tue, Jun 11, 2019 at 05:25:47PM -0700, dbasehore . wrote:
> > On Tue, Jun 11, 2019 at 1:57 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> > >
> > > On Mon, Jun 10, 2019 at 09:03:48PM -0700, Derek Basehore wrote:
> > > > This adds the attach/detach callbacks. These are for setting up
> > > > internal state for the connector/panel pair that can't be done at
> > > > probe (since the connector doesn't exist) and which don't need to be
> > > > repeatedly done for every get/modes, prepare, or enable callback.
> > > > Values such as the panel orientation, and display size can be filled
> > > > in for the connector.
> > > >
> > > > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > > > ---
> > > >  drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
> > > >  include/drm/drm_panel.h     |  4 ++++
> > > >  2 files changed, 18 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > > > index 3b689ce4a51a..72f67678d9d5 100644
> > > > --- a/drivers/gpu/drm/drm_panel.c
> > > > +++ b/drivers/gpu/drm/drm_panel.c
> > > > @@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
> > > >   */
> > > >  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
> > > >  {
> > > > +     int ret;
> > > > +
> > > >       if (panel->connector)
> > > >               return -EBUSY;
> > > >
> > > >       panel->connector = connector;
> > > >       panel->drm = connector->dev;
> > > >
> > > > +     if (panel->funcs->attach) {
> > > > +             ret = panel->funcs->attach(panel);
> > > > +             if (ret < 0) {
> > > > +                     panel->connector = NULL;
> > > > +                     panel->drm = NULL;
> > > > +                     return ret;
> > > > +             }
> > > > +     }
> > >
> > > Why can't we just implement this in the drm helpers for everyone, by e.g.
> > > storing a dt node in drm_panel? Feels a bit overkill to have these new
> > > hooks here.
> > >
> > > Also, my understanding is that this dt stuff is supposed to be
> > > standardized, so this should work.
> >
> > So do you want all of this information added to the drm_panel struct?
> > If we do that, we don't necessarily even need the drm helper function.
> > We could just copy the values over here in the drm_panel_attach
> > function (and clear them in drm_panel_detach).
>
> Yeah, I think we should have all this extra information in the struct
> drm_panel. However, I think we need to more carefully split things such
> that the DT parsing happens at panel probe time. That way we can catch
> errors in DT, or missing entries/resources when we can still do
> something about it.

For now, I'll just put width, height, bpc, orientation, bus_flags, and
bus_formats in the drm_panel struct. Those are pretty consistently set
from either get_modes or prepare. The other thing those all have in
common is that the values don't change.

We could just add an entire drm_display_info struct inside drm_panel,
but I don't know if we can just copy that over or set a pointer
without breaking something else, since some of the values in the
drm_display_info struct are not set by the panel (but maybe set by
something else).

>
> If we start parsing DT and encounter failures, it's going to be very
> confusing if that's at panel attach time where code will usually just
> assume that everything is already validated and can't fail anymore.
>
> Thierry

Thanks for the review
