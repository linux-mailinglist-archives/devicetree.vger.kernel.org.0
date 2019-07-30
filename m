Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 04B1C7B62F
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 01:21:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726645AbfG3XVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 19:21:37 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:40834 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726907AbfG3XVg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 19:21:36 -0400
Received: by mail-ot1-f66.google.com with SMTP id l15so10925581oth.7
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 16:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t68EXPEyPb2/r7j8LTsJ+u3l3tFbqRdeyuThoSQX0Z8=;
        b=uM+oBlrX9psFtPZuEZkbi0e4Vpn7VCy/YMTrHPulqmY/1qWEEVwhjuNGmHxf0E+HQb
         rrVW1W3yK4x96wQG6KFPEOMXHduMyfhAQI8JN0qpPDLRkrcCCIgVXsBuzLc5TUcz+K3T
         Xytm0P1ezA9fyvj74lY/B/scgzyuVwmiZgx6NTTkVY5m3nd5O9As83CCE5rfnmLc8C4D
         4fjPHIMupHeP0Dj5o3dD+/fXTIW3YSjXyaZYfi9rhJNLh6j1deJZ7RO0iWXIII1Mx7nE
         VhZwiJeSFCWbeKH88s58QktIT6+OC4rNZm5C8a9ZaLSu3WqAoKh7sybL/QwFkQM6e7tx
         UzTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t68EXPEyPb2/r7j8LTsJ+u3l3tFbqRdeyuThoSQX0Z8=;
        b=XIDJp0IeocdpQku/Rzp14899Z0Y6XoGoJX2JMP4vj1JwQZ0+BiFSfmy/9Nha+BwzmQ
         +HVDqk0p59BeBHbblfeDS12wqrwlydHQ6XpxeW9v2Jcv3M56y4JVsGa4gJVFPvvWR2Mo
         ytSqKNGg3LImY2owSJAPB9xcCZoxQySubk6nGqgkL6uGiO272JXOj+GaKKBye7DE8kuJ
         ynanaeWhbzjyPjiF5ryz4v/Xni5dtgSUNjCBV5EbqCIjhF7RA5p25EntXfP0ivbdHa1/
         20Z/LyQ3ruZ9y/zt2lahGFhR+ot1+OMrBu5s0tR5nRX7ByVYB9pxkvOxxV1ADnRG/h67
         DVKw==
X-Gm-Message-State: APjAAAWm+FJBmmMNbroP4nT4mVWkCFeb6R+221DGTugXb7FJcKqmc6EG
        7jqUAXfbDdO/K7heDw3sv1gmXvX9OcKDyuVJBWaUOA==
X-Google-Smtp-Source: APXvYqxF/lQBcl9VxeFdGQwyL2cwO0iPXqbd56cQNfFXEZQ5pknZKItQoFD9aLi9hff7bgWRRh9wTQkrYevQ0y5/0pA=
X-Received: by 2002:a9d:6201:: with SMTP id g1mr89652643otj.195.1564528895800;
 Tue, 30 Jul 2019 16:21:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190703011020.151615-1-saravanak@google.com> <20190703011020.151615-3-saravanak@google.com>
 <CAHLCerP81Eotae5s4-Qye77SSF6-BbqFhckvkTEQWBD9biwzbw@mail.gmail.com>
In-Reply-To: <CAHLCerP81Eotae5s4-Qye77SSF6-BbqFhckvkTEQWBD9biwzbw@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 30 Jul 2019 16:20:59 -0700
Message-ID: <CAGETcx-2vKLkr1Mcs-ujLdgOmztK655X2ybOnFqhupXe2xu+xg@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] OPP: Add support for bandwidth OPP tables
To:     Amit Kucheria <amit.kucheria@linaro.org>
Cc:     Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "Sweeney, Sean" <seansw@qti.qualcomm.com>,
        David Dai <daidavid1@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Android Kernel Team <kernel-team@android.com>,
        Linux PM list <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 30, 2019 at 3:57 AM Amit Kucheria <amit.kucheria@linaro.org> wrote:
>
> On Wed, Jul 3, 2019 at 6:40 AM Saravana Kannan <saravanak@google.com> wrote:
> >
> > Not all devices quantify their performance points in terms of frequency.
> > Devices like interconnects quantify their performance points in terms of
> > bandwidth. We need a way to represent these bandwidth levels in OPP. So,
> > add support for parsing bandwidth OPPs from DT.
> >
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  drivers/opp/of.c  | 34 ++++++++++++++++++++++++++++++++--
> >  drivers/opp/opp.h |  4 +++-
> >  2 files changed, 35 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/opp/of.c b/drivers/opp/of.c
> > index c10c782d15aa..54fa70ed2adc 100644
> > --- a/drivers/opp/of.c
> > +++ b/drivers/opp/of.c
> > @@ -552,6 +552,35 @@ void dev_pm_opp_of_remove_table(struct device *dev)
> >  }
> >  EXPORT_SYMBOL_GPL(dev_pm_opp_of_remove_table);
> >
> > +static int _read_opp_key(struct dev_pm_opp *new_opp, struct device_node *np)
> > +{
> > +       int ret;
> > +       u64 rate;
> > +       u32 bw;
> > +
> > +       ret = of_property_read_u64(np, "opp-hz", &rate);
> > +       if (!ret) {
> > +               /*
> > +                * Rate is defined as an unsigned long in clk API, and so
> > +                * casting explicitly to its type. Must be fixed once rate is 64
> > +                * bit guaranteed in clk API.
> > +                */
> > +               new_opp->rate = (unsigned long)rate;
> > +               return 0;
> > +       }
> > +
> > +       ret = of_property_read_u32(np, "opp-peak-KBps", &bw);
> > +       if (ret)
> > +               return ret;
> > +       new_opp->rate = (unsigned long) &bw;
> > +
> > +       ret = of_property_read_u32(np, "opp-avg-KBps", &bw);
> > +       if (!ret)
> > +               new_opp->avg_bw = (unsigned long) &bw;
> > +
> > +       return 0;
> > +}
> > +
> >  /**
> >   * _opp_add_static_v2() - Allocate static OPPs (As per 'v2' DT bindings)
> >   * @opp_table: OPP table
> > @@ -589,11 +618,12 @@ static struct dev_pm_opp *_opp_add_static_v2(struct opp_table *opp_table,
> >         if (!new_opp)
> >                 return ERR_PTR(-ENOMEM);
> >
> > -       ret = of_property_read_u64(np, "opp-hz", &rate);
> > +       ret = _read_opp_key(new_opp, np);
> >         if (ret < 0) {
> >                 /* "opp-hz" is optional for devices like power domains. */
> >                 if (!opp_table->is_genpd) {
> > -                       dev_err(dev, "%s: opp-hz not found\n", __func__);
> > +                       dev_err(dev, "%s: opp-hz or opp-peak-bw not found\n",
> > +                               __func__);
> >                         goto free_opp;
> >                 }
> >
> > diff --git a/drivers/opp/opp.h b/drivers/opp/opp.h
> > index 569b3525aa67..ead2cdafe957 100644
> > --- a/drivers/opp/opp.h
> > +++ b/drivers/opp/opp.h
> > @@ -59,7 +59,8 @@ extern struct list_head opp_tables;
> >   * @turbo:     true if turbo (boost) OPP
> >   * @suspend:   true if suspend OPP
> >   * @pstate: Device's power domain's performance state.
> > - * @rate:      Frequency in hertz
> > + * @rate:      Frequency in hertz OR Peak bandwidth in kilobytes per second
>
> rate is most often used for clk rates. Let us not overload this just
> to save one struct member. IMO, you should introduce a peak_bw member
> and then have an error check if the DT provides both rate and peak_bw
> during parsing.

This is not about saving space. It avoids having to rewrite a lot of
helper functions. If you want, I can rename this to "key" but I'm not
going to create a different field.

-Saravana
