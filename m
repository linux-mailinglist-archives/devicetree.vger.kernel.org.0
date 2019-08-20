Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B8A6E96C77
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 00:37:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731052AbfHTWhP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 18:37:15 -0400
Received: from mail-oi1-f194.google.com ([209.85.167.194]:46254 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731019AbfHTWhP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 18:37:15 -0400
Received: by mail-oi1-f194.google.com with SMTP id t24so96507oij.13
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 15:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v3PNIe6PlFx6XUGmIctyG3Xxp0nI64KtXff/8z9lYQw=;
        b=DrMO+Id3/F6kfiS8kA+XkmRwzKxg84gILs8dNH6dLLLovzZ/vvF83WQIo4xhkoeqV6
         3RBYncd/vUDzwp+CNY3VcPvIk4uU+c7YhMIYp/jOBMZIpHYZCw2M5qSNBnH0of+4OBQL
         XEScg+qnDqv1hG7QczO1oMYMvRb/ywFsl4n1D3Mn5PBoZos0Mf12KTnJB3kK2vuILj1q
         FspaYSPNM9Cuuhn4p40bqZxiBRQHihLsa+6CehfCd4cRXA/DwtPcIr2EtTw2rZXz294p
         CNHOT7IAuaNf5uttOcH7GkGHx1imDt89gkwkiMZvaQudFRv79OF3FkpvQO/gJXkNATWH
         c/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v3PNIe6PlFx6XUGmIctyG3Xxp0nI64KtXff/8z9lYQw=;
        b=W3ZNFCtS32IZ+W6zEf5VhEgY1L7fBmpfpu/EJy0m+Og1HHi8O5oYNXQV9mSuEGFyje
         53MtIp5foU3ol9+0A7zuMvCI4Le1c5X+KBScaKPCgyYKKa5l63B2B0aPOgZu/27qI4DS
         46gN5hhxZvSwWRPGqB8Y71bYZw+FDoHRt1Wzd0d8v+9hFFcC8cRpRzcPwo+Lt2Iq/43u
         9BbGRpGkO9M6HtMR/2xyZDPQNWtHi8XbDcTSTF7hPKQZsfdX0+sPYHxSOUcveXfxWRTQ
         ITYA53Zvpdk46DM02kdKMIO2l/BQITC8WcKSqWX4i+UCHELrozYUz6Uqr9K3FWlt4/Jg
         fyBQ==
X-Gm-Message-State: APjAAAUyt0nrwEMU4zK4fTjHVFJMNx19m04Gp97X8MmASTQC6E7CgMiy
        Hpee2/iKWuLxHurBA5OcvbwW8r5hF0XiyohM3BV9zA==
X-Google-Smtp-Source: APXvYqz2R7/xK6d8AdXQAHLRwx7/BghrV4Nihx4FfF+VjmtffTiIbV+eNuYPOpVHE5wR2OKjyJRlAEmjWGHrDqWiu3Q=
X-Received: by 2002:aca:cc81:: with SMTP id c123mr1785858oig.30.1566340634069;
 Tue, 20 Aug 2019 15:37:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190807223111.230846-1-saravanak@google.com> <20190807223111.230846-3-saravanak@google.com>
 <20190820061300.wa2dirylb7fztsem@vireshk-i7> <CAGETcx9BV9qj17LY30vgAaLtz+3rXt_CPpu4wB_AQCC5M7qOdA@mail.gmail.com>
In-Reply-To: <CAGETcx9BV9qj17LY30vgAaLtz+3rXt_CPpu4wB_AQCC5M7qOdA@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 20 Aug 2019 15:36:38 -0700
Message-ID: <CAGETcx-xQika2MgTgA3Gft3u2_uXgvoYThXwEpW_G03QTEh-yQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] OPP: Add support for bandwidth OPP tables
To:     Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Georgi Djakov <georgi.djakov@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "Sweeney, Sean" <seansw@qti.qualcomm.com>,
        David Dai <daidavid1@codeaurora.org>, adharmap@codeaurora.org,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
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

On Tue, Aug 20, 2019 at 3:27 PM Saravana Kannan <saravanak@google.com> wrote:
>
> On Mon, Aug 19, 2019 at 11:13 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > On 07-08-19, 15:31, Saravana Kannan wrote:

> > > +     ret = of_property_read_u32(np, "opp-peak-kBps", &bw);
> > > +     if (ret)
> > > +             return ret;
> > > +     new_opp->rate = (unsigned long) bw;
> > > +
> > > +     ret = of_property_read_u32(np, "opp-avg-kBps", &bw);
> > > +     if (!ret)
> > > +             new_opp->avg_bw = (unsigned long) bw;
> >
> > If none of opp-hz/level/peak-kBps are available, print error message here
> > itself..
>
> But you don't print any error for opp-level today. Seems like it's optional?
>
> >
> > > +
> > > +     return 0;
> >
> > You are returning 0 on failure as well here.
>
> Thanks.

Wait, no. This is not actually a failure. opp-avg-kBps is optional. So
returning 0 is the right thing to do. If the mandatory properties
aren't present an error is returned before you get to th end.

-Saravana
