Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7F4AF4508F
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 02:32:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725867AbfFNAcd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 20:32:33 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:39999 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725807AbfFNAcd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 20:32:33 -0400
Received: by mail-vs1-f67.google.com with SMTP id a186so668356vsd.7
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 17:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5o5a2UNvqnt2IqG/d30r1Z1PI+lkRFVIZCDDvP3GRa4=;
        b=QSPL5o2oBNVzptcEqAin35G0xLo0WWvgdOOO2+lJQerKfjKIYK/6oBSgxbDxGyOeXK
         xc1Z2RyR8khlsHj7h/56FHn401h/hL1ihSqJACQe/klR228W7RgTufBtib0cQQpfqY5/
         S4NO2rnjTaZdsxN6OkMcnGXhGm9ft7LyISYAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5o5a2UNvqnt2IqG/d30r1Z1PI+lkRFVIZCDDvP3GRa4=;
        b=ffo0PvVrvnZshir0bKPJ2PEF1fU1FQX9VQy1QRE2WHNITlVfxaMwEOEJhPugUwf64d
         VNwbQ8QixAPwlXlSD7gCPpGgy/COqDpDIy9taPKG2iaQejQfS9VJ0ltaVicvpsNpmqJS
         jC0CU+2GLY6Qm4DJeVwTwrxCQAlxhafdVUmqlqkvKQ9w4V9iZ1sJ623lkTpZpAV9ixyn
         Jj+4DE+J6/8b7OY1ZNr9KM0UhoyMMhKF8y2xSFmrRK9slyQApxFiYSh/2bLRfTxYhHE1
         PimfB6vlkwSutIQqrSKuLBEN2Kjgc6lxCZvQvgF6mP/RhhY609OWeDcVAC7nwpboKBmX
         r88A==
X-Gm-Message-State: APjAAAVWlo8o15rVZUQ9WOJlFlPGg2/Ud7GCFUsn/28GI1quT/zHhpw1
        1rtYblBrXgE8dZoRgRiJP18EhzhRHeF7iWu8iZWQ5A==
X-Google-Smtp-Source: APXvYqyFuFyDZEX0VGqPH3v35EIiUK6ftc8JlgTdYuQL9iHMbG0bt8E4uHg/PoKRrVKv16C9BEZM1mqeIvYNB77SyX0=
X-Received: by 2002:a67:d384:: with SMTP id b4mr18708468vsj.152.1560472352531;
 Thu, 13 Jun 2019 17:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-2-dbasehore@chromium.org> <20190612212054.GB13155@ravnborg.org>
In-Reply-To: <20190612212054.GB13155@ravnborg.org>
From:   "dbasehore ." <dbasehore@chromium.org>
Date:   Thu, 13 Jun 2019 17:32:21 -0700
Message-ID: <CAGAzgspS_cSDYDUTgApK4R814r3gZk63oe+CdtqDuiXrTG5JdA@mail.gmail.com>
Subject: Re: [PATCH 1/5] drm/panel: Add helper for reading DT rotation
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
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
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 12, 2019 at 2:20 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Derek.
>
> On Mon, Jun 10, 2019 at 09:03:46PM -0700, Derek Basehore wrote:
> > This adds a helper function for reading the rotation (panel
> > orientation) from the device tree.
> >
> > Signed-off-by: Derek Basehore <dbasehore@chromium.org>
> > ---
> >  drivers/gpu/drm/drm_panel.c | 41 +++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_panel.h     |  7 +++++++
> >  2 files changed, 48 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/drm_panel.c b/drivers/gpu/drm/drm_panel.c
> > index dbd5b873e8f2..3b689ce4a51a 100644
> > --- a/drivers/gpu/drm/drm_panel.c
> > +++ b/drivers/gpu/drm/drm_panel.c
> > @@ -172,6 +172,47 @@ struct drm_panel *of_drm_find_panel(const struct device_node *np)
> >       return ERR_PTR(-EPROBE_DEFER);
> >  }
> >  EXPORT_SYMBOL(of_drm_find_panel);
> > +
> > +/**
> > + * of_drm_get_panel_orientation - look up the rotation of the panel using a
> > + * device tree node
> > + * @np: device tree node of the panel
> > + * @orientation: orientation enum to be filled in
> > + *
> > + * Looks up the rotation of a panel in the device tree. The rotation in the
> > + * device tree is counter clockwise.
> > + *
> > + * Return: 0 when a valid rotation value (0, 90, 180, or 270) is read or the
> > + * rotation property doesn't exist. -EERROR otherwise.
> > + */
> > +int of_drm_get_panel_orientation(const struct device_node *np, int *orientation)
> > +{
> > +     int rotation, ret;
> > +
> > +     ret = of_property_read_u32(np, "rotation", &rotation);
>
> I just noticed that everywhere this code talks about orientation,
> but the property that it reads are rotation.
> To my best understanding these are not the same.

This is because both were previously defined in the kernel. Rotation
was defined as a binding in the devicetree for panels (which is where
we wanted to put this property) and orientation already exists as a
DRM property.

If we want to change one, I would suggest the rotation binding since
it doesn't have any upstream users yet.

>
>         Sam
