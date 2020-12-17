Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CCE22DCB52
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 04:35:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727779AbgLQDdM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Dec 2020 22:33:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727420AbgLQDdL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Dec 2020 22:33:11 -0500
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com [IPv6:2607:f8b0:4864:20::a2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D943C061794
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 19:32:31 -0800 (PST)
Received: by mail-vk1-xa2a.google.com with SMTP id d6so3671669vkb.13
        for <devicetree@vger.kernel.org>; Wed, 16 Dec 2020 19:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i0dXdbd/aDqH0L0akSfum/a82QDR0PNqAiGj7kNkxzY=;
        b=nmcNBLJn7rGIxREEdMgLbDzAcaa7yoZgZiYQqqww7eRc75zOlGn+rnl6cCy/C90Zyf
         Z8ra9u8iJ17Q1qheW2211VygZHh+5z6D8yI2utNQRkA+M51/KOzm5/aoQLiv/ZUgtC75
         9reRhxRbdLqRqW4uoEIZQHr1iW0a8m6I7M28Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i0dXdbd/aDqH0L0akSfum/a82QDR0PNqAiGj7kNkxzY=;
        b=GXctL2YaXPzeN7GnNsMmNQ5cwnAvJtRT99bnRKGs9GE1GZtxYIELX9FxRkv6FCxjn6
         ww7qS3wkyrFMkouC1hzfF+AlNozxDsBy2Wnzf27NzHrNAyEXtmEmeNmvRs2AKsmsLBiM
         7SRhFjvE6/WR2ig4nbNzPCDI8jpP8LFEFYoHln0BPjItbwdZOlYdsLv427Ux4SRZWiQp
         8J8a5rJYlLxlxcPWbm8P8LYDKSQ9+NgnczxCivf1HSa7xh+wLgWUOYmc0hw3OAap+Oth
         V2pKDT0+2whSIkEb0LcH6oRucu6QtMTRbMF1yESIZGLG6bAWZo4WhOqHeUBCEZ17vgZ2
         K8+w==
X-Gm-Message-State: AOAM531VNsBJzcFmsve7PC/Uc8/wHaZO10FvwqrPHanqGEE6trbFaj/4
        RJ9e9ukUjpvclMAaiBHhWBv91p1leztAre06fA/k9Q==
X-Google-Smtp-Source: ABdhPJxG8j8XJ1SqHErfbCzPG0T3l2CVDLcimchU9VMoiykTd1ToLEP3PofVT6brx3T5Nw9CV5lBN8DNQySE5dwozYU=
X-Received: by 2002:a1f:96cd:: with SMTP id y196mr37615948vkd.18.1608175950440;
 Wed, 16 Dec 2020 19:32:30 -0800 (PST)
MIME-Version: 1.0
References: <20201216115125.5886-1-chunfeng.yun@mediatek.com>
 <20201216115125.5886-2-chunfeng.yun@mediatek.com> <CANMq1KDBmuoBNeizm9+f1yJgqF9oMqU5k26KfZrSdjrPQm_LwA@mail.gmail.com>
 <1608171557.23328.53.camel@mhfsdcap03>
In-Reply-To: <1608171557.23328.53.camel@mhfsdcap03>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Thu, 17 Dec 2020 11:32:19 +0800
Message-ID: <CANMq1KA4L4PPRgHTmeisfSWu4qgjgNVFZRvxeuAOyq2_TimELA@mail.gmail.com>
Subject: Re: [PATCH 2/3] usb: xhci-mtk: fix UAS issue by XHCI_BROKEN_STREAMS quirk
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mathias Nyman <mathias.nyman@intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-usb@vger.kernel.org,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Ikjoon Jang <ikjn@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 17, 2020 at 10:19 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> On Wed, 2020-12-16 at 20:28 +0800, Nicolas Boichat wrote:
> > On Wed, Dec 16, 2020 at 7:53 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > >
> > > The 0.96 xHCI controller on some platforms does not support
> > > bulk stream even HCCPARAMS says supporting, due to MaxPSASize
> > > is set a non-zero default value by mistake, here use
> > > XHCI_BROKEN_STREAMS quirk to fix it.
> > >
> > > Fixes: 94a631d91ad3 ("usb: xhci-mtk: check hcc_params after adding primary hcd")
> > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > ---
> > >  drivers/usb/host/xhci-mtk.c | 7 ++++++-
> > >  drivers/usb/host/xhci-mtk.h | 1 +
> > >  2 files changed, 7 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > > index 8f321f39ab96..08dab974d847 100644
> > > --- a/drivers/usb/host/xhci-mtk.c
> > > +++ b/drivers/usb/host/xhci-mtk.c
> > > @@ -395,6 +395,9 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> > >         xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> > >         if (mtk->lpm_support)
> > >                 xhci->quirks |= XHCI_LPM_SUPPORT;
> > > +
> > > +       if (mtk->broken_streams)
> > > +               xhci->quirks |= XHCI_BROKEN_STREAMS;
> > >  }
> > >
> > >  /* called during probe() after chip reset completes */
> > > @@ -460,6 +463,8 @@ static int xhci_mtk_probe(struct platform_device *pdev)
> > >                 return ret;
> > >
> > >         mtk->lpm_support = of_property_read_bool(node, "usb3-lpm-capable");
> > > +       mtk->broken_streams =
> > > +               of_property_read_bool(node, "mediatek,broken_streams_quirk");
> >
> > Would it be better to add a data field to struct of_device_id
> > mtk_xhci_of_match, and enable this quirk on mediatek,mt8173-xhci only?
> This is the common issue for all SoCs (before 2016.06) with 0.96 xHCI
> when the controller don't support bulk stream. If enable this quirk only
> for mt8173, then for other SoCs, the compatible need include
> "mediatek,mt8173-xhci" in dts, this may be not flexible for some cases,
> e.g. a new SoC has the broken stream as mt8173, but also has another
> different quirk, the way you suggested will not handle it.

