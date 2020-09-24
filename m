Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3B1276E38
	for <lists+devicetree@lfdr.de>; Thu, 24 Sep 2020 12:08:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726818AbgIXKIy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Sep 2020 06:08:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726645AbgIXKIy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Sep 2020 06:08:54 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4BBDC0613CE
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 03:08:53 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id e23so3700060eja.3
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 03:08:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4Q/+ty8YH/7NC+1r/Q91xVAqEVNqsmZiYUT5XFfJbQs=;
        b=Zu8WYvJOls7Q3Fig3eJ0obXiUA4sepajGBI1MfS/tQysKqSQF9j1ANoJ2TXbCXlW+w
         hE8eyTVtwx5QcXnj+6V7hopYH53BkNlPKVE+q9DhDM0d3Lhk+Zv2dM5N51QpxUzxNPBB
         /qw0oNhzLvB50dzfi5h/mTfRzPy5X41IdaXsoWlVML8LZc85XeYQGG0kMsJM3qVJEKkF
         tf/Fl05NuSxRn2OEdnnjc55Hm1xSxXktdbky2ruFaFHZ+JaPbYdceyCTYYnQFvZsfdcH
         Bu134OnCRei7Soz9IZaix7pnYjRvvSu37Ojtn7mjZKzD/OS0Goamuu61T9ekZ7EBeMMV
         TiXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4Q/+ty8YH/7NC+1r/Q91xVAqEVNqsmZiYUT5XFfJbQs=;
        b=k8L9Qc4I7oHnU5wFD699RgQYzp+BupPa8UFXilYJGYnbx08UC5YqXyUKSd7SArzG3U
         npeCxtrlxXFkvx4e+yXFvfNID23dySS32V/YkejIA1vTEeFGWLncKKF7z6mySTelgYG2
         6Ib0P+nQBZnmHmk/s/aBTIJL4b4f8IM1LZBteNQqZ/BOaCJSGGPwIn13uUvnrV0/FM5o
         li9SKJhlfGuQx4Fm4hfeb3lBq4Z7Ew14xVUPICv/oaptbwBgyMLfafvMMutOIbAirRfO
         FD4nu59wLSwOyRWEts82nRP8p7nnmukt4zIz5qVnCJND2ey/WntPquWkHhO/oMJaPRdc
         lO/w==
X-Gm-Message-State: AOAM532e8VIXnVBJK7GhVryXFY1woV5vxo+Pb2bsZzFsbtzupg42onFY
        XEixCVqa/ZXthZMwWAtjMeLGZcrjqiMGVuKmDNA1rw==
X-Google-Smtp-Source: ABdhPJwg8H6W0jtI8Nv0SsAaB2g5hijEHEmrvpNirWvkgIcXzahSN2l3t0nwJAI10Ib0A0IcGvR8QXY0cogJW35JcY8=
X-Received: by 2002:a17:906:35d5:: with SMTP id p21mr207888ejb.194.1600942132576;
 Thu, 24 Sep 2020 03:08:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200911084119.1080694-1-suzuki.poulose@arm.com>
 <20200911084119.1080694-20-suzuki.poulose@arm.com> <CAJ9a7ViGcasXU2e8HV2RzzobQ7YBHE=YQSqQkCqcb7OyDk_aKA@mail.gmail.com>
 <f9614d47-4abc-ea14-9d51-068cbb5e9265@arm.com>
In-Reply-To: <f9614d47-4abc-ea14-9d51-068cbb5e9265@arm.com>
From:   Mike Leach <mike.leach@linaro.org>
Date:   Thu, 24 Sep 2020 11:08:41 +0100
Message-ID: <CAJ9a7VgJeO95EGRgE-otPfN3odJmnYT=_cwQOVAUkKQ4RyJ1HQ@mail.gmail.com>
Subject: Re: [PATCH 19/19] dts: bindings: coresight: ETMv4.4 system register
 access only units
To:     Suzuki K Poulose <suzuki.poulose@arm.com>
Cc:     linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Coresight ML <coresight@lists.linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linaro.org>, anshuman.khandual@arm.com,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi suzuki,

On Thu, 24 Sep 2020 at 10:43, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> On 09/18/2020 04:35 PM, Mike Leach wrote:
> > On Fri, 11 Sep 2020 at 09:41, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> >>
> >> Document the bindings for ETMv4.4 and later with only system register
> >> access.
> >>
> >> Cc: devicetree@vger.kernel.org
> >> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> >> Cc: Mike Leach <mike.leach@linaro.org>
> >> Reviewed-by: Rob Herring <robh@kernel.org>
> >> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> >> ---
> >>   Documentation/devicetree/bindings/arm/coresight.txt | 6 +++++-
> >>   1 file changed, 5 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> >> index d711676b4a51..cfe47bdda728 100644
> >> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> >> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> >> @@ -34,9 +34,13 @@ its hardware characteristcs.
> >>                                          Program Flow Trace Macrocell:
> >>                          "arm,coresight-etm3x", "arm,primecell";
> >>
> >> -               - Embedded Trace Macrocell (version 4.x):
> >> +               - Embedded Trace Macrocell (version 4.x), with memory mapped access.
> >>                          "arm,coresight-etm4x", "arm,primecell";
> >>
> >> +               - Embedded Trace Macrocell (version 4.4 and later) with system
> >> +                 register access only.
> >> +                       "arm,coresight-etm-v4.4";
> >
> > Any version of ETM can implement register access - including those pre
> > ETM 4.4. Perhaps the new name should simply reflect sys reg access
> > rather than a version.
> >
>
> You're right. I got it confused with the v8.4 SelfHosted Extensions, which
> mandates the sysreg access and makes the mem I/O obsolete. How about :
>
>         "arm,coresight-etm4x-sysreg" ?
>
>
Seems reasonable.
Perhaps ensure that the accompanying comment mentions that this is
aarch64 access (to cover the unlikely event that some outlier
implementation does come along with v8 aarch32 + ETMv4 + sysreg
access!)

> > Given that the two compatibility strings should be mutually exclusive
> > for a given device, should the bindings doc (or at least the etm4x
> > component part) be re-written into the .yaml format so that this can
> > be enforced?
>
> I will take a look, haven't played with the yaml.
>

I used it to describe the CTI bindings as these were brand new.
Reasonably straight forwards - there are plenty of examples and the
checking tools are pretty good.

Regards

Mike


> Thanks for the review !
>
> Suzuki



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK
