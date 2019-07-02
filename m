Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 87DB85DAC1
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 03:25:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727275AbfGCBZ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 21:25:57 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:33400 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726329AbfGCBZ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 21:25:57 -0400
Received: by mail-io1-f68.google.com with SMTP id u13so960022iop.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 18:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6suCIUcpnxYWLx0u7rAt8YHu7DyHRein/0Ku8MDeQrw=;
        b=MyF13COg8Z9CREi9V7uwtNZ+RQgUSogpyqwer+wxMaRNlPvmTJ3LJUiyv1bRH2HNg4
         UdgEbOWphL591zLtGdaR5I4Nw4e1exGSG3CgmWGSsfGiRRfTC+NEd9mUTlTTIUs2/NJT
         WoMG2zeqsWqlC36tyRgV6MVFaOJ16SDyDjBSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6suCIUcpnxYWLx0u7rAt8YHu7DyHRein/0Ku8MDeQrw=;
        b=b2BGh2odKVRAKMzu5yylIxFyITftsfbLS8tDRmH72gtRB9OYOa8wRKDKBUzbWSmevI
         JNEuChw99H8Nq9VfhRyOcVxkwX/3XWQWYIvP/kowJjmPdHGX7Ffbd0n/ybafuVFHrN2g
         FnGvpeHY4GqvWH3jk+kkqjmWEDie2QwqcPrjntRx67etrVCKelxUVyg5FZXiLbWgPBPO
         CHt/t9Rn84bsk1Z1/DMwGT7tKtLF3alyXp5CrOz8D0QdtB6eTTNuUlLCCa1tlUr0736e
         5ph5utWf9/W5Ge9LpWIuzjmxYPR1QAEmNl1Z1H8612mt6Ro9u/jcGMqwqZuhW/sybJpp
         Obow==
X-Gm-Message-State: APjAAAVjm4WypyKrkba5Kc9xMXoHqxFPEddulcttqgAuHqEpYLyNAhZO
        ajpAk4rQbFO7ulGO3L73ZvAH4EG0tXU=
X-Google-Smtp-Source: APXvYqx5JEWzQ2UvrlKxvGeWqIfB1W0aL296harWOsLlHl3Q8hH1RcuJ1Vt5RcC8hDSKgsrp1ijs0Q==
X-Received: by 2002:a5d:8e08:: with SMTP id e8mr5288386iod.139.1562098479898;
        Tue, 02 Jul 2019 13:14:39 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by smtp.gmail.com with ESMTPSA id f17sm14089072ioc.2.2019.07.02.13.14.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 13:14:38 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id m24so40209811ioo.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 13:14:37 -0700 (PDT)
X-Received: by 2002:a02:aa1d:: with SMTP id r29mr15652512jam.127.1562098477589;
 Tue, 02 Jul 2019 13:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190621211346.1324-1-ezequiel@collabora.com> <3c68bf286d8b75ac339df0eab43d276667e073c2.camel@collabora.com>
In-Reply-To: <3c68bf286d8b75ac339df0eab43d276667e073c2.camel@collabora.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 2 Jul 2019 13:14:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UK3bpyvvFQtsvUtWHun_bfxb25R0bLyg=WJz+yHz5kvg@mail.gmail.com>
Message-ID: <CAD=FV=UK3bpyvvFQtsvUtWHun_bfxb25R0bLyg=WJz+yHz5kvg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] RK3288 Gamma LUT
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Sandy Huang <hjc@rock-chips.com>, kernel@collabora.com,
        Sean Paul <seanpaul@chromium.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Ilia Mirkin <imirkin@alum.mit.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 2, 2019 at 4:26 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Hi Heiko,
>
> On Fri, 2019-06-21 at 18:13 -0300, Ezequiel Garcia wrote:
> > Let's support Gamma LUT configuration on RK3288 SoCs.
> >
> > In order to do so, this series adds a new and optional
> > address resource.
> >
> > A separate address resource is required because on this RK3288,
> > the LUT address is after the MMU address, which is requested
> > by the iommu driver. This prevents the DRM driver
> > from requesting an entire register space.
> >
> > The current implementation works for RGB 10-bit tables, as that
> > is what seems to work on RK3288.
> >
> > This has been tested on a Rock2 Square board, using
> > a hacked 'modetest' tool, with legacy and atomic APIs.
> >
> > Thanks,
> > Eze
> >
> > Changes from v1:
> > * drop explicit linear LUT after finding a proper
> >   way to disable gamma correction.
> > * avoid setting gamma is the CRTC is not active.
> > * s/int/unsigned int as suggested by Jacopo.
> > * only enable color management and set gamma size
> >   if gamma LUT is supported, suggested by Doug.
> > * drop the reg-names usage, and instead just use indexed reg
> >   specifiers, suggested by Doug.
> >
> > Changes from RFC:
> > * Request (an optional) address resource for the LUT.
> > * Add devicetree changes.
> > * Drop support for RK3399, which doesn't seem to work
> >   out of the box and needs more research.
> > * Support pass-thru setting when GAMMA_LUT is NULL.
> > * Add a check for the gamma size, as suggested by Ilia.
> > * Move gamma setting to atomic_commit_tail, as pointed
> >   out by Jacopo/Laurent, is the correct way.
> >
> > Ezequiel Garcia (3):
> >   dt-bindings: display: rockchip: document VOP gamma LUT address
> >   drm/rockchip: Add optional support for CRTC gamma LUT
> >   ARM: dts: rockchip: Add RK3288 VOP gamma LUT address
> >
> >  .../display/rockchip/rockchip-vop.txt         |   6 +-
> >  arch/arm/boot/dts/rk3288.dtsi                 |   4 +-
> >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |   3 +
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c   | 114 ++++++++++++++++++
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   7 ++
> >  drivers/gpu/drm/rockchip/rockchip_vop_reg.c   |   2 +
> >  6 files changed, 133 insertions(+), 3 deletions(-)

I will note that I can confirm that the "gamma_test" app present on
Chrome OS can be shown to work with this series, both on eDP and HDMI.
I see a nice shiny RGB pattern on the screen.  Thus:

Tested-by: Douglas Anderson <dianders@chromium.org>
