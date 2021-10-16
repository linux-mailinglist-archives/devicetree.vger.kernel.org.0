Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8032A4302CB
	for <lists+devicetree@lfdr.de>; Sat, 16 Oct 2021 15:32:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240420AbhJPNeu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 09:34:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240323AbhJPNet (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 09:34:49 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 317A7C061764
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 06:32:41 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id e10so3304820plh.8
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 06:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1aK089TWp/IXNkLP6WIta2AieRuYEElzJdHSfX6P6V0=;
        b=j11j5Sz3aeN3l3r54wpgr31mpNhRezrntfXODgjVjdvmqrmA+HhDhHGd2V4dVR3OMi
         bPxTF8Gyx/Ar2EjnVkGw13NXYYA6I16jc8pNIwP+JC50DmFsLdcb7w+U7TOIwOWMLDK+
         WqIgczHQrdONYYOw4EVM/9JkRM8XtHyIu/hn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1aK089TWp/IXNkLP6WIta2AieRuYEElzJdHSfX6P6V0=;
        b=KowikxD5hjcsq6PhhYbzFZtjiEhUqAaRO/IRXiN8XHO2U/JnMNZxGvd4YzJ4RljbuA
         UPtB0tIizDzTty+iU8QqatsX0Sqvw8iEDyqG+G7U7WUbYkZIBXTvv1TDuCUTk9fDoyf6
         oxVLBleGyIkxzUINfaU67sZbU+pvga+KckbpfUH/8gpZ+SYHPAEtjIuq2yDmuuPQu2qD
         EV+wpr9AbznuHKt/XrAkislN4PurHvYULV8cdOQ7JTbeOl+ZM0sA1ekzgmbTjUK8uCCe
         rzZtWID98miqWBG6RoH0W/BdOgsL8bEt+GXeIOnHjE8j4qbXsXOAJh78fyiGLhVMun2o
         5z3g==
X-Gm-Message-State: AOAM533q9+yD4AEFoTibc80BJCrUWPmBQlsP9A+QuW/mifwytT+xQhaM
        OXXGTuKOvKD1z/0LFSZWphDhRfnDj8KtfR7/8eWNYQ==
X-Google-Smtp-Source: ABdhPJz7Y2eLz8NCsbsVPivZ2QzzpzNMDpySe00MJ6LzkK32V+DzxS/B7+EIZE9U3Zn0n6vN5CJfxEYHCOTHR4Gf6HQ=
X-Received: by 2002:a17:902:9887:b0:13f:7704:425f with SMTP id
 s7-20020a170902988700b0013f7704425fmr16829397plp.20.1634391160281; Sat, 16
 Oct 2021 06:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <20211016102232.202119-1-michael@amarulasolutions.com>
 <20211016102232.202119-6-michael@amarulasolutions.com> <YWrEqStMPYuzUoUn@ravnborg.org>
In-Reply-To: <YWrEqStMPYuzUoUn@ravnborg.org>
From:   Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date:   Sat, 16 Oct 2021 15:32:28 +0200
Message-ID: <CAOf5uwm0iiSNvDF9ambZPQ9O6OCkWWAobxXvKYd6ieDscnNXVw@mail.gmail.com>
Subject: Re: [PATCH 5/5] drm/bridge: dw-mipi-dsi: Fix dsi registration during
 drm probing
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        devicetree <devicetree@vger.kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam

On Sat, Oct 16, 2021 at 2:25 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Michael,
>
> I fail to follow the logic in this patch.
>
>
> On Sat, Oct 16, 2021 at 10:22:32AM +0000, Michael Trimarchi wrote:
> > The dsi registration is implemented in rockchip platform driver.
> > The attach can be called before the probe is terminated and therefore
> > we need to be sure that corresponding entry during attach is valid
> >
> > Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c   |  8 +++++++-
> >  drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 12 ++++++++----
> >  include/drm/bridge/dw_mipi_dsi.h                |  2 +-
> >  3 files changed, 16 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > index e44e18a0112a..44b211be15fc 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > @@ -362,8 +362,14 @@ static int dw_mipi_dsi_host_attach(struct mipi_dsi_host *host,
> >               dsi->device_found = true;
> >       }
> >
> > +     /*
> > +      * NOTE: the dsi registration is implemented in
> > +      * platform driver, that to say dsi would be exist after
> > +      * probe is terminated. The call is done before the end of probe
> > +      * so we need to pass the dsi to the platform driver.
> > +      */
> >       if (pdata->host_ops && pdata->host_ops->attach) {
> > -             ret = pdata->host_ops->attach(pdata->priv_data, device);
> > +             ret = pdata->host_ops->attach(pdata->priv_data, device, dsi);
> >               if (ret < 0)
> >                       return ret;
> >       }
> > diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> > index a2262bee5aa4..32ddc8642ec1 100644
> > --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> > @@ -997,7 +997,8 @@ static const struct component_ops dw_mipi_dsi_rockchip_ops = {
> >  };
> >
> >  static int dw_mipi_dsi_rockchip_host_attach(void *priv_data,
> > -                                         struct mipi_dsi_device *device)
> > +                                         struct mipi_dsi_device *device,
> > +                                         struct dw_mipi_dsi *dmd)
> >  {
> >       struct dw_mipi_dsi_rockchip *dsi = priv_data;
> >       struct device *second;
> > @@ -1005,6 +1006,8 @@ static int dw_mipi_dsi_rockchip_host_attach(void *priv_data,
> >
> >       mutex_lock(&dsi->usage_mutex);
> >
> > +     dsi->dmd = dmd;
> > +
> >       if (dsi->usage_mode != DW_DSI_USAGE_IDLE) {
> >               DRM_DEV_ERROR(dsi->dev, "dsi controller already in use\n");
> >               mutex_unlock(&dsi->usage_mutex);
> > @@ -1280,6 +1283,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
> >  {
> >       struct device *dev = &pdev->dev;
> >       struct device_node *np = dev->of_node;
> > +     struct dw_mipi_dsi *dmd;
> >       struct dw_mipi_dsi_rockchip *dsi;
> >       struct phy_provider *phy_provider;
> >       struct resource *res;
> > @@ -1391,9 +1395,9 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
> >       if (IS_ERR(phy_provider))
> >               return PTR_ERR(phy_provider);
> >
> > -     dsi->dmd = dw_mipi_dsi_probe(pdev, &dsi->pdata);
> > -     if (IS_ERR(dsi->dmd)) {
> > -             ret = PTR_ERR(dsi->dmd);
> > +     dmd = dw_mipi_dsi_probe(pdev, &dsi->pdata);
> > +     if (IS_ERR(dmd)) {
> > +             ret = PTR_ERR(dmd);
>
> The memory pointed to by dmd is allocated in dw_mipi_dsi_probe(), but
> the pointer is not saved here.
> We rely on the attach operation to save the dmd pointer.
>
>
> In other words - the attach operation must be called before we call
> dw_mipi_dsi_rockchip_remove(), which uses the dmd member.
>
> This all looks wrong to me - are we papering over some other issue

Ok, it's wrong. I was not expecting that call.Anyway this was my path
on linux-next

dw_mipi_dsi_rockchip_probe
dw_mipi_dsi_probe -->start call

dw_mipi_dsi_rockchip_host_attach <-- this was not able to use dmd

dw_mipi_dsi_probe -> exit from the call

Michael

> here?
>
>         Sam



-- 
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com
