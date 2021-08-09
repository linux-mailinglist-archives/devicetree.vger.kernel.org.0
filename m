Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DE6E3E4C6B
	for <lists+devicetree@lfdr.de>; Mon,  9 Aug 2021 20:52:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235666AbhHISwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 14:52:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235835AbhHISwc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 14:52:32 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DB15C06179E
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 11:52:08 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id f13so26101952edq.13
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 11:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XsY1T+ZcNexFoxRjxiTUapeVjeXQ1jY55lc32SOmy1E=;
        b=DdAAN3VumBBn6g2xznpLrHsooL1sZzeg6QScu6NH4CXFzv2eaOE9K+sBwjGcFuFzMh
         vt8N7ihEmfYt2LKBeaEcXBKDKfjKwuoTpqndZPfxTs60klkoMq7vtpOnYxRO9LFOjOzW
         JyUBBhxtnlIDBzmUASeAOp4lxS5TjX1oqNgROGwWLp9VmpvKXH+dQT/gXVCf8HpCd8GJ
         7VU5e++NkxBX8NvOJACyTyyTFSsjJKF8aW19tQkX06DNXn13UkSVUg1BEnKRO1w1OD2D
         5W5twEYjTZwmIcvjx8ayrM1Slj7I+utfJX/UXKTTdU/S9eIL5PcZMDVFgzXVzd27UkOl
         289Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XsY1T+ZcNexFoxRjxiTUapeVjeXQ1jY55lc32SOmy1E=;
        b=PjOqVjcQbtzHCrftzZ2z0ZbpdGPIAZNmeethMTqHqpu2gXPqKr3aPAQxQqDw2zU29w
         JOMtjs9mNrVIK9EgGPm8jKaTnLLDsozcli+c7KzGoJflp7iihlST+xZ4Hp5VvOQeHBOS
         coFGCBODT5EE7fsIHRX4kV/DtTZZ+8I/oz+coIqesdgTqLRqbNY3KDY8+nN7IVpRx/+s
         Qm836orFn6ylgWrLIgjurZ+rqDN4hG+Tocmvpcnb9COy8ihUNgiSAXB7kzHgbo1/jAl4
         ROm8xJbKjGy7rBNwS5ehlWmNAeioy1CUnVYUXXghkunmCKlKyJbMiRBLDwn69vmtJ029
         WWfA==
X-Gm-Message-State: AOAM531oA5AAFSazT4rhc9wOKRGZKv8KA7cQsv1Li0peMOwSWC+mAm35
        popnBFWkL1vgpxHoy28VFkNPctHESTTMSMAgjW8=
X-Google-Smtp-Source: ABdhPJx2zr1GH5VAhSUfe42K2jv5XXNr1qRQm1tv7/sKSCER42eOHllUo4/uKas0piLmD0z6G/KLMmTjn67j1rJReh4=
X-Received: by 2002:a05:6402:19a:: with SMTP id r26mr31451311edv.230.1628535126890;
 Mon, 09 Aug 2021 11:52:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210716232916.3572966-1-l.stach@pengutronix.de>
 <20210721204703.1424034-1-l.stach@pengutronix.de> <818b52fe-8fa6-b47a-6dde-783ac378c603@kontron.de>
 <8de1cd0a-4d91-60e2-61e6-9f903bbf546b@kontron.de> <8ea33d97fb3f7abb2d80b11db28cce8c01932a09.camel@pengutronix.de>
 <befbf918-c14a-e97c-a8d5-f5fe874dfa94@kontron.de>
In-Reply-To: <befbf918-c14a-e97c-a8d5-f5fe874dfa94@kontron.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Mon, 9 Aug 2021 13:51:55 -0500
Message-ID: <CAHCN7xKkgNbVJNX57192z0X1DqiGje-CEAV9LA+EAPROtO2P3A@mail.gmail.com>
Subject: Re: [PATCH v2 00/18] i.MX8MM GPC improvements and BLK_CTRL driver
To:     Frieder Schrempf <frieder.schrempf@kontron.de>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, Marek Vasut <marex@denx.de>,
        devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 9, 2021 at 6:50 AM Frieder Schrempf
