Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2EB644196A
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 02:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407389AbfFLA0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 20:26:00 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:35571 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405847AbfFLAZ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 20:25:59 -0400
Received: by mail-vs1-f67.google.com with SMTP id u124so9157617vsu.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 17:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KRAxkF68gmKecn3z+xJVKQmHHe3fhnjLkR6e2Rk4Xyw=;
        b=fJnj+niayR1N1ZzWwcqhYntA6jPdSi35aIBMUPGQoq+fZuXbt6Wr6mmgcT8Li0DIbl
         mZ2rnLWVOMBADToUfCnXK8dduYeGZIhdvwAbBqOL/0VDH2EXhFYIC3SscfoxzwRtMruh
         aQxEGghx7B2GqXT7GjKG0V9vlxKyPvJG2ZRNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KRAxkF68gmKecn3z+xJVKQmHHe3fhnjLkR6e2Rk4Xyw=;
        b=FwRM9LDklVE/NT0HFJkmxgEChBFFsBVjyH698VWwjAIGZcjAmlIUjXyaS3evs5soxQ
         X0d9+Urz5sp/paZcD00KNihX/+WhyLnbJSCzKh29GHZntuNtn0fnTngsPrOFcPvTecQC
         feF7aVEMqngl0jjle8uJwwQ8sU3mwCBaM018/30uGUszp5F4hIUczGdNsRGfQP8/006f
         9Oey2kL2RyZO5mAwFh/M3Scb6AV/0RhkSsfKFrUgJ6EB5abiPvd6DdF+Wzuv+/T+bT7n
         EsSCP9XISc97/d0KfAChTnXR8WJkmOygo4awBG6+Zib6qfiwZNEQzwNJAYH05Vt2hk4t
         BDwQ==
X-Gm-Message-State: APjAAAXg6fx1RGykyJurbLINzotjFFCt3Remlf4g6ffh3MUQ737kQmoX
        2O2LdpWQ8LPMSeL6H949kCSazyc4FmL/+kao2WZ6+A==
X-Google-Smtp-Source: APXvYqyBOE2/PeatQjMLag/dgZW9nIv+g21QttCDT2gu4AyyqqE25wxvF/WmWHqkySY61fNGAHCWU09UoCZNZ8g35DI=
X-Received: by 2002:a67:ea42:: with SMTP id r2mr31201742vso.207.1560299158074;
 Tue, 11 Jun 2019 17:25:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-4-dbasehore@chromium.org> <20190611085722.GX21222@phenom.ffwll.local>
In-Reply-To: <20190611085722.GX21222@phenom.ffwll.local>
From:   "dbasehore ." <dbasehore@chromium.org>
Date:   Tue, 11 Jun 2019 17:25:47 -0700
Message-ID: <CAGAzgsr2sh5B1xi_ztQPN0xoQsZd26DDXwWT_qqJ68XeKReJ_Q@mail.gmail.com>
Subject: Re: [PATCH 3/5] drm/panel: Add attach/detach callbacks
To:     Derek Basehore <dbasehore@chromium.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
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
        <linux-mediatek@lists.infradead.org>
Cc:     Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 1:57 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Mon, Jun 10, 2019 at 09:03:48PM -0700, Derek Basehore wrote:
> > This adds the attach/detach callbacks. These are for setting up
> > internal state for the connector/panel pair that can't be done at
> > probe (since the connector doesn't exist) and which don't need to be
> > repeatedly done for every get/modes, prepare, or enable callback.
> > Values such as the panel orientation, and display size can be filled
> > in for the connector.
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 14 ++++++++++++++
> >  include/drm/drm_panel.h     |  4 ++++
> >  2 files changed, 18 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index 3b689ce4a51a..72f67678d9d5 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -104,12 +104,23 @@ EXPORT_SYMBOL(drm_panel_remove);
> >   */
> >  int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
> >  {
> > +     int ret;
> > +
> >       if (panel->connector)
> >               return -EBUSY;
> >
> >       panel->connector = connector;
> >       panel->drm = connector->dev;
> >
> > +     if (panel->funcs->attach) {
> > +             ret = panel->funcs->attach(panel);
> > +             if (ret < 0) {
> > +                     panel->connector = NULL;
> > +                     panel->drm = NULL;
> > +                     return ret;
> > +             }
> > +     }
>
> Why can't we just implement this in the drm helpers for everyone, by e.g.
> storing a dt node in drm_panel? Feels a bit overkill to have these new
> hooks here.
>
> Also, my understanding is that this dt stuff is supposed to be
> standardized, so this should work.

So do you want all of this information added to the drm_panel struct?
If we do that, we don't necessarily even need the drm helper function.
We could just copy the values over here in the drm_panel_attach
function (and clear them in drm_panel_detach).

> -Daniel
>
> > +
> >       return 0;
> >  }
> >  EXPORT_SYMBOL(drm_panel_attach);
> > @@ -128,6 +139,9 @@ EXPORT_SYMBOL(drm_panel_attach);
> >   */
> >  int drm_panel_detach(struct drm_panel *panel)
> >  {
> > +     if (panel->funcs->detach)
> > +             panel->funcs->detach(panel);
> > +
> >       panel->connector = NULL;
> >       panel->drm = NULL;
> >
> > diff --git a/include/drm/drm_panel.h b/include/drm/drm_panel.h
> > index 13631b2efbaa..e136e3a3c996 100644
> > --- a/include/drm/drm_panel.h
> > +++ b/include/drm/drm_panel.h
> > @@ -37,6 +37,8 @@ struct display_timing;
> >   * struct drm_panel_funcs - perform operations on a given panel
> >   * @disable: disable panel (turn off back light, etc.)
> >   * @unprepare: turn off panel
> > + * @detach: detach panel->connector (clear internal state, etc.)
> > + * @attach: attach panel->connector (update internal state, etc.)
> >   * @prepare: turn on panel and perform set up
> >   * @enable: enable panel (turn on back light, etc.)
> >   * @get_modes: add modes to the connector that the panel is attached to and
> > @@ -70,6 +72,8 @@ struct display_timing;
> >  struct drm_panel_funcs {
> >       int (*disable)(struct drm_panel *panel);
> >       int (*unprepare)(struct drm_panel *panel);
> > +     void (*detach)(struct drm_panel *panel);
> > +     int (*attach)(struct drm_panel *panel);
> >       int (*prepare)(struct drm_panel *panel);
> >       int (*enable)(struct drm_panel *panel);
> >       int (*get_modes)(struct drm_panel *panel);
> > --
> > 2.22.0.rc2.383.gf4fbbf30c2-goog
> >
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
