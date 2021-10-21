Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E684436325
	for <lists+devicetree@lfdr.de>; Thu, 21 Oct 2021 15:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230425AbhJUNhN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Oct 2021 09:37:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230444AbhJUNhM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Oct 2021 09:37:12 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14783C0613B9
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 06:34:56 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id i6so140544lfv.9
        for <devicetree@vger.kernel.org>; Thu, 21 Oct 2021 06:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rpcuephe1rYIE9OBdAoi+7xiCTGAdmvwrb5c8NWeIjg=;
        b=ueaBt+9Qh3HeXK+S0kUYZX5r/01LLSms3O2sBibPN5ufY9JTnG0JjqmbPt43D2NzN/
         siLlnk6S33yv4RP5868l+KaoK1FPZdGbg6P6XZCORNjyiWANGp3zns1Lw+x6xYQiBvpd
         P5up2hCMFnGk7VMl55ukgGeIOo0JdqR4cDbAlmAKxuh/w4eVayk8e2QupSn7W2VHpKGA
         zpJhX9t90P+Dff3uKBaLwMwFaFrQHtmR+LwryumvAJNpQC+xPfmoBvxbhQ8RSIMge/mY
         SUwGqQeszaxk0z1g4mpyAkfwGyZUN5/LqL3DDI26t5jn7qDkOxr555TduTYWwx+J882E
         U70w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rpcuephe1rYIE9OBdAoi+7xiCTGAdmvwrb5c8NWeIjg=;
        b=N9fLtE0TUdr7L/YrM+Het3XsmcAdYx+SUG7RFbfhH4CYgdoXrIrQ6idNTmuYO7a/Xd
         qKDYzdXvEcn1BVi8Kyggd2b3FLboMGzhA3TnSVVlHsYXNbsQ+6sYb0q8vjU248OoySXX
         Sod1p2QR1EHe/UVh3zToF1nTZmIRja6q321Ki85MAxiasSZVyACty3e9xqApZJFHVujQ
         wfHtjHqj4Qz40kLK/BrSbRmLTUJlQeZH8gGpMe1CWsf3Nyq1JMU1BXsACtHPZwkQJ2S1
         wN+bW69Z+ZG1QOH5gt7tw2yCLcDfLckXW2IO7bi4BOv3itHMTjlfdKdnu4Iq1LlthZCI
         iD2w==
X-Gm-Message-State: AOAM532891yNUsebw/0IibIB8KLf+B4ak6nDqcIiucKT407j8Q5s+kYd
        pQAAB5ZW9Sm2iq9hYn/NhhwOfP02GSyhextInXQujw==
X-Google-Smtp-Source: ABdhPJyiFSUezbmllolnow65oLFnOePe0c4843Lv23V+bi0WDJ1VTXDqhOInmSbIc/HFvJ0IV5aJ7yj80epBbDjPtyo=
X-Received: by 2002:a05:6512:3254:: with SMTP id c20mr4528796lfr.254.1634823294390;
 Thu, 21 Oct 2021 06:34:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210517155458.1016707-1-sudeep.holla@arm.com>
 <CAPDyKFr=pf-0JbkiD6rkzeWwPZmDxEE_R=ovhzRUHfVjO9S0tw@mail.gmail.com>
 <20211014145555.uoi2hyoonrptrd5m@bogus> <CAPDyKFppiogQ5GLQJCqvYGfDQ80HrLLiv43o4H4WBW0PqyONNg@mail.gmail.com>
 <20211020102521.ag2w3fns5bmgb7zd@bogus>
