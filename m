Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80586F002
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 07:35:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725554AbfD3FfW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 01:35:22 -0400
Received: from mail-vk1-f194.google.com ([209.85.221.194]:44051 "EHLO
        mail-vk1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725446AbfD3FfW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Apr 2019 01:35:22 -0400
Received: by mail-vk1-f194.google.com with SMTP id q189so2822633vkq.11
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2019 22:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oI6/mbFrFRIlv6U0u6swyj6hDvHAkiQ0dv4jYaZhLCk=;
        b=ck+wpiOtoHFncK/l3p2502NKVY3mfQ215NIogmFrEWBa6w1fEQdMgG1MU88zbsZqih
         m9bKZLCFITPnSS3fJ0EsRU0OIV7/QON22ZmROKou6SXtgBzULdEg5LGSeko8kTvukeI3
         p+qusiDWOsdxykgPSZpQiwM5hGHYA5olAXU30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oI6/mbFrFRIlv6U0u6swyj6hDvHAkiQ0dv4jYaZhLCk=;
        b=e6B/pQukroipAKrVJJ9b262rQp4bVCQo5G/Q+EX5MwVwiv7jN59VVRtfd5mOzHc7QC
         mY2oEaVBMWN3Z0ABDQnIAcOyduQjZnD2jJeYirU9j/LnJkoDtz8iWtzSuLtwpIUTXM+h
         QlAZFmgpLO00PQ1Ws4z/tizkVvnUpF+eYnFxj4X2xL4Bsp7hDsJnNQlBzpkhKaKMzHIV
         Y77jwegBbMQfAy/XWixGgEPecw/E1pMM6cKD361FIzqzCHqj+1q/ghlJQ7DDTnWFCpO9
         ASH4pFe+mf7Yz26ipBk3urCSA48hc/z0i2xtKYH76AlSE7GPTXYyqm6r8zmtWmVu0/xu
         iuhQ==
X-Gm-Message-State: APjAAAUOKtsyC2Bx6Z6nurcHVnQoh9c4DDdwPALid3ctG826cyC8guUK
        FuutT+cZ7JRkCQONR+9oZsw6FX4VlmM=
X-Google-Smtp-Source: APXvYqzs/XS6/ih7U3e+yhKhrfKK5oqxrf5evJtztHbJQVCfpOdAKzM5bDLEE70tOw+yKGBNkG0AYA==
X-Received: by 2002:a1f:6d46:: with SMTP id i67mr21814234vkc.50.1556602521153;
        Mon, 29 Apr 2019 22:35:21 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id p44sm6063435uae.7.2019.04.29.22.35.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Apr 2019 22:35:21 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id p13so4327028uaa.11
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2019 22:35:20 -0700 (PDT)
X-Received: by 2002:ab0:2692:: with SMTP id t18mr1729807uao.106.1556602187963;
 Mon, 29 Apr 2019 22:29:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190416215351.242246-1-dianders@chromium.org>
 <20190416215351.242246-2-dianders@chromium.org> <20190430005357.GA13695@bogus>
In-Reply-To: <20190430005357.GA13695@bogus>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 29 Apr 2019 22:29:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V3_NcBHdg5A8LvGMoVd_eLN0q=pXo_3f2GCdi5u2GP-Q@mail.gmail.com>
Message-ID: <CAD=FV=V3_NcBHdg5A8LvGMoVd_eLN0q=pXo_3f2GCdi5u2GP-Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: dwc2: Document quirk to reset
 PHY upon wakeup
To:     Rob Herring <robh@kernel.org>
Cc:     Minas Harutyunyan <hminas@synopsys.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Felipe Balbi <felipe.balbi@linux.intel.com>,
        Alexandru M Stan <amstan@chromium.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-usb@vger.kernel.org, Randy Li <ayaka@soulik.info>,
        Matthias Kaehlcke <mka@chromium.org>,
        Ryan Case <ryandcase@chromium.org>,
        Julius Werner <jwerner@chromium.org>,
        Elaine Zhang <zhangqing@rock-chips.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Apr 29, 2019 at 5:54 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Apr 16, 2019 at 02:53:48PM -0700, Douglas Anderson wrote:
> > On Rockchip rk3288 there's a hardware quirk where we need to assert
> > the reset signal to the PHY when we get a remote wakeup on one of the
> > two ports.  Document this quirk in the bindings.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >
> > Changes in v2: None
> >
> >  Documentation/devicetree/bindings/usb/dwc2.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/dwc2.txt b/Documentation/devicetree/bindings/usb/dwc2.txt
> > index 6dc3c4a34483..f70f3aee4bfc 100644
> > --- a/Documentation/devicetree/bindings/usb/dwc2.txt
> > +++ b/Documentation/devicetree/bindings/usb/dwc2.txt
> > @@ -37,6 +37,8 @@ Refer to phy/phy-bindings.txt for generic phy consumer properties
> >  - g-rx-fifo-size: size of rx fifo size in gadget mode.
> >  - g-np-tx-fifo-size: size of non-periodic tx fifo size in gadget mode.
> >  - g-tx-fifo-size: size of periodic tx fifo per endpoint (except ep0) in gadget mode.
> > +- snps,reset-phy-on-wake: If present indicates that we need to reset the PHY when
> > +                          we detect a wakeup.  This is due to a hardware errata.
>
> Synopsys or Rockchip errata?
>
> Ideally, this should be implied by the controller or phy compatible.

I have no idea.  The errata was described to me by Rockchip but I
don't know if it's common to more than one board.

You're right that we could do it on the controller compatible, but we
have to be careful.  The two ports on rk3288 currently have the same
compatible string but the errata only applies to one of them.  ...so
I'd have to cue on not just the compatible string but also detect
whether we're on the "OTG" port of the "host only" port.  That's not
too hard, though since it is probe-able.

I'm happy to spin this but I'll wait to hear from Felipe.  This is
already in his testing tree, so presumably I should do a follow-up
patch.  ...but if he wants me to re-post I can do that too.


-Doug
