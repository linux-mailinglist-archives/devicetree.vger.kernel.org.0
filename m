Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76BA91288DE
	for <lists+devicetree@lfdr.de>; Sat, 21 Dec 2019 12:41:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726593AbfLULlN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Dec 2019 06:41:13 -0500
Received: from mail-il1-f196.google.com ([209.85.166.196]:43075 "EHLO
        mail-il1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726098AbfLULlN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Dec 2019 06:41:13 -0500
Received: by mail-il1-f196.google.com with SMTP id v69so10257334ili.10
        for <devicetree@vger.kernel.org>; Sat, 21 Dec 2019 03:41:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vNV02+2w/LuSpJZYsMjHcwC8GjFE9t6hiV5LOIUFGBk=;
        b=A5BO7X5DzlfaSnRuAGZyzntGC11UWR+MMEiO7Sp17mrIFsoqt883gjzd517WrM20vi
         iJFikLyXXR432ughgioGPECET9WZT2wKTwUVkZ/rYA1we8jb348G6O6Os1PvlK+ulG9H
         oRAnKFtkPSlkux55lpH2E2TCtgtXcEU1COIUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vNV02+2w/LuSpJZYsMjHcwC8GjFE9t6hiV5LOIUFGBk=;
        b=FzbmDrkblttBRGQRUN5s9Gn9PPGNnt/xSEvXkO1MSCTUP8gGs3EVkhStjQfgQqqJGq
         oMup8cT3FNFv9YC7AeHg4ElZr8oigrni8QhPqUwFu1UlUstaGZ9DPXNwNVNX7OYpnPcA
         gL2cvoA/QiQmcmehfCazyfKS1UzDXTfk2iUbetxCCIiu/boWFvbPV6zDtWE0NqkK84hT
         f4pMy5uOY5MNkHlnflsAwUBEVsKHfesDPfoVO9dCnCzZZVVfAOwNAC3A834x7oW0Y5PC
         O0o5Xjv6UV9H5kZaGNFo8FeMDP7BfQi6tl0Unvs3PnyIbl5ke63wW4yIRn6sE+ZexN8p
         UB3g==
X-Gm-Message-State: APjAAAV2wSw8uQqTMJ19bc6aYwYqkAOnXkZMyaZc3qkYPoCn86E0karY
        r/RLOHFpIDSbDC5hN4qU45vl7qqHkSXTN64whe4u7g==
X-Google-Smtp-Source: APXvYqz/R+VCq8E6MRf5DMa4CwxrLZijUguwUXScwgRA6YKgobbJy4dCRHwi8tMTCUrh4OCP94WsaQhcEvFaUtFg2Pk=
X-Received: by 2002:a92:7706:: with SMTP id s6mr16088743ilc.61.1576928471817;
 Sat, 21 Dec 2019 03:41:11 -0800 (PST)
MIME-Version: 1.0
References: <20191218191017.2895-1-jagan@amarulasolutions.com>
 <20191218191017.2895-5-jagan@amarulasolutions.com> <20191218220536.vwww45yctm5ye3vg@gilmour.lan>
In-Reply-To: <20191218220536.vwww45yctm5ye3vg@gilmour.lan>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Sat, 21 Dec 2019 17:11:00 +0530
Message-ID: <CAMty3ZDgnn0LyGVYmzQhTtg7JdiqH_cW_dZ=o2SA1NSF=i2ufg@mail.gmail.com>
Subject: Re: [PATCH v13 4/7] drm/sun4i: dsi: Handle bus clock via regmap_mmio_attach_clk
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Chen-Yu Tsai <wens@csie.org>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 19, 2019 at 3:35 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Thu, Dec 19, 2019 at 12:40:14AM +0530, Jagan Teki wrote:
> > regmap has special API to enable the controller bus clock while
> > initializing register space, and current driver is using
> > devm_regmap_init_mmio_clk which require to specify bus
> > clk_id argument as "bus"
> >
> > But, the usage of clocks are varies between different Allwinner
> > DSI controllers. Clocking in A33 would need bus and mod clocks
> > where as A64 would need only bus clock.
> >
> > Since A64 support only single bus clock, it is optional to
> > specify the clock-names on the controller device tree node.
> > So using NULL on clk_id would get the attached clock.
> >
> > To support clk_id as "bus" and "NULL" during clock enablement
> > between controllers, this patch add generic code to handle
> > the bus clock using regmap_mmio_attach_clk with associated
> > regmap APIs.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v13:
> > - update the changes since has_mod_clk is dropped in previous patch
> >
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 45 +++++++++++++++++++++-----
> >  1 file changed, 37 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > index 68b88a3dc4c5..de8955fbeb00 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > @@ -1081,6 +1081,7 @@ static const struct component_ops sun6i_dsi_ops = {
> >  static int sun6i_dsi_probe(struct platform_device *pdev)
> >  {
> >       struct device *dev = &pdev->dev;
> > +     const char *bus_clk_name = NULL;
> >       struct sun6i_dsi *dsi;
> >       struct resource *res;
> >       void __iomem *base;
> > @@ -1094,6 +1095,10 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >       dsi->host.ops = &sun6i_dsi_host_ops;
> >       dsi->host.dev = dev;
> >
> > +     if (of_device_is_compatible(dev->of_node,
> > +                                 "allwinner,sun6i-a31-mipi-dsi"))
> > +             bus_clk_name = "bus";
> > +
> >       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >       base = devm_ioremap_resource(dev, res);
> >       if (IS_ERR(base)) {
> > @@ -1107,25 +1112,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >               return PTR_ERR(dsi->regulator);
> >       }
> >
> > -     dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> > -                                           &sun6i_dsi_regmap_config);
> > -     if (IS_ERR(dsi->regs)) {
> > -             dev_err(dev, "Couldn't create the DSI encoder regmap\n");
> > -             return PTR_ERR(dsi->regs);
> > -     }
> > -
> >       dsi->reset = devm_reset_control_get_shared(dev, NULL);
> >       if (IS_ERR(dsi->reset)) {
> >               dev_err(dev, "Couldn't get our reset line\n");
> >               return PTR_ERR(dsi->reset);
> >       }
> >
> > +     dsi->regs = devm_regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);
> > +     if (IS_ERR(dsi->regs)) {
> > +             dev_err(dev, "Couldn't init regmap\n");
> > +             return PTR_ERR(dsi->regs);
> > +     }
> > +
> > +     dsi->bus_clk = devm_clk_get(dev, bus_clk_name);
> > +     if (IS_ERR(dsi->bus_clk)) {
> > +             dev_err(dev, "Couldn't get the DSI bus clock\n");
> > +             ret = PTR_ERR(dsi->bus_clk);
> > +             goto err_regmap;
> > +     } else {
> > +             ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
> > +             if (ret)
> > +                     goto err_bus_clk;
> > +     }
> > +
> >       if (of_device_is_compatible(dev->of_node,
> >                                   "allwinner,sun6i-a31-mipi-dsi")) {
> >               dsi->mod_clk = devm_clk_get(dev, "mod");
> >               if (IS_ERR(dsi->mod_clk)) {
> >                       dev_err(dev, "Couldn't get the DSI mod clock\n");
> > -                     return PTR_ERR(dsi->mod_clk);
> > +                     ret = PTR_ERR(dsi->mod_clk);
> > +                     goto err_attach_clk;
> >               }
> >       }
> >
> > @@ -1164,6 +1180,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >       pm_runtime_disable(dev);
> >  err_unprotect_clk:
> >       clk_rate_exclusive_put(dsi->mod_clk);
> > +err_attach_clk:
> > +     if (!IS_ERR(dsi->bus_clk))
> > +             regmap_mmio_detach_clk(dsi->regs);
> > +err_bus_clk:
> > +     if (!IS_ERR(dsi->bus_clk))
> > +             clk_put(dsi->bus_clk);
>
> You still have an unbalanced clk_get / clk_put here

You mean it is not needed right since devm_clk_get has release call
via devres_alloc? or the wrong position for clk_put?

>
> > +err_regmap:
> > +     regmap_exit(dsi->regs);
>
> That's not needed.

Yes. look like __devm_regmap_init has release call with regmap_exit.

Thanks for the comments, I will update these and send next version.
Let me know if you have any more comments?
