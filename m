Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 479E5393FEC
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 11:27:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235955AbhE1J2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 05:28:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235640AbhE1J2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 05:28:30 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67C72C06174A
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 02:26:55 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id x13so1841998vsh.1
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 02:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lSrNJA8L2mfz3nzO0xWuQ7uzakK2R6vwdeEdePCtnq0=;
        b=vbGvnUB2ee8gN6kCb1QtHqgW5zdRB/De+4KKFZ3odYzssoqcORAziKqW3t/dl5074O
         MU02ZAwhTEUhcC5GUqskXZmCEId1/j/GxI7mGj/gxuVqU58+5iq4Y2yDNbcYUTl26J3N
         tbXjR0gcPStSOp+5QLfk9jCopcLRrqm5guRDC9vvuQFHJtwfckd9Ppz9E1l1wm616a2T
         ZcZLfN6Qm0Rv2NNVDqP1+Hatk0Lg2TWStZE5z3nPwyCjU0KcgkQIHgBPgHBpFdIUtOgr
         S30CVnx1+6dBR9MmULejbnwv+VnAT0/VQj2bym9pbKn1rthEPbbuloD9QHkEY4WO8vNo
         uUZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lSrNJA8L2mfz3nzO0xWuQ7uzakK2R6vwdeEdePCtnq0=;
        b=B3NYhcUuzs3p17lz+S8ddpC0HrAghHUE3JvL9MjClNKDRwUDlcjVu73eTieBnHol7c
         SeQ20bE8hk1rIBuN1hnnhOJaMszYkMlOqObZowF5spL9lVcfJo5EAX+iAksptXCM99DO
         V0QTciz+5Tfly8pzGBzptbrYKZwN3dIbRR18CtQueK3MenmyaguQV+AgX2y8aBAVtTvt
         T/Gd4QrhC3HTt4XJNDPy2f07QK0IPZCchXfeyWY6Rh/D4RUZWyr+FKVdPsTbl7NB313s
         HmeQjtvpBYO8JbAEirlgs7f9cJE8e0/RVj3Q5x3Pnp1CkMmr0e2fTmZWnKjym5xt1h3a
         3vmQ==
X-Gm-Message-State: AOAM532qVahNqzo7LW3Iv4QfchUUUoikNo4TSs2ADWrkZYqG9M/TdNV7
        W3ZX3HHZKcCQTgrey7VaDmQmo2QR8b5Pevdeg7/sWg==
X-Google-Smtp-Source: ABdhPJxnrT+9YO8VN0qWp0ACEUIbWnM1BEz+8iWMoAfJeIBYb9C3q1nJUf5ntroetINW8lgpgRY3na9se5SJiT9rv6Q=
X-Received: by 2002:a05:6102:7b4:: with SMTP id x20mr6125121vsg.48.1622194014560;
 Fri, 28 May 2021 02:26:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210517130823.796963-1-anup.patel@wdc.com> <20210517130823.796963-6-anup.patel@wdc.com>
 <CAPDyKFpxx-jBbL4o_iJCcivFL2ei5a7PcWVfUaBmLu-q89Mkjg@mail.gmail.com>
 <CAAhSdy1quHePY_HM875LHQgXGKrjm24SzeD5yFJUnqunpcHd8g@mail.gmail.com> <CAPDyKFo9ZjiMBKFwe+F9-s_sReCneO42z8ppsBdkf3=jnarJ5A@mail.gmail.com>
In-Reply-To: <CAPDyKFo9ZjiMBKFwe+F9-s_sReCneO42z8ppsBdkf3=jnarJ5A@mail.gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 28 May 2021 11:26:18 +0200
Message-ID: <CAPDyKFr9zM1eeXw+ekDsm3ZUZZRnhv_ibBvj2S-Mk9VcVJ3TTA@mail.gmail.com>
Subject: Re: [RFC PATCH v4 5/8] cpuidle: Factor-out power domain related code
 from PSCI domain driver
To:     Anup Patel <anup@brainfault.org>
Cc:     Anup Patel <anup.patel@wdc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Sandeep Tripathy <milun.tripathy@gmail.com>,
        Atish Patra <atish.patra@wdc.com>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        Liush <liush@allwinnertech.com>,
        DTML <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 May 2021 at 11:05, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Tue, 25 May 2021 at 07:39, Anup Patel <anup@brainfault.org> wrote:
> >
> > On Mon, May 24, 2021 at 11:31 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > >
> > > On Mon, 17 May 2021 at 15:10, Anup Patel <anup.patel@wdc.com> wrote:
> > > >
> > > > The generic power domain related code in PSCI domain driver is largely
> > > > independent of PSCI and can be shared with RISC-V SBI domain driver
> > > > hence we factor-out this code into dt_idle_genpd.c and dt_idle_genpd.h.
> > > >
> > > > Signed-off-by: Anup Patel <anup.patel@wdc.com>
> > >
> > > This is clearly a big step in the right direction. Just a couple minor
> > > things, see more below.
> > >
> > > Note that, I have a couple of patches in the pipe for the
> > > cpuidle-psci-domain driver (not ready to be posted). I need a couple
> > > of more days to confirm this restructuring still makes sense beyond
> > > these potential new changes. I will let you know as soon as I can with
> > > the outcome.
> >
> > Sure, I will wait for more comments from you. I was thinking of sending
> > next revision of patches sometime next week with the renaming of
> > function names which you suggested.
>
> Sounds good, that allows me a few more days this week.

I don't have any further comments at this point. It looks good to me,
but let me have a quick review on the next version before I provide my
ack.

[...]

Kind regards
Uffe
