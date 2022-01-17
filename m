Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DEE04905A6
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 11:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238496AbiAQKFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 05:05:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237081AbiAQKFV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 05:05:21 -0500
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com [IPv6:2607:f8b0:4864:20::d2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0537EC06161C
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 02:05:21 -0800 (PST)
Received: by mail-io1-xd2c.google.com with SMTP id w7so15678766ioj.5
        for <devicetree@vger.kernel.org>; Mon, 17 Jan 2022 02:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u6gDfYz5XK3BoOih3zuPlIJCbUaQgDeict/aTqmu/uM=;
        b=iSOe/tpAkwoCHPr7fqp3jd6szzLu83DiXOeN9DKlmNtzauUj0iVLlJ1T3qwaenz+pI
         ymL2xsF44k9NC5Yds8oqf5vBHUcLF5hHnw+jHM0CnV6QZih6a6rNVoYdnSLApaVADng9
         l75A0igiz9pk0tzYQEYjMlaydyWtcb19HYCxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u6gDfYz5XK3BoOih3zuPlIJCbUaQgDeict/aTqmu/uM=;
        b=Ckp3AGAzVlQJ7sdcw+1t8Cd7gO3BolmEmZmznHz1T4Kho9FnEZ/ENqX6ug9yCj2MSV
         JDNlbs34ig+CFkPQD2xvmudLEjQezUYpP2BVwXVR5K32pB5/nm5k7Hwfaoo50+u1IHBP
         DAHxbJo56SrDIE/ISiOSEnRz6XvlX6q9D/jf0dwn4x8BdCR3BO8rC9oHyHDuRV1bhSOx
         hYr6w8eCS6mHimCyVLASIuTi7N0VFQj5Z/jr+vJQenNIyt/7Vp41gZSHZalp57e5X3HU
         DWSllPCUv5Hc8MnDjtwuerX88ovUN382q9x2CGs5lKsZxudxGrTebBgV98RK4P8wYPIg
         nbMA==
X-Gm-Message-State: AOAM530M4ahkLuaionHdfmDl0tK6qlIOUeKXLP2lvvQXa/Rl3q37r8eC
        zBkp0RiD28lVYVNTVYEsnmZ+Pck25wUZPMNk+1la/Q==
X-Google-Smtp-Source: ABdhPJySbmSFcO/QHU4TTkKLetNVnNodmMnSpMBqDkpCFOLtn3BKxvUR7j8t3VwVAQpMLQm3SmlY/s9PU6KUjRhj2+0=
X-Received: by 2002:a05:6602:490:: with SMTP id y16mr9860884iov.162.1642413920295;
 Mon, 17 Jan 2022 02:05:20 -0800 (PST)
MIME-Version: 1.0
References: <20220113082918.2279347-1-hsinyi@chromium.org> <CAG3jFytu8VpopWYHvGiSYRW2bcX-wHSoYgQ42u84WBQKGrnfZQ@mail.gmail.com>
In-Reply-To: <CAG3jFytu8VpopWYHvGiSYRW2bcX-wHSoYgQ42u84WBQKGrnfZQ@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 17 Jan 2022 18:04:54 +0800
Message-ID: <CAJMQK-gOMeK+_-6COEsaTdMq3GUejVRuH-HfdvBFS+Q-wKaGkA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] drm/bridge: anx7625: Convert to use devm_kzalloc
To:     Robert Foss <robert.foss@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

hi Robert,

The second patch depends on "drm/bridge: anx7625: send DPCD command to
downstream" (https://patchwork.kernel.org/project/dri-devel/patch/1f36f8bf0a48fb2bba17bacec23700e58c1d407d.1641891874.git.xji@analogixsemi.com/).
But I'm waiting for Xin Ji's response for that patch.

Thanks

On Mon, Jan 17, 2022 at 5:40 PM Robert Foss <robert.foss@linaro.org> wrote:
>
> Hey Hsin-Yi,
>
>
> On Thu, 13 Jan 2022 at 09:29, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > Use devm_kzalloc instead of kzalloc and drop kfree(). Let the memory
> > handled by driver detach.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > Reviewed-by: Xin Ji <xji@analogixsemi.com>
> > ---
> > v2->v3: remove kfree() in anx7625_i2c_remove().
> > ---
> >  drivers/gpu/drm/bridge/analogix/anx7625.c | 10 +++-------
> >  1 file changed, 3 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > index 0b858c78abe8b6..d3661c78770a8f 100644
> > --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > @@ -2515,7 +2515,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
> >                 return -ENODEV;
> >         }
> >
> > -       platform = kzalloc(sizeof(*platform), GFP_KERNEL);
> > +       platform = devm_kzalloc(dev, sizeof(*platform), GFP_KERNEL);
> >         if (!platform) {
> >                 DRM_DEV_ERROR(dev, "fail to allocate driver data\n");
> >                 return -ENOMEM;
> > @@ -2527,7 +2527,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
> >         if (ret) {
> >                 if (ret != -EPROBE_DEFER)
> >                         DRM_DEV_ERROR(dev, "fail to parse DT : %d\n", ret);
> > -               goto free_platform;
> > +               return ret;
> >         }
> >
> >         platform->client = client;
> > @@ -2552,7 +2552,7 @@ static int anx7625_i2c_probe(struct i2c_client *client,
> >         if (!platform->hdcp_workqueue) {
> >                 dev_err(dev, "fail to create work queue\n");
> >                 ret = -ENOMEM;
> > -               goto free_platform;
> > +               return ret;
> >         }
> >
> >         platform->pdata.intp_irq = client->irq;
> > @@ -2637,9 +2637,6 @@ static int anx7625_i2c_probe(struct i2c_client *client,
> >         if (platform->hdcp_workqueue)
> >                 destroy_workqueue(platform->hdcp_workqueue);
> >
> > -free_platform:
> > -       kfree(platform);
> > -
> >         return ret;
> >  }
> >
> > @@ -2666,7 +2663,6 @@ static int anx7625_i2c_remove(struct i2c_client *client)
> >         if (platform->pdata.audio_en)
> >                 anx7625_unregister_audio(platform);
> >
> > -       kfree(platform);
> >         return 0;
> >  }
> >
>
> I just had a look at applying this series, but it fails to apply on
> drm-misc-next today.
>
> Could you send a v4 that applies cleanly, and I'll try to be quick
> about applying it.
>
>
> Rob.
