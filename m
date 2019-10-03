Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7EB5BC98BF
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 09:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726116AbfJCHBn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 03:01:43 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:43351 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726048AbfJCHBn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 03:01:43 -0400
Received: by mail-io1-f65.google.com with SMTP id v2so3037206iob.10
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2019 00:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RaTSOsWkX0NwMXV+OVQ4GdiZGiGZm7DQLiGys1P/CwM=;
        b=AYvgtbDiQ21Bs+qVq2dGhqdNnCjEZtjI+RtycTGJZwDSFgTMwWE/ZDzIDSjDPI+4ko
         XIJkx4HVNDR3hj83PjWGh38PHwo7NJn/JnLE30yVfqtLZvxtTvU81/OWwr1NfwK1qwm8
         ZsKxbOXBdfpY3Evv0RggiUM8VFxlUP6MW24aY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RaTSOsWkX0NwMXV+OVQ4GdiZGiGZm7DQLiGys1P/CwM=;
        b=kOmdsG6P2/wFUV/8x2mR23FZdG3PsHumyS5TS+0NMKrFOUnQGCn0ECjxo5b4YwcUUU
         9KXoMEfkdPxZu7xPk4nXwZlzKVvefzssIyfrouYq29IVDaomp8Ld8u/89G0HRp69/cn3
         S6Qs4iWX5CLhJ+FiTHe7BCIYtKHZeE5XkIJ20TsRE+xVhMpTj+oVhyush1LfcwDnUNiV
         /mnVy+jM9CpSBPAqRbXQuGvAGVsOpIu2YcZJ+CPOzr1WQpv6sJQj1mVchfTFZgKp3jbt
         LqEVGrGfyNhzNVDodXfZNbwhe7TIp9KhtqHUYufxaMkap0JxAzditFUF5oK6wQqkAHpJ
         DuYg==
X-Gm-Message-State: APjAAAXAmlAFM0MNn1pXI0KxGOwtaJQj6wLCfnxkMn9fZx+536bHyRx7
        inmfDVgktT3VXc/q5/BeA6bNo92VW2A+fUM0sK4fBw==
X-Google-Smtp-Source: APXvYqxM2F/rF0fpKNncuUJT+YRkExY6NtSZFmZJqRNh7an4Mrr/PKtbKXdxgxjXj+qLiStrfZW997mYZqDUjGR51tg=
X-Received: by 2002:a6b:2b07:: with SMTP id r7mr7264826ior.173.1570086102574;
 Thu, 03 Oct 2019 00:01:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-6-jagan@amarulasolutions.com> <CAGb2v64RJeHXSDknPvH3RrDLqPzSvR-p2k2vA73Zt1xsOd5TSw@mail.gmail.com>
In-Reply-To: <CAGb2v64RJeHXSDknPvH3RrDLqPzSvR-p2k2vA73Zt1xsOd5TSw@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 3 Oct 2019 12:31:31 +0530
Message-ID: <CAMty3ZBmY+wZ4MZD1ipjnfhVy3gBRCqsAXGqF79mo+eaX=L2fA@mail.gmail.com>
Subject: Re: [PATCH v11 5/7] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator support
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 3, 2019 at 12:26 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Thu, Oct 3, 2019 at 2:46 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Allwinner MIPI DSI controllers are supplied with SoC
> > DSI power rails via VCC-DSI pin.
> >
> > Add support for this supply pin by adding voltage
> > regulator handling code to MIPI DSI driver.
> >
> > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 14 ++++++++++++++
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 ++
> >  2 files changed, 16 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > index 446dc56cc44b..fe9a3667f3a1 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > @@ -1110,6 +1110,12 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> >                 return PTR_ERR(base);
> >         }
> >
> > +       dsi->regulator = devm_regulator_get(dev, "vcc-dsi");
> > +       if (IS_ERR(dsi->regulator)) {
> > +               dev_err(dev, "Couldn't get VCC-DSI supply\n");
> > +               return PTR_ERR(dsi->regulator);
> > +       }
> > +
> >         dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> >                                               &sun6i_dsi_regmap_config);
> >         if (IS_ERR(dsi->regs)) {
> > @@ -1183,6 +1189,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
> >  static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
> >  {
> >         struct sun6i_dsi *dsi = dev_get_drvdata(dev);
> > +       int err;
> > +
> > +       err = regulator_enable(dsi->regulator);
> > +       if (err) {
> > +               dev_err(dsi->dev, "failed to enable VCC-DSI supply: %d\n", err);
> > +               return err;
> > +       }
> >
> >         reset_control_deassert(dsi->reset);
> >         clk_prepare_enable(dsi->mod_clk);
> > @@ -1215,6 +1228,7 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
> >
> >         clk_disable_unprepare(dsi->mod_clk);
> >         reset_control_assert(dsi->reset);
> > +       regulator_disable(dsi->regulator);
> >
> >         return 0;
> >  }
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > index 5c3ad5be0690..a01d44e9e461 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > @@ -12,6 +12,7 @@
> >  #include <drm/drm_connector.h>
> >  #include <drm/drm_encoder.h>
> >  #include <drm/drm_mipi_dsi.h>
> > +#include <linux/regulator/consumer.h>
>
> You don't need to include the header file since you are only
> including a pointer to the struct, and nothing else.

Yes, make sense. I will drop it.

>
> Otherwise,
>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>

thanks.
