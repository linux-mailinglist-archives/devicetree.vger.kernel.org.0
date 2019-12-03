Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B4D0410F7E0
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2019 07:38:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727093AbfLCGiT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Dec 2019 01:38:19 -0500
Received: from mail-io1-f68.google.com ([209.85.166.68]:38384 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726521AbfLCGiS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Dec 2019 01:38:18 -0500
Received: by mail-io1-f68.google.com with SMTP id u24so2445967iob.5
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2019 22:38:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+wpTQKnkngieuqXuzL7uZpLiKACy2LcoAuQquti9jps=;
        b=NbCUwlhamyMm8r7AOBEKPKTnKIR8a03HSnFaFm5T29JB6EoEHzTfUYuqeWVTovEJuR
         PEi7n0RtUBpm5MP+F4XmS8zG/MtaaUPC4wP/N8wkWP+6nC5rZS1IdlTcS+wAa/1hrZO1
         UZDjYdywaEr0Jq66vc3clKK8ZF6mQZ1KuGSP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+wpTQKnkngieuqXuzL7uZpLiKACy2LcoAuQquti9jps=;
        b=dUJBLzfxV4pVe+mowCLfS6yxhCZUWekkG3kXrUd/+KxT0nWMF6mp1vmKtdA9Zv7g5m
         CxWxlcWSrw9xhTKLQNkOq9nfyXBcylr5EHnp4SwLWAcpFSY3blD3is9IRHaBHtaMoGjV
         7QdLgjwcvT/ZgvpJu7abTQblyny3w33PjDORniUaeNCnzetdBBe1qSkSY5u1A4HsKL+L
         jPPtjZqadXuhtDpcjfHqK48wiCfzgiqWA6CZCSKxIutZJoznEoOb/1p+ESohwwb/lgwO
         hFk0SFtBtsJD0yMTz136OUC1OrCGrMrzjRYC4dG04Ad2kD/qN/mK9S6Bf0+fF9IqppYk
         tuBg==
X-Gm-Message-State: APjAAAUElHfGpGvV6J9GNuhw67Xm6NIxj8gedobYe0oKtWaAvIYAKC1J
        j5pGl8En6M0USGOtX2E+2IkJnVZ5WvroyMj+u4Wb3A==
X-Google-Smtp-Source: APXvYqzw5MRI9bLbpC8aBKtEMr/lv/4bW1UrRcpCmyT5f0lq7NP3QUXl7E1sr2Kqyin1ufYe3yt6t3462BRba831Hcg=
X-Received: by 2002:a5d:804e:: with SMTP id b14mr1170073ior.77.1575355097154;
 Mon, 02 Dec 2019 22:38:17 -0800 (PST)
MIME-Version: 1.0
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com> <20191028153427.pc3tnoz2d23filhx@hendrix>
 <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
 <20191029085401.gvqpwmmpyml75vis@hendrix> <CAMty3ZAWPZSHtAZDf_0Dpx588YGGv3pJX1cXMfkZus3+WF94cA@mail.gmail.com>
 <20191103173227.GF7001@gilmour> <CAMty3ZD5uxU=xb0z7PWaXzodYbWRJkP9HjGX-HZYFT4bwk0GOg@mail.gmail.com>
 <20191122181820.GQ4345@gilmour.lan> <CAMty3ZDePC=B-DgfCcjRhJTeciwZmSEU-c4u1=sN_Hs0RgbC7Q@mail.gmail.com>
 <20191128175134.kcgtylfo4ax6ifz7@gilmour.lan>
In-Reply-To: <20191128175134.kcgtylfo4ax6ifz7@gilmour.lan>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 3 Dec 2019 12:08:06 +0530
Message-ID: <CAMty3ZBBkAk3==9u9XS3utms8GZD-5wPKu1WSR3byh5h-tY8aw@mail.gmail.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        devicetree <devicetree@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 28, 2019 at 11:21 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Sat, Nov 23, 2019 at 01:20:21AM +0530, Jagan Teki wrote:
> > > > Please have a look at this snippet, I have used your second
> > > > suggestions. let me know if you have any comments?
> > > >
> > > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > > b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > > index 8fa90cfc2ac8..91c95e56d870 100644
> > > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > > @@ -1109,24 +1109,36 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> > > >          return PTR_ERR(dsi->regulator);
> > > >      }
> > > >
> > > > -    dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> > > > -                          &sun6i_dsi_regmap_config);
> > > > -    if (IS_ERR(dsi->regs)) {
> > > > -        dev_err(dev, "Couldn't create the DSI encoder regmap\n");
> > > > -        return PTR_ERR(dsi->regs);
> > > > -    }
> > > > -
> > > >      dsi->reset = devm_reset_control_get_shared(dev, NULL);
> > > >      if (IS_ERR(dsi->reset)) {
> > > >          dev_err(dev, "Couldn't get our reset line\n");
> > > >          return PTR_ERR(dsi->reset);
> > > >      }
> > > >
> > > > +    dsi->regs = regmap_init_mmio(dev, base, &sun6i_dsi_regmap_config);
> > >
> > > You should use the devm variant here
> >
> > Sure.
> >
> > >
> > > > +    if (IS_ERR(dsi->regs)) {
> > > > +        dev_err(dev, "Couldn't init regmap\n");
> > > > +        return PTR_ERR(dsi->regs);
> > > > +    }
> > > > +
> > > > +    dsi->bus_clk = devm_clk_get(dev, NULL);
> > >
> > > I guess you still need to pass 'bus' here?
> >
> > But the idea here is not to specify clock name explicitly to support
> > A64. otherwise A64 would fail as we are not specifying the clock-names
> > explicitly on dsi node.
>
> Right. But you have no guarantee that the bus clock is going to be the
> first one on the other SoCs either.
>
> What about something like that instead:
>
> char *clk_name = NULL;
> if (dsi->has_mod_clk)
>     clk_name = "bus";
>
> clk = devm_clk_get(dev, clk_name);
> if (IS_ERR(clk))
>     return PTR_ERR(clk));
>
> regmap_mmio_attach_clk(regmap, clk);

