Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 586CA8343A
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 16:45:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733066AbfHFOpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 10:45:49 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:34388 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732037AbfHFOps (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 10:45:48 -0400
Received: by mail-ot1-f66.google.com with SMTP id n5so93164627otk.1
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 07:45:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qL4EweusQTAqTm2UQZo+p4qHxQ6KG4jJOgUjb864PtA=;
        b=AJJO+SZOcluCzJ++H0F6cxV0C3t38yiTL5LJXtThBb6AHtt3ej9TF69gDO5ziMnE1t
         UzY8Xl7VCOjYfniFT2sc+WlhFwBIirJdEg7dLJOsxjDlUn4nH0SqsxCKHGb/c+3R+GxN
         4e3wplNPjnhPo9HyDMBrQNv29X7/QALse27xRh1SEMBGXVEaf8VJVr6AcBFtWCvKT6Vd
         EXQj6FyI6ky864kSfbXeRKQfoIDcvSVYk7Pg/u0yS9SN7MOHI0pgn+M05/Kb8E87XaQf
         jfKvDEOXsDhHdN60Z+m0RDNDLfd4BpJkTbh9s+foFUzvs2jAJqjQtkuh+HRi1MmPu8c6
         KZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qL4EweusQTAqTm2UQZo+p4qHxQ6KG4jJOgUjb864PtA=;
        b=AGglC2hrtOAJBtu3SjicxJ8UtvGPOZTkgnFYPQP3/1JXN/D5fHvce91zENo/THtPo5
         XBxh/rMGs4RDKT28jHLTpd0+m6uSEo78SF8VqafrXkrBGmtAvYEuEQmGZfVD0SETY1oJ
         wT4ZmWcMbxFQZXl7I2fCQ/Vi6z8fVji7J+gvyG/ExZc3TXETDhP5lAZoNqeY8Rc/y4zN
         6tCNLK1Sgbv8YjPvLoiIP+c9qUQCIJDUpXvIq/fso9ifKVgV68Kl257X6qtm2Jgbo0FZ
         m8Dy7baa+QbTekXG12fqS17QZ9D6uYb7gsEepXtrIAyGpNi2ocY6OMsPgt8E3EUnltaw
         +SMg==
X-Gm-Message-State: APjAAAU1xC8hn10vWu6Y+fECmX7JgMtkXStDhPDPY3M7eBrw2GJKIpvW
        WOxuswRx67WMat2/p+q2M3t1Z7E3c/ZZG7Z+m0I=
X-Google-Smtp-Source: APXvYqwMIYf07XU1jxsnWiRsAuw11fY53EZZQc7W+MQEqp+6toYEgO/spXRTX0QFwqikATQYh04gOn6lWtKsGD/LTXg=
X-Received: by 2002:a9d:5a15:: with SMTP id v21mr3169183oth.263.1565102747413;
 Tue, 06 Aug 2019 07:45:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com> <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
In-Reply-To: <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
From:   Vasily Khoruzhick <anarsoul@gmail.com>
Date:   Tue, 6 Aug 2019 07:45:21 -0700
Message-ID: <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>,
        Harald Geyer <harald@ccbib.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > Looks like PMU in A64 is broken, it generates no interrupts at all and
> > as result 'perf top' shows no events.
>
> Does something like 'perf stat sleep 1' at least count cycles correctly?
> It could well just be that the interrupt numbers are wrong...

Looks like it does, at least result looks plausible:

$ perf stat sleep 1

Performance counter stats for 'sleep 1':

             4.08 msec task-clock:u              #    0.004 CPUs
utilized
                0      context-switches:u        #    0.000 K/sec
                0      cpu-migrations:u          #    0.000 K/sec
               55      page-faults:u             #    0.013 M/sec
          527,711      cycles:u                  #    0.129 GHz
          197,262      instructions:u            #    0.37  insn per
cycle
           24,242      branches:u                #    5.947 M/sec
            5,083      branch-misses:u           #   20.97% of all
branches

      1.011928625 seconds time elapsed

      0.000000000 seconds user
      0.007196000 seconds sys

> > Tested on Pine64-LTS.
> >
> > Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
> > Cc: Harald Geyer <harald@ccbib.org>
> > Cc: Jared D. McNeill <jmcneill@NetBSD.org>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >   arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 ---------
> >   1 file changed, 9 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > index 9cc9bdde81ac..cd92f546c483 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -142,15 +142,6 @@
> >               clock-output-names = "ext-osc32k";
> >       };
> >
> > -     pmu {
> > -             compatible = "arm,cortex-a53-pmu";
> > -             interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
> > -                          <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
> > -                          <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
> > -                          <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
>
> Cross-referencing between some random DTs in the H6 BSP I happen to have
> to hand and the A64 User Manual, it looks a lot like someone just forgot
> to subtract 32 from these to satisfy the awkward GIC binding - that
> wants the SPI index rather than the actual interrupt source number,
> which implies these should probably be 120-123 rather than 152-155.

Tried that, didn't work. 'grep pmu /proc/interrupts' shows zeroes, and
'perf top' is completely silent.

> Robin.
>
> > -             interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> > -     };
> > -
> >       psci {
> >               compatible = "arm,psci-0.2";
> >               method = "smc";
> >