<frieder.schrempf@kontron.de> wrote:
>
> On 09.08.21 13:01, Lucas Stach wrote:
> > Hi Frieder,
> >
> > Am Donnerstag, dem 05.08.2021 um 20:56 +0200 schrieb Frieder Schrempf:
> >> On 05.08.21 12:18, Frieder Schrempf wrote:
> >>> On 21.07.21 22:46, Lucas Stach wrote:
> >>>> Hi all,
> >>>>
> >>>> second revision of the GPC improvements and BLK_CTRL driver to make =
use
> >>>> of all the power-domains on the i.MX8MM. I'm not going to repeat the=
 full
> >>>> blurb from the v1 cover letter here, but if you are not familiar wit=
h
> >>>> i.MX8MM power domains, it may be worth a read.
> >>>>
> >>>> This 2nd revision fixes the DT bindings to be valid yaml, some small
> >>>> failure path issues and most importantly the interaction with system
> >>>> suspend/resume. With the previous version some of the power domains
> >>>> would not come up correctly after a suspend/resume cycle.
> >>>>
> >>>> Updated testing git trees here, disclaimer still applies:
> >>>> https://eur04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2F=
git.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains&=
amp;data=3D04%7C01%7Cfrieder.schrempf%40kontron.de%7C189884f9332e40cd566a08=
d95b250a82%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637641036912506485%=
7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWw=
iLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DOlymcyF9VOt6nsb2E%2BpFLTBnmlpOIOxwzdBbgg=
Pu%2FHo%3D&amp;reserved=3D0
> >>>> https://eur04.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2F=
git.pengutronix.de%2Fcgit%2Flst%2Flinux%2Flog%2F%3Fh%3Dimx8m-power-domains-=
testing&amp;data=3D04%7C01%7Cfrieder.schrempf%40kontron.de%7C189884f9332e40=
cd566a08d95b250a82%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C63764103691=
2506485%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI=
6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DXSHl3JDKPFX%2FifXK5fcMQFOXbQXuHO=
JaNnJ3%2BtrMErk%3D&amp;reserved=3D0
> >>>
> >>> I finally did some tests on my side using USB, GPU and DSI (no PCIe, =
VPU, CSI so far) and the results are promising. Thanks for the effort!
> >>>
> >>> I will try to run some more automated suspend/resume and reboot test =
cycles over the weekend and report the results here afterwards.
> >>>
> >>
> >> Unfortunately I got some results sooner than I had hoped. I set up a s=
imple loop to suspend/resume every few seconds and on the first run it took=
 around 2-3 hours for the device to lock up on resume. On the second run it=
 took less than half an hour. I had glmark2-es2-drm running in the backgrou=
nd, but it looks like it crashed at some point before the lockup occurred.
> >>
> >> Of course this could also be unrelated and caused by some peripheral d=
river or something but the first suspicion is definitely the power domains.
> >>
> >> If you have any suggestions for which debug options to enable or where=
 to add some printks, please let me know. If I do another run I would like =
to make sure that the resulting logs are helpful for debugging.
> >>
> >> And I would appreciate if someone else could try to reproduce this pro=
blem on his/her side. I use this simple script for testing:
> >>
> >> #!/bin/sh
> >>
> >> glmark2-es2-drm &
> >>
> >> while true;
> >> do
> >>     echo +10 > /sys/class/rtc/rtc0/wakealarm
> >>     echo mem > /sys/power/state
> >>     sleep 5
> >> done;
> >
> > Hm, that's unfortunate.
> >
> > I'm back from a two week vacation, but it looks like I won't have much
> > time available to look into this issue soon. It would be very helpful
> > if you could try to pinpoint the hang a bit more.  If you can reproduce
> > the hang with no_console_suspend you might be able to extract a bit
> > more info in which stage the hang happens (suspend, resume, TF-A, etc.)
> > If the hang is in the kernel you might be able to add some prints to
> > the suspend/resume paths to be able to track down the exact point of
> > the hang.
> >
> > I'm happy to look into the issue once it's better known where to look,
> > but I fear that I won't have time to do the above investigation myself
> > short term. Frieder, is this something you could help with over the
> > next few days?
>
> I will see if I can find some time to track down the issue at least a lit=
tle bit more. But I imagine it could get quite tedious if it takes up to se=
veral hours to reproduce the issue and I don't have much time to spare.
>
> @Peng, @Adam and everyone else: Any chance you could setup a similar test=
 and try to reproduce this?

right now i am on medical leave due to a broken wrist, and i wont be
able to help until it heals.

sorry

adam
>
> On the other hand reboot cycle testing didn't show any lockup problems ov=
er more than 24 hours, so it seems like the issue is limited to resume.
