Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23489400588
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:09:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350626AbhICTKC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:10:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350594AbhICTKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:10:01 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A6FC061575
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 12:09:00 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id z5so375692ybj.2
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m6kpIcQI2kaeiGN8nOW6gd72C2N5gwlYdeH/BXEk3Ws=;
        b=PvIxT7UYlvbGZmDSRi18bm+CxUU48AfcXm9EVQwqw8l0pfPFhqZV2NwLMWThnRNQif
         MO2cXjZ0xcgzs1LBL3ow0iJ5DfJt6Hmo+YYUCJRIK+z7X6DyaQq+UMQEF3EiLDBqlLh1
         /rSntEhSdbFPMal5QBM4JBppsm4QaeDZtZ317wUdQYPmfC9c4ua58gXSCCV2mS2znkIi
         +AW8NFIST00oSt6Ur25EKWop+672adF/gMnqM8+35S0g7ffpbz90FrGSuVX20Qh/Yefy
         tDNwMV+r2BhlrUlwjXxUjuRYyEDaTxZK63MzR12bnURbIaR1CC3SPPhushnXtM/4npvj
         kkAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m6kpIcQI2kaeiGN8nOW6gd72C2N5gwlYdeH/BXEk3Ws=;
        b=B3n/8KRBscP+4KNO0CNnoWeAKVE8yn6UsnrTxXYaUVCOtoVhBzp0nO1eVRDExzVw47
         /jJ6dHst+Am55+WC7x5OeLPpPrXqTeesMwfmots5c3jT7p0YQO5o/gQqbQ8Bm+jduwQu
         yPnLj2jmiFccn0BVYBLwiFoxjckdXkcQcrOOBspVYYRkCVI3nqJUbfopKn6MKCuDAXIU
         GwBFwfWdNQcn0xybfCfc3rrqgbnoBD8k7Ec9yN5O44NqyOTLZnmjSm98EyXfiQ+oIlHW
         cO9uJ/8aBaAvlx1hdmaCESvVMzi/WuGGkN5zFDk/dXF5aeU4eKB9d4gDJucYRQ7RkDnd
         gyMw==
X-Gm-Message-State: AOAM530t57+g1BlxGQqtjPg/+TW6L5BaJD9UBxy4U7MvskxehGNah5vd
        MtGv15NIME5YhcRwk1EDzbmOyc5rbNraklenolkMkg==
X-Google-Smtp-Source: ABdhPJxVZXFvEDaU45VGsxRolnCRjbgaMa/2/abHvvKaPNlUXiJlihfRMjwfrHOKIXu70pEcFfzd668Yq6qeLZnvku0=
X-Received: by 2002:a25:21c5:: with SMTP id h188mr697656ybh.23.1630696139325;
 Fri, 03 Sep 2021 12:08:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210902230442.1515531-1-saravanak@google.com>
 <20210902230442.1515531-2-saravanak@google.com> <CAPDyKFpP6pSRSw8_OAW8+ZJNH+CwXtfWBNDcD182gQmzqW=O5g@mail.gmail.com>
 <CAMuHMdVgjxJwd=PbUSR+9mgxexr3O_O6j-3T24GzE08CqzDjjA@mail.gmail.com>
 <CAGETcx9W6FYCD62+QytwK5FThpz0EyKn0G6Ay2B5jKgiqkZT1g@mail.gmail.com> <CAMuHMdWNP1yn0ouJzgYpvQkdAHAA4_gf8z+iZWpbftvGN5a+qQ@mail.gmail.com>
In-Reply-To: <CAMuHMdWNP1yn0ouJzgYpvQkdAHAA4_gf8z+iZWpbftvGN5a+qQ@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Fri, 3 Sep 2021 12:08:23 -0700
Message-ID: <CAGETcx8dZe4+E04soQw1XT2C82VmaYW48=cBmYOes07qkeqiww@mail.gmail.com>
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

On Fri, Sep 3, 2021 at 12:06 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Saravana,
>
> On Fri, Sep 3, 2021 at 7:09 PM Saravana Kannan <saravanak@google.com> wrote:
> > On Fri, Sep 3, 2021 at 7:29 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Fri, Sep 3, 2021 at 11:19 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > > > On Fri, 3 Sept 2021 at 01:04, Saravana Kannan <saravanak@google.com> wrote:
> > > > > fw_devlink could end up creating device links for bus only devices.
> > > > > However, bus only devices don't get probed and can block probe() or
> > > > > sync_state() [1] call backs of other devices. To avoid this, set up
> > > > > these devices to get probed by the simple-pm-bus.
> > > > >
> > > > > [1] - https://lore.kernel.org/lkml/CAPDyKFo9Bxremkb1dDrr4OcXSpE0keVze94Cm=zrkOVxHHxBmQ@mail.gmail.com/
> > > > > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > > > > Tested-by: Saravana Kannan <saravanak@google.com>
> > > >
> > > > Again, this looks like a nice solution to the problem.
> > > >
> > > > One question though. The Kconfig SIMPLE_PM_BUS, should probably be
> > > > "default y" - or something along those lines to make sure fw_devlink
> > > > works as expected.
> > >
> > > I would love for SIMPLE_PM_BUS to go away, and all of its functionality
> > > to be usurped by the standard simple-bus handling.
> >
> > What if SIMPLE_PM_BUS *is* the standard simple-bus handling?
> > Insert "I'm the captain now" meme.
>
> No objections from my side.  In fact that's how I wanted it to be
> from the beginning, but the DT people wanted a separate compatible
> value (and a separate driver).  The only difference is the presence
> of pm_runtime_*() calls.
>
> > I think SIMPLE_PM_BUS config should just go away and we should compile
> > the driver in if CONFIG_OF is selected.
>
> I think there would be no need for a separate driver, if the standard
> simple-bus handling would take care of it.

I'm not sure about the history there. For now, I'm just extending this
driver to take care of simple-bus too.

-Saravana
