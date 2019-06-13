Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26FEF44BE2
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 21:13:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727198AbfFMTNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 15:13:33 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:37028 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725842AbfFMTNd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 15:13:33 -0400
Received: by mail-pf1-f195.google.com with SMTP id 19so11578807pfa.4
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 12:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uZvaP6J/2uj4GWczz8vQuvYjmww5DBmJt1/UPqQ75+g=;
        b=sYY6OUQCEcv+JDUvVJWD7r0iaaEI38vSxGY2WB2eDVe2DKNcJW0P18iIzvyDCiMpm2
         XlK3VBm7o4rpUCqsAPO+2MorRvvIA3fhIwYLljFVjfTjbfoQJCA1JVhcfm5gibu8OmzN
         3XRBw8ru3+0tQO4JANfnt6uQrJIdIi/zK2tQXoi9S9IxO0fug7Lp1gTMSgeYcUVpaXiG
         Y2dGRbwI29DwG2RcgcIxVDL9Ha9Le/OqokYMNsUTqL1gK7DUP2x6Rgi8rD0qvZzySWJA
         h9oKlSlTwQcVUnMyiDMpOerIvhZTghfejWj5HZalpxpQ2HWVFIzl9yA9NLjainCwKUw0
         7pSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uZvaP6J/2uj4GWczz8vQuvYjmww5DBmJt1/UPqQ75+g=;
        b=TPymTt4QKVBqXDSLI/vd0D2g5ewfXtRMYQmU6bburQy3IzbLn//mPFGPVQdO2a4YYX
         jhI1HQH0swcps6jFW8gy3E9kihB+fYMUZFrPSiwhQsrHMKXjGUk4xbi/EdeaibjQWcsM
         J5HYST7z4tMvcA/wd3Ys73y/DLrclCE1idF1UiaZFsS35vphtjQ/LsGvPS5qmNDYUYjA
         9MEGPQqfZVa92l1L4HASux+2FW+huLZE6rf/I5ASyOGgg0lmvINQrsek38yEQIsQzefH
         Vvuc+sD6UvxxinhHOOv9aBZAX/10r9oqizLPgmXwdw2jiXS0NVKC2XR3i1aSmx+HT6nm
         lRxQ==
X-Gm-Message-State: APjAAAUB8eSuzXMJTdFwLb3WkmmNefhdQWK3fE4zRE7fuGgdP4Iz2Juz
        f5F1YFiO13oxurr3OUFd5a/ZybBygG8pUFlkqbk=
X-Google-Smtp-Source: APXvYqw8y/3F+ZW9m7cYr/+PV3Uz68k36e5U8xmtSSKl/KsuPU3YhRwJHNT2MQYkpjcO+D1YPRzbx+4jXyyNdkFRqDw=
X-Received: by 2002:a62:1990:: with SMTP id 138mr94766159pfz.133.1560453212028;
 Thu, 13 Jun 2019 12:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com> <20190613112320.GA18966@fuggles.cambridge.arm.com>
 <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com> <20190613174436.GG18966@fuggles.cambridge.arm.com>
In-Reply-To: <20190613174436.GG18966@fuggles.cambridge.arm.com>
From:   Zhi Li <lznuaa@gmail.com>
Date:   Thu, 13 Jun 2019 14:13:20 -0500
Message-ID: <CAHrpEqS9GEC9Shf-6xLL0_+WJNuwYOdKe=5jtUogLajfcWYMew@mail.gmail.com>
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

