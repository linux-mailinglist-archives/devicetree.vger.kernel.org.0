Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AECBD5E675
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 16:22:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726490AbfGCOWk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 10:22:40 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:42145 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726255AbfGCOWj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 10:22:39 -0400
Received: by mail-io1-f65.google.com with SMTP id u19so5153358ior.9
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 07:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3jOjcCBZEWo1w1sLHMo+7YDCUkeYC1q2tao/STlCVFc=;
        b=gj1NqSMk5FsHkkWbt1vPKGA6H759JOiNTm55WzGDptuNznkuH8Cf70mK1tbIg4jUGs
         BJP2wSPCVmVas/t415+sHOmOta41zS2jYMqXZBhnvg/k7m9zP7t12JwNNZcJmykd3ppF
         FeiJhLCis6scWAIADX5Sn5ZZcEgMC26sy9NIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3jOjcCBZEWo1w1sLHMo+7YDCUkeYC1q2tao/STlCVFc=;
        b=ZLUS+aRrr6NyyadnMld0CPuvmjtCJhqyuza32H0rukTnmTmTPT9qk4NSbtWv4MKN+b
         +osPv4tLAWLxT/9l1G7fERvpLr24tJljCQPfOo8A9mPlQWMMdUWvTbKq/0cxTi/1KUU8
         nh7dpER9l6HSnFj6EGO/70X2Qzl8TCqR7iZvK+M9/gzV8FDH45bWEExUvXQ3za6VFXky
         qsVFKnpmZ7kAq1MoNGjiEC9JTAwkxXJR2e/X+HPY0++4oQaKZnSNmjtYJe62pSHXriqv
         yi217FTl51D9uP/QgNpGrPO5e18HyKAyyjYZ+jJme/xMR88i4SBk2K/Cy0oMoaXXrnol
         8BMw==
X-Gm-Message-State: APjAAAWrGH8i5kDO8AHMoVM+LS62g3Mm54AXf1meknjCAtrmcBYinAcJ
        V8Yb/O4b2inJUodlcNeE4guCHOvpMU+zaAzB7gxLIg==
X-Google-Smtp-Source: APXvYqz7dfwX/rO1C1CJlykOSigszl+TALdETbQAlr7homcQ7+eKR2HVUrZS/bcVykHb3jNfUNyum1SqZCpa6EsyOhM=
X-Received: by 2002:a05:6638:3d6:: with SMTP id r22mr4047585jaq.71.1562163759062;
 Wed, 03 Jul 2019 07:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190703124609.21435-1-jagan@amarulasolutions.com>
 <20190703124609.21435-2-jagan@amarulasolutions.com> <20190703132838.nhewz5wzsijl65s5@flea>
In-Reply-To: <20190703132838.nhewz5wzsijl65s5@flea>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 3 Jul 2019 19:52:27 +0530
Message-ID: <CAMty3ZDyx_RSkU=OndsvzS5reOzab0DBkrarSeHt+-gtsdyKuQ@mail.gmail.com>
Subject: Re: [PATCH 01/25] arm64: dts: allwinner: Switch A64 dts(i) to use
 SPDX identifier
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Chen-Yu Tsai <wens@csie.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 3, 2019 at 6:58 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Wed, Jul 03, 2019 at 06:15:45PM +0530, Jagan Teki wrote:
> > Adopt the SPDX license identifier headers to ease license
> > compliance management on Allwinner A64 dts(i) files.
> >
> > While the text specifies "of the GPL or the X11 license"
> > but the actual license text matches the MIT license as
> > specified at [0]
> >
> > [0] https://spdx.org/licenses/MIT.html
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 39 +------------------
> >  .../dts/allwinner/sun50i-a64-nanopi-a64.dts   | 39 +------------------
> >  .../dts/allwinner/sun50i-a64-olinuxino.dts    | 39 +------------------
> >  .../dts/allwinner/sun50i-a64-orangepi-win.dts | 39 +------------------
> >  .../dts/allwinner/sun50i-a64-pine64-plus.dts  | 39 +------------------
> >  .../boot/dts/allwinner/sun50i-a64-pine64.dts  | 39 +------------------
> >  .../allwinner/sun50i-a64-sopine-baseboard.dts | 39 +------------------
> >  .../boot/dts/allwinner/sun50i-a64-sopine.dtsi | 39 +------------------
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 39 +------------------
> >  9 files changed, 9 insertions(+), 342 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > index 208373efee49..efdd84c362b0 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
> > @@ -1,43 +1,6 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
>
> You say that this is a GPL2 only license
>
> >  /*
> >   * Copyright (c) 2016 ARM Ltd.
> > - *
> > - * This file is dual-licensed: you can use it either under the terms
> > - * of the GPL or the X11 license, at your option. Note that this dual
> > - * licensing only applies to this file, and not this project as a
> > - * whole.
> > - *
> > - *  a) This library is free software; you can redistribute it and/or
> > - *     modify it under the terms of the GNU General Public License as
> > - *     published by the Free Software Foundation; either version 2 of the
> > - *     License, or (at your option) any later version.
>
> While this is GPL2 or later.

Yes, this is where I was confused with compared to existing
architectures. It seems like it is a call from author of the file or
make GPL-2.0 for generic purpose [1], not really sure.

>
> Also, I'm not sure why we need 25 patches to do that. Can't you just
> send one (there's no even need to separate arm and arm64, since we
> will do only a single PR from now as opposed to what we were doing
> before).

Just to make a clear conversion possible with individual SoC + boards
files, I did based on existing arch's does. np, if require I can send
it in single patch.

[1] https://patchwork.kernel.org/patch/10963113/