It can, we do this regularly for many other components. One example:
https://elixir.bootlin.com/linux/latest/source/drivers/i2c/busses/i2c-mt65xx.c#L402

> And I plan to remove "mediatek,mt8173-xhci" in mtk_xhci_of_match after
> converting the binding to YMAL.
>
> >
> > (IMHO usb3-lpm-capable detection should also be done in the same way)
> I prefer to provide a property for common issues, and use the way you
> suggested for the issue only happened at a specific SoC.

Understand, it's just different approaches, there seems to be
precedent (at least in this driver/binding) for using properties, so
I'll let the USB maintainers speak up ,-)

>
> Thank you
>
> >
> > Thanks,
> >
> > >         /* optional property, ignore the error if it does not exist */
> > >         of_property_read_u32(node, "mediatek,u3p-dis-msk",
> > >                              &mtk->u3p_dis_msk);
> > > @@ -546,7 +551,7 @@ static int xhci_mtk_probe(struct platform_device *pdev)
> > >         if (ret)
> > >                 goto put_usb3_hcd;
> > >
> > > -       if (HCC_MAX_PSA(xhci->hcc_params) >= 4)
> > > +       if (!mtk->broken_streams && HCC_MAX_PSA(xhci->hcc_params) >= 4)
> > >                 xhci->shared_hcd->can_do_streams = 1;
> > >
> > >         ret = usb_add_hcd(xhci->shared_hcd, irq, IRQF_SHARED);
> > > diff --git a/drivers/usb/host/xhci-mtk.h b/drivers/usb/host/xhci-mtk.h
> > > index a93cfe817904..86aa4978915e 100644
> > > --- a/drivers/usb/host/xhci-mtk.h
> > > +++ b/drivers/usb/host/xhci-mtk.h
> > > @@ -147,6 +147,7 @@ struct xhci_hcd_mtk {
> > >         struct phy **phys;
> > >         int num_phys;
> > >         bool lpm_support;
> > > +       bool broken_streams;
> > >         /* usb remote wakeup */
> > >         bool uwk_en;
> > >         struct regmap *uwk;
> > > --
> > > 2.18.0
>
