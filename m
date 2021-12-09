Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B593546ED71
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 17:47:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236975AbhLIQue (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 11:50:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233270AbhLIQud (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 11:50:33 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76BDEC061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 08:46:57 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id v1so21716490edx.2
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 08:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DUAsoZN2GGfXs7xQeUpyANUvSViGhaNjFhPoPPs6f6w=;
        b=RpGzTAlgLa3PO+98+sxBAbJQER/+75BJLrqyfbj/7lQCThJk8X1lniI4djnUqtNlYu
         80sTAOOhS+raFRuicrgI0z7zBxkKAV/xSc03ImNww6wNqn0MUk2hp6LCQuOsvpPvlZSX
         zgMEummyAHUQoVNwNw6swxxwAaWXSLnT9OHEY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DUAsoZN2GGfXs7xQeUpyANUvSViGhaNjFhPoPPs6f6w=;
        b=AxiuFF8wWPu6sY5+YMz00Gu3yf1666y8NuMxy1pvplkvOmjifWtX/rIwe63A/ynnZU
         5Mp/s0TjCDiZ8FbY/SUGnQnqwy4ruQk3MukPt/EVgozjKiYnQt3HFrrLPnYF+zekpz5Z
         Tr8HrU+5w6F+XYsLc9S6Lac72ZXTuxUfptJ4fHzsPU3dH6tIZ62h9AwhnGfVUoxOIgNl
         7yBNvM+V4h/buDs9VcV6bgftwUaUkDFkWdKuKpYhtnh+k7i1u9Abyg7N2yVIEcqf2eAI
         x+7HLkifPnaNZ1gRRPuucYYRMucnMDGiXw5Y0PAvnfVyuTr068/HSnRDUr/i8/awk5D4
         51kQ==
X-Gm-Message-State: AOAM531sRKoWWxeMyUFJvwafEvR/CooxpveSwfX8wRVgx95x3yyG5B1F
        m9mtkjj5zrq8G7KbSfVjslpJr6Qab49r3yZh/7gISQ==
X-Google-Smtp-Source: ABdhPJyZzquwre+pYVHYp87LvqgSYqSMCpLuONQzj5RR6wgSoijqysjMjPU/d1+HrNnE2sU69dCeTVN4iRq0C4XuGoY=
X-Received: by 2002:a17:907:6d28:: with SMTP id sa40mr16885730ejc.201.1639068308655;
 Thu, 09 Dec 2021 08:45:08 -0800 (PST)
MIME-Version: 1.0
References: <20211118091955.3009900-1-alexander.stein@ew.tq-group.com>
 <20211118091955.3009900-5-alexander.stein@ew.tq-group.com>
 <CAMty3ZCQ+JDvojX0QiLEJLSA=J+kzi9kY1QE+dzf35fgO3T4aQ@mail.gmail.com> <YbIxGc8faqUQhUWP@pendragon.ideasonboard.com>
In-Reply-To: <YbIxGc8faqUQhUWP@pendragon.ideasonboard.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 9 Dec 2021 22:14:57 +0530
Message-ID: <CAMty3ZA+BwtGLhFM8gS5f_=j4JnMrvnqf01bTW4mbe0ddyiG-Q@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] drm/bridge: ti-sn65dsi83: Add vcc supply regulator support
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent,

On Thu, Dec 9, 2021 at 10:09 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Jagan,
>
> On Thu, Dec 09, 2021 at 12:34:49PM +0530, Jagan Teki wrote:
> > On Thu, Nov 18, 2021 at 2:50 PM Alexander Stein wrote:
> > >
> > > VCC needs to be enabled before releasing the enable GPIO.
> > >
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > ---
> > >  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 19 +++++++++++++++++++
> > >  1 file changed, 19 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > > index 065610edc37a..54d18e82ed74 100644
> > > --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > > +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> > > @@ -33,6 +33,7 @@
> > >  #include <linux/of_device.h>
> > >  #include <linux/of_graph.h>
> > >  #include <linux/regmap.h>
> > > +#include <linux/regulator/consumer.h>
> > >
> > >  #include <drm/drm_atomic_helper.h>
> > >  #include <drm/drm_bridge.h>
> > > @@ -143,6 +144,7 @@ struct sn65dsi83 {
> > >         struct mipi_dsi_device          *dsi;
> > >         struct drm_bridge               *panel_bridge;
> > >         struct gpio_desc                *enable_gpio;
> > > +       struct regulator                *vcc;
> > >         int                             dsi_lanes;
> > >         bool                            lvds_dual_link;
> > >         bool                            lvds_dual_link_even_odd_swap;
> > > @@ -337,6 +339,12 @@ static void sn65dsi83_atomic_enable(struct drm_bridge *bridge,
> > >         u16 val;
> > >         int ret;
> > >
> > > +       ret = regulator_enable(ctx->vcc);
> > > +       if (ret) {
> > > +               dev_err(ctx->dev, "Failed to enable vcc\n");
> > > +               return;
> > > +       }
> >
> > Better check the vcc and enable it since it is an optional one.
>
> Won't the regulator core create a dummy regulator if none is specified
> in DT ?

Agreed, thanks (Usually I do check to avoid NULL pointer if any).

Jagan.
