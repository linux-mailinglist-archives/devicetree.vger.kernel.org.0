Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5E14159135
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2019 04:37:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725770AbfF1ChY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 22:37:24 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:45787 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726542AbfF1ChY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 22:37:24 -0400
Received: by mail-ot1-f66.google.com with SMTP id x21so4447481otq.12
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2019 19:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ROfllzNv1k9NDF/hlSsi9MTdRbiwcSwhYFfnNLljdsA=;
        b=eMmKxTeBkxf4BXVCFIwfX+lNGeR04Lq1XpCjpcH+o/qKSalxUKW9BfMhkLEkZywfiL
         US9yhcrXMpz01dnHrw9CNVD8I7T857D1vSYs4Wv37NbJrzOJCX85SKv9hhXPfV1HtLRD
         8Mlb22+BWpESlHekijJgdUmIso/IdWLbkohKERjj1kboVd09ypBQqvGSczXuZKi40rhY
         TgoqVN3geRzcv3wXLisHXklaKTNYSO/AENX6TjS5eNc1L2bQDl+TG/vgn6iVmhScIqj8
         dejoUq78veURkqAc1iDQgIOSPdWsvASLr+Ty5LfYnsozMkgjlobYlisyffHZqBwCMXNF
         fL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ROfllzNv1k9NDF/hlSsi9MTdRbiwcSwhYFfnNLljdsA=;
        b=BwKL5mw2pJvuagp6Gfv7m6cutPvUnhIVCM0MiO0htE/AhpOrcffThFl/Sn81INB+et
         /ukUP18lqfiqZ8shH3MKkJFw/7ERgOVnQqnjwFR9x9dkbVbRw5BwbHmBW6u/xxErJd++
         8vgCzSAG+glPlphsXYPHQEitRBuAKALm8aFO2vxwMHrNm9cy6V8Xf99WvS/lYfzQRnL/
         cQosqznBHVFIjSejUr9vlRN9Lp82MJAlz34kWAL8k1Nq8iwdtLMM1XFCP2i4M9RrkPIe
         rZaaKJevVO5M5V47nLlIzR7ruZk8khdpQyI9Y6LLx+QgMCq+ZH91OI48wo457RryvcPW
         vxSQ==
X-Gm-Message-State: APjAAAVoJCX8AQ88KBjJ5C2v8IOe44DjQI3UZaranbTbuZk6PwD8Lvi/
        7kc0puJg23qnZiqVTohEo8dn8QbQ3NhoRta3hAijXA==
X-Google-Smtp-Source: APXvYqyie0y5w2KOZY+Btvx6QWtUDpapjyXxLTFHGIRTIv6FpF1+JIFZ/2WWuWimM0DC1TIfEqXHny3uVLLJrXYwp4A=
X-Received: by 2002:a05:6830:160c:: with SMTP id g12mr6507861otr.231.1561689443012;
 Thu, 27 Jun 2019 19:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190604003218.241354-1-saravanak@google.com> <20190624223707.GH203031@google.com>
 <20190625035313.GA13239@kroah.com> <CAL_JsqJyO9Fpq+Lzrc9NdiFBZ_9M31_mjfRyKM=ENtW-zVa8VA@mail.gmail.com>
In-Reply-To: <CAL_JsqJyO9Fpq+Lzrc9NdiFBZ_9M31_mjfRyKM=ENtW-zVa8VA@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 27 Jun 2019 19:36:46 -0700
Message-ID: <CAGETcx-OmbNYJB_1wEX5c=tVC+yPLhgiEXqq3EZnM6JAZxLPdA@mail.gmail.com>
Subject: Re: [RESEND PATCH v1 0/5] Solve postboot supplier cleanup and
 optimize probe ordering
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sandeep Patil <sspatil@android.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        David Collins <collinsd@codeaurora.org>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 26, 2019 at 2:31 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, Jun 24, 2019 at 9:54 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Jun 24, 2019 at 03:37:07PM -0700, Sandeep Patil wrote:
> > > We are trying to make sure that all (most) drivers in an Aarch64 system can
> > > be kernel modules for Android, like any other desktop system for
> > > example. There are a number of problems we need to fix before that happens
> > > ofcourse.
> >
> > I will argue that this is NOT an android-specific issue.  If the goal of
> > creating an arm64 kernel that will "just work" for a wide range of
> > hardware configurations without rebuilding is going to happen, we need
> > to solve this problem with DT.  This goal was one of the original wishes
> > of the arm64 development effort, let's not loose sight of it as
> > obviously, this is not working properly just yet.
>
> I fail to see how the different Linux behavior between drivers
> built-in and as modules has anything whatsoever to do with DT.

You are right, built-in vs module problem is not a DT issue. But this
is not so much a built-in vs module issue. It's just that built-in has
a hack available that works sometimes. But really, both are broken.

> Fix the
> problems in Linux and use the dependencies that are already expressed
> in DT and *then* we can talk about using DT to provide *hints* for
> solving any remaining problems.

Done. Sent v2 patch series that uses existing bindings.

-Saravana
