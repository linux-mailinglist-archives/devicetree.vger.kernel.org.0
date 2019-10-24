Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 79436E3330
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2019 14:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730285AbfJXM4t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Oct 2019 08:56:49 -0400
Received: from mail-io1-f67.google.com ([209.85.166.67]:40593 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730113AbfJXM4t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Oct 2019 08:56:49 -0400
Received: by mail-io1-f67.google.com with SMTP id p6so21100837iod.7
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2019 05:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aTdM6kx15igVuSSKMbiCTSzmlWnq1yiOzOY1SuHhFrs=;
        b=hbo6HBALmJDGv9jgxlTtf+xksm9OJfWjLr2jEs1YgJaKNaoOQZiQIwRBkCZXab9vC8
         xlZ7f1bHG9D+YTORvlGPIf0LAoOoY5uPWuaoiiz8LEammkRzU8H5R/4MLt5ZAOXKal79
         TECVYmuEMl7GwJJokwPwayW76Qjpo9wnLDenY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aTdM6kx15igVuSSKMbiCTSzmlWnq1yiOzOY1SuHhFrs=;
        b=AhUmq5B09QpYsKmT3Ao4vZ3EZfCwmKHb6eeD1hTjkbPPDaiEuT1jt+BjGAKUY3Boc1
         +gj8KFQVhEI4h08mmhs3RRbqy8Y+CM1UWblvvkkxJP8QDXEjlNDnCLpinU5Jsjsc2x6V
         /YZatJjC4cBPV/BRfi6fgyywO0tgy91JENWC0jk8uK5gjUrA4JjPMwhRUJVFfUjXwCGw
         e3nZ0J6f6tjiQMS6GjLtfxh76P9b1ZIoYrX7+1vxMMC/Lb20vT74kafYzxOeksIB3N2E
         JegEkC6OQTslXo303C3dTi1SbvhZvNU+nJjj1M7tPRS7QQCBHGk5eYe15K0EoedN2bEr
         oN4Q==
X-Gm-Message-State: APjAAAWC0thhdXdMvqT07FxL9DaXP8WD6+BI0e6G+iu3vynlD/lJay2e
        RDnb8jp5Uze/jWeY/PmHgr6j6m3RY4gBt862orzkLg==
X-Google-Smtp-Source: APXvYqzkszCGtKnl0Ho1P2Ch5cLL32TntiFQ+qXfuG+AJKZ9bQz72BttFsscY6YYlFZWJiYiZXLcIz32vRnBFLkhYy0=
X-Received: by 2002:a02:694e:: with SMTP id e75mr14609645jac.85.1571921807602;
 Thu, 24 Oct 2019 05:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191005141913.22020-1-jagan@amarulasolutions.com>
 <20191005141913.22020-6-jagan@amarulasolutions.com> <20191007105708.raxavxk4n7bvxh7x@gilmour>
 <CAMty3ZCiwOGgwbsjTHvEZhwHGhsgb6_FeBs9hHgLai9=rV2_HQ@mail.gmail.com>
 <20191016080306.44pmo3rfmtnkgosq@gilmour> <CAMty3ZCTE=W+TNRvdowec-eYB625j97uG8F3fzVMtRFsKsqFFQ@mail.gmail.com>
 <20191017095225.ntx647ivegaldlyf@gilmour>
In-Reply-To: <20191017095225.ntx647ivegaldlyf@gilmour>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 24 Oct 2019 18:26:36 +0530
Message-ID: <CAMty3ZDYcwJ4XMm45BLjXnvPXeu-rMAiN5v=CDhvuLsAm5tf=Q@mail.gmail.com>
Subject: Re: [PATCH v10 5/6] arm64: dts: allwinner: a64: Add MIPI DSI pipeline
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
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 17, 2019 at 3:22 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Wed, Oct 16, 2019 at 02:19:44PM +0530, Jagan Teki wrote:
> > On Wed, Oct 16, 2019 at 1:33 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Mon, Oct 14, 2019 at 05:37:50PM +0530, Jagan Teki wrote:
> > > > On Mon, Oct 7, 2019 at 4:27 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > > >
> > > > > On Sat, Oct 05, 2019 at 07:49:12PM +0530, Jagan Teki wrote:
> > > > > > Add MIPI DSI pipeline for Allwinner A64.
> > > > > >
> > > > > > - dsi node, with A64 compatible since it doesn't support
> > > > > >   DSI_SCLK gating unlike A33
> > > > > > - dphy node, with A64 compatible with A33 fallback since
> > > > > >   DPHY on A64 and A33 is similar
> > > > > > - finally, attach the dsi_in to tcon0 for complete MIPI DSI
> > > > > >
> > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++++
> > > > > >  1 file changed, 38 insertions(+)
> > > > > >
> > > > > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > index 69128a6dfc46..ad4170b8aee0 100644
> > > > > > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > > > > > @@ -382,6 +382,12 @@
> > > > > >                                       #address-cells = <1>;
> > > > > >                                       #size-cells = <0>;
> > > > > >                                       reg = <1>;
> > > > > > +
> > > > > > +                                     tcon0_out_dsi: endpoint@1 {
> > > > > > +                                             reg = <1>;
> > > > > > +                                             remote-endpoint = <&dsi_in_tcon0>;
> > > > > > +                                             allwinner,tcon-channel = <1>;
> > > > > > +                                     };
> > > > > >                               };
> > > > > >                       };
> > > > > >               };
> > > > > > @@ -1003,6 +1009,38 @@
> > > > > >                       status = "disabled";
> > > > > >               };
> > > > > >
> > > > > > +             dsi: dsi@1ca0000 {
> > > > > > +                     compatible = "allwinner,sun50i-a64-mipi-dsi";
> > > > > > +                     reg = <0x01ca0000 0x1000>;
> > > > > > +                     interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > > > > > +                     clocks = <&ccu CLK_BUS_MIPI_DSI>;
> > > > > > +                     clock-names = "bus";
> > > > >
> > > > > This won't validate with the bindings you have either here, since it
> > > > > still expects bus and mod.
> > > > >
> > > > > I guess in that cas, we can just drop clock-names, which will require
> > > > > a bit of work on the driver side as well.
> > > >
> > > > Okay.
> > > > mod clock is not required for a64, ie reason we have has_mod_clk quirk
> > > > patch. Adjust the clock-names: on dt-bindings would make sense here,
> > > > what do you think?
> > >
> > > I'm confused, what are you suggesting?
> >
> > Sorry for the confusion.
> >
> > The mod clock is not required for A64 and we have a patch for handling
> > mod clock using has_mod_clk quirk(on the series), indeed the mod clock
> > is available in A31 and not needed for A64. So, to satisfy this
> > requirement the clock-names on dt-bindings can update to make mod
> > clock-name is optional and bus clock is required.
>
> No, the bus clock name is not needed if there's only one clock.

Looks like we need "bus" clock required since the
devm_regmap_init_mmio_clk is created only if bus clock-names added in
dt.
