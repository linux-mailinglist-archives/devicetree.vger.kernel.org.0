Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CA4A492E79
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 20:28:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348451AbiART2i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 14:28:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234118AbiART2i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jan 2022 14:28:38 -0500
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5069FC061574
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 11:28:38 -0800 (PST)
Received: by mail-il1-x132.google.com with SMTP id d14so153166ila.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 11:28:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GiscRwMgwHTCV2FFr3KtMrGAUo1JZf4vKySsfUfDm7s=;
        b=qCvWH2ZRpU6Z/3wjDsBhuUNqapmYfnSbFlgP/sWlAbqpzbwAyCechggIShNEa+encd
         W/g7eAwkHhXWBhDkdhI8jVH73nSTpsHJ7niChNQZWx7otZ4m/5Y9Y+t05JiHeUQaWK1w
         uQIdzxL5d0tBj/VOt26ETq/SEfL11oTBP+1ud6aJ2iCYoXxELJEZXYSbWb+AwLQbRL1N
         A5e5AZy+6uwJ8mJTSwYWhUP3S+GWxT1tETcZHUhZwDH24nmXImskdtAvwFjVWg0+cruR
         ZNIh0EQqmm8yjd1h7Ppv9i0OHrH+mwFcwOZFZZ4KN03ngtN/BVpnDbC5gL7cSBnuaoZe
         hUzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GiscRwMgwHTCV2FFr3KtMrGAUo1JZf4vKySsfUfDm7s=;
        b=BW0nIluFikJ8cL3+jEfF7oiDL8MtIStbXUa+mu1KAaF0VN1Slwe323aDqRpxiGTdnC
         OrcqJYIlalIdpZBTnWgmJEFd8hqekckjsyA9LpGVQq7NN+ImyofExOrj7s0Yp/VuBrRf
         ckD4b54GVjtVCQNOaeEifAZSD4Lljwi3iseTCIg4tjff5o36UsxFyksCej6fGsFVdy8B
         8CiYPXAegQ5M/XGvjEe7/QJnXiKncA2tNrw75yvbfIbqCGVfmrsenbg7//OE8jFDsSZt
         ptxRXliMXGCbjTiO6dGNACy8mJtuH2sRV720BMJsDnlSsAshKhWNd4QFx7egZebyY82u
         gKUA==
X-Gm-Message-State: AOAM530qm/c19x11wM/soxiE0W6MfCTsCmm2sKmTB+C3Kks018WPJQhz
        QCe73XLpPNiZmrJTsKaQM9IGEVnuL86xIwiwyrZpYA==
X-Google-Smtp-Source: ABdhPJzta8BFxU09fJQlnw45XYIldZqHPaHLrQXGJXTtVR2Ug8RisI3wMZ2NG51G39iruxLQ9TkEab+EHZWT8szf+hU=
X-Received: by 2002:a05:6e02:198b:: with SMTP id g11mr14356997ilf.27.1642534117751;
 Tue, 18 Jan 2022 11:28:37 -0800 (PST)
MIME-Version: 1.0
References: <20211109113239.93493-1-robert.marko@sartura.hr>
 <20211109113239.93493-3-robert.marko@sartura.hr> <CA+HBbNGH9ih5RovU9YHL91osFxDJbWw2Qk=ed30GGQvndNJPKw@mail.gmail.com>
 <33ab37f5b30252e41f3e0769c7702764a9e77d7f.camel@pengutronix.de>
 <CA+HBbNH5Hq7WC7PkpFt=hUsTRstP3KrNCsbWWy5QaZRFDvZDKA@mail.gmail.com>
 <YbL81TEMp8CA7Sam@google.com> <CA+HBbNGnB=zHOvn3gh_bAPr_3=74K0pyAcgHxz2QKKisqasyUw@mail.gmail.com>
In-Reply-To: <CA+HBbNGnB=zHOvn3gh_bAPr_3=74K0pyAcgHxz2QKKisqasyUw@mail.gmail.com>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Tue, 18 Jan 2022 20:28:27 +0100
Message-ID: <CA+HBbNHmwzSD7H0cuPzSyLAFs-sidUbABWYhZ9hK0c2PE2Ly=g@mail.gmail.com>
Subject: Re: [PATCH v9 3/6] dt-bindings: reset: Add Delta TN48M
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, skhan@linuxfoundation.org
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Michael Walle <michael@walle.cc>, Andrew Lunn <andrew@lunn.ch>,
        Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 12, 2022 at 6:29 PM Robert Marko <robert.marko@sartura.hr> wrot=
