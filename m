Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 436B241DB3A
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 15:37:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351336AbhI3Nir (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 09:38:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351134AbhI3Niq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 09:38:46 -0400
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com [IPv6:2607:f8b0:4864:20::a34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4F92C06176A
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:37:03 -0700 (PDT)
Received: by mail-vk1-xa34.google.com with SMTP id x207so2862406vke.2
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2AiGNOIYqN6m7oWKXPgbb5yVobzyXhl4fv3GGNHx9HQ=;
        b=kcOWRriGrAi7vLOMSCeTuPO3E7RgGQlpTj1Zd8AE6/F1ESg3NNkeulHupKe9wm4FQU
         XNsbwTdCvvVLfv1a06Wj1wEmt+hHdiPDGrNG1NniF1t4GyYdr2HkmkbGdA1g1XeWsy5L
         a/uKu7Hwc9TnN2zN5QeV4c29XNGyqQgdAiMb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2AiGNOIYqN6m7oWKXPgbb5yVobzyXhl4fv3GGNHx9HQ=;
        b=3hyz/cnp1wCa4sidDOP8PYJq4/1BokT3OwQxXf6rGbv64nBAPE6aAmVTDFDQoq90Il
         RG1wZIQ1bWyzK/g5xLKUVzu2FcL9R+OLEJwhl+m8Y9r3PxnK7wkZnCGEPsOZc83LiOiD
         munSEVwM/3W2L2VOnh7AGU1Ad+JS6FGZqKwJrpzGRTNXvc6DBwUPV00aAiHeDxYrePAF
         +bH5ifRbdCvQ6XNgf0r4tUA2cih8anjhELmIUKVBcl99YaOURYB45CuN2JybA26lGXpk
         98h2Gjt7Dod/+/JK7ysVZW0pvRXh1URQfWX6TvGKet7vekujuM1N3j9TMEWFV5JUAsrG
         Jerw==
X-Gm-Message-State: AOAM533NL83R768Wjbb+Wa4AHRVyjHLJkg6ceqvdub9AYYzyW4PGxPry
        LrMB2EVGebQKf+T/VkOOIDHpD7V1YZdE/ZgAOioozw==
X-Google-Smtp-Source: ABdhPJwwpeSikmY9eEyE9yOY7BukzTrxGF0zPGEdwD05OxenHXCJ4pGw6GVv0XyB4H7UtApTqTE/z/IaD3hSew2e5OQ=
X-Received: by 2002:a1f:f203:: with SMTP id q3mr3266730vkh.1.1633009022923;
 Thu, 30 Sep 2021 06:37:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org> <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
 <874ka2tdqe.wl-maz@kernel.org>
In-Reply-To: <874ka2tdqe.wl-maz@kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Thu, 30 Sep 2021 22:36:52 +0900
Message-ID: <CAFr9PXmu2JRSK9==MjpwgWTCET4iqj5U=egQQ2TciN0=B_UwNw@mail.gmail.com>
Subject: Re: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
To:     Marc Zyngier <maz@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marc,

On Thu, 30 Sept 2021 at 22:06, Marc Zyngier <maz@kernel.org> wrote:
> No, this is the right spot if you really need to set the handler. But
> it should really be after the parent allocation (see below for
> something totally untested).

Your change resolves the null pointer difference when enabling the
interrupt but when it triggers the below happens.
This might just be my driver so I'll try to debug.

Thanks,

Daniel

# gpiomon -r 0 44
[   61.770519] irq 66, desc: (ptrval), depth: 0, count: 0, unhandled: 0
[   61.770646]
[   61.770659] =============================
[   61.770670] [ BUG: Invalid wait context ]
[   61.770683] 5.15.0-rc2+ #2583 Not tainted
[   61.770702] -----------------------------
[   61.770712] swapper/0/0 is trying to lock:
[   61.770729] c1789eb0 (&port_lock_key){-.-.}-{3:3}, at:
serial8250_console_write+0x1b0/0x254
[   61.770840] other info that might help us debug this:
[   61.770853] context-{2:2}
[   61.770868] 2 locks held by swapper/0/0:
[   61.770889]  #0: c10189ec (console_lock){+.+.}-{0:0}, at:
vprintk_emit+0xa4/0x200
[   61.770986]  #1: c1018b44 (console_owner){-...}-{0:0}, at:
console_unlock+0x1e8/0x4b4
[   61.771080] stack backtrace:
[   61.771093] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.15.0-rc2+ #2583
[   61.771130] Hardware name: MStar/Sigmastar Armv7 (Device Tree)
[   61.771156] [<c010daf0>] (unwind_backtrace) from [<c0109f54>]
(show_stack+0x10/0x14)
[   61.771235] [<c0109f54>] (show_stack) from [<c09303a0>]
(dump_stack_lvl+0x58/0x70)
[   61.771312] [<c09303a0>] (dump_stack_lvl) from [<c016fbd8>]
(__lock_acquire+0x384/0x16a0)
[   61.771394] [<c016fbd8>] (__lock_acquire) from [<c017191c>]
(lock_acquire+0x2a0/0x320)
[   61.771470] [<c017191c>] (lock_acquire) from [<c093de84>]
(_raw_spin_lock_irqsave+0x5c/0x70)
[   61.771542] [<c093de84>] (_raw_spin_lock_irqsave) from [<c04cdf98>]
(serial8250_console_write+0x1b0/0x254)
[   61.771620] [<c04cdf98>] (serial8250_console_write) from
[<c0178068>] (console_unlock+0x3fc/0x4b4)
[   61.771699] [<c0178068>] (console_unlock) from [<c0179750>]
(vprintk_emit+0x1d0/0x200)
[   61.771769] [<c0179750>] (vprintk_emit) from [<c017979c>]
(vprintk_default+0x1c/0x24)
[   61.771840] [<c017979c>] (vprintk_default) from [<c092d178>]
(_printk+0x18/0x28)
[   61.771914] [<c092d178>] (_printk) from [<c017b9d0>]
(handle_bad_irq+0x44/0x22c)
[   61.771991] [<c017b9d0>] (handle_bad_irq) from [<c017ade4>]
(handle_irq_desc+0x24/0x34)
[   61.772066] [<c017ade4>] (handle_irq_desc) from [<c0467274>]
(ssd20xd_gpi_chainedhandler+0xb4/0xc4)
[   61.772147] [<c0467274>] (ssd20xd_gpi_chainedhandler) from
[<c017ade4>] (handle_irq_desc+0x24/0x34)
[   61.772223] [<c017ade4>] (handle_irq_desc) from [<c017b544>]
(handle_domain_irq+0x40/0x54)
[   61.772299] [<c017b544>] (handle_domain_irq) from [<c0465f20>]
(gic_handle_irq+0x60/0x6c)
[   61.772372] [<c0465f20>] (gic_handle_irq) from [<c0100aac>]
(__irq_svc+0x4c/0x64)
[   61.772435] Exception stack(0xc1001f20 to 0xc1001f68)
[   61.772466] 1f20: ???????? ???????? ???????? ???????? ????????
???????? ???????? ????????
[   61.772490] 1f40: ???????? ???????? ???????? ???????? ????????
???????? ???????? ????????
[   61.772510] 1f60: ???????? ????????
[   61.772531] [<c0100aac>] (__irq_svc) from [<c010715c>]
(arch_cpu_idle+0x1c/0x38)
[   61.772605] [<c010715c>] (arch_cpu_idle) from [<c093dc44>]
(default_idle_call+0x50/0x8c)
[   61.772677] [<c093dc44>] (default_idle_call) from [<c0155984>]
(do_idle+0xf0/0x25c)
[   61.772743] [<c0155984>] (do_idle) from [<c0155ea4>]
(cpu_startup_entry+0x18/0x1c)
[   61.772807] [<c0155ea4>] (cpu_startup_entry) from [<c0f00e58>]
(start_kernel+0x560/0x628)
[   62.055133] ->handle_irq():  (ptrval), handle_bad_irq+0x0/0x22c
[   62.061099] ->irq_data.chip(): (ptrval), msc313_gpio_irqchip+0x0/0x90
[   62.067585] ->action(): (ptrval)
[   62.070833] ->action->handler(): (ptrval), lineevent_irq_handler+0x0/0x1c
[   62.077664] unexpected IRQ trap at vector 42
[   62.082014] irq 66, desc: (ptrval), depth: 0, count: 0, unhandled: 0
[   62.088411] ->handle_irq():  (ptrval), handle_bad_irq+0x0/0x22c
[   62.094377] ->irq_data.chip(): (ptrval), msc313_gpio_irqchip+0x0/0x90
[   62.100862] ->action(): (ptrval)
[   62.104111] ->action->handler(): (ptrval), lineevent_irq_handler+0x0/0x1c
[   62.110941] unexpected IRQ trap at vector 42
[   62.115312] irq 66, desc: (ptrval), depth: 0, count: 0, unhandled: 0
[   62.121712] ->handle_irq():  (ptrval), handle_bad_irq+0x0/0x22c
[   62.127675] ->irq_data.chip(): (ptrval), msc313_gpio_irqchip+0x0/0x90
[   62.134165] ->action(): (ptrval)
[   62.137416] ->action->handler(): (ptrval), lineevent_irq_handler+0x0/0x1c
[   62.144246] unexpected IRQ trap at vector 42
[   62.148588] irq 66, desc: (ptrval), depth: 0, count: 0, unhandled: 0
[   62.154988] ->handle_irq():  (ptrval), handle_bad_irq+0x0/0x22c
[   62.160955] ->irq_data.chip(): (ptrval), msc313_gpio_irqchip+0x0/0x90
[   62.167440] ->action(): (ptrval)
[   62.170689] ->action->handler(): (ptrval), lineevent_irq_handler+0x0/0x1c
[   62.177517] unexpected IRQ trap at vector 42
[   62.181840] irq 66, desc: (ptrval), depth: 0, count: 0, unhandled: 0
[   62.188237] ->handle_irq():  (ptrval), handle_bad_irq+0x0/0x22c
[   62.194201] ->irq_data.chip(): (ptrval), msc313_gpio_irqchip+0x0/0x90
[   62.200686] ->action(): (ptrval)
[   62.203934] ->action->handler(): (ptrval), lineevent_irq_handler+0x0/0x1c
[   62.210763] unexpected IRQ trap at vector 42
[   62.215095] unexpected IRQ trap at vector 42
[   62.219424] unexpected IRQ trap at vector 42
[   62.223759] unexpected IRQ trap at vector 42
[   62.228084] unexpected IRQ trap at vector 42
[   62.232407] unexpected IRQ trap at vector 42
[   62.236729] unexpected IRQ trap at vector 42
[   62.241052] unexpected IRQ trap at vector 42
[   62.245377] unexpected IRQ trap at vector 42
[   62.249703] unexpected IRQ trap at vector 42
[   62.254037] unexpected IRQ trap at vector 42
