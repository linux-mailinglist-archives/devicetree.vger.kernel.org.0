Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1F7237A0C2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 07:54:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728764AbfG3Fxt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 01:53:49 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:43594 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726133AbfG3Fxt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 01:53:49 -0400
Received: by mail-ot1-f66.google.com with SMTP id j11so7763443otp.10
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 22:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z9yhVZrCo2Ym96O9jSbeb4ViFfqeymdVjMGrDKz2FPM=;
        b=N17K/Md9kf9zsF+8d2jNQ4qeEMqeDzuH2Fn+lKJIzHgbcXXOjdXqxhe19pt/7H+kfK
         XIK9MUmRSzEkvOdZxeQ6792Oxc44al7rEb96Qa4TRYkiZNU+2QBvoxA5HSBjy2Qbr6W8
         karZdmF31kOYyjULxZJDgpCSFY/y12xphn+Ku0jhWDm02Ic0UcY97gI3Q798ydEBPQYd
         +ddBmLBRhnl5/3zOGgNhGxyitb7DltzQm7fjlDExtim+zNKXNt1MRCHizz3F+SBjicNQ
         nOI9ItTaH6hxoO9MeQTvvhUsb+gY3mSY/yxaPeWHKRA3MkxO3883J0ao/X5SwFU2hK48
         Cu/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z9yhVZrCo2Ym96O9jSbeb4ViFfqeymdVjMGrDKz2FPM=;
        b=Ap4tFbviztDqsCcbGUBZwvZapHy4iOgrhPb9TydjYkADu+VrlzYEfwG01wi6OI3U5y
         Yet2fExgP+N0U00q2ZOFouncD0DU4YyvRTHjPmt5m4ctRV2vtuxS+KS3i6shP3ZsbBtg
         zzPIU0Gfl9fjNZVxlhn42577CdlV+850/3cBWZKE/8VFejusIVcVJvsXZuypxKxFvzwq
         HAIyiHTkPb4CY2HEFyMuTuP1x8Lvg/I6zZXCLeUQlGAsCD3WTYI55IY++p5A2p4+UlhX
         BSMqqdrKSLwylq1B94mJXVQv9Y1l2ah71PBvguE+ZCdKu77KZGmrUGNbR3Lvv3mlAfwu
         iHsA==
X-Gm-Message-State: APjAAAWvUcpyiHjvxjk1dFHAt6k7eYA6HVFXn2Xrmf/v04UpVRwJl74v
        ydLMUEl3y7tMttWwZRIEpDLbeDG0n4S7gR55sEB50w==
X-Google-Smtp-Source: APXvYqw7aEwNPWqA3eNN9XZ6LCef/h3vqbjo/cS8W1eUnYiAmCC4A8v/J5cB8Qphwz409QxSDP0CwBJE6rzqfg/0x8I=
X-Received: by 2002:a9d:6201:: with SMTP id g1mr86267586otj.195.1564466028394;
 Mon, 29 Jul 2019 22:53:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190726231558.175130-1-saravanak@google.com> <20190729093545.kvnqxjkyx4nogddk@vireshk-i7>
 <CAGETcx8OBFGgP1-hj717Sk-_N95-kacVsz0yb288n3pej12n1Q@mail.gmail.com>
 <20190730024640.xk27jgdfl2j6ucx7@vireshk-i7> <361effba-4433-24d9-243c-201af39214cc@codeaurora.org>
In-Reply-To: <361effba-4433-24d9-243c-201af39214cc@codeaurora.org>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 29 Jul 2019 22:53:12 -0700
Message-ID: <CAGETcx_BpJswxA4AGARogZ1xRJPqm=_zTOZq1xJ2vgx+DUYsqQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Introduce Bandwidth OPPs for interconnects
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "Sweeney, Sean" <seansw@qti.qualcomm.com>,
        David Dai <daidavid1@codeaurora.org>, adharmap@codeaurora.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Android Kernel Team <kernel-team@android.com>,
        Linux PM <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 29, 2019 at 10:28 PM Sibi Sankar <sibis@codeaurora.org> wrote:
>
> Hey Viresh,
>
> On 7/30/19 8:16 AM, Viresh Kumar wrote:
> > On 29-07-19, 13:16, Saravana Kannan wrote:
> >> Sibi might be working on doing that for the SDM845 CPUfreq driver.
> >> Georgi could also change his GPU driver use case to use this BW OPP
> >> table and required-opps.
> >>
> >> The problem is that people don't want to start using this until we
> >> decide on the DT representation. So it's like a chicken and egg
> >> situation.
> >
> > Yeah, I agree to that.
> >
> > @Georgi and @Sibi: This is your chance to speak up about the proposal
> > from Saravana and if you find anything wrong with them. And specially
> > that it is mostly about interconnects here, I would like to have an
> > explicit Ack from Georgi on this.
> >
> > And if you guys are all okay about this then please at least commit
> > that you will convert your stuff based on this in coming days.
>
> I've been using both Saravana's and Georgi's series for a while
> now to scale DDR and L3 on SDM845. There is currently no consensus
> as to where the votes are to be actuated from, hence couldn't post
> anything out.
>
> DCVS based on Saravana's series + passive governor:
> https://github.com/QuinAsura/linux/tree/lnext-072619-SK-series

Thanks Sibi! You might want to convert your patches so that until the
passive governor is ready, you just look up the required opps and vote
for BW directly from the cpufreq driver. Once devfreq governor is
ready, you can switch to it.

-Saravana

>
> DCVS based on Georgi's series: (I had already posted this out)
> https://github.com/QuinAsura/linux/tree/lnext-072619-GJ-series
>
> --
> Qualcomm Innovation Center, Inc.
> Qualcomm Innovation Center, Inc, is a member of Code Aurora Forum,
> a Linux Foundation Collaborative Project
