Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85B9328DCFC
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 11:22:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731024AbgJNJVf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 05:21:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731010AbgJNJUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 05:20:40 -0400
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com [IPv6:2607:f8b0:4864:20::e44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D18B8C041E41
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 20:07:09 -0700 (PDT)
Received: by mail-vs1-xe44.google.com with SMTP id l6so1253742vsr.7
        for <devicetree@vger.kernel.org>; Tue, 13 Oct 2020 20:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/VspsiIK9WGEgWmx3VPfOzr6gUq8707awunHZRI7g+Q=;
        b=cvLyi1IV3Yd9Ab6BBpPkihXFqFVcxMH10kXKIYL/8WgURQfV6FuTUqvOyVq8LvP2ei
         NqZq13IkcKyUv3YwI7baIBlVpRlaL4yKy3oFzDF3l0ehrcc6hhotR2w4/BWR8mr4tGnu
         TZToqAlyMre5CFErC+95FpvEhQJUuG75l9qUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/VspsiIK9WGEgWmx3VPfOzr6gUq8707awunHZRI7g+Q=;
        b=XRxSngzVB5SykbcVOyXJfZu7u2R7euPxDExRPnS0klbDQeS5RVyGjWXK2tYrfrX/2f
         D/fc6IvXKev//iEtM7t2OG2nBEjm5e6aSnZki4id3ow1ka/88krhoWvNrnHOnwDQqAx9
         7YL66QFdHvaWxt7DQkbSfMrgkiYldkf5Fw7xZ1CYRMNnXnqlxoVgNd8hSVxIJizyVyC6
         R5qtrnWXNTsS4eveULgTK3OTgJmKcn2y4TOQoBUQJYHjSVuufD0IeaMHdP7dEFgi+3hP
         /Jon+aao0tZjZojL9BJPGN15XGHL8zt858LjJ1zS5wTfo+qJGYfDPGPvDuNRabfnefvM
         fQgQ==
X-Gm-Message-State: AOAM532awt4qr4QhbpgI4lFVe6Q88LRiU9Mc0GDOIAhoPe1DWrhf2h0+
        1KgJevlrljBArfFuP1vK8QDVU+1pBJnFOQ58skxqDQ==
X-Google-Smtp-Source: ABdhPJyeztC0cKlxpxJbcdpKGnjLokQ5Hbk3yut4wnAn+KbU58QE/bDjZToy72mqLJB3xoj//4U1Nx1Wmu2jQvyz1Ho=
X-Received: by 2002:a67:2f81:: with SMTP id v123mr2278664vsv.16.1602644828982;
 Tue, 13 Oct 2020 20:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <20201012124547.16649-1-wenbin.mei@mediatek.com>
 <20201012124547.16649-5-wenbin.mei@mediatek.com> <72ae1d89-fe31-4f50-15c0-29119d662ea1@gmail.com>
 <1602642530.11864.3.camel@mhfsdcap03>
In-Reply-To: <1602642530.11864.3.camel@mhfsdcap03>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Wed, 14 Oct 2020 11:06:58 +0800
Message-ID: <CANMq1KBe9u25yDxg8UtmOX4vhr8De=5-pJyMRkSBF4O=FpBN9A@mail.gmail.com>
Subject: Re: [PATCH v6 4/4] mmc: mediatek: Add subsys clock control for MT8192 msdc
To:     Wenbin Mei <wenbin.mei@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        linux-mmc@vger.kernel.org,
        Devicetree List <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 14, 2020 at 10:29 AM Wenbin Mei <wenbin.mei@mediatek.com> wrote:
>
> On Tue, 2020-10-13 at 17:10 +0200, Matthias Brugger wrote:
> >
> > On 12/10/2020 14:45, Wenbin Mei wrote:
> > > MT8192 msdc is an independent sub system, we need control more bus
> > > clocks for it.
> > > Add support for the additional subsys clocks to allow it to be
> > > configured appropriately.
> > >
> > > Signed-off-by: Wenbin Mei <wenbin.mei@mediatek.com>
> > > ---
> > >   drivers/mmc/host/mtk-sd.c | 74 +++++++++++++++++++++++++++++----------
> > >   1 file changed, 56 insertions(+), 18 deletions(-)
> > >
> > > diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> > > index a704745e5882..c7df7510f120 100644
> > > --- a/drivers/mmc/host/mtk-sd.c
> > > +++ b/drivers/mmc/host/mtk-sd.c
> > [...]
> > > +static int msdc_of_clock_parse(struct platform_device *pdev,
> > > +                          struct msdc_host *host)
> > > +{
> > > +   int ret;
> > > +
> > > +   host->src_clk = devm_clk_get(&pdev->dev, "source");
> > > +   if (IS_ERR(host->src_clk))
> > > +           return PTR_ERR(host->src_clk);
> > > +
> > > +   host->h_clk = devm_clk_get(&pdev->dev, "hclk");
> > > +   if (IS_ERR(host->h_clk))
> > > +           return PTR_ERR(host->h_clk);
> > > +
> > > +   host->bus_clk = devm_clk_get_optional(&pdev->dev, "bus_clk");
> > > +   if (IS_ERR(host->bus_clk))
> > > +           host->bus_clk = NULL;
> > > +
> > > +   /*source clock control gate is optional clock*/
> > > +   host->src_clk_cg = devm_clk_get_optional(&pdev->dev, "source_cg");
> > > +   if (IS_ERR(host->src_clk_cg))
> > > +           host->src_clk_cg = NULL;
> > > +
> > > +   host->sys_clk_cg = devm_clk_get_optional(&pdev->dev, "sys_cg");
> > > +   if (IS_ERR(host->sys_clk_cg))
> > > +           host->sys_clk_cg = NULL;
> > > +
> > > +   /* If present, always enable for this clock gate */
> > > +   clk_prepare_enable(host->sys_clk_cg);
> > > +
> > > +   host->bulk_clks[0].id = "pclk_cg";
> > > +   host->bulk_clks[1].id = "axi_cg";
> > > +   host->bulk_clks[2].id = "ahb_cg";
> >
> > That looks at least suspicious. The pointers of id point to some strings defined
> > in the function. Aren't they out of scope once msdc_of_clock_parse() has returned?
> >
> These constants are not in stack range, so they will not be lost.
> And I have confirmed it after msdc_of_clock_parse() has returned, these
> ids still exist.

Yes I guess the constants end up in .rodata (or similar section), but
I'm not sure if this is absolutely guaranteed.

In any case, this is a commonly used pattern, so I'd hope it's fine
(just a sample, there are more):
https://elixir.bootlin.com/linux/latest/source/drivers/pci/controller/dwc/pcie-qcom.c#L266
https://elixir.bootlin.com/linux/latest/source/sound/soc/codecs/wm8994.c#L4638
https://elixir.bootlin.com/linux/latest/source/drivers/mfd/madera-core.c#L467
https://elixir.bootlin.com/linux/latest/source/drivers/gpio/gpio-dwapb.c#L675

>
> > Regards,
> > Matthias
>