This makes sense, thanks for your input. I have tested in A33, A64.

>
> >
> > dsi: dsi@1ca0000 {
> >        compatible = "allwinner,sun50i-a64-mipi-dsi";
> >        reg = <0x01ca0000 0x1000>;
> >        interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> >        clocks = <&ccu CLK_BUS_MIPI_DSI>;
> >        resets = <&ccu RST_BUS_MIPI_DSI>;
> >       phys = <&dphy>;
> >       phy-names = "dphy";
> > .....
> > };
> >
> > >
> > > > +    if (IS_ERR(dsi->bus_clk)) {
> > > > +        dev_err(dev, "Couldn't get the DSI bus clock\n");
> > > > +        ret = PTR_ERR(dsi->bus_clk);
> > > > +        goto err_regmap;
> > > > +    } else {
> > > > +        printk("Jagan.. Got the BUS clock\n");
> > > > +        ret = regmap_mmio_attach_clk(dsi->regs, dsi->bus_clk);
> > > > +        if (ret)
> > > > +            goto err_bus_clk;
> > > > +    }
> > > > +
> > > >      if (dsi->variant->has_mod_clk) {
> > > >          dsi->mod_clk = devm_clk_get(dev, "mod");
> > > >          if (IS_ERR(dsi->mod_clk)) {
> > > >              dev_err(dev, "Couldn't get the DSI mod clock\n");
> > > > -            return PTR_ERR(dsi->mod_clk);
> > > > +            ret = PTR_ERR(dsi->mod_clk);
> > > > +            goto err_attach_clk;
> > > >          }
> > > >      }
> > > >
> > > > @@ -1167,6 +1179,14 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> > > >  err_unprotect_clk:
> > > >      if (dsi->variant->has_mod_clk)
> > > >          clk_rate_exclusive_put(dsi->mod_clk);
> > > > +err_attach_clk:
> > > > +    if (!IS_ERR(dsi->bus_clk))
> > > > +        regmap_mmio_detach_clk(dsi->regs);
> > > > +err_bus_clk:
> > > > +    if (!IS_ERR(dsi->bus_clk))
> > > > +        clk_put(dsi->bus_clk);
> > > > +err_regmap:
> > > > +    regmap_exit(dsi->regs);
> > > >      return ret;
> > > >  }
> > > >
> > > > @@ -1181,6 +1201,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
> > > >      if (dsi->variant->has_mod_clk)
> > > >          clk_rate_exclusive_put(dsi->mod_clk);
> > > >
> > > > +    if (!IS_ERR(dsi->bus_clk)) {
> > > > +        regmap_mmio_detach_clk(dsi->regs);
> > > > +        clk_put(dsi->bus_clk);
> > >
> > > This will trigger a warning, you put down the reference twice
> >
> > You mean regmap_mmio_detach_clk will put the clk?
>
> No, devm_clk_get will.

Got it. Will update and send v12.

Jagan.
