Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79DC0CEFC2
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2019 01:53:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729660AbfJGXxs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 19:53:48 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:54159 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729285AbfJGXxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 19:53:48 -0400
Received: by mail-wm1-f68.google.com with SMTP id i16so1175055wmd.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 16:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3Mn1LnJy3uGyTmsaBJVW9W+hDHZSF304DHp1ze76muE=;
        b=s8zULUZPK3ba1eRXod3nvamrb1SLAHardF0wnLYeYvyyT2ya70yNsbW0dqybGnwP9X
         pfqkzudINyre/xBswTYzGAdW9MaIBWM8RCEV9cIjfatj5sd5Ii0QPut9PuDIwtJa3GTZ
         MsPKXm2lNvPAM1uMif9Z32ML0CCmnFguhE57DpuujFa9I2fnhtWxQV8zPHtMH7PDhATi
         NZ1HRzBvinSl0mNOiaGEiB600xn09/BkWAtgLhHL4DkfvvlQnVu3LYP5Xc0KRjlK7k3b
         goJ036XFGox5/tWNcFIqpjXC/8ooK5LUUM46uPFE+YizcAKD02jWqn54uYDJ5GpsD2PY
         UyuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3Mn1LnJy3uGyTmsaBJVW9W+hDHZSF304DHp1ze76muE=;
        b=sZsPuw52tlPsUQn3t4y0J1B1oA2ZjxZ0JaTBpaRsJKlOoZX7lAMtWkeIoU2Cu6Zhmm
         kvEMU+PwgVwvkanqtF3hvLMEunARZXNSe68FV8pK1N30VDD4UVHa7haeyW02Odl/xlDL
         dTKcyzCgn/YwJ6ECNtcSeDxUVVYtVStkU3SHfwdubxezDRz1aLz7VoTMUp93ekGKESqo
         tK7HUOgdvkhFEnG+93xIebGP0VPN6bhaw7GfXFTfaMwj1KG8rPS4sH09/agn4zb+xqfT
         +8ZiY7zJg9Ddky4zZGwE2pBt6qUvM/SyQvTyTU6M+AYOZWwg9ezq6CixL1DrNrJ1pC9x
         RNag==
X-Gm-Message-State: APjAAAXBmond5EH1wTZliipt008Le1HaBAkIPGTzyEzp1GUN20iliBV9
        IKQ0+UrzwEX4kmojczG141v+kSOHMEPrG6d3EeUWXuEb
X-Google-Smtp-Source: APXvYqwdQdgZ50oxZF3dBfM7fgP+RPsKHF1tMNWkPmyF7r2+2pMe/Fq/ec5ophJs3Yf4zVv+MKWipirzHyMjhETTDiQ=
X-Received: by 2002:a7b:c8d9:: with SMTP id f25mr1340025wml.153.1570492426235;
 Mon, 07 Oct 2019 16:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20191007175553.66940-1-john.stultz@linaro.org>
 <20191007175553.66940-3-john.stultz@linaro.org> <20191007233904.GC9754@jackp-linux.qualcomm.com>
In-Reply-To: <20191007233904.GC9754@jackp-linux.qualcomm.com>
From:   John Stultz <john.stultz@linaro.org>
Date:   Mon, 7 Oct 2019 16:53:33 -0700
Message-ID: <CALAqxLWG0a_sRu08XL7q4MpD1ZfAEhVb3mKQ0FLAe8kjO2PV3A@mail.gmail.com>
Subject: Re: [RFC][PATCH v2 2/5] usb: dwc3: Execute GCTL Core Soft Reset while
 switch mdoe for Hisilicon Kirin Soc
To:     Jack Pham <jackp@codeaurora.org>
Cc:     Yu Chen <chenyu56@huawei.com>, Felipe Balbi <balbi@kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Linux USB List <linux-usb@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 7, 2019 at 4:39 PM Jack Pham <jackp@codeaurora.org> wrote:
>
> Hi John, Yu, Felipe,
>
> On Mon, Oct 07, 2019 at 05:55:50PM +0000, John Stultz wrote:
> > From: Yu Chen <chenyu56@huawei.com>
> >
> > A GCTL soft reset should be executed when switch mode for dwc3 core
> > of Hisilicon Kirin Soc.
> >
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Cc: Felipe Balbi <balbi@kernel.org>
> > Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Yu Chen <chenyu56@huawei.com>
> > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > Cc: linux-usb@vger.kernel.org
> > Cc: devicetree@vger.kernel.org
> > Signed-off-by: Yu Chen <chenyu56@huawei.com>
> > Signed-off-by: John Stultz <john.stultz@linaro.org>
> > ---
> >  drivers/usb/dwc3/core.c | 20 ++++++++++++++++++++
> >  drivers/usb/dwc3/core.h |  3 +++
> >  2 files changed, 23 insertions(+)
> >
> > diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> > index 999ce5e84d3c..440261432421 100644
> > --- a/drivers/usb/dwc3/core.c
> > +++ b/drivers/usb/dwc3/core.c
> > @@ -112,6 +112,19 @@ void dwc3_set_prtcap(struct dwc3 *dwc, u32 mode)
> >       dwc->current_dr_role = mode;
> >  }
> >
> > +static void dwc3_gctl_core_soft_reset(struct dwc3 *dwc)
> > +{
> > +     u32 reg;
> > +
> > +     reg = dwc3_readl(dwc->regs, DWC3_GCTL);
> > +     reg |= DWC3_GCTL_CORESOFTRESET;
> > +     dwc3_writel(dwc->regs, DWC3_GCTL, reg);
> > +
> > +     reg = dwc3_readl(dwc->regs, DWC3_GCTL);
> > +     reg &= ~DWC3_GCTL_CORESOFTRESET;
> > +     dwc3_writel(dwc->regs, DWC3_GCTL, reg);
> > +}
> > +
> >  static void __dwc3_set_mode(struct work_struct *work)
> >  {
> >       struct dwc3 *dwc = work_to_dwc(work);
> > @@ -156,6 +169,10 @@ static void __dwc3_set_mode(struct work_struct *work)
> >
> >       dwc3_set_prtcap(dwc, dwc->desired_dr_role);
> >
> > +     /* Execute a GCTL Core Soft Reset when switch mode */
> > +     if (dwc->gctl_reset_quirk)
> > +             dwc3_gctl_core_soft_reset(dwc);
> > +
>
> In fact it is mentioned in the Synopsys databook to perform a GCTL
> CoreSoftReset when changing the PrtCapDir between device & host modes.
> So I think this should apply generally without a quirk. Further, it
> states to do this *prior* to writing PrtCapDir, so should it go before
> dwc3_set_prtcap() instead?

Sounds good. I have no such access to the hardware docs, so I really
appreciate your input here!

I'll refactor it as you describe and remove the quirk flag.

thanks
-john
