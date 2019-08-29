Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D78C8A20F6
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2019 18:34:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727686AbfH2QeO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Aug 2019 12:34:14 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:34039 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727673AbfH2QeO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Aug 2019 12:34:14 -0400
Received: by mail-qt1-f193.google.com with SMTP id a13so4392986qtj.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2019 09:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n9l5S2KbsRERhGgBhP1Pu1DL1JLpghBBG1KctWMbhPY=;
        b=wrKlAklpDzCaK9bitOGvsiE1iRls1xkKTHr1uVj6ML6++yzsbIy4Ss6lHKR/4t+kWB
         kBWFsevMQv+AgM/3QUQZMUuLjWg5OTvBgfxqQiHHHX66tW4HQ0cbyJdw6Z7A+bvdNRbr
         zzSU6odPMrenQU/WFUgNqhIZzotjT1I5eoV05DepZXWhc6zk/N4nzQiCscWRFAsp83f5
         2mCCoPEUzklIvPUTCncScdjggNIqgZ5lAVE0A/GQ2YfQD/jm7+CBxdARj37Wj589cCgt
         8JKM1lQw79QAQpsOnSqj0AI/1GmG00Z5SoJni7fKTOlQKVKf47/4TAlFHKd1YRmsV2lR
         fxDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n9l5S2KbsRERhGgBhP1Pu1DL1JLpghBBG1KctWMbhPY=;
        b=YkESuwfOgQUhBwgg2hE+YqehNpbr8yTrKgMHW4WdF8wXwPAt4poDbSAHE5Hd3akNE8
         THOdJ6XjHuiOnqByJqyekmTDfLN0TW42dqz99MkIBuRDoXHz/tzmwGiSuKxWY3M/NSEV
         yd0jtmkuXHfsOCNB5IJ7VXjp+rQ5CDYOMaiocdknYdq70sNMODK8GRfXDRSWu+upGBCE
         sbDX0pC2eiwxplImRvjeJLyPS8YN9gSCssGQGcXbMikjLyklsC3mChvPQ/33mdy/QE4g
         DhKWZZLb/OOBdKSLctIIEdeAbBaqoLT5ob0U9EKYjd6sMYXMrXnUdrvZT6HJmCP//zge
         cfrA==
X-Gm-Message-State: APjAAAVBcRWWlv9o0P0LDiMtc4pnrio1N7x7WP9YnZQbRKGI79IwpF1b
        YgNUlTj3frMmAOzjGbGQx0IA+PyxQnYcTjTpQKmpUQ==
X-Google-Smtp-Source: APXvYqybIZXqTwDDQ5W+o0WnOsb/6yXiPOlEJ24WuiGolNzJDgN+eYlJS9toAhvqvDTFL41byEJ0HGyvQWDJPto49aU=
X-Received: by 2002:aed:3f47:: with SMTP id q7mr10718052qtf.209.1567096453696;
 Thu, 29 Aug 2019 09:34:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566907161.git.amit.kucheria@linaro.org>
 <66ac3d3707d6296ef85bf1fa321f7f1ee0c02131.1566907161.git.amit.kucheria@linaro.org>
 <5d65cbe9.1c69fb81.1ceb.2374@mx.google.com> <CAP245DWWKsZBHnvSqC40XOH48kGd-hykd+fr-UZfWTmvuG2KaA@mail.gmail.com>
 <5d67e6cf.1c69fb81.5aec9.3b71@mx.google.com>
In-Reply-To: <5d67e6cf.1c69fb81.5aec9.3b71@mx.google.com>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Thu, 29 Aug 2019 22:04:02 +0530
Message-ID: <CAP245DVjgnwGn5rUgbYrkBOi3vtyShz0Qbx_opx80xiOV7uXeA@mail.gmail.com>
Subject: Re: [PATCH v2 07/15] dt: thermal: tsens: Document interrupt support
 in tsens driver
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Eduardo Valentin <edubezval@gmail.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Marc Gonzalez <marc.w.gonzalez@free.fr>,
        Brian Masney <masneyb@onstation.org>,
        Linux PM list <linux-pm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 29, 2019 at 8:23 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Amit Kucheria (2019-08-29 01:48:27)
> > On Wed, Aug 28, 2019 at 6:03 AM Stephen Boyd <swboyd@chromium.org> wrote:
> > >
> > > Quoting Amit Kucheria (2019-08-27 05:14:03)
> > > > Define two new required properties to define interrupts and
> > > > interrupt-names for tsens.
> > > >
> > > > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > > > ---
> > > >  Documentation/devicetree/bindings/thermal/qcom-tsens.txt | 8 ++++++++
> > > >  1 file changed, 8 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.txt b/Documentation/devicetree/bindings/thermal/qcom-tsens.txt
> > > > index 673cc1831ee9d..686bede72f846 100644
> > > > --- a/Documentation/devicetree/bindings/thermal/qcom-tsens.txt
> > > > +++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.txt
> > > > @@ -22,6 +22,8 @@ Required properties:
> > > >
> > > >  - #thermal-sensor-cells : Should be 1. See ./thermal.txt for a description.
> > > >  - #qcom,sensors: Number of sensors in tsens block
> > > > +- interrupts: Interrupts generated from Always-On subsystem (AOSS)
> > >
> > > Is it always one? interrupt-names makes it sound like it.
> > >
> > > > +- interrupt-names: Must be one of the following: "uplow", "critical"
> >
> > Will fix to "one or more of the following"
> >
>
> Can we get a known quantity of interrupts for a particular compatible
> string instead? Let's be as specific as possible. The index matters too,
> so please list them in the order that is desired.

I *think* we can predict what platforms have uplow and critical
interrupts based on IP version currently[1]. For newer interrupt
types, we might need more fine-grained platform compatibles.

[1] Caveat: this is based only on the list of platforms I've currently
looked at, there might be something internally that breaks these
rules.
