Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 139533688EC
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 00:16:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236660AbhDVWQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 18:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232844AbhDVWQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 18:16:44 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38841C06174A
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 15:16:08 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 92-20020a9d02e50000b029028fcc3d2c9eso21161830otl.0
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 15:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5roJkic0nXNRM3VIYkQyWtU/pzCfecquUK1y4VSYsBM=;
        b=E1uQJeZyhsZ3rshSHSi6KeMjy3MiuSwEMIew2Qj0UkZ3/lgruvu4pT5Nq7UfvihZqB
         A3YrEd/I76QQIq+8Uk6BnKRc2gsw/sZJW0fTccUL60rff3S35r2/3NiMhsN1jP8FvyFl
         sKbGAHdo76iJ1KRaC5gOK2SkiJ2b2N7KvLUbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5roJkic0nXNRM3VIYkQyWtU/pzCfecquUK1y4VSYsBM=;
        b=IlXC9qIGum2XK6AhaRDM6XBrHXCvPErdvxRArPKI38Jco8FomgUetsVtkrHBgmsD4q
         zrpeiW4x8jQd3qN4RIqfKc7j2qDXcUHi/AC7/Yj5Ppp1OFUnX3ZruTzMDhQbye4C8t+X
         Bd4lo47eenb0dUfCUTOtBs3TyUhUdUqmbbvqXEZbuNzjv4sbdi/Jn9irKxepfIBDLMQ+
         S7zuw7T21X1v1CgSV96zr9DK6CBHm2ISSSxK8Mpc7ifo9KXEqCp3xRMZWhnD1Wkg2JK4
         CUkPDPoUNK2R9q5UXbspNb5yMZgv7d9ckqMm6lwrmlwTeBzt8Ow2z+YG2J+xxj36gc8y
         KyAQ==
X-Gm-Message-State: AOAM533OeIdvbd0L0fxPTtwBpH5T/jWyrFmDfAswg5o+ixHArwmL2abt
        IxE8ZZvg5TyXiCvCw2sHWAmBn5azkNVE6Q==
X-Google-Smtp-Source: ABdhPJzpBwFu78sxIYDn6I8154/hojXqPDG3FU4UYlmmYA7cgsJCgweW4XtPsu+DIl4rgt4xjmJutA==
X-Received: by 2002:a05:6830:2159:: with SMTP id r25mr574773otd.313.1619129767425;
        Thu, 22 Apr 2021 15:16:07 -0700 (PDT)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com. [209.85.210.50])
        by smtp.gmail.com with ESMTPSA id c21sm865781ooa.48.2021.04.22.15.16.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 15:16:07 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 65-20020a9d03470000b02902808b4aec6dso38893607otv.6
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 15:16:07 -0700 (PDT)
X-Received: by 2002:a25:6088:: with SMTP id u130mr1261862ybb.257.1619129340027;
 Thu, 22 Apr 2021 15:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210316140707.RFC.1.I3a21995726282f1e9fcb70da5eb96f19ed96634f@changeid>
 <20210326000907.GA1965415@robh.at.kernel.org> <CAD=FV=XqG8oH5HCttKSNYJV2eHwLxq-tm1C+UFLn+cAHUrBaHg@mail.gmail.com>
