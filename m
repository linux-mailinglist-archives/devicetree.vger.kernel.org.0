Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C06632A4F41
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 19:45:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728351AbgKCSpi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 13:45:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728969AbgKCSpi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 13:45:38 -0500
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BCECC0617A6
        for <devicetree@vger.kernel.org>; Tue,  3 Nov 2020 10:45:36 -0800 (PST)
Received: by mail-io1-xd43.google.com with SMTP id u19so19566077ion.3
        for <devicetree@vger.kernel.org>; Tue, 03 Nov 2020 10:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OgVWTpOrMPjIuVeL2cgLMKQdzQLhuvarJci2SpLh/5A=;
        b=Oc8HAjuJZ68YBgtTDuQdDaeD/6Ez3BIuvplKaOikIXW6HcKAreBYOsB0tGpUmahmnu
         eflyjgP2lAVt36ZGob1IP6VB9qqWZRg3pA6ykiWdogLm2b0lk7Kv1sXA++RDvN9ueXc6
         9mA2evAAtea8ROCk+mCHUp4aiwacb4zyghC0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OgVWTpOrMPjIuVeL2cgLMKQdzQLhuvarJci2SpLh/5A=;
        b=UqZSn70YgYFfpFLi0yQb2yLf8OnqBriF3mvpmaZpoZHu0fuefzQ2Rpl9Q5kJVhR9Uq
         H9A9TSFnVB9uLAclTCRS5scbIE4K7mLh7icqQbMBzUBN3cpeQX6klxg7puEUpWxeqzOZ
         YLlTqhAC7Ln1ku81DzOhLBbb/QEemtxt5aM8OiRtSFbSmL5W91OJ28CJJ13WzA8iji4V
         GKuAVsDQe73BmoAii0U/yw12OLeSQhJUJJbJEAj9tGFUfKQ9vEMj9iXoXLz3/ospE4r5
         8/wIVaaqo2d3uFxtzTihYBWtRh57hPvGPtTP7AntF+USnNcVT98SHg6rIjr+2JzBWK1g
         yGUA==
X-Gm-Message-State: AOAM531N1hBu0Rjzgz3iD4T1ptH+bxlKOxJSf+LCFyMzCyrKXRYSYjk/
        G74K24pP12WLDiRBgl5WDWHZZo3awxv5/naYTck0
X-Google-Smtp-Source: ABdhPJz1NA93CqwEifS/bxYYelWtdS7ZycUNmgghuVgW1N+oYS/M06/fanY+hPWy8svInJcHT9+EBcUwEevIx+iMc78=
X-Received: by 2002:a5e:9244:: with SMTP id z4mr15350442iop.53.1604429136023;
 Tue, 03 Nov 2020 10:45:36 -0800 (PST)
MIME-Version: 1.0
References: <20201028232759.1928479-1-atish.patra@wdc.com> <20201028232759.1928479-3-atish.patra@wdc.com>
 <41f1248b-78c6-bac1-410b-9e222368c5f6@codethink.co.uk> <CAOnJCUJhQ=Zv0S4iCK4CDzQr_dfkw3J6ycdM=p6=5B2_sL1Ekg@mail.gmail.com>
 <2d7cc829-5df6-6b94-4c8f-9bae6080444e@codethink.co.uk> <CAOnJCULejyF9xyLk5M0TXqW_=nn0KM5aE8nhK+1h0Xayd2pKUg@mail.gmail.com>
 <fbe404b5-3bb1-dd00-e558-e4a55960b767@microchip.com> <fe079b4a-5410-5cc8-3f5e-8a95b573078a@codethink.co.uk>
 <CAOnJCUKH77XDymG+jAUYHP+5TC2aabTR4f8jF6s6FqqQNR=_CQ@mail.gmail.com> <22800ecc-a91b-ee3c-4717-4ee8802f31a2@codethink.co.uk>
In-Reply-To: <22800ecc-a91b-ee3c-4717-4ee8802f31a2@codethink.co.uk>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 3 Nov 2020 10:45:24 -0800
Message-ID: <CAOnJCUJogU-dZTi1ycvC3g8HAq6-4vkULy3B9+A8srf1n0sTjQ@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] RISC-V: Initial DTS for Microchip ICICLE board
To:     Ben Dooks <ben.dooks@codethink.co.uk>
Cc:     Cyril.Jean@microchip.com, devicetree@vger.kernel.org,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daire McNamara <Daire.McNamara@microchip.com>,
        Anup Patel <anup.patel@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Atish Patra <atish.patra@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alistair Francis <alistair.francis@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Padmarao Begari <Padmarao.Begari@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 3, 2020 at 10:39 AM Ben Dooks <ben.dooks@codethink.co.uk> wrote:
>
> On 03/11/2020 18:36, Atish Patra wrote:
> > On Tue, Nov 3, 2020 at 10:28 AM Ben Dooks <ben.dooks@codethink.co.uk> wrote:
> >>
> >> On 03/11/2020 18:10, Cyril.Jean@microchip.com wrote:
> >>> On 11/3/20 3:07 PM, Atish Patra wrote:
> >>>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >>>>
> >>>> On Fri, Oct 30, 2020 at 2:20 PM Ben Dooks <ben.dooks@codethink.co.uk> wrote:
> >>
> >> ,snip[
> >>
> >>>>>> @Cyril : Can we enable both eMMC & sdcard at the same time ?
> >>>>> I would put /both/ in but only enable the one in use for the moment.
> >>>>> Our boards are booting of eMMC as supplied, so this isn't going to work
> >>>>> as well. The eMMC is 8bit wide, and thus is only delivering 11MB/sec
> >>>>> instead of 22MB/sec. This performance is still not great, but losing
> >>>>> half the data-rate is just not good.
> >>>>>
> >>>> I am not sure what should be enabled by default. Updating sdcard is much
> >>>> easier than eMMC card and we use that approach.
> >>>>
> >>>> @Cyril: Is there a way that we can enable both ?
> >>>>
> >>> Yes, we can enable both but this requires a modification to the FPGA
> >>> design. One of the guys prototyped this while I was away. We will move
> >>> this along. This will require reprogramming the FPGA with a new design
> >>> and HSS version.
> >>>
> >>> Regards,
> >>>
> >>> Cyril.
> >>
> >> I either missed or couldn't find a way of forcing the boot mode to be
> >> from the SD slot. Have I missed something? At the moment we'd like to
> >> have more storage available as the ~7G free on the eMMC is not enough.
> >>
> >
> > I use tftpboot to load the kernel & DT from the network. SD card is
> > enabled in this DT and Linux
> > kernel uses SD slot instead of eMMC.
> >
> > To summarize, eMMC is used for HSS & U-Boot while SD card is used for
> > Linux which makes
> > more storage available to Linux.
> >
> > IMO, we should enable the sdcard for Linux DT until updated FPGA
> > design & HSS is available.
>
> Interesting as for me the default is for Linux to use the eMMC as
> well. I can't see any way for forcing the selection lines in the
> DT to say eMMC vs SD.
>

because you are probably loading the DT passed by U-boot. I load the DTB
built from the Linux source (the one present in this patch) by
stopping the autoboot in U-Boot.

The DT in U-Boot disables the SD card.


> If there is a way of controlling the selection lines then it might
> be possible to have both cards enabled with a bus selection MUX in
> software.
>
>
> --
> Ben Dooks                               http://www.codethink.co.uk/
> Senior Engineer                         Codethink - Providing Genius
>
> https://www.codethink.co.uk/privacy.html



--
Regards,
Atish
