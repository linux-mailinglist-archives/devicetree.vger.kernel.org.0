Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 548AD3FBEB5
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 00:07:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229887AbhH3WIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 18:08:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238480AbhH3WH7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Aug 2021 18:07:59 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5331EC061575
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 15:07:05 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id n18so14777900pgm.12
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 15:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=WLGwHIgi8+c63l5t5G2K4SObmu7qTQJFsu6MiHc3A1M=;
        b=CmuQdApd40lcTuLCo2ZK/4cW+YqmHcavNch3nIYmDtSe50azbMpNA+crBZvN8kYb+M
         OgM68cDu+OUHRkgKaIfL/rL/Spn9yRAQTZcAJ/kTgSGVl8dym3SPx1+rsTMEMkyQLh4l
         Hgxm7gPS0Bj8pLtw+IEKh59F4n7EymUnQ80a84xAg5E/oumHj7YPWyvVZIdCWUWG2IO1
         88T01yxf0Fz//smka0Ag3NXfv6tSv0hYyJSnLKhBPH5fCotlZpI6YSAAILdJJxAQCKVu
         GH9Y4jxs6Y+eeigRGLDdgevMYL3PhZtS/N29QpwAAE/3dEzb2qQ1opNmM/j0gchXoOM6
         WCaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=WLGwHIgi8+c63l5t5G2K4SObmu7qTQJFsu6MiHc3A1M=;
        b=tDZyHdpy7CjbyB4Wj1ZX5Pjq9TCO1x9jgVpC4HGIW5EBilzcwAbGS82Zt1zPYX+O1J
         TPHWXpBlDJZt7TFoafQ0ze3ImoeqDhhr0+M9XYjGHcAYKpHJJvNP1DdAPT0S/m7JkjAH
         2WkLa87hwMYQojuvfeSy4Zc+npFpnAfrTtHsmUXIECZO4pbUUGGthSIbLfxFQZxJfLnp
         4RKRgv05jPqjXgLqVdFyMEunRLqVJRVHNbkeEmiy4AWuP0tKaox/7jOIVDBMqwJ8nTrO
         v4Nrc7OkofxFavRhwxGe8G8k2cJftSzs2dfbsULkJHawVkqvATS40O4MBZIz9WZzZn+T
         JHFA==
X-Gm-Message-State: AOAM531mnHvnt6vvlzWm4zcT2bmEVE3mxZOudzCNnidsXdisXFCclcNj
        PgfppfevYPTlwq+iDCEd41ZC9tLmCZw7pYDimR5MWQ==
X-Google-Smtp-Source: ABdhPJwjlye0MyMf01iM7/BNN2jdHES13JRNSLGolXuyKmA02R2kHekAfO3Z+u9L/cE11Hd7f3470Nqvl7Ti/KYyv7M=
X-Received: by 2002:a62:cdcd:0:b0:405:27a5:fbbb with SMTP id
 o196-20020a62cdcd000000b0040527a5fbbbmr180434pfg.7.1630361224757; Mon, 30 Aug
 2021 15:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de> <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
 <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de> <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
In-Reply-To: <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 30 Aug 2021 15:06:53 -0700
Message-ID: <CAJ+vNU2tSh-0TuaAZ-_Hkg3K5fudc3U77tAtcRaja-GLzXsYPQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>, Peng Fan <peng.fan@nxp.com>,
        Marek Vasut <marex@denx.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de, Fabio Estevam <festevam@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 9, 2021 at 4:01 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi Frieder,
>
> Am Donnerstag, dem 05.08.2021 um 20:56 +0200 schrieb Frieder Schrempf:
> > On 05.08.21 12:18, Frieder Schrempf wrote:
> > > On 21.07.21 22:46, Lucas Stach wrote:
> > > > Hi all,
> > > >
> > > > second revision of the GPC improvements and BLK_CTRL driver to make=
 use
> > > > of all the power-domains on the i.MX8MM. I'm not going to repeat th=
e full
> > > > blurb from the v1 cover letter here, but if you are not familiar wi=
th
> > > > i.MX8MM power domains, it may be worth a read.
> > > >
> > > > This 2nd revision fixes the DT bindings to be valid yaml, some smal=
l
> > > > failure path issues and most importantly the interaction with syste=
m
> > > > suspend/resume. With the previous version some of the power domains
> > > > would not come up correctly after a suspend/resume cycle.
> > > >
> > > > Updated testing git trees here, disclaimer still applies:
> > > > https://git.pengutronix.de/cgit/lst/linux/log/?h=3Dimx8m-power-doma=
ins
> > > > https://git.pengutronix.de/cgit/lst/linux/log/?h=3Dimx8m-power-doma=
ins-testing
> > >
> > > I finally did some tests on my side using USB, GPU and DSI (no PCIe, =
VPU, CSI so far) and the results are promising. Thanks for the effort!
> > >
> > > I will try to run some more automated suspend/resume and reboot test =
cycles over the weekend and report the results here afterwards.
> > >
> >
> > Unfortunately I got some results sooner than I had hoped. I set up a si=
mple loop to suspend/resume every few seconds and on the first run it took =
around 2-3 hours for the device to lock up on resume. On the second run it =
took less than half an hour. I had glmark2-es2-drm running in the backgroun=
d, but it looks like it crashed at some point before the lockup occurred.
> >
> > Of course this could also be unrelated and caused by some peripheral dr=
iver or something but the first suspicion is definitely the power domains.
> >
> > If you have any suggestions for which debug options to enable or where =
to add some printks, please let me know. If I do another run I would like t=
o make sure that the resulting logs are helpful for debugging.
> >
> > And I would appreciate if someone else could try to reproduce this prob=
lem on his/her side. I use this simple script for testing:
> >
> > #!/bin/sh
> >
> > glmark2-es2-drm &
> >
> > while true;
> > do
> >     echo +10 > /sys/class/rtc/rtc0/wakealarm
> >     echo mem > /sys/power/state
> >     sleep 5
> > done;
>
> Hm, that's unfortunate.
>
> I'm back from a two week vacation, but it looks like I won't have much
> time available to look into this issue soon. It would be very helpful
> if you could try to pinpoint the hang a bit more.  If you can reproduce
> the hang with no_console_suspend you might be able to extract a bit
> more info in which stage the hang happens (suspend, resume, TF-A, etc.)
> If the hang is in the kernel you might be able to add some prints to
> the suspend/resume paths to be able to track down the exact point of
> the hang.
>
> I'm happy to look into the issue once it's better known where to look,
> but I fear that I won't have time to do the above investigation myself
> short term. Frieder, is this something you could help with over the
> next few days?
>

Lucas / Frieder,

Can you update us on where you are at with this patch series? I fear
we are going to go through another kernel release without IMX8MM
blk-ctl support and all the things that depend on it such as
USB/PCI/DSI/CSI/GPU/VPU. If there is some specific testing you need
please let me know what I can do to help. I have a variety of IMX8MM
hardware but not a lot of time or knowledge with regards to
troubleshooting suspend/resume issues.

Are the issues found a regression?

Best regards,

Tim
