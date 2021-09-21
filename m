Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F9AC412E86
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 08:11:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229632AbhIUGNP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 02:13:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbhIUGNO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 02:13:14 -0400
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com [IPv6:2607:f8b0:4864:20::a2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1391C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 23:11:46 -0700 (PDT)
Received: by mail-vk1-xa2f.google.com with SMTP id t200so7618647vkt.0
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 23:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OF6AOba2o4jFsvu9MeKiI7Ggmm85qvKBExZTEUMcveM=;
        b=VuguOngjzz4WH8sPWcj67TGgfLZBK40/vQ5FUMQzYS1OEEsUtS2GNpTylVQ91r9jyN
         MVC/elImEADbG8CSGAPmGikgihQJGX30R9jMnnwQlsAL2dIBz+Qc3Z2Vck9zKR+RIztt
         8bSjxTDkUPUQwtggriF9s4Mop370EB237tpaw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OF6AOba2o4jFsvu9MeKiI7Ggmm85qvKBExZTEUMcveM=;
        b=leVWr5ONos9Qet15h1sjHS1ZpXAFUUyv09E8h1c2c/aF5aJiAU5ZqedV9zHKHX06lV
         UlrVPsRkCACYbb0NYV2cG31dHbfa3QxZI+iJabu3WlLyihQA9dKW6IMQCEumsEjzNm9M
         RilH01lgBpKwpVwQo52w/5Wi9BjL9z2XjYQH73nvKwZiGKZUSnoOf+UkecQNFSeEWGQ3
         xgimZQzFFXLOKdsqjeTEslXiHNVdnjo5JG3HA/ysYsXpCJr/uGF6bkdw8eqbW+g7RYp6
         dAyPnfCzHhSgXfNRq+kr1QrqgkfwKyjcVWCdp71SJnEHBtRDy2Ri8zAQoihvY0W1C+Hz
         LJ7w==
X-Gm-Message-State: AOAM532OWyUmjPcczFvf4fYmJRlhXwyJ8Tte+NA9eki+ZNRndJJizTtv
        bR2He3KN6qp8iHomUsKfahjwQB5Niz2++pwZVAIPhg==
X-Google-Smtp-Source: ABdhPJzrNTe66lD5hcAQj/G8thxbFqN5NwIXMxbAq0yZGq+5J4cryNMgQKrIwr4sc4PMD4ny5qa98PY1d/RaYdHc7Fg=
X-Received: by 2002:a1f:9f10:: with SMTP id i16mr10188784vke.0.1632204705849;
 Mon, 20 Sep 2021 23:11:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org>
In-Reply-To: <87wnnbv6ac.wl-maz@kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Tue, 21 Sep 2021 15:11:35 +0900
Message-ID: <CAFr9PXm8S+P+q5KiU7DxeKQVU92PQefovjd25zrQJ2m2RyZpcg@mail.gmail.com>
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

Sorry for the constant email.

On Mon, 20 Sept 2021 at 20:24, Marc Zyngier <maz@kernel.org> wrote:
>
> On Mon, 20 Sep 2021 11:05:26 +0100,
> Daniel Palmer <daniel@0x0f.com> wrote:
> >
> > Hi Marc,
> >
> > On Mon, 20 Sept 2021 at 18:45, Marc Zyngier <maz@kernel.org> wrote:
> > > > +static void ssd20xd_gpi_unmask_irq(struct irq_data *data)
> > > > +{
> > > > +     irq_hw_number_t hwirq = irqd_to_hwirq(data);
> > > > +     struct ssd20xd_gpi *gpi = irq_data_get_irq_chip_data(data);
> > > > +     int offset_reg = REG_OFFSET(hwirq);
> > > > +     int offset_bit = BIT_OFFSET(hwirq);
> > > > +
> > > > +     regmap_update_bits(gpi->regmap, REG_MASK + offset_reg, offset_bit, 0);
> > >
> > > Is this regmap call atomic? When running this, you are holding a
> > > raw_spinlock already. From what I can see, this is unlikely to work
> > > correctly with the current state of regmap.
> >
> > I didn't even think about it. I will check.
>
> You may want to enable lockdep to verify that.

After some research I think this can be solved by adding
".use_raw_spinlock = true" to the regmap config to force using a
raw_spinlock instead of the default spinlock.
This avoids having a spinlock inside of a raw_spinlock.

lockdep doesn't actually complain about this currently but another
interrupt controller driver I have uses a syscon because the interrupt
registers are mixed in with unrelated stuff.
lockdep is complaining about the spinlock inside of a raw_spinlock
there. So I guess I'll need to add a new DT property for syscon to use
raw_spinlocks for that driver.

Cheers,

Daniel
