Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37FCA2E29E3
	for <lists+devicetree@lfdr.de>; Fri, 25 Dec 2020 06:43:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725773AbgLYFmo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Dec 2020 00:42:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725770AbgLYFmn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Dec 2020 00:42:43 -0500
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 854FBC061575
        for <devicetree@vger.kernel.org>; Thu, 24 Dec 2020 21:42:03 -0800 (PST)
Received: by mail-io1-xd33.google.com with SMTP id i18so3463278ioa.1
        for <devicetree@vger.kernel.org>; Thu, 24 Dec 2020 21:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PlMtUb6LNC8P3gc+iXkKvKG83M1DexVAvEAzRVWxITY=;
        b=lHiKLepEmTVBKzVOqZMOdUO+bam5JUxzOlVGoxwouBh+Okd6afsSsgwbupNZJn6pmD
         r6SIgF65dhg16dirDrVlFdt1EirGiSiTEGyjAWG+K+KbUiy4gktKq7k7+q7VvVO2Wko5
         xbaaipAIIh5aWVy9h5KwTHqxyf+B5ynAyvERM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PlMtUb6LNC8P3gc+iXkKvKG83M1DexVAvEAzRVWxITY=;
        b=d50zelkJ2bksXp4U7HyrzeguAsOru980deeaBc1xAvIqFKKb/KizwkLHBmbBldXE2n
         k0CC4RPeGcutDowyZJIHfivLOyyjTuE5kOAzjqt5yk7CwMIXplWwX74J55Vrn4RUMK4M
         fH+sdf1vCq0xjw53d0zEHh+RvzNQB5R5aFj4H419/pbJb8AvZIBkDcpOML8mjypKTCn3
         bsaL1dTLm6fU7i+mLiefhDOtDqi/B2JcOYlzuykU/TpQNnf5w7d5zDRx3aFDeCFM9Tov
         Qb3Gk1ceL7S7TsYFDftJsTVMpSYFixmX1fVEUYEUWIA7ZUvoRClFJYJRcLUe9RcIvAbf
         4aTQ==
X-Gm-Message-State: AOAM531a9lBuW39gy8qxANAX/Pi2maIj6e1W1U7vBcOaJ1NpHzANuagI
        w09OMZOyFHSf0EJvq6AfI2YsRUit8eASXqktdbHVUQ==
X-Google-Smtp-Source: ABdhPJz/+cJcq6YomNXSEFT4DzD0QlJzfOCNj88HO/Tv8guFHYZNuH/MTTVlBZy2M/y+rEwpPOm/m29MIqwDXdhQTjU=
X-Received: by 2002:a6b:b74e:: with SMTP id h75mr27168103iof.0.1608874922640;
 Thu, 24 Dec 2020 21:42:02 -0800 (PST)
MIME-Version: 1.0
References: <20201123034652.3660584-1-hsinyi@chromium.org> <20201123034652.3660584-2-hsinyi@chromium.org>
 <CAJMQK-jrMmVXtwZ6XumbPf9P-FtFEm_QBP_yrn=PsHgnYBrV+g@mail.gmail.com>
In-Reply-To: <CAJMQK-jrMmVXtwZ6XumbPf9P-FtFEm_QBP_yrn=PsHgnYBrV+g@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 25 Dec 2020 13:41:36 +0800
Message-ID: <CAJMQK-iT1gzwYF6-F_mwJV5W5iPs9wEar83PMZFwva5ci5D72Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: anx7625: disable regulators when power off
To:     Xin Ji <xji@analogixsemi.com>, Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 9, 2020 at 12:43 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Mon, Nov 23, 2020 at 11:47 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > When suspending the driver, anx7625_power_standby() will be called to
> > turn off reset-gpios and enable-gpios. However, power supplies are not
> > disabled. To save power, the driver can get the power supply regulators
> > and turn off them in anx7625_power_standby().
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> Gentle ping on the patch
>

After some testing, the powering sequence has some issue and would
cause i2c failures. The powering sequence needs to be rechecked.

