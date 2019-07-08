Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7A3B662577
	for <lists+devicetree@lfdr.de>; Mon,  8 Jul 2019 17:58:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733011AbfGHP6w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Jul 2019 11:58:52 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:38269 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728581AbfGHP6w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Jul 2019 11:58:52 -0400
Received: by mail-io1-f68.google.com with SMTP id j6so36415532ioa.5
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 08:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=tMCiFsRLDuW6geBulr3EjyW7t17T9yVxinnBG4xjmyE=;
        b=OXbjFpWmkvpDp2y6eTwPwQeZzYHFJ41RVnrCR/bBnbn3zmrcjD44kQV6AOejyYbCET
         Xw1BD5zUF87gnasL9QHVthJWk8/FVdH2b4ELdIR34m4lfjlZPKmCl70qe5p2QRmHi8nA
         uP0SYDtYKhdyMH1ZypI3iFmOV4Bcv5ysoSlXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=tMCiFsRLDuW6geBulr3EjyW7t17T9yVxinnBG4xjmyE=;
        b=AqySyNlgnzE2CFFcFlpCyDY174fM62UbadPtsoEJ4laapcBRXB1TShAympSiI3OWPR
         LWyw05DO2Hh9LBrXJQK7P62TgbrDiSu3JtimFomhZVlScwEEBN/9iDDnPRwqafChx2hE
         JjmUwQw4Ah3JM6n7mxdcIc6uTqhBYQ3V2mqWFwH5rzaJOQ63PnteX29etJAHc7dIYdpH
         u1V1EGI5MOfr/zw8IzfEmrbgLNchNukeyUCFZfnrEYI1HfPrdIJDUAkQY1SVJGaASAya
         sqP2mGW4mfjBAJf7/t1w0IyGFKvz6+mai937A8kndX3M4e7diseHbDrhrNYZnMrkdJrI
         8Wkg==
X-Gm-Message-State: APjAAAXASauQ6llR72CdLowruW2Qf+u6iymZE79HbpNEVzenPWVT+yv0
        +HXwo44/g5SSl6Q2wVxv8Oe/uQGDgz0=
X-Google-Smtp-Source: APXvYqyDrj/RCfUTojIYRHW0hnIXL+wcABL3S6wFCzfs1M6GXbsw1E8D771EOXvMLFkTFhtCW3YpYg==
X-Received: by 2002:a02:9004:: with SMTP id w4mr22847601jaf.111.1562601531328;
        Mon, 08 Jul 2019 08:58:51 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com. [209.85.166.53])
        by smtp.gmail.com with ESMTPSA id m10sm17809843ioj.75.2019.07.08.08.58.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jul 2019 08:58:50 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id j5so17030870ioj.8
        for <devicetree@vger.kernel.org>; Mon, 08 Jul 2019 08:58:49 -0700 (PDT)
X-Received: by 2002:a5e:8f08:: with SMTP id c8mr20045788iok.52.1562601529525;
 Mon, 08 Jul 2019 08:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
 <20190628171342.GA2238@ravnborg.org> <2169143.hEFa8b2HQR@diego>
In-Reply-To: <2169143.hEFa8b2HQR@diego>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 8 Jul 2019 08:58:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U3Wj8vaZcQLmkfX6zgjVFEra+GrHMH3OCs5QQ_-tM4hw@mail.gmail.com>
Message-ID: <CAD=FV=U3Wj8vaZcQLmkfX6zgjVFEra+GrHMH3OCs5QQ_-tM4hw@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Brian Norris <briannorris@chromium.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Klaus Goger <klaus.goger@theobroma-systems.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
        Ezequiel Garcia <ezequiel@collabora.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,

On Sat, Jun 29, 2019 at 7:09 AM Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi Sam,
>
> Am Freitag, 28. Juni 2019, 19:13:42 CEST schrieb Sam Ravnborg:
> > Hi Doug.
> >
> > > Sam: Oh!  I hadn't noticed that you've been added as a panel
> > > maintainer in commit ef0db94f94a0 ("MAINTAINERS: Add Sam as reviewer
> > > for drm/panel").  Does that mean you are able to provide some advice
> > > for how to land this series?
> > Reviewer only, not maintainer....
> >
> > It is on my TODO list for the weekend to go through the patch set in
> > details and provide feedback. I have read them before, but I miss to do
> > a more detailed read through.
> >
> > But I cannot apply this unless Thierry or one of the DRM maintainers
> > ack it.
> > We simply need someone with a better general knowledge of DRM to ack it
> > than I have.
>
> So Thierry was able to look at the patches yesterday it seems and has Ack=
ed
> all the relevant ones. As a drm-misc-contributor I could also apply them
> myself, but now don't want to preempt any additional comments you might
> have ;-) . So I guess my question would be if you still want to do a revi=
ew
> or if I should apply them.

Hopefully you saw, but I responded to all of your review feedback.  In
the end, I thought it'd be OK to land the series as-is and I can fix
up nits in a follow-up series, though I'm waiting for your responses
to a couple questions first.

It would be ideal if you could confirm that you're OK with this plan
even if you don't have time to respond in detail to my emails yet.  I
think Heiko can land them all through the appropriate channels since
the patches have all the proper Acks.

Thanks!

-Doug
