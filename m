Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DCEE640092
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 07:33:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232375AbiLBGdW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 01:33:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232339AbiLBGdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 01:33:19 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C2798959
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 22:33:18 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id x13-20020a17090a46cd00b00218f611b6e9so4296232pjg.1
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 22:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2e1OCsgpQNrHz221Q80v+bgx3Vtueie52dKFWOYQJSQ=;
        b=cLwhrx2YMiyfexSmRCG6SM82EW5jtTgg3wsriLEp/9LKaJKD23d2JHKrIT3Y+LSUYR
         zXzzs15WgIGKR62/1sIg0wxQxnM2fFpVPz38dIzaCTUS0Lp1MzHlpGSApedTw8igk1M9
         Z5J3ZEduWncWqp06Qhsfwq7DrlSqRXZ567dy1gbr7PCk0io3XxDIRmXljq4y6hejN3eo
         3hW2b2df4W092RtPIfjev+F9cbGR+p1MFXKoZPFUKk/9JgY2Z2M8XJWLsdhkCz8olKRb
         e8S23JmkDYohlg63hMhm6MAk7SMlLtQpsprUGmOhknKg3tt5SLTruS8dD4/wsl0owD+X
         mrzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2e1OCsgpQNrHz221Q80v+bgx3Vtueie52dKFWOYQJSQ=;
        b=NlSt3dgktX3mOtZlke070uiFksLcI1Y1pNnkODKu8yfA6cmcSPwUel7rWvs1zpC/2m
         UwLxbJ+sKzMLIpYajCSF3YVwDTF4XakieQMI7W3MFjqRHUd47eErr7D6GyndURyXb3D3
         wFSZnPUw3JYCBm84kPf46xbsF5t9kU1v2TFBaom88pxDUSuSkkB7c2XA58r0UNULyhNC
         ZTZJwj4V7YugrqJXoW0EWcwad0DswpcL8Yht7mQAXEvRxl/8jGEh77xQKsk5RT4Vt8x8
         M/SMfB5B5jUFJchki91nbRQJafPm879aXzQX6swx4itYjnRAqALmUPgYoWHAtriNYy6O
         XfQg==
X-Gm-Message-State: ANoB5pm0yUFyZNlhM0ISiYSX2qI4UGWXxX1YG/HhzkXc10BdDpb3a6x+
        Q8+2kTw5R1qMkvGjX36UzSQu2zeDQQCphBjOcwkhrQ==
X-Google-Smtp-Source: AA0mqf6edCrbkPO/2NIPJtveMoyJuTxhGlTMC/i4iyB4uN+af8x0IEyVANxR79VxqTYPY+zUxaMHPVZhgvFjHJXeGDk=
X-Received: by 2002:a17:90b:1d45:b0:218:6db5:fd98 with SMTP id
 ok5-20020a17090b1d4500b002186db5fd98mr75858015pjb.164.1669962797780; Thu, 01
 Dec 2022 22:33:17 -0800 (PST)
MIME-Version: 1.0
References: <20221201123954.1111603-1-apatel@ventanamicro.com>
 <20221201123954.1111603-4-apatel@ventanamicro.com> <20221202000603.GA1720201-robh@kernel.org>
In-Reply-To: <20221202000603.GA1720201-robh@kernel.org>
From:   Anup Patel <apatel@ventanamicro.com>
Date:   Fri, 2 Dec 2022 12:03:05 +0530
Message-ID: <CAK9=C2VbM+CP0Y9Xx-SM9O4TFrQmOKvVWy-u5mxdPxrhacK4JQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] clocksource: timer-riscv: Set CLOCK_EVT_FEAT_C3STOP
 based on DT
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Samuel Holland <samuel@sholland.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        Palmer Dabbelt <palmer@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 2, 2022 at 5:36 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Dec 01, 2022 at 06:09:54PM +0530, Anup Patel wrote:
> > We should set CLOCK_EVT_FEAT_C3STOP for a clock_event_device only
> > when riscv,timer-cannot-wake-cpu DT property is present in the RISC-V
> > timer DT node.
> >
> > This way CLOCK_EVT_FEAT_C3STOP feature is set for clock_event_device
> > based on RISC-V platform capabilities rather than having it set for
> > all RISC-V platforms.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
> > ---
> >  drivers/clocksource/timer-riscv.c | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> > index 969a552da8d2..1b4b36df5484 100644
> > --- a/drivers/clocksource/timer-riscv.c
> > +++ b/drivers/clocksource/timer-riscv.c
> > @@ -28,6 +28,7 @@
> >  #include <asm/timex.h>
> >
> >  static DEFINE_STATIC_KEY_FALSE(riscv_sstc_available);
> > +static bool riscv_timer_cannot_wake_cpu;
> >
> >  static int riscv_clock_next_event(unsigned long delta,
> >               struct clock_event_device *ce)
> > @@ -51,7 +52,7 @@ static int riscv_clock_next_event(unsigned long delta,
> >  static unsigned int riscv_clock_event_irq;
> >  static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
> >       .name                   = "riscv_timer_clockevent",
> > -     .features               = CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_C3STOP,
> > +     .features               = CLOCK_EVT_FEAT_ONESHOT,
>
> A platform that depended on CLOCK_EVT_FEAT_C3STOP being set will break
> with this change because its existing DT will not have the new property.
>
> It needs to be the other way around which would effectively be the
> existing 'always-on' property.

There are no RISC-V platforms using C3STOP. The patch which
added C3STOP has been reverted.
(Refer, https://lore.kernel.org/lkml/a218ebf8-0fba-168d-6598-c970bbff5faf@sholland.org/T/)

I just need to rebase this patch upon the C3STOP revert patch.

>
> >       .rating                 = 100,
> >       .set_next_event         = riscv_clock_next_event,
> >  };
> > @@ -85,6 +86,8 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
> >
> >       ce->cpumask = cpumask_of(cpu);
> >       ce->irq = riscv_clock_event_irq;
> > +     if (riscv_timer_cannot_wake_cpu)
> > +             ce->features |= CLOCK_EVT_FEAT_C3STOP;
> >       clockevents_config_and_register(ce, riscv_timebase, 100, 0x7fffffff);
> >
> >       enable_percpu_irq(riscv_clock_event_irq,
> > @@ -139,6 +142,13 @@ static int __init riscv_timer_init_dt(struct device_node *n)
> >       if (cpuid != smp_processor_id())
> >               return 0;
> >
> > +     child = of_find_compatible_node(NULL, NULL, "riscv,timer");
> > +     if (child) {
> > +             riscv_timer_cannot_wake_cpu = of_property_read_bool(child,
> > +                                     "riscv,timer-cannot-wake-cpu");
> > +             of_node_put(child);
> > +     }
> > +
> >       domain = NULL;
> >       child = of_get_compatible_child(n, "riscv,cpu-intc");
> >       if (!child) {
> > --
> > 2.34.1
> >
> >

Regards,
Anup
