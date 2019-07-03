Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B35CC5DD95
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 06:55:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726490AbfGCEzL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 00:55:11 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:35241 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725785AbfGCEzL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 00:55:11 -0400
Received: by mail-io1-f66.google.com with SMTP id m24so1750578ioo.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 21:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Dz5HtnV173FQfBMfXXnX/xMaAQPeeA9atZJs94y2ZNE=;
        b=MaWsuh6TbgZ6Y1ytSmhgmMuRvwKpUnM2Lm3L/1hO4mFnab9W8gwVqGT3YU4K2mDQTK
         w6Gevp/LkJQV7G6+bQg4WOXb4/Mq9EAAc8nm5DTV9Fqsu3jYgzXoLA39sIRBDDY0ghwj
         yoF75Sok83b5uMpWvaeKmDFRkreXrtkWm3gNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Dz5HtnV173FQfBMfXXnX/xMaAQPeeA9atZJs94y2ZNE=;
        b=uIcNAsUPe+HV89jj7mQGHj7j8UQZL/wVaZF3Vt7py+My0XP5CSRU6tJPPIVjxAI8ZB
         RfSDmOn0ESnQMq1TuU8OKca3juhd1MUBd2awOwq6lSQnOyovbq6jKPoiEA2/X1sbob4L
         krcN7/XMyxTD4dhR/d0LUkhSqbaioHe7pWjvXPjjp9ccoS8lp1W4aqb5POuqgD/0eklA
         DFzghx8AdBFdNX6fYp3qtl+HeO/ODsx5rMcZGvWBxuAUonlpAeAamFTGpYzICVeWHtcn
         tWp2yRZR6s5Yje0Kxd45L8SMXiXO23QsjCUJ793VA3UMIL/iXKvI9uf70y5r1tNvdl4+
         tRZg==
X-Gm-Message-State: APjAAAVpXh1yXyDhWl8GbOoof/u51Ir4FmVCZHu1z1DVCzYXfKNsWpJD
        abIVYzhQE8V7HqShdHDFFOwoPdrb3v0=
X-Google-Smtp-Source: APXvYqy7L5M0qQybU2ZzUaRgpxvAo2XHoT+U/6EDFti0GgfgSraMW/i5e5+fapjLH0748FJbTuPQAg==
X-Received: by 2002:a02:4e05:: with SMTP id r5mr42082623jaa.27.1562129710661;
        Tue, 02 Jul 2019 21:55:10 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com. [209.85.166.48])
        by smtp.gmail.com with ESMTPSA id c14sm817499ioa.22.2019.07.02.21.55.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 21:55:08 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id r185so1705318iod.6
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 21:55:08 -0700 (PDT)
X-Received: by 2002:a5d:885a:: with SMTP id t26mr8802188ios.218.1562129708023;
 Tue, 02 Jul 2019 21:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190620182056.61552-1-dianders@chromium.org> <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
In-Reply-To: <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 2 Jul 2019 21:54:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UhNfhVG422=huthFSptoV4FXED=xPtArO2KkyNb1U3Xw@mail.gmail.com>
Message-ID: <CAD=FV=UhNfhVG422=huthFSptoV4FXED=xPtArO2KkyNb1U3Xw@mail.gmail.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators"
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 20, 2019 at 1:31 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Thu, Jun 20, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.
> >
> > This 100 ms mystery delay is not on downstream kernels and no longer
> > seems needed on upstream kernels either [1].  Presumably something in the
> > meantime has made things better.  A few possibilities for patches that
> > have landed in the meantime that could have made this better are
> > commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
> > proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
> > the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
> > ("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")
> >
> > Let's revert and get our 100 ms back.
> >
> > [1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
> >  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
> >  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
> >  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
> >  4 files changed, 4 deletions(-)
>
> Maybe wait before applying.  I've been running reboot tests now with
> this patch applied (among others) and with enough reboots I managed to
> see:
>
> [    5.682418] rockchip-dp ff970000.dp: eDP link training failed (-5)
>
> I'll see if I can confirm that it's this patch and why things are
> different compared to downstream.

OK, I finally got back to this and confirmed:

1. The above error is actually somewhat harmless.  The eDP failure
will be retried automatically despite the scary message.  Specifically
see the loop in analogix_dp_bridge_enable().  I confirmed that after
seeing the error the screen came up just fine (I looked at the screen
in two actual instances but I believe it's pretty much always fine).

2. I haven't seen any evidence that the eDP link training happens any
more often with this revert in place.  Specifically, I see the same
message in the logs (at what appears to be the same rate) with or
without this revert.

3. Probably the link-training failures here are the same ones we
debugged for PSR for rk3399-gru-kevin that we fixed by making the eDP
PCLK rate exactly 24 MHz.  See <https://crrev.com/c/433393> for
details.  On rk3399-gru-kevin it was super important to resolve the
root cause of these errors because we had PSR (which meant we were
constantly taking to the eDP controller).  On rk3288-veyron devices
with no PSR the retry should be a fine solution and it doesn't seem
like a good idea to fully rejigger our clock plan to fix the root
cause.


NOTE: I saw _one_ case on rk3288-veyron-minnie where the screen looked
wonky at bootup and I saw the eDP link training error in the logs.
That's what originally made me cautious.  I haven't been able to
reproduce this, but presumably I just got super unlucky in that one
case.  I've left devices rebooting all day at work and haven't seen
the wonky screen since then.


Summary: I think this revert is just fine.


-Doug
