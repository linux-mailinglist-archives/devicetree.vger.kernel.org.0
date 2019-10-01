Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2694EC318B
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 12:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726190AbfJAKe5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 06:34:57 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:38146 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726109AbfJAKe5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 06:34:57 -0400
Received: by mail-wr1-f66.google.com with SMTP id w12so14841842wro.5
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 03:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2nnlLMd0aBTJcx0TGQUJ/OOnhcmE3H5ErK+mVqFID/o=;
        b=Z66BKWUBz/7pM2VRxk3KnGYg20Csj7AdSD9P0w9lQJpvKT+CLAzweqGDltfQrgmCx1
         aXrKqiMH9VmljnfZ2/d7SJRxMtRnMWbIM1AfyT+Ef28nin11VRwfZ5K5DqZmZSp0PI0U
         U/aWeYK3Yz5Hov7A+DzLuUPuzjc++sXzjDrt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2nnlLMd0aBTJcx0TGQUJ/OOnhcmE3H5ErK+mVqFID/o=;
        b=WMQsON107Snu0xdkgRxwGOG4X4EHG/EUChSt0xLAaFhHKcwXSQuoVdGn2MRZJqD7P9
         tlNPY37iHmeABOFFGKB+KiL3qclrDmAco6eb+Nqb3GEzJtT+scMCVbvJJAA850GD0mk+
         vbaLUmpnVYSvwWXcr8deZiDm4JAguOKMlvmlh0XcsePkvYszoplfB5T2AsXjmydUveYD
         4V5Gbw6vcpqU1L5gkeXlaa7hXuKSEE7Fz1fTx94jNiIACZrLd0hh7XYI2gTQho1wQWHc
         oswcNHdIOfOhF2zzL67wbT39Tyr2fqw6Hj0uvEO5CQ5A4MxhdWB0K0GZthwGDcP6s0vS
         CIgA==
X-Gm-Message-State: APjAAAUq48Xad95yVzue0WQZQNjPsBLtzOeJ5GC92MxutLLuQ2schj86
        h5IwUCfv0Py9ltyx9d/qWZn6amBAywnPZmy41mcfEA==
X-Google-Smtp-Source: APXvYqwvIetg8gzOczGiU42fCOntRO/negZdZdjjiCB49L1LeESZTdA7ERnkkCaV/E+aTgltRI3/vSfEgD0PqQEuxIQ=
X-Received: by 2002:adf:e909:: with SMTP id f9mr1653755wrm.129.1569926094373;
 Tue, 01 Oct 2019 03:34:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil> <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
In-Reply-To: <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
From:   Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date:   Tue, 1 Oct 2019 12:34:42 +0200
Message-ID: <CAOf5uwkXt7mD_OZFx+bmP6YVHQ6=yU4Lzz+u0hxy+6HUxiR1KQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
        Akash Gajjar <akash@openedev.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Da Xue <da@lessconfused.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

On Tue, Oct 1, 2019 at 12:26 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Hi Heiko,
>
> On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi Jagan,
> >
> > Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
> > > ROC-PC is not able to boot linux console if PWM2_d is
> > > unattached to any pinctrl logic.
> > >
> > > To be precise the linux boot hang with last logs as,
> > > ...
> > > .....
> > > [    0.003367] Console: colour dummy device 80x25
> > > [    0.003788] printk: console [tty0] enabled
> > > [    0.004178] printk: bootconsole [uart8250] disabled
> > >

The only sense is that is connected with
vdd_log: vdd-log {
compatible = "pwm-regulator";
pwms = <&pwm2 0 25000 1>;
regulator-name = "vdd_log";
regulator-min-microvolt = <800000>;
regulator-max-microvolt = <1100000>;
regulator-always-on;
regulator-boot-on;

/* for rockchip boot on */
rockchip,pwm_id= <2>;
rockchip,pwm_voltage = <1000000>;
};

I don't know how this in mailine is mapped

Michael

> > > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
> > > VDD_LOG. So, for normal working operations this needs to
> > > active and pull-down.
> > >
> > > This patch fix, by attaching pinctrl active and pull-down
> > > the pwm2.
> >
> > This looks highly dubious on first glance. The pwm subsystem nor
> > the Rockchip pwm driver do not do any pinctrl handling.
> >
> > So I don't really see where that "active" pinctrl state is supposed
> > to come from.
> >
> > Comparing with the pwm driver in the vendor tree I see that there
> > is such a state defined there. But that code there also looks strange
> > as that driver never again leaves this active state after entering it.
> >
> > Also for example all the Gru devices run with quite a number of pwm-
> > regulators without needing additional fiddling with the pwm itself, so
> > I don't really see why that should be different here.
>
> I deed, I was supposed to think the same. but the vendor kernel dts
> from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
> information other than this vensor information, ie one of the reason I
> have marked "Levin Du" who initially supported this board.
>
> One, think I have seen was this pinctrl active fixed the boot hang.
> any inputs from would be very helpful.
>
> Levin Du, any inputs?
>
> [1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184
>
>


-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
