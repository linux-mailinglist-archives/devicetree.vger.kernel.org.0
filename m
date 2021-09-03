Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E24A04003EB
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 19:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350238AbhICRKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 13:10:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350227AbhICRKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 13:10:41 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0FDCC061757
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 10:09:41 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id q70so11246928ybg.11
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 10:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HaDVUCfDbUysF1N7KhfteSFXd3S1ciSndfL6zXNrW9s=;
        b=WIeC25UguFm445Yh65nz7RAmj09BG6SDqBlPdnwz/RQjRBEwX24gqVsQVr08TDpbfm
         NtSF2hCL7rJMYGF6oE7ghB9CEW53EGM+ITRILSCeZautrvg3vPiox2/iQE+ZKHIrQ26N
         W9/iz6u4V8pbk+6LcvUgb76JcUABc0Gmo43fpPx+IGWdKwkUrjA9AXD2aFef04PVl0F6
         Wr4PM+4qoZ/u65a1QwY0yO3q1EBdm3elwjYEbQxsERBxoHJHaQ9QVUGshyr6VzV/PNrl
         h7TViiUu9cxdAD9lzN9m76U42skGhY8172AVo+DM4AOWXgwJfBimW+acolwxM/IOYOlB
         3t5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HaDVUCfDbUysF1N7KhfteSFXd3S1ciSndfL6zXNrW9s=;
        b=C4Z3Ah36gHAwTtvAcz1rAhCBxceIU9TaZSR2iWyJWk5ys95ekiWANrYH5sOwVXQfBB
         ZegwiIzILlBKY3591XHPjAWPwIZ/QNoTeu9iy4MQ9eXz4hbaHAzDlI06FPRO1Ea70Lqk
         /j28CvRne4Mj2LKpQ6+KyCTFPZk/64Opb7Fiho8leieanHgFgXYVIo5IGKmuW7l7HaN+
         hEYK43PhdP9tX35E/ZlHThCrdEKEe1Y5uA1N+tAYCgOG21ygCWIJYLSVisgsfPh6ffoV
         QWa4M2skohR/ZUO07LGgE5nPQ2BA4bn+yF43T7a+dJMzNXQpKqfUvfBha27lg27Sbh55
         ZpIg==
X-Gm-Message-State: AOAM5325Ho3dhebArsvV+ABjcqI7DEG4flj8n6irTq2o/73SNtGxm7vd
        iNrVwElxn3saFfKCcaASpvXFF6i2oWW4RTz8rrxeVw==
X-Google-Smtp-Source: ABdhPJyJcXLghVfBEHfzy+3NU5FgOHAasQItJxw3SoimpnzwIgR0i+b8wcsczwTcwKrAd8L5fbzlKH8xAOJDzQTcU2o=
X-Received: by 2002:a25:e0d4:: with SMTP id x203mr55309ybg.391.1630688980893;
 Fri, 03 Sep 2021 10:09:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210902230442.1515531-1-saravanak@google.com>
 <20210902230442.1515531-2-saravanak@google.com> <CAPDyKFpP6pSRSw8_OAW8+ZJNH+CwXtfWBNDcD182gQmzqW=O5g@mail.gmail.com>
 <CAMuHMdVgjxJwd=PbUSR+9mgxexr3O_O6j-3T24GzE08CqzDjjA@mail.gmail.com>
In-Reply-To: <CAMuHMdVgjxJwd=PbUSR+9mgxexr3O_O6j-3T24GzE08CqzDjjA@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Fri, 3 Sep 2021 10:09:05 -0700
Message-ID: <CAGETcx9W6FYCD62+QytwK5FThpz0EyKn0G6Ay2B5jKgiqkZT1g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] of: platform: Make sure bus only devices get probed
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Android Kernel Team <kernel-team@android.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 3, 2021 at 7:29 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Ulf,
>
> On Fri, Sep 3, 2021 at 11:19 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > On Fri, 3 Sept 2021 at 01:04, Saravana Kannan <saravanak@google.com> wrote:
> > > fw_devlink could end up creating device links for bus only devices.
> > > However, bus only devices don't get probed and can block probe() or
> > > sync_state() [1] call backs of other devices. To avoid this, set up
> > > these devices to get probed by the simple-pm-bus.
> > >
> > > [1] - https://lore.kernel.org/lkml/CAPDyKFo9Bxremkb1dDrr4OcXSpE0keVze94Cm=zrkOVxHHxBmQ@mail.gmail.com/
> > > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > > Tested-by: Saravana Kannan <saravanak@google.com>
> >
> > Again, this looks like a nice solution to the problem.
> >
> > One question though. The Kconfig SIMPLE_PM_BUS, should probably be
> > "default y" - or something along those lines to make sure fw_devlink
> > works as expected.
>
> I would love for SIMPLE_PM_BUS to go away, and all of its functionality
> to be usurped by the standard simple-bus handling.

What if SIMPLE_PM_BUS *is* the standard simple-bus handling?
Insert "I'm the captain now" meme.

I think SIMPLE_PM_BUS config should just go away and we should compile
the driver in if CONFIG_OF is selected.

-Saravana
