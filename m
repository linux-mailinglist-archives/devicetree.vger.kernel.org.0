Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC2846E5C8
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 10:44:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbhLIJrl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 04:47:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229496AbhLIJrk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 04:47:40 -0500
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com [IPv6:2607:f8b0:4864:20::d31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B998C061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 01:44:07 -0800 (PST)
Received: by mail-io1-xd31.google.com with SMTP id x10so5876541ioj.9
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 01:44:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c+IM1VGacNvdOaBXump0mFE18Id9qqJc8FVUp6M2y6I=;
        b=tHMGp3J2410kDfSQ/m+W5wjVWgysgp6f0p9H4j+pjsLl47wg7TrZf1dXMgt1RWG57V
         OgBBzKRBDdNxSTlaMSqR/D1PnG+DPeWrwUvqYvizJiAFye6+sdJr8/pLqvvDEv7reHco
         P5TVEgPeCXRwUxE2MFGdg736/4MusLZl3OFL4Fy6Pp8r+W2KNiXHnoFAtgh9+Y0PwZDH
         jt2glw2midaerGJ7iJcoT5ZH9Y6sUTJ3Ghg64jHoTTw0jwU/LqbbRmEiM2118KWAkDrV
         gy3shsc4J4SkMMhf0nTlctRhIPL14ayoz3g3e5YGc6w4pcr4j9yh1/7khGoFw5yoEe6B
         qfYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c+IM1VGacNvdOaBXump0mFE18Id9qqJc8FVUp6M2y6I=;
        b=rcNFSSMDclcw3PuAVJx8z9y8fIV7fTJBKVzixpGGrTrL9wR/+UQbx6bRhIrFYQxp3o
         NjwfXVTdfdHx8P0tFr7bX68hJ/woQTqKEU0egXC1zNPI44Wbe9cbHjJnmIwGJRynq53w
         8viJei3ce3AMKLqnjPfcvMjDDlKDDPNkLmgUdr7ZMYksoXPZ6C6y4ebDMl5j8DEb3lQe
         PyzZhMHz2LR97DPKgNk7q1h0FA8CKN4jfDBQCZBeXkr/Ukzhte4B0WJ++RVfT6/piRiP
         teteDnO7Dm7F4Bp/hYl3Xr2LPlpHUYCcjnzoLsTGi9SWsud9Zh34770dJK58I/9dajdY
         Yzkw==
X-Gm-Message-State: AOAM530XJk21Qwtp5aqH9hHEtfmYMaAL25e4O23hL8TOLK2xKkCCpYa8
        L+Ws7MttaHBjeUxg6sP6AhqNsJBaS8v6WrFYDRGD7w==
X-Google-Smtp-Source: ABdhPJyk+bzlkofhmtTYXwU89WtxHQ4cEva0PmdImvz/H5J2Ji9y4jK6Vos9l2NJETVlUAfK2M+2s2qmR0TZBxfdUwo=
X-Received: by 2002:a05:6638:1607:: with SMTP id x7mr7368635jas.27.1639043046867;
 Thu, 09 Dec 2021 01:44:06 -0800 (PST)
MIME-Version: 1.0
References: <20211109113239.93493-1-robert.marko@sartura.hr>
 <20211109113239.93493-3-robert.marko@sartura.hr> <CA+HBbNGH9ih5RovU9YHL91osFxDJbWw2Qk=ed30GGQvndNJPKw@mail.gmail.com>
 <33ab37f5b30252e41f3e0769c7702764a9e77d7f.camel@pengutronix.de>
In-Reply-To: <33ab37f5b30252e41f3e0769c7702764a9e77d7f.camel@pengutronix.de>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Thu, 9 Dec 2021 10:43:56 +0100
Message-ID: <CA+HBbNH5Hq7WC7PkpFt=hUsTRstP3KrNCsbWWy5QaZRFDvZDKA@mail.gmail.com>
Subject: Re: [PATCH v9 3/6] dt-bindings: reset: Add Delta TN48M
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Michael Walle <michael@walle.cc>, Andrew Lunn <andrew@lunn.ch>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Bruno Banelli <bruno.banelli@sartura.hr>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 9, 2021 at 10:40 AM Philipp Zabel <p.zabel@pengutronix.de> wrote:
>
> Hi Robert,
>
> On Wed, 2021-12-01 at 22:28 +0100, Robert Marko wrote:
> > On Tue, Nov 9, 2021 at 12:32 PM Robert Marko <robert.marko@sartura.hr> wrote:
> > >
> > > Add header for the Delta TN48M CPLD provided
> > > resets.
> > >
> > > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > > ---
> > >  include/dt-bindings/reset/delta,tn48m-reset.h | 20 +++++++++++++++++++
> > >  1 file changed, 20 insertions(+)
> > >  create mode 100644 include/dt-bindings/reset/delta,tn48m-reset.h
> > >
> > > diff --git a/include/dt-bindings/reset/delta,tn48m-reset.h b/include/dt-bindings/reset/delta,tn48m-reset.h
> > > new file mode 100644
> > > index 000000000000..d4e9ed12de3e
> > > --- /dev/null
> > > +++ b/include/dt-bindings/reset/delta,tn48m-reset.h
> > > @@ -0,0 +1,20 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > +/*
> > > + * Delta TN48M CPLD GPIO driver
> > > + *
> > > + * Copyright (C) 2021 Sartura Ltd.
> > > + *
> > > + * Author: Robert Marko <robert.marko@sartura.hr>
> > > + */
> > > +
> > > +#ifndef _DT_BINDINGS_RESET_TN48M_H
> > > +#define _DT_BINDINGS_RESET_TN48M_H
> > > +
> > > +#define CPU_88F7040_RESET      0
> > > +#define CPU_88F6820_RESET      1
> > > +#define MAC_98DX3265_RESET     2
> > > +#define PHY_88E1680_RESET      3
> > > +#define PHY_88E1512_RESET      4
> > > +#define POE_RESET              5
> > > +
> > > +#endif /* _DT_BINDINGS_RESET_TN48M_H */
> > > --
> > > 2.33.1
> > >
> >
> > Does anybody have any comments on the patch as the reset driver got reviewed and
> > the bindings have not?
>
> Not much to review here, I can't tell if the indices are correct.
>
> Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
>
> To be merged with the rest of the series. Or do you want me to pick up
> the reset parts individually? In that case you'd have to split out the
> reset bindings into a separate patch.

Thanks,
It has to go with the rest of the series as it all depends on the MFD.

We are just waiting for the MFD dt-bindings to be reviewed.

Regards,
Robert
>
>
> regards
> Philipp



-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
