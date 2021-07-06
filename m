Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 627653BC710
	for <lists+devicetree@lfdr.de>; Tue,  6 Jul 2021 09:24:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230225AbhGFH06 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jul 2021 03:26:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230203AbhGFH06 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jul 2021 03:26:58 -0400
Received: from mail-vk1-xa2b.google.com (mail-vk1-xa2b.google.com [IPv6:2607:f8b0:4864:20::a2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B9DEC06175F
        for <devicetree@vger.kernel.org>; Tue,  6 Jul 2021 00:24:20 -0700 (PDT)
Received: by mail-vk1-xa2b.google.com with SMTP id u24so345596vkn.9
        for <devicetree@vger.kernel.org>; Tue, 06 Jul 2021 00:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BXh3LzMCPP9L3ynAA0aGj0fxSvyTuYRtJFcDwUyQ7PM=;
        b=ZIphNHFNEE+seeFzTENuNO09jbaTUpM+qAatBWg9z0OBgpHgSDgYdxW/N8q56+yYjC
         uFfkpNkI5HG0/PJylwJ99SjyHOUMS7/0SNzBdfl+5gxYPRY5LZu9wDrC/DrNrxI8oHYk
         h9YxZ4nWUZcRKcPPdkO+43Z3EaDuswEjNlmgrDAZp2h6jPXSVfLLsnQxmaGSN5BxM8dS
         9dPZPCGZ4SHklmfPXQRNDi2qGu5GVV+icfOyhgKcIk3E/5LFYYekvWLRh/ylqotC+lSw
         m/oiXlzuHBBJIokhaULIVJnKw64+77TX5fY18Gx014ybnp4b/q7iwFHjLN7we8/jn6ER
         /t2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BXh3LzMCPP9L3ynAA0aGj0fxSvyTuYRtJFcDwUyQ7PM=;
        b=bHXNUOHqAwVUkgMDqybRh69tAMvBYCnXfNf6ZuoTWCA4J7/c4hA8dqBBW+8cYYuY+5
         /rvZkP5DkxyAP9kHwCga9jyYs7h5eP9Uek7cZ4D50ZJnQWKoJ2faqDx5zRt4E6PLzh75
         1564rXdUU3gUcKZ9kqhcNbHUFM4JQqQGmUjCeODb5pqWnry/7feCd0/tu998OdalnV01
         PhEVRIqyO55RwHsIfoSKHiKH8ZvatecNUPnguMN2jHHY8p/ivi3Q/nyWomhrl8SxdGdj
         ZkPu0TiJjjkQACVxZpttqmn5ZU4/bOxJMKZdWm5TlwK8I0fsjNSVh0koScCixbqkNCk0
         NCMQ==
X-Gm-Message-State: AOAM531/k0Xbj7BIq229CDxR0xlttmT0stdtSNSe9wrZcFQEziHBlefB
        YpROjSP2KV1Ib1VitkWwNnA/C6WH26WXUn9aKokAMw==
X-Google-Smtp-Source: ABdhPJyZeMUXryowDLyT5UVj1MHKnIf7P7os2mdRoNlHRDoSTvU/zN5waPK5F8cB2dqXSY/D/fBD96r1SW3yJTF2u+U=
X-Received: by 2002:a05:6122:588:: with SMTP id i8mr1747116vko.6.1625556259411;
 Tue, 06 Jul 2021 00:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210630133149.3204290-1-dmitry.baryshkov@linaro.org>
 <20210630133149.3204290-2-dmitry.baryshkov@linaro.org> <CAPDyKFpXD3rCmp53LFFYky_xQv9ucofvTezG5qWyDZt427chNQ@mail.gmail.com>
 <CAA8EJpob=TpXiJozac-5sKJzE71ddWRFDj7D2-F=W=a2mgKvxA@mail.gmail.com>
 <CAPDyKFq-vwMchLFb3JvK7B9ZQ9=z-TXzGHUij6CocTR+VmAOqQ@mail.gmail.com> <YN4W7vd3Yep+DX3N@yoga>
In-Reply-To: <YN4W7vd3Yep+DX3N@yoga>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 6 Jul 2021 09:23:42 +0200
Message-ID: <CAPDyKFrPyu6dT_+G3-ivPTLGS0G1kd9Tph_Pi2VP7ycEn3R5AQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: clock: qcom,dispcc-sm8x50: add mmcx
 power domain
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 1 Jul 2021 at 21:26, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>
> On Thu 01 Jul 11:58 CDT 2021, Ulf Hansson wrote:
>
> > On Thu, 1 Jul 2021 at 18:39, Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> > >
> > > On Thu, 1 Jul 2021 at 19:17, Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > >
> > > > On Wed, 30 Jun 2021 at 15:31, Dmitry Baryshkov
> > > > <dmitry.baryshkov@linaro.org> wrote:
> > > > >
> > > > > On sm8250 dispcc requires MMCX power domain to be powered up before
> > > > > clock controller's registers become available. For now sm8250 was using
> > > > > external regulator driven by the power domain to describe this
> > > > > relationship. Switch into specifying power-domain and required opp-state
> > > > > directly.
> > > > >
> > > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > > ---
> > > > >  .../bindings/clock/qcom,dispcc-sm8x50.yaml    | 19 +++++++++++++++++++
> > > > >  1 file changed, 19 insertions(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > > > > index 0cdf53f41f84..48d86fb34fa7 100644
> > > > > --- a/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > > > > +++ b/Documentation/devicetree/bindings/clock/qcom,dispcc-sm8x50.yaml
> > > > > @@ -55,6 +55,16 @@ properties:
> > > > >    reg:
> > > > >      maxItems: 1
> > > > >
> > > > > +  power-domains:
> > > > > +    description:
> > > > > +      A phandle and PM domain specifier for the MMCX power domain.
> > > > > +    maxItems: 1
> > > > > +
> > > >
> > > > Should you perhaps state that this is a parent domain? Or it isn't?
> > > >
> > > > Related to this and because this is a power domain provider, you
> > > > should probably reference the common power-domain bindings somewhere
> > > > here. Along the lines of this:
> > > >
> > > > - $ref: power-domain.yaml#
> > > >
> > > > As an example, you could have a look at
> > > > Documentation/devicetree/bindings/power/pd-samsung.yaml.
> > >
> > > I'll take a look.
> > >
> > > >
> > > > > +  required-opps:
> > > > > +    description:
> > > > > +      Performance state to use for MMCX to enable register access.
> > > > > +    maxItems: 1
> > > >
> > > > According to the previous discussions, I was under the assumption that
> > > > this property belongs to a consumer node rather than in the provider
> > > > node, no?
> > >
> > > It is both a consumer and a provider. It consumes SM8250_MMCX from
> > > rpmhpd and provides MMSC_GDSC.
> >
> > That sounds a bit weird to me.
> >
>
> dispcc is a hardware block powered by MMCX, so it is a consumer of it
> and needs to control MMCX.

Right, that sounds reasonable.

>
> > In my view and per the common power domain bindings (as pointed to
> > above): If a power domain provider is a consumer of another power
> > domain, that per definition means that there is a parent domain
> > specified.
> >
>
> And in addition to needing MMCX to access the dispcc, the exposed
> power-domain "MDSS_GDSC" is powered by the same MMCX and as such
> MDSS_GDSC should be a subdomain of MMCX.

What do you mean by "exposed"? It sounds like you are saying that
"MDSS_GDSC" is an artificial power domain, no?

If that's the case, more exactly, why is it like this?

My apologies if I bother you with details, but as a maintainer of
genpd, it is very useful to me to have the complete picture.

>
>
> But what I was trying to say yesterday is that the power-domain property
> should be sufficient and that we shouldn't need to drive MMCX to a
> particular performance_state in order to access the registers.
>
> Then as clients make votes on clock rates that requires higher
> performance_state, they would describe this in their opp-tables etc.
>
>
> But without any performance_state requests, pd->corner will in
> rpmhpd_power_on() be 0 and as such powering on the power-domain won't
> actually do anything. Similarly dev_pm_genpd_set_performance_state(dev,
> 0) on an active power-domain from rpmhpd will turn it off.

Yes, I noticed the patches you posted. Thanks for helping out here!

>
>
> So the reason why Dmitry is adding the required-opps to the binding is
> to get rpmhpd to actually tell the hardware to turn on the power domain.
> And I don't think this is in accordance with the framework's
> expectations.

I agree!

>
> Regards,
> Bjorn

Kind regards
Uffe
