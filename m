Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9360F3F6A38
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 22:08:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233723AbhHXUJl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 16:09:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233713AbhHXUJl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 16:09:41 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A96FC061764
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 13:08:56 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id n15so11961717ybm.12
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 13:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F5e1UqcNeXqqqIbmlY1mNsIR9q95Ez+3wFDl23ZZGpQ=;
        b=fv/JThfp9GEwMkn3x96ddxImdAStoVrVpBe3DWTUXk6sFz4QCo0OUFahDIkOLE3RPP
         gkpoUWwEXKelZvoGpnr7YHFnxdbGst9bePhlAJzGfkajcC3jfXw5XWDIdeej8K8U/erm
         DFiXWSOb0/0WX9msgvIdxU9V5mnkmCkO3fsDcmEpDgpyErWxMbE/XA92ibk4NuPrgN7b
         eaHCb7jGiQjmw/w2xWw01p6sAypRclXZS62q2oF4xPGCaykvZae3j9Sqb5OdfXH+PqAm
         q6gu/6FFjLG6FBkgmyzx6TO/kefEIEJ13zgmifhEqEt0DGJ2/+JDISYZ3L39g/wdFOaV
         YlJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F5e1UqcNeXqqqIbmlY1mNsIR9q95Ez+3wFDl23ZZGpQ=;
        b=EZI6BNqcWDxCRNCYfw8nBYTiD3c3Yigw/zNoWseoTfkudivY0UUddx26PeADSdBuTt
         UF4VyOEFUOn8ApJh4QoPPSqmS8nVfMu5M8C+1qpt6DtaTk2G1nQ1khJDFcAa90nh9iP3
         SOFiNFCLwtM/IQKhpoIZuGNjod45eTWgAtqbahaU9Sk2Y/nfIohLEJLoCwCK4BfCkTV5
         lAo89rXhy5g7rO7e/64ZlxCSW+uE8dFwSwOaOAd9ewI8Xcv+zHundp7KpxF5CbzAIaF1
         7vUjtjC/H58hHCpqyaFcs8ADBGP3V1edMsKC+krbc8cpCIOfWr2AdriKRo+6W2XSnThg
         YEGw==
X-Gm-Message-State: AOAM533NeSfO6X5sQALEmOhmwCC0tEqaP3zD1w2+Mfn90rWU1lWqG2ST
        DTNNmDEsQMyimegzU057WREGcszIsqJrti3M82Ph8g==
X-Google-Smtp-Source: ABdhPJwAmvFlzL4gm2+wLFJNEj2whFnulqk+m/QHIiUlkmaKbJTK9+lzObJYqW8RHttpf1rQDlni1pTfhEm/Ax+BeC0=
X-Received: by 2002:a25:d2c8:: with SMTP id j191mr7322236ybg.412.1629835735586;
 Tue, 24 Aug 2021 13:08:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210816074619.177383-1-wangkefeng.wang@huawei.com>
 <20210816074619.177383-4-wangkefeng.wang@huawei.com> <CAL_JsqLBddXVeP-t++wqPNp=xYF7tvEcnCbjFnK9CUBLK2+9JA@mail.gmail.com>