In-Reply-To: <20211020102521.ag2w3fns5bmgb7zd@bogus>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 21 Oct 2021 15:34:17 +0200
Message-ID: <CAPDyKFrunb7sjhZnWVDPRYD_p0Dqr+NZyzX-OUrE00nCa2PmNA@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: dvfs: Add support for generic performance domains
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Hector Yuan <hector.yuan@mediatek.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 20 Oct 2021 at 12:25, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Fri, Oct 15, 2021 at 11:17:18AM +0200, Ulf Hansson wrote:
> > On Thu, 14 Oct 2021 at 16:56, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Thu, Oct 14, 2021 at 12:56:46PM +0200, Ulf Hansson wrote:
> > > > On Mon, 17 May 2021 at 18:14, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > >
> > > > > The CLKSCREW attack [0] exposed security vulnerabilities in energy management
> > > > > implementations where untrusted software had direct access to clock and
> > > > > voltage hardware controls. In this attack, the malicious software was able to
> > > > > place the platform into unsafe overclocked or undervolted configurations. Such
> > > > > configurations then enabled the injection of predictable faults to reveal
> > > > > secrets.
> > > > >
> > > > > Many Arm-based systems used to or still use voltage regulator and clock
> > > > > frameworks in the kernel. These frameworks allow callers to independently
> > > > > manipulate frequency and voltage settings. Such implementations can render
> > > > > systems susceptible to this form of attack.
> > > > >
> > > > > Attacks such as CLKSCREW are now being mitigated by not having direct and
> > > > > independent control of clock and voltage in the kernel and moving that
> > > > > control to a trusted entity, such as the SCP firmware or secure world
> > > > > firmware/software which are to perform sanity checking on the requested
> > > > > performance levels, thereby preventing any attempted malicious programming.
> > > > >
> > > > > With the advent of such an abstraction, there is a need to replace the
> > > > > generic clock and regulator bindings used by such devices with a generic
> > > > > performance domains bindings.
> > > > >
> > > > > [0] https://www.usenix.org/conference/usenixsecurity17/technical-sessions/presentation/tang
> > > > >
> > > > > Link: https://lore.kernel.org/r/20201116181356.804590-1-sudeep.holla@arm.com
> > > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> > > > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > >
> > > > Hi Sudeep/Viresh/Rob,
> > > >
> > > > I noticed this binding recently got accepted, so I guess I have missed
> > > > the opportunity to provide you with a few comments.
> > > >
> > >
> > > Sorry for not cc-ing you, wasn't aware of the below mentioned intersection,
> > > so assumed you are not one of the interested parties.
> > >
> > > > In any case, I would like to ask a few questions. In particular, am I
> > > > trying to understand why the power-domains bindings [1] can't be used
> > > > for this?
> > > >
> > >
> > > One reason I can think of is on some platforms, the power domains are
> > > completely controlled by the firmware and not exposed to the OSPM.
> > > This is mostly applicable for CPU devices(Platform co-ordinated PSCI)
> >
> > See below.
> >
> > >
> > > > The power-domains are capable of dealing with "performance" through
> > > > the "operating-points-v2" DT property, which maps to the generic OPP
> > > > bindings [2]. I wonder why that isn't sufficient here? Can you please
> > > > elaborate?
> > > >
> > >
> > > Even if the power domains are exposed to the OSPM, the OPPs can be
> > > firmware enumerated rather than DT. Not sure if it is possible to
> > > represent such systems in the above mentioned bindings. IIUC, the genpd
> > > uses clock and regulator apis to drive the performance, but these
> > > platforms have f/w interface to drive the OPPs(abstracted).
> >
> > Genpd doesn't operate on clock rates or voltage levels. Instead
> > "performance" is just an integer value for genpd. What a performance
> > index means, is genpd provider specific.
> >
>
> Understood.
>
> > In other words, it becomes the responsibility for the genpd provider
> > to map a performance state index to an OPP, for example. So far,
> > providers have used the generic OPP DT bindings to do this, but for
> > sure, we don't have to limit ourselves to this. So, if OPP tables can
> > be enumerated by FW, rather than specified in DT, that should
> > certainly be possible to support.
> >
> > BTW, these are genpd provider callbacks, that needs to be implemented
> > to let it control performance. Perhaps that helps to understand
> > things.
> >
> > int (*set_performance_state)(struct generic_pm_domain *genpd, unsigned
> > int state);
> > unsigned int (*opp_to_performance_state)(struct generic_pm_domain
> > *genpd, struct dev_pm_opp *opp);
> >
>
> Looks like this can be used for devices but what about CPUs ?

Yes, that should work. dev_pm_genpd_set_performance_state() takes a
struct device* as an in-parameter.

The struct device to use would typically be the one that you receive
from dev_pm_domain_attach_by_name(). We already do this for some other
cpufreq drivers, so this works fine.

>
> > >
> > > I am happy to know if there are ways to support such systems with the
> > > options you have mentioned above.
> >
> > As far as I understand, the "performance domains" DT bindings that
> > $subject patch introduces, allows us to group devices into domains, to
> > let them be "performance controlled" together. Right?
> >
>
> Or independently. It doesn't matter.
>
> > Unless I am missing something, it looks like power domains DT bindings
> > already offer this for us. Yes, certainly, the DT doc [1] needs an
> > updated description to better explain this, but other than that we
> > should be fine, don't you think?
> >
>
> As I mentioned about, the main question is what if firmware doesn't
> want to expose power domain details to OSPM like PC co-ordinated PSCI
> idle states while it wants to either group CPUs or leave them as
> individual in order to get per-CPU DVFS requests and aggregate them
> in the firmware. It does something similar for idle states already.

Yes, that can be modeled too.

Just let each CPU node point to its own separate power-domain and also
*don't* model the parent power-domain, instead leave this to be
managed by the FW.

Kind regards
Uffe
