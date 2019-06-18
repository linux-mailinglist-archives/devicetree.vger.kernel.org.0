Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 88D7C4A839
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 19:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729681AbfFRRYc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 13:24:32 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:44441 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729325AbfFRRYc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 13:24:32 -0400
Received: by mail-pg1-f194.google.com with SMTP id n2so8039637pgp.11
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 10:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BnbnMmU0Jlf0Dh3/RMX0Olnhoc4CQxFVUUZ/NavvDEw=;
        b=ll1rymTbPplaprZV57UnpS8jE5n5xi/OrEo/Y0NPjCmPVQxCvJh/6BIg3w33fTZjks
         uc58BY4oHSpbJWIU5Hqh857kUCCCLYsaK+9K1GzoisjFFxFu0fCAkzFgGaToMfSlQ4Y2
         phwyD12F7mbD2rr+9sCnFTQBBgD9ATyQg/MNtD0rqXzXwO0l4zZ6k1rH2QuUxftVNhVo
         MQxn+mIvzmOlZ2LGbmXiWOQfmYfJmVXLmgcHEXPi70qBALOr0pHKHr+AzWiShwZKF8sS
         7zQSJp4qHDnWe1bkA5EmffDgp0j9Rgj+PUEPHOLASQM2+5CbFiP9M+watB8/QAgbSmd7
         hoBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BnbnMmU0Jlf0Dh3/RMX0Olnhoc4CQxFVUUZ/NavvDEw=;
        b=IRfRoyH1VQJ0zSAp+Ov+Vo3metRMPDob7vtNymuziGhCR6tofRmad8UPR76x8X9ChY
         JclA5Ulg8l9+C32z9428S1OiYVD5rQeBo6k+mmU+pCm+q0dU9leEnGJ51s3LJg66ZbwP
         uuuMMQBa7DNldCIc2J4lwKArMOVjegNcKFDjnpzEw2bB9+IjsNC9xIC9XPWQApfIDZWZ
         yAbc7iw7l2JgVIExlc+4Pt+tSbNWSiB8pnH8ckb1acfQ2vN0zY1O5F6QRkl8m1K5INDf
         32bpz/2R5k0pSWKNx+QQGMiqNDRrcxXj4eRYc5WgE8duHIK4WTw64jZud1YEybJ+5oHY
         n9PQ==
X-Gm-Message-State: APjAAAWH0PwagNQVMfcz3GOx6EOy7rb3gqKIruGW1C/Rr2gT00vx0EB8
        urH0dv8/Fvo8DLUlosM55RxEN+wLHmvSadmqHVE=
X-Google-Smtp-Source: APXvYqzM2IKyqsp/kPpaBQbvS7bhCUBPy+Kauw/vtklCyEXsZUFZq88mRay9kUQTKelLLfunSSvJnDNoVmqCbExhVXk=
X-Received: by 2002:a63:1d53:: with SMTP id d19mr3695875pgm.152.1560878671182;
 Tue, 18 Jun 2019 10:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com> <20190613112320.GA18966@fuggles.cambridge.arm.com>
 <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com>
 <20190613174436.GG18966@fuggles.cambridge.arm.com> <CAHrpEqS9GEC9Shf-6xLL0_+WJNuwYOdKe=5jtUogLajfcWYMew@mail.gmail.com>
 <20190614102302.GD10659@fuggles.cambridge.arm.com>
In-Reply-To: <20190614102302.GD10659@fuggles.cambridge.arm.com>
From:   Zhi Li <lznuaa@gmail.com>
Date:   Tue, 18 Jun 2019 12:24:19 -0500
Message-ID: <CAHrpEqR+3LETyDosyRq=SBDC=g3tkm72vg-f=550H+TTVLbmcQ@mail.gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To:     Will Deacon <will.deacon@arm.com>
Cc:     Frank Li <frank.li@nxp.com>,
        "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 14, 2019 at 5:23 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Thu, Jun 13, 2019 at 02:13:20PM -0500, Zhi Li wrote:
> > On Thu, Jun 13, 2019 at 12:44 PM Will Deacon <will.deacon@arm.com> wrote:
> > >
> > > On Thu, Jun 13, 2019 at 12:04:37PM -0500, Zhi Li wrote:
> > > > On Thu, Jun 13, 2019 at 6:23 AM Will Deacon <will.deacon@arm.com> wrote:
> > > > >
> > > > > On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> > > > > > Add ddr performance monitor support for iMX8QXP
> > > > > >
> > > > > > There are 4 counters for ddr perfomance events.
> > > > > > counter 0 is dedicated for cycles.
> > > > > > you choose any up to 3 no cycles events.
> > > > > >
> > > > > > for example:
> > > > > >
> > > > > > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > > > > > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
> > > > >
> > > > > I've pushed patches 1, 2 and 4 out with some minor tweaks to:
> > > > >
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf
> > > > >
> > > > > I'll leave the actual .dts change to go via the soc tree, since last time
> > > > > I took one of those it just resulted in conflicts.
> > > > >
> > > > > Frank, Andrey: Please could you try to run the perf fuzzer on this before
> > > > > it lands in mainline? It has a good track record of finding nasty PMU driver
> > > > > bugs, but it obviously requires access to hardware which implements the PMU:
> > > > >
> > > > > http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/
> > > >
> > > > Okay, how long should be run generally?
> > > > I need make sure it can pass without my patches at our platform.
> > >
> > > As you long as you can really, but if it survives a few hours that's usually
> > > a good sign. Overnight is even better.
> >
> > Base on commit f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a
> > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > Date:   Sun Jun 2 13:55:33 2019 -0700
> >
> >     Linux 5.2-rc3
> >
> > RCU report problem:
> >
> > [ 6048.741784] rcu: INFO: rcu_preempt self-detected stall on CPU
> > [ 6048.747550] rcu:     1-....: (5249 ticks this GP)
> > idle=c5a/1/0x4000000000000004 softirq=503121/503121 fqs=2425
> > [ 6048.757384]  (t=5253 jiffies g=1416105 q=117)
> > [ 6048.761745] Task dump for CPU 1:
> > [ 6048.764977] perf_fuzzer     R  running task        0 32520    426 0x00000202
> > [ 6048.772030] Call trace:
> > [ 6048.774493]  dump_backtrace+0x0/0x130
> > [ 6048.778159]  show_stack+0x14/0x20
> > [ 6048.781477]  sched_show_task+0x108/0x138
> > [ 6048.785401]  dump_cpu_task+0x40/0x4c
> > [ 6048.788983]  rcu_dump_cpu_stacks+0x94/0xd0
> > [ 6048.793082]  rcu_sched_clock_irq+0x5e0/0x918
> > [ 6048.797357]  update_process_times+0x2c/0x70
> > [ 6048.801545]  tick_sched_handle.isra.6+0x3c/0x50
> > [ 6048.806076]  tick_sched_timer+0x48/0x98
> > [ 6048.809918]  __hrtimer_run_queues+0x118/0x1a8
> > [ 6048.814277]  hrtimer_interrupt+0xe4/0x238
> > [ 6048.818296]  arch_timer_handler_phys+0x2c/0x38
> > [ 6048.822743]  handle_percpu_devid_irq+0x80/0x140
> > [ 6048.827277]  generic_handle_irq+0x24/0x38
>
> This is the timer interrupt which prompts the RCU splat. Do you have
> information about where the CPU was when the interrupt occurred?
>
> In the meantime, it's still worth leaving the fuzzer running to see what
> else it finds.

Overnight test done, only above rcu problem happen at both with and
without ddr perf patches.

best regards
Frank Li


>
> Will
