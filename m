Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28AA6412DB6
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 06:16:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229942AbhIUESQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 00:18:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229722AbhIUESP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 00:18:15 -0400
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2387BC061574
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 21:16:48 -0700 (PDT)
Received: by mail-vs1-xe2e.google.com with SMTP id y141so7450733vsy.5
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 21:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SAi9iEtl1zaNOqngcM5fp7tnLPNpMINcOqm4SqJSwB0=;
        b=m8VJIsaH5UO9oZQqjLJybwf1nWIxkNfnMXQI6YMtCdTqaWNApkW1hcU1Nncnj5uocq
         G+iqgU+lffQpO3WDjfhbsbwhEki2uqm/8HKWVywp49bowY3+YSNxzwnhewNtEycfWl2U
         JFqULkEvhXVvm8qHY9wnAHCTvEC+KPj4DNlmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SAi9iEtl1zaNOqngcM5fp7tnLPNpMINcOqm4SqJSwB0=;
        b=Z7YZ8poaNktzXDqlBYs+TYfhV7KHicDaNMAk2qr8w6XUDOUDyLX0ZHamvsX9fsy2vB
         ieuxP02DhO3hQvmkCLRya2Y/O6+btgfCOAcGkhPSinwipVYhrUujXSOK/LbYzTZsCQRV
         eonOsfNSNHuTCOt3qtoO7GuONgRWOMKWbn2DUMKI01MzNEnMvtXbh2SHnd2B1vx5djb9
         pEtLw3ol274T9GoKMRt4MCoh9/NUV9pqfXpZNZDNP7W4zfg56aWPqL3Timjgt2UEdsJG
         D7uEjF7e5vPwt00M3XLiuK+Td6GfP41wUpanESh3suh5FsHsc7RyXkmOZ3opmjKuErJp
         zLpg==
X-Gm-Message-State: AOAM5337vgV+CINaFVL+Rp2zCEJUfivMCfVpAS/CLPgyw1ZV7b3Xc0zt
        J5uuP2W+OxgJJDQHaPx2/rW24tHomPWfolqF3HMbaEhuX1iIzw==
X-Google-Smtp-Source: ABdhPJwYwUijx2JX/eTVggW3Zk/rqnL8sWdqdfplswyeCn94r0D+9lT8csuxcg0WymeGkuXgEtYTtVwkg/bWsmLTUlI=
X-Received: by 2002:a67:c01b:: with SMTP id v27mr5466384vsi.45.1632197806423;
 Mon, 20 Sep 2021 21:16:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org>
In-Reply-To: <87wnnbv6ac.wl-maz@kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Tue, 21 Sep 2021 13:16:35 +0900
Message-ID: <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
Subject: Re: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
To:     Marc Zyngier <maz@kernel.org>
Cc:     DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marc,

On Mon, 20 Sept 2021 at 20:24, Marc Zyngier <maz@kernel.org> wrote:
> > > Is this regmap call atomic? When running this, you are holding a
> > > raw_spinlock already. From what I can see, this is unlikely to work
> > > correctly with the current state of regmap.
> >
> > I didn't even think about it. I will check.
>
> You may want to enable lockdep to verify that.

I've just checked with lockdep and while it doesn't complain about
this code it complains about similar code I have somewhere else that's
almost identical (yet another interrupt controller driver I needed to
write..).
So it probably doesn't work properly as you say. I'll fix that up.

> > Technically I think the EOI callback should actually be ACK instead
> > but from my fuzzy memory with the stack of IRQ controllers that
> > resulted in a null pointer dereference.
>
> That's probably because you are using the wrong flow handler. You
> should turn this irq_eoi into an irq_ack, because that's really what
> it is, and use handle_edge_irq() as the flow handler.

If I do that (put the ack clearing callback into the ack slot, change
the handler to handle_edge_irq()) I get this explosion:

# gpiomon -r 0 44
[   23.449571] 8<--- cut here ---
[   23.452673] Unable to handle kernel NULL pointer dereference at
virtual address 00000000
[   23.460804] pgd = (ptrval)
[   23.463534] [00000000] *pgd=23530835, *pte=00000000, *ppte=00000000
[   23.469868] Internal error: Oops: 80000007 [#1] SMP ARM
[   23.475128] Modules linked in:
[   23.478211] CPU: 0 PID: 193 Comm: gpiomon Not tainted 5.15.0-rc2+ #2565
[   23.484866] Hardware name: MStar/Sigmastar Armv7 (Device Tree)
[   23.490727] PC is at 0x0
[   23.493283] LR is at handle_edge_irq+0x88/0xfc
[   23.497764] pc : [<00000000>]    lr : [<c0180694>]    psr: a0040193
[   23.504064] sp : c2405d90  ip : 00000000  fp : c35a786c
[   23.509318] r10: 00000001  r9 : c1b96fc0  r8 : 00000020
[   23.514572] r7 : 000000c8  r6 : c35a786c  r5 : c35a7818  r4 : c35a7800
[   23.521135] r3 : 00000000  r2 : 000015d6  r1 : 06f80000  r0 : c35a7818

This one is because the GPIO controller irqchip that is on top of this
doesn't have an ack callback.

So if I set irq_chip_ack_parent as the ack callback I get another explosion:

# gpiomon -r 0 44
[   22.370689] 8<--- cut here ---
[   22.373802] Unable to handle kernel NULL pointer dereference at
virtual address 00000018
[   22.381945] pgd = (ptrval)
[   22.384685] [00000018] *pgd=235cb835, *pte=00000000, *ppte=00000000
[   22.391038] Internal error: Oops: 17 [#1] SMP ARM
[   22.395776] Modules linked in:
[   22.398860] CPU: 1 PID: 193 Comm: gpiomon Not tainted 5.15.0-rc2+ #2566
[   22.405515] Hardware name: MStar/Sigmastar Armv7 (Device Tree)
[   22.411376] PC is at irq_chip_ack_parent+0x8/0x10
[   22.416120] LR is at __irq_do_set_handler+0x3c/0x11c
[   22.421119] pc : [<c017f498>]    lr : [<c018029c>]    psr: a0040093
[   22.427419] sp : c3505d68  ip : ffffe000  fp : 00000000
[   22.432673] r10: c0d592d4  r9 : 00000001  r8 : 00000000
[   22.437927] r7 : c3502618  r6 : 00000000  r5 : c017b9cc  r4 : c3502600
[   22.444489] r3 : 00000000  r2 : c10bb294  r1 : c10bb294  r0 : c26a3440
[   22.451053] Flags: NzCv  IRQs off  FIQs on  Mode SVC_32  ISA ARM
Segment user
[   22.458317] Control: 10c5387d  Table: 235b006a  DAC: 00000055
---snip---
[   22.725196] [<c017f498>] (irq_chip_ack_parent) from [<c018029c>]
(__irq_do_set_handler+0x3c/0x11c)
[   22.734219] [<c018029c>] (__irq_do_set_handler) from [<c01803b4>]
(__irq_set_handler+0x38/0x50)
[   22.742976] [<c01803b4>] (__irq_set_handler) from [<c0181880>]
(irq_domain_set_info+0x34/0x48)
[   22.751649] [<c0181880>] (irq_domain_set_info) from [<c046f838>]
(gpiochip_hierarchy_irq_domain_alloc+0x104/0x228)
[   22.762069] [<c046f838>] (gpiochip_hierarchy_irq_domain_alloc) from
[<c0182c38>] (__irq_domain_alloc_irqs+0xd8/0x318)
[   22.772748] [<c0182c38>] (__irq_domain_alloc_irqs) from
[<c01832e8>] (irq_create_fwspec_mapping+0x22c/0x298)
[   22.782641] [<c01832e8>] (irq_create_fwspec_mapping) from
[<c0470124>] (gpiochip_to_irq+0x60/0x84)
[   22.791664] [<c0470124>] (gpiochip_to_irq) from [<c046ef18>]
(gpiod_to_irq+0x48/0x60)
[   22.799552] [<c046ef18>] (gpiod_to_irq) from [<c0477a48>]
(gpio_ioctl+0x1b4/0x420)
[   22.807178] [<c0477a48>] (gpio_ioctl) from [<c0262e4c>] (vfs_ioctl+0x20/0x38)
[   22.814371] [<c0262e4c>] (vfs_ioctl) from [<c0263708>] (sys_ioctl+0xb0/0x818)
[   22.821564] [<c0263708>] (sys_ioctl) from [<c0100060>]
(ret_fast_syscall+0x0/0x1c)
[   22.829190] Exception stack(0xc3505fa8 to 0xc3505ff0)
[   22.834273] 5fa0:                   ???????? ???????? ????????
???????? ???????? ????????
[   22.842488] 5fc0: ???????? ???????? ???????? ???????? ????????
???????? ???????? ????????
[   22.850701] 5fe0: ???????? ???????? ???????? ????????
[   22.855790] Code: e593301c e12fff13 e5900018 e5903010 (e5933018)
[   22.861919] ---[ end trace 10524aa06eced7e3 ]---

If I do something silly like the following diff the explosion stops
and GPIO interrupt fires correctly each time I press the button it's
connected to:
diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
index a98bcfc4be7b..969df9207358 100644
--- a/kernel/irq/chip.c
+++ b/kernel/irq/chip.c
@@ -1368,6 +1368,8 @@ EXPORT_SYMBOL_GPL(irq_chip_disable_parent);
void irq_chip_ack_parent(struct irq_data *data)
{
       data = data->parent_data;
+       if(!data->chip)
+               return;
       data->chip->irq_ack(data);
}
EXPORT_SYMBOL_GPL(irq_chip_ack_parent);

I think I got stuck at this, switched it to the eoi handler instead
and then forgot about it.

I'll work out the proper solution for this for v2.

Cheers,

Daniel
