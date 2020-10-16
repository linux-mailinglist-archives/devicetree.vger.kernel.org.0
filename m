Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 970D829075F
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 16:42:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405605AbgJPOmI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 10:42:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2395258AbgJPOmI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Oct 2020 10:42:08 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33349C061755
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 07:42:08 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id o9so1388567plx.10
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 07:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YPuIiy1x2gyQnunEdwb5wy6HvXF5oFtf7JOZzScqMK0=;
        b=DDrufvjwHDKQ8iJUQE8GHUYBUmkAiCppfEChZjpFslFPtAR7eByXOdRhV04xfwHQ2d
         Jtt/nyPuKmFri4TvzYe92S+CeTEs7R+uF0WIP6N6n5PEFudd9O5lUnBgNHt2d12msuLm
         71yjl3LiMmG1TvFVcUEE5eo+EubpXnsSEqoGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YPuIiy1x2gyQnunEdwb5wy6HvXF5oFtf7JOZzScqMK0=;
        b=cD6q6OVK17ixgg5ByOMMfCVrGMlexqKHu+j8rlW2GaXa0QzdzvMcIBQzpnI0T2satm
         JdjI8ZId8/8f0zbEH3u3KCZyQicbhS3kbNSMRS4Fn0Vvic3uxvwhEgkuf42vtWol2hxg
         7GX6J4XBUsENIyS0uaz3v0EzpR+lXrKiQLrQ+ouM278FLiHTsUSG1FDoKHDgRlQeJJ2u
         poaNX7AXKJnI+S6eOiKK4qJmsFirklrmrJkbkV50ndfQSb3Pj77o/4MIxvWdy7Ie2fRB
         dYRAtNMXr7Uk2CnStMkZrpvbZsJHWEv/TU9QTXpGkLXdl1E4Z4X3Wiue1zwY6c+oPK45
         Jv9Q==
X-Gm-Message-State: AOAM532zYCzC6E+omX7fzju/aHICyIDS5WOq3PQIAbgm+9i+Np5tK5Ji
        0oZ38cYFelkB/tcBOcjf2EKrtZJRJ5Ur0g==
X-Google-Smtp-Source: ABdhPJw/OiqjlQy13wJ5c3DBsfN8ilJde7iToaC3pbMAIQMHNQ4Sj4p65h7wR8fOB/0+0dHsFpsqwg==
X-Received: by 2002:a17:902:8a97:b029:d4:d3f4:d209 with SMTP id p23-20020a1709028a97b02900d4d3f4d209mr4436778plo.35.1602859327385;
        Fri, 16 Oct 2020 07:42:07 -0700 (PDT)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com. [209.85.210.180])
        by smtp.gmail.com with ESMTPSA id z142sm3143335pfc.179.2020.10.16.07.42.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 07:42:07 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id x13so1615301pfa.9
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 07:42:07 -0700 (PDT)
X-Received: by 2002:a67:ec9a:: with SMTP id h26mr2255406vsp.34.1602858975177;
 Fri, 16 Oct 2020 07:36:15 -0700 (PDT)
MIME-Version: 1.0
References: <b19c1f12-b7cf-fcae-4ebb-617019effe2e@arm.com> <55d3fb0f-f7d8-63c5-2bdb-53eaa62380e0@linaro.org>
 <f660731e-132b-2514-f526-d7123ed3522c@arm.com> <d04019bd-9e85-5f3e-2a1b-66780b8df3dc@linaro.org>
 <3e3dd42c-48ac-7267-45c5-ca88205611bd@arm.com> <00ceec64-3273-bb4a-6f38-22de8d877ab5@linaro.org>
 <CAJZ5v0hV8fwRnADdjiiF=zapO3AE6=_W_PeOQ_WhUirCcFkgdA@mail.gmail.com>
 <e321191c-61d2-a15d-47c2-653b277984ca@linaro.org> <20201016121844.GA2420691@google.com>
 <b3c6d7a5-0564-6e84-77ff-9afe10d7ee27@linaro.org> <20201016130905.GA2426638@google.com>
In-Reply-To: <20201016130905.GA2426638@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 16 Oct 2020 07:36:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VXt_JdYjPdTSJPWpXR2Owz096WhzYrZcQZ8-znmQbkLg@mail.gmail.com>
Message-ID: <CAD=FV=VXt_JdYjPdTSJPWpXR2Owz096WhzYrZcQZ8-znmQbkLg@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] Clarify abstract scale usage for power values in
 Energy Model, EAS and IPA
To:     Quentin Perret <qperret@google.com>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Lukasz Luba <lukasz.luba@arm.com>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Dietmar Eggemann <Dietmar.Eggemann@arm.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        "Nayak, Rajendra" <rnayak@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 16, 2020 at 6:09 AM Quentin Perret <qperret@google.com> wrote:
>
> On Friday 16 Oct 2020 at 14:50:29 (+0200), Daniel Lezcano wrote:
> > On 16/10/2020 14:18, Quentin Perret wrote:
> > > On Friday 16 Oct 2020 at 13:48:33 (+0200), Daniel Lezcano wrote:
> > >> If the SCMI is returning abstract numbers, the thermal IPA governor will
> > >> use these numbers as a reference to mitigate the temperature at the
> > >> specified sustainable power which is expressed in mW in the DT. So it
> > >> does not work and we can not detect such conflict.
> > >>
> > >> That is why I'm advocating to keep mW for the energy model and make the
> > >> SCMI and DT power numbers incompatible.
> > >
> > > I think it's fair to say SCMI-provided number should only be compared to
> > > other SCMI-provided numbers, so +1 on that. But what I don't understand
> > > is why specifying the EM in mW helps with that?
> >
> > It is already specified in mW. I'm just saying to not add the
> > 'scale'/'abstract'/'bogoWatt' in the documentation.
> >
> > > Can we not let the providers specify the unit?
> >
> > Yes, it is possible but the provider must give the 'unit' and the energy
> > model must store this information along with the "power" numbers, so we
> > can compare apple with apple.
> >
> > Today, the energy model is using the mW unit only and the providers are
> > not telling the 'unit', so both are missing.
> >
> > Because both are missing, it does not make sense to talk about
> > 'abstract' values in the energy model documentation until the above is
> > fixed.
>
> Right, so that sounds like a reasonable way forward with this series.
>
> Lukasz would you be able to re-spin this with a first patch that allows
> the EM provider to specify a unit? And perhaps we could use Doug's idea
> for the sustained power DT binding and allow specifying a unit
> explicitly there too, so we're sure to compare apples with apples.

The one issue that I started with, though, is that I wanted to be able
to specify "sustainable-power" for a board in the device tree.  Unless
you think you'll convince Rob that it's OK to provide a "units"
property in the device tree then just adding a "units" to the API
won't help us because you'll still be stuck mixing/matching with a
value based in mW, right?  ...or are you suggesting that the
board-specific value "sustainable-power" would also have to come from
SCMI?  That would be pretty annoying.

-Doug