In-Reply-To: <CAL_JsqLBddXVeP-t++wqPNp=xYF7tvEcnCbjFnK9CUBLK2+9JA@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 24 Aug 2021 13:08:19 -0700
Message-ID: <CAGETcx8SY14rcd7g=Gdwmw7sUMb=jdEV+ffuNpg6btDoL1jmWw@mail.gmail.com>
Subject: Re: [PATCH 3/3] amba: Properly handle device probe without IRQ domain
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Kefeng Wang <wangkefeng.wang@huawei.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Ruizhe Lin <linruizhe@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 24, 2021 at 1:05 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> +Saravana
>
> Saravana mentioned to me there may be some issues with this one...
>
>
> On Mon, Aug 16, 2021 at 2:43 AM Kefeng Wang <wangkefeng.wang@huawei.com> wrote:
> >
> > of_amba_device_create() uses irq_of_parse_and_map() to translate
> > a DT interrupt specification into a Linux virtual interrupt number.
> >
> > But it doesn't properly handle the case where the interrupt controller
> > is not yet available, eg, when pl011 interrupt is connected to MBIGEN
> > interrupt controller, because the mbigen initialization is too late,
> > which will lead to no IRQ due to no IRQ domain found, log is shown below,
> >   "irq: no irq domain found for uart0 !"
> >
> > use of_irq_get() to return -EPROBE_DEFER as above, and in the function
> > amba_device_try_add()/amba_device_add(), it will properly handle in such
> > case, also return 0 in other fail cases to be consistent as before.
> >
> > Cc: Russell King <linux@armlinux.org.uk>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Frank Rowand <frowand.list@gmail.com>
> > Reported-by: Ruizhe Lin <linruizhe@huawei.com>
> > Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> > ---
> >  drivers/amba/bus.c    | 27 +++++++++++++++++++++++++++
> >  drivers/of/platform.c |  6 +-----
> >  2 files changed, 28 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> > index 36f2f42c8014..720aa6cdd402 100644
> > --- a/drivers/amba/bus.c
> > +++ b/drivers/amba/bus.c
> > @@ -19,6 +19,7 @@
> >  #include <linux/clk/clk-conf.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/reset.h>
> > +#include <linux/of_irq.h>
> >
> >  #include <asm/irq.h>
> >
> > @@ -371,12 +372,38 @@ static void amba_device_release(struct device *dev)
> >         kfree(d);
> >  }
> >
> > +static int of_amba_device_decode_irq(struct amba_device *dev)
> > +{
> > +       struct device_node *node = dev->dev.of_node;
> > +       int i, irq = 0;
> > +
> > +       if (IS_ENABLED(CONFIG_OF_IRQ) && node) {
> > +               /* Decode the IRQs and address ranges */
> > +               for (i = 0; i < AMBA_NR_IRQS; i++) {
> > +                       irq = of_irq_get(node, i);
> > +                       if (irq < 0) {
> > +                               if (irq == -EPROBE_DEFER)
> > +                                       return irq;
> > +                               irq = 0;
> > +                       }
> > +
> > +                       dev->irq[i] = irq;
> > +               }
> > +       }
> > +
> > +       return 0;
> > +}
> > +
> >  static int amba_device_try_add(struct amba_device *dev, struct resource *parent)
> >  {
> >         u32 size;
> >         void __iomem *tmp;
> >         int i, ret;
> >
> > +       ret = of_amba_device_decode_irq(dev);
> > +       if (ret)
> > +               goto err_out;
> > +

Similar to other resources the AMBA bus "gets" for the device, I think
this should be moved into amba_probe() and not here. There's no reason
to delay the addition of the device (and loading its module) because
the IRQ isn't ready yet.

-Saravana

> >         ret = request_resource(parent, &dev->res);
> >         if (ret)
> >                 goto err_out;
> > diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> > index 74afbb7a4f5e..32d5ff8df747 100644
> > --- a/drivers/of/platform.c
> > +++ b/drivers/of/platform.c
> > @@ -222,7 +222,7 @@ static struct amba_device *of_amba_device_create(struct device_node *node,
> >  {
> >         struct amba_device *dev;
> >         const void *prop;
> > -       int i, ret;
> > +       int ret;
> >
> >         pr_debug("Creating amba device %pOF\n", node);
> >
> > @@ -253,10 +253,6 @@ static struct amba_device *of_amba_device_create(struct device_node *node,
> >         if (prop)
> >                 dev->periphid = of_read_ulong(prop, 1);
> >
> > -       /* Decode the IRQs and address ranges */
> > -       for (i = 0; i < AMBA_NR_IRQS; i++)
> > -               dev->irq[i] = irq_of_parse_and_map(node, i);
> > -
> >         ret = of_address_to_resource(node, 0, &dev->res);
> >         if (ret) {
> >                 pr_err("amba: of_address_to_resource() failed (%d) for %pOF\n",
> > --
> > 2.26.2
> >
