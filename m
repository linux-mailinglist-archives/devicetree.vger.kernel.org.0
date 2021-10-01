Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51E4F41EF83
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 16:32:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231829AbhJAOee (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 10:34:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:60610 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231679AbhJAOed (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 1 Oct 2021 10:34:33 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id A3F066135E
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 14:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633098769;
        bh=U3QMlU2CpLxAIKRcVPEONV7rPfzDgsAT7HzMHgI13+A=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=C63ydtiVGcb6RGgeCWIkfP6CqUomDLqCUaDDjHO5eCsZluMIhifkFGkgNJdEO/utU
         eeRS6jaQC7QF6f3bRlizIklgJBBlDuen8w6s99gUo3qhviw8uwFm/H1aBWkn2ttnCT
         ahcyLXDQoBjXDX1+LpN8vwH7V9wHr3M5xFl5a1KV4WFbmAePr0mfXLxf7ys+KomWDm
         1/tWRMRv7vdvzTXCdh2lUkhfRGm3T9rQUdvZskJNVfDxdP4fBHDnY+aJMMGFf79kwn
         thGjLt2xFj3Xd3vvtIZ4+VR5ckiX6wMZ6RZ/z3XTbt/TR7nrI/TX/QSJ3ETni/bcgy
         IEVEVzPwRaIEQ==
Received: by mail-ed1-f41.google.com with SMTP id ba1so35565722edb.4
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 07:32:49 -0700 (PDT)
X-Gm-Message-State: AOAM530NY33PzuqnwGsHyXMD5u8Rj2ItPRmId6cmzCjk19mFhDQGXUw6
        B+avF3iBrhil5rMzf8cSLDWJP9np/MkT/3T+VA==
X-Google-Smtp-Source: ABdhPJxkXCPhZGmO4npsdMxj9Q/lxVQzFm4GA4MYBLFg8r1Drr//x5tY9li+SYkti34aIKSE5+xgG7KFzJeab+3+vF8=
X-Received: by 2002:a17:906:c10e:: with SMTP id do14mr6966322ejc.84.1633098766559;
 Fri, 01 Oct 2021 07:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <b4c0976e36a3a6e45b1042d4587e2eb9@codeaurora.org>
 <CAL_JsqLuZkL6XztT_Wid3R_ohU01zQwU5HywqpN7hAS4fUNa=g@mail.gmail.com> <bf523abba466af778c2e549806414578@codeaurora.org>
In-Reply-To: <bf523abba466af778c2e549806414578@codeaurora.org>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 1 Oct 2021 09:32:35 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJzBLmUTMFo_u3CGKEmNr2mdcXs-8mNGfF_A24_VFFxJg@mail.gmail.com>
Message-ID: <CAL_JsqJzBLmUTMFo_u3CGKEmNr2mdcXs-8mNGfF_A24_VFFxJg@mail.gmail.com>
Subject: Re: viability of dt-schema long-term
To:     mturney@codeaurora.org
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 29, 2021 at 7:08 PM <mturney@codeaurora.org> wrote:
>
> [sending to you directly because I am no longer on kernel list and you
> respond to the dtschema queries anyway, if you prefer I will re-join
> kernel list and re-send to whole list]
>
> Reviving this thread now that we have some experience with dt-schema.
>
> Our experience with both dtc and the dt-schema scripts is there doesn't
> seem to be any real distinction between errors and warnings.

Everything is an error, but there are too many (for dtbs) or
introduced too frequently (for bindings), so they are all warnings.

What I really want to distinguish is warnings/errors for new
bindings/users vs. existing ones. Things we already have and can't
change, but don't want new ones.

> Below are some examples.
>
> This is from dt-validate: : pinctrl@f100000: 'width' is a required
> property
> This is from dtc: : Warning (reg_format): /soc/pinctrl@f100000:reg:
> property has invalid length (8 bytes) (#address-cells == 2, #size-cells
> == 1)
>
> In both cases neither tool returned an error code to the shell (echo $?
> = 0)
> dtc will error with a syntax problem, but that seems to be it.
>
> Is this how the kernel community prefers these tools to work?

The standard for the kernel is no warnings in general (perhaps you saw
the recent -Werror change). So it's really only a question of erroring
out or not.

Both submitters and maintainers frequently don't run the schema checks
and things get applied. It's better than it was, but still happens. If
we errored out, those that do run checks would always have a broken
tree. In fact, we did error out in some cases and I made it not. I
always run 'make -k', but it seems many don't and miss testing their
stuff due to erroring out.

dtc could probably be changed to error out at least for 'dtbs' target.
Though it would need a -Werror type option or you'd have to list every
warning option on the command line.

> Our concern is more with the dtschema scripts so we can use this to
> break the build and force the engineer to fix either the .yaml or .dtsi
> file.
>
> Before we dive into the dtschema scripts we wanted to understand the
> philosophy behind the design decisions.
>
>
> On 2020-11-30 11:02, Rob Herring wrote:
> > On Wed, Nov 25, 2020 at 2:13 PM <mturney@codeaurora.org> wrote:
> >>
> >>
> >> Folks,
> >> I am advocating use of dt-schema project internally to validate DTS
> >> files.
> >> I should add that our use is outside kernel tree on proprietary
> >> project.
> >>
> >> One of the push-backs I'm getting from the management chain is along
> >> the
> >> lines of...
> >>
> >> Who is this Rob Herring guy and why should we use a project that is
> >> only
> >> sourced on https://github.com/robherring/dt-schema?
> >
> > I wouldn't trust him...
> >
> > That's the wrong repo though:
> > https://github.com/devicetree-org/dt-schema
> >
> > (Unfortunately, GH's forks is misleading as the 'root' repo has
> > changed.)
> >
> >> If the kernel project is using it, why isn't kernel.org hosting the
> >> project?
> >
> > It's not a kernel project. That's why devicetree.org hosts it.
> >
> >> What is kernel plan if Rob walks away from the project, is this going
> >> to
> >> wither away and die?
> >
> > IMO, only if folks don't find validation valuable or a better
> > implementation comes along.
> >
> >> There are more, but the above pseudo-quotes grab the gist of the
> >> management complaints.
> >>
> >> Q.1) Is there a plan for the kernel project to suck dt-schema into its
> >> orbit?
> >
> > No, the 'plan' (more like desire) is more in the opposite direction.
> > Move more of DT (bindings and dts files) out of the kernel for other
> > projects to use. For now, we have the 'devicetree-rebasing' tree which
> > is just the DT bits from the kernel tree.
> >
> >> Q.2) How many active maintainers are there for dt-schema?
> >
> > Mostly just me. Maxime Ripard is also one. Others could be if the need
> > arose.
> >
> >> Q.3) How do I respond to the above types of complaints?
> >
> > jsonschema python module which is our main dependency is also just a
> > single maintainer. So is dtc. Maybe not what you want to highlight.
> >
> > Rob