> > ---
> > Change:
> > v2: none
> > ---
> >  drivers/gpu/drm/bridge/analogix/anx7625.c | 25 +++++++++++++++++++++++
> >  drivers/gpu/drm/bridge/analogix/anx7625.h |  1 +
> >  2 files changed, 26 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > index 65cc05982f82..eb9c4cc2504a 100644
> > --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > @@ -11,6 +11,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/module.h>
> >  #include <linux/mutex.h>
> > +#include <linux/regulator/consumer.h>
> >  #include <linux/slab.h>
> >  #include <linux/types.h>
> >  #include <linux/workqueue.h>
> > @@ -875,12 +876,20 @@ static int sp_tx_edid_read(struct anx7625_data *ctx,
> >  static void anx7625_power_on(struct anx7625_data *ctx)
> >  {
> >         struct device *dev = &ctx->client->dev;
> > +       int ret;
> >
> >         if (!ctx->pdata.low_power_mode) {
> >                 DRM_DEV_DEBUG_DRIVER(dev, "not low power mode!\n");
> >                 return;
> >         }
> >
> > +       ret = regulator_bulk_enable(ARRAY_SIZE(ctx->pdata.supplies),
> > +                                   ctx->pdata.supplies);
> > +       if (ret < 0) {
> > +               DRM_DEV_DEBUG_DRIVER(dev, "cannot enable regulators %d\n", ret);
> > +               return;
> > +       }
> > +
> >         /* Power on pin enable */
> >         gpiod_set_value(ctx->pdata.gpio_p_on, 1);
> >         usleep_range(10000, 11000);
> > @@ -894,6 +903,7 @@ static void anx7625_power_on(struct anx7625_data *ctx)
> >  static void anx7625_power_standby(struct anx7625_data *ctx)
> >  {
> >         struct device *dev = &ctx->client->dev;
> > +       int ret;
> >
> >         if (!ctx->pdata.low_power_mode) {
> >                 DRM_DEV_DEBUG_DRIVER(dev, "not low power mode!\n");
> > @@ -904,6 +914,12 @@ static void anx7625_power_standby(struct anx7625_data *ctx)
> >         usleep_range(1000, 1100);
> >         gpiod_set_value(ctx->pdata.gpio_p_on, 0);
> >         usleep_range(1000, 1100);
> > +
> > +       ret = regulator_bulk_disable(ARRAY_SIZE(ctx->pdata.supplies),
> > +                                    ctx->pdata.supplies);
> > +       if (ret < 0)
> > +               DRM_DEV_DEBUG_DRIVER(dev, "cannot disable regulators %d\n", ret);
> > +
> >         DRM_DEV_DEBUG_DRIVER(dev, "power down\n");
> >  }
> >
> > @@ -1742,6 +1758,15 @@ static int anx7625_i2c_probe(struct i2c_client *client,
> >         platform->client = client;
> >         i2c_set_clientdata(client, platform);
> >
> > +       pdata->supplies[0].supply = "vdd10";
> > +       pdata->supplies[1].supply = "vdd18";
> > +       pdata->supplies[2].supply = "vdd33";
> > +       ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(pdata->supplies),
> > +                                     pdata->supplies);
> > +       if (ret) {
> > +               DRM_DEV_ERROR(dev, "fail to get power supplies: %d\n", ret);
> > +               return ret;
> > +       }
> >         anx7625_init_gpio(platform);
> >
> >         atomic_set(&platform->power_status, 0);
> > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.h b/drivers/gpu/drm/bridge/analogix/anx7625.h
> > index 193ad86c5450..e4a086b3a3d7 100644
> > --- a/drivers/gpu/drm/bridge/analogix/anx7625.h
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.h
> > @@ -350,6 +350,7 @@ struct s_edid_data {
> >  struct anx7625_platform_data {
> >         struct gpio_desc *gpio_p_on;
> >         struct gpio_desc *gpio_reset;
> > +       struct regulator_bulk_data supplies[3];
> >         struct drm_bridge *panel_bridge;
> >         int intp_irq;
> >         u32 low_power_mode;
> > --
> > 2.29.2.454.gaff20da3a2-goog
> >