On Thu, Jun 13, 2019 at 12:44 PM Will Deacon <will.deacon@arm.com> wrote:
>
> On Thu, Jun 13, 2019 at 12:04:37PM -0500, Zhi Li wrote:
> > On Thu, Jun 13, 2019 at 6:23 AM Will Deacon <will.deacon@arm.com> wrote:
> > >
> > > On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> > > > Add ddr performance monitor support for iMX8QXP
> > > >
> > > > There are 4 counters for ddr perfomance events.
> > > > counter 0 is dedicated for cycles.
> > > > you choose any up to 3 no cycles events.
> > > >
> > > > for example:
> > > >
> > > > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > > > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
> > >
> > > I've pushed patches 1, 2 and 4 out with some minor tweaks to:
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf
> > >
> > > I'll leave the actual .dts change to go via the soc tree, since last time
> > > I took one of those it just resulted in conflicts.
> > >
> > > Frank, Andrey: Please could you try to run the perf fuzzer on this before
> > > it lands in mainline? It has a good track record of finding nasty PMU driver
> > > bugs, but it obviously requires access to hardware which implements the PMU:
> > >
> > > http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/
> >
> > Okay, how long should be run generally?
> > I need make sure it can pass without my patches at our platform.
>
> As you long as you can really, but if it survives a few hours that's usually
> a good sign. Overnight is even better.

Base on commit f2c7c76c5d0a443053e94adb9f0918fa2fb85c3a
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sun Jun 2 13:55:33 2019 -0700

    Linux 5.2-rc3

RCU report problem:

[ 6048.741784] rcu: INFO: rcu_preempt self-detected stall on CPU
[ 6048.747550] rcu:     1-....: (5249 ticks this GP)
idle=c5a/1/0x4000000000000004 softirq=503121/503121 fqs=2425
[ 6048.757384]  (t=5253 jiffies g=1416105 q=117)
[ 6048.761745] Task dump for CPU 1:
[ 6048.764977] perf_fuzzer     R  running task        0 32520    426 0x00000202
[ 6048.772030] Call trace:
[ 6048.774493]  dump_backtrace+0x0/0x130
[ 6048.778159]  show_stack+0x14/0x20
[ 6048.781477]  sched_show_task+0x108/0x138
[ 6048.785401]  dump_cpu_task+0x40/0x4c
[ 6048.788983]  rcu_dump_cpu_stacks+0x94/0xd0
[ 6048.793082]  rcu_sched_clock_irq+0x5e0/0x918
[ 6048.797357]  update_process_times+0x2c/0x70
[ 6048.801545]  tick_sched_handle.isra.6+0x3c/0x50
[ 6048.806076]  tick_sched_timer+0x48/0x98
[ 6048.809918]  __hrtimer_run_queues+0x118/0x1a8
[ 6048.814277]  hrtimer_interrupt+0xe4/0x238
[ 6048.818296]  arch_timer_handler_phys+0x2c/0x38
[ 6048.822743]  handle_percpu_devid_irq+0x80/0x140
[ 6048.827277]  generic_handle_irq+0x24/0x38

Only armv8_pmuv3 and basic perf event enabled.
perf list

List of pre-defined events (to be used in -e):

  branch-instructions OR branches                    [Hardware event]
  branch-misses                                      [Hardware event]
  bus-cycles                                         [Hardware event]
  cache-misses                                       [Hardware event]
  cache-references                                   [Hardware event]
  cpu-cycles OR cycles                               [Hardware event]
  instructions                                       [Hardware event]

  alignment-faults                                   [Software event]
  bpf-output                                         [Software event]
  context-switches OR cs                             [Software event]
  cpu-clock                                          [Software event]
  cpu-migrations OR migrations                       [Software event]
  dummy                                              [Software event]
  emulation-faults                                   [Software event]
  major-faults                                       [Software event]
  minor-faults                                       [Software event]
  page-faults OR faults                              [Software event]
  task-clock                                         [Software event]

  L1-dcache-load-misses                              [Hardware cache event]
  L1-dcache-loads                                    [Hardware cache event]
  L1-icache-load-misses                              [Hardware cache event]
  L1-icache-loads                                    [Hardware cache event]
  branch-load-misses                                 [Hardware cache event]
  branch-loads                                       [Hardware cache event]
  dTLB-load-misses                                   [Hardware cache event]
  iTLB-load-misses                                   [Hardware cache event]

  armv8_pmuv3/br_immed_retired/                      [Kernel PMU event]
  armv8_pmuv3/br_mis_pred/                           [Kernel PMU event]
 ****8

>
> Will
