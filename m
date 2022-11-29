Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88B5263C62C
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 18:11:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235644AbiK2RLX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 12:11:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234423AbiK2RLW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 12:11:22 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A2E15EFA9
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:11:21 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id ml11so10516032ejb.6
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 09:11:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=msAP4TW5rerQcRILPebntv36PL15yDZMgzxuUAAXhBo=;
        b=EFB2JMJ3F/3YqygGeoSAEyPEakOW5kvArTiOzsA0yzHsk4p6KRfIUh7rxEMQU3BhZH
         N9rVP1i4aoUUl8Ey8S1k/0q3QfvOuSG8vxzDIc+WrE3nw5YbxYNWOxFP6Kijy2AAFamY
         OpAZdUXNXUYHJuO97qquTUMoCHByqL5D7UbIDJl/JYq53RctML+qOaInF4A3+ejTIAD5
         hOEFkISVjaupTcKeEBKxEoxstI4CL+HdfuPYgfdAfExwsw8C33PIMQlCaHB4VwyjRvjK
         FFTEWLSxc5qNF48lOfyjpL+l99xZvqWuQ8wz7tpxOByjvelA3xrthH9QtCyBSMOP5D2f
         ajGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=msAP4TW5rerQcRILPebntv36PL15yDZMgzxuUAAXhBo=;
        b=Ke0d7s8wWXk/9VG9vLvO2e2022motDnmgATpPLmfVe+7rPQ0oCyuGkXL8jwpboRdHI
         iPxOuYrjAfW29INJVuBkCx5L5xac3SXUJZ+8S1FMo8pGV/ZkdZcV4hE0riu0ur0fjXgY
         doeF0+L+OR2HOsGxvKE1R6TxlOQnh0bJ49fXmztpYGPdrPgvPbDRGjogBl1FEzNxcP7a
         VX3imk06AcJdGWzHUBoqjWqimj8W1pjjABjxX00A36IZClMfyi3DsHzVRarJR737vSEX
         /ASuzVtUHqqKiT0hNJe89UMXV29hmPVHy2Tb5b9Twk0Nkg2cbZAsK5lThXHywGNtTYS2
         aAaA==
X-Gm-Message-State: ANoB5pn61GHHqX4ZsuzDK3kA80y3M1ha2+MIaQopGqV73Ng+vscrvRjX
        LHt4z4Gvmd4bYJ2MsM6F4i5U03AN2XifBJH3DwJ/tcL8eXU=
X-Google-Smtp-Source: AA0mqf73SKGfO58rsYtsa7lCegwo/y+/CexGd7oZ4HQ0wrmXXGXeCzaLTyB6c1XPiCFExVs/Zdrn6C0KCE56h6ozwCs=
X-Received: by 2002:a17:907:a044:b0:7bc:27ab:6b2d with SMTP id
 gz4-20020a170907a04400b007bc27ab6b2dmr20998752ejc.750.1669741879740; Tue, 29
 Nov 2022 09:11:19 -0800 (PST)
MIME-Version: 1.0
References: <20221129140313.886192-1-apatel@ventanamicro.com>
 <20221129140313.886192-4-apatel@ventanamicro.com> <Y4YY6kBBEBdZoUIp@wendy>
In-Reply-To: <Y4YY6kBBEBdZoUIp@wendy>
From:   Anup Patel <anup@brainfault.org>
Date:   Tue, 29 Nov 2022 22:41:09 +0530
Message-ID: <CAAhSdy3dWGVV=jh5mzK=m63A3UAqwJhxidcAZQU_WC4TRNfCjQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] clocksource: timer-riscv: Set CLOCK_EVT_FEAT_C3STOP
 based on DT
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Anup Patel <apatel@ventanamicro.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Samuel Holland <samuel@sholland.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 29, 2022 at 8:06 PM Conor Dooley <conor.dooley@microchip.com> wrote:
>
> On Tue, Nov 29, 2022 at 07:33:13PM +0530, Anup Patel wrote:
> > We should set CLOCK_EVT_FEAT_C3STOP for a clock_event_device only
> > when riscv,timer-cant-wake-up DT property is present in the RISC-V
> > timer DT node.
> >
> > This way CLOCK_EVT_FEAT_C3STOP feature is set for clock_event_device
> > based on RISC-V platform capabilities rather than having it set for
> > all RISC-V platforms.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>
> I thought I had left an R-b on this one?
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>
> Also, I think that we need to backport *something* that disables C3STOP
> which is why I had suggested keeping the revert in place.
> Patch 1 of this series only solves the timer issues but does not restore
> sleep states to their prior behaviour, right?
> Either this patch or the revert needs to go to stable IMO.

Since it works for you with the C3STOP set and broadcast timer enabled,
we can directly go with this patch. I am fine including the revert as well.

Regards,
Anup

>
> Thanks,
> Conor.
>
> > ---
> >  drivers/clocksource/timer-riscv.c | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> > index 969a552da8d2..0c8bdd168a45 100644
> > --- a/drivers/clocksource/timer-riscv.c
> > +++ b/drivers/clocksource/timer-riscv.c
> > @@ -28,6 +28,7 @@
> >  #include <asm/timex.h>
> >
> >  static DEFINE_STATIC_KEY_FALSE(riscv_sstc_available);
> > +static bool riscv_timer_cant_wake_cpu;
> >
> >  static int riscv_clock_next_event(unsigned long delta,
> >               struct clock_event_device *ce)
> > @@ -51,7 +52,7 @@ static int riscv_clock_next_event(unsigned long delta,
> >  static unsigned int riscv_clock_event_irq;
> >  static DEFINE_PER_CPU(struct clock_event_device, riscv_clock_event) = {
> >       .name                   = "riscv_timer_clockevent",
> > -     .features               = CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_C3STOP,
> > +     .features               = CLOCK_EVT_FEAT_ONESHOT,
> >       .rating                 = 100,
> >       .set_next_event         = riscv_clock_next_event,
> >  };
> > @@ -85,6 +86,8 @@ static int riscv_timer_starting_cpu(unsigned int cpu)
> >
> >       ce->cpumask = cpumask_of(cpu);
> >       ce->irq = riscv_clock_event_irq;
> > +     if (riscv_timer_cant_wake_cpu)
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
> > +             riscv_timer_cant_wake_cpu = of_property_read_bool(child,
> > +                                             "riscv,timer-cant-wake-cpu");
> > +             of_node_put(child);
> > +     }
> > +
> >       domain = NULL;
> >       child = of_get_compatible_child(n, "riscv,cpu-intc");
> >       if (!child) {
> > --
> > 2.34.1
> >