e:
>
> On Fri, Dec 10, 2021 at 8:08 AM Lee Jones <lee.jones@linaro.org> wrote:
> >
> > On Thu, 09 Dec 2021, Robert Marko wrote:
> >
> > > On Thu, Dec 9, 2021 at 10:40 AM Philipp Zabel <p.zabel@pengutronix.de=
> wrote:
> > > >
> > > > Hi Robert,
> > > >
> > > > On Wed, 2021-12-01 at 22:28 +0100, Robert Marko wrote:
> > > > > On Tue, Nov 9, 2021 at 12:32 PM Robert Marko <robert.marko@sartur=
a.hr> wrote:
> > > > > >
> > > > > > Add header for the Delta TN48M CPLD provided
> > > > > > resets.
> > > > > >
> > > > > > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > > > > > ---
> > > > > >  include/dt-bindings/reset/delta,tn48m-reset.h | 20 +++++++++++=
++++++++
> > > > > >  1 file changed, 20 insertions(+)
> > > > > >  create mode 100644 include/dt-bindings/reset/delta,tn48m-reset=
.h
> > > > > >
> > > > > > diff --git a/include/dt-bindings/reset/delta,tn48m-reset.h b/in=
clude/dt-bindings/reset/delta,tn48m-reset.h
> > > > > > new file mode 100644
> > > > > > index 000000000000..d4e9ed12de3e
> > > > > > --- /dev/null
> > > > > > +++ b/include/dt-bindings/reset/delta,tn48m-reset.h
> > > > > > @@ -0,0 +1,20 @@
> > > > > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > > > > +/*
> > > > > > + * Delta TN48M CPLD GPIO driver
> > > > > > + *
> > > > > > + * Copyright (C) 2021 Sartura Ltd.
> > > > > > + *
> > > > > > + * Author: Robert Marko <robert.marko@sartura.hr>
> > > > > > + */
> > > > > > +
> > > > > > +#ifndef _DT_BINDINGS_RESET_TN48M_H
> > > > > > +#define _DT_BINDINGS_RESET_TN48M_H
> > > > > > +
> > > > > > +#define CPU_88F7040_RESET      0
> > > > > > +#define CPU_88F6820_RESET      1
> > > > > > +#define MAC_98DX3265_RESET     2
> > > > > > +#define PHY_88E1680_RESET      3
> > > > > > +#define PHY_88E1512_RESET      4
> > > > > > +#define POE_RESET              5
> > > > > > +
> > > > > > +#endif /* _DT_BINDINGS_RESET_TN48M_H */
> > > > > >
> > > > >
> > > > > Does anybody have any comments on the patch as the reset driver g=
ot reviewed and
> > > > > the bindings have not?
> > > >
> > > > Not much to review here, I can't tell if the indices are correct.
> > > >
> > > > Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
> > > >
> > > > To be merged with the rest of the series. Or do you want me to pick=
 up
> > > > the reset parts individually? In that case you'd have to split out =
the
> > > > reset bindings into a separate patch.
> > >
> > > Thanks,
> > > It has to go with the rest of the series as it all depends on the MFD=
.
> > >
> > > We are just waiting for the MFD dt-bindings to be reviewed.
> >
> > We need Rob to review the set.  Then I'll happily take it.
>
> Hi,
>
> Rob, can you please review the dt-bindings?
> Everything else is ready to go.

Rob, can you please review the dt-bindings?

Regards,
Robert
>
> Regards,
> Robert
> >
> > --
> > Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
> > Senior Technical Lead - Developer Services
> > Linaro.org =E2=94=82 Open source software for Arm SoCs
> > Follow Linaro: Facebook | Twitter | Blog
>
>
>
> --
> Robert Marko
> Staff Embedded Linux Engineer
> Sartura Ltd.
> Lendavska ulica 16a
> 10000 Zagreb, Croatia
> Email: robert.marko@sartura.hr
> Web: www.sartura.hr



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