In-Reply-To: <CAD=FV=XqG8oH5HCttKSNYJV2eHwLxq-tm1C+UFLn+cAHUrBaHg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Apr 2021 15:08:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VZYOMPwQZzWdhJGh5cjJWw_EcM-wQVEivZ-bdGXjPrEQ@mail.gmail.com>
Message-ID: <CAD=FV=VZYOMPwQZzWdhJGh5cjJWw_EcM-wQVEivZ-bdGXjPrEQ@mail.gmail.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: display: simple: Add the panel on sc7180-trogdor-pompom
To:     Rob Herring <robh@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        David Airlie <airlied@linux.ie>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Steev Klimaszewski <steev@kali.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Mar 29, 2021 at 9:25 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Thu, Mar 25, 2021 at 5:09 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Mar 16, 2021 at 02:08:19PM -0700, Douglas Anderson wrote:
> > > The sc7180-trogdor-pompom board might be attached to any number of a
> > > pile of eDP panels. At the moment I'm told that the list might include:
> > > - KD KD116N21-30NV-A010
> > > - KD KD116N09-30NH-A016
> > > - Starry 2081116HHD028001-51D
> > > - Sharp LQ116M1JW10
> > >
> > > It should be noted that while the EDID programmed in the first 3
> > > panels indicates that they should run with exactly the same timing (to
> > > keep things simple), the 4th panel not only needs different timing but
> > > has a different resolution.
> > >
> > > As is true in general with eDP panels, we can figure out which panel
> > > we have and all the info needed to drive its pixel clock by reading
> > > the EDID. However, we can do this only after we've powered the panel
> > > on. Powering on the panels requires following the timing diagram in
> > > each panel's datasheet which specifies delays between certain
> > > actions. This means that, while we can be quite dynamic about handling
> > > things we can't just totally skip out on describing the panel like we
> > > could do if it was connected to an external-facing DP port.
> >
> > Is this a 'standard' eDP connector? AFAICT, there does seem to be
> > such a thing.
>
> To answer this one: there's not any "standard" physical plug as far as
> I can tell. There's a connector on the board side for the LCD that has
> a whole hodgepodge of signals on it. Maybe USB for a camera. Some
> power signals. Maybe a PWM for a backlight. Maybe some DMIC signals.
> eDP signals which might be anywhere from 1 to 4 lanes. HPD (which is
> really a "panel ready" signal for eDP). The size / style of connector
> and the exact set of signals (and their ordering) is board specific.
> You then get a board-specific cable that splits things out. Some might
> go to a camera/MIC sub board. Some go to the panel and hook onto a
> panel-specific connector which has pin count and orderings defined by
> that panel. :-P
>
>
> > I've said in the past I'd be okay with a edp-connector
> > node. If that needs just the "HPD absent delay" property, I think that
> > would be okay. It's just a never ending stream of new properties with
> > each new panel that I don't want to see.
>
> Thinking about this we'd need at least one other property right now
> which is an enable delay. Specifically at least one panel I've
> supported recently lied about HPD for a short period after bootup.
> Specifically see commit 667d73d72f31 ("drm: panel: simple: Delay HPD
> checking on boe_nv133fhm_n61 for 15 ms"). ...and, of course, the
> existing power supply / enable signals that "simple-panel" already
> has.
>
> Also: if we weren't going to add the other delay properties in the
> device tree, we'd have to add the code right away that used the EDID
> to set other delays. That wouldn't be the end of the world, but it
> would be code to write.
>
>
> One last thought to add: I've looked at ~10 panels specs recently.
> Though they are all a little different from each other, I will say
> that almost every one of them seems to have the exact same timing
> diagram in it just with different numbers filled in. To me that backs
> up the idea that you can/should do the power sequence with a fairly
> standard (parameterized) driver. I can't link the datasheets I have
> but searching for "edp panel datasheet" finds me this random
> datasheet:
>
> https://www.data-modul.com/sites/default/files/products/NV156QUM-N72_specification_12039472.pdf
>
> See "8.0 POWER SEQUENCE" in that document. All the panels have a
> nearly identical diagram with different numbers filled in. You can
> kinda tell it was copied from some other panel since some numbers
> (like T4) aren't even defined.

So this thread has been quiet for a while, but the problem still exists.

Here's my current plan, but please yell if you disagree:

1. See about adding a generic "eDP connector" node. Having stewed on
this for a while I think I'm convinced that even though there's not
really a single standard physical connector that is used everywhere
that there are at least a set of signals that can be collectively
thought about as the "eDP signals". Certainly I have a set of very
different panels from very different manufacturers that I can
"interchange" and they work fine assuming I have the right cable
"adapting" them from the connector on my board to the connector on the
panel. While different panels have different timings that they care
are enforced, there is a way to express it in a relatively common way
as evidenced by the fact that all panel datasheet timing diagrams look
similar and the fact that panel-simple handles so many different
panels (yes, we periodically add more timing constraints to handle
there but mostly that's because the code wasn't able to handle every
constraint that could be expressed in those standard-looking timing
diagrams in the datasheets).


2. The "eDP connector" node will have all the same properties as
today's "panel-simple.yaml" with the addition of:

enable-delay
hpd-absent-delay

The idea is that you power on the panel, hardcode an enable-delay (to
handle early HPD glitches), and then wait for HPD (or wait
hpd-absent-delay if HPD isn't provided).

Note that "ddc-i2c-bus" will be a required node instead of optional.


3. Once we power the panel on then we will query the EDID and set the
rest of the panel timings / modes based on the model specified in the
EDID. Potentially it could update the "enable-delay" and
"hpd-absent-delay" at this point too.


We can thumb wrestle about whether the code to support this lives in
"panel-simple.c" or not.

-Doug
