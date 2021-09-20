Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 98F2141128C
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 12:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230262AbhITKHE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 06:07:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235464AbhITKHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 06:07:04 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3318C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 03:05:37 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id q66so10523786vsa.4
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 03:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pXJ1STB1uYQoYpQTEoqY1n2ed0kGG7ddLSre+yaIBHM=;
        b=DpUaiIuQ+EaMyjAPDiG0xtwT0qNU1PtFk4vSWTah46chYaIFzGOmamUU2HRjP3Wsxl
         yA2WWiSIWnp9vt/rwR56xZ5ymwb9/BK4uJctDeyMDOWyon6rSKoMvVW3C4eh+oNqZZRP
         yIcOI/pLFAoMNKs+pYZGFJV//ebACV3aztvPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pXJ1STB1uYQoYpQTEoqY1n2ed0kGG7ddLSre+yaIBHM=;
        b=enO4QrtGVHq4uw3ticYGFehe78wnvdpkx7upZpUkGvdRMQAW/oeV5XMHWFkdet0R80
         InwE8QRMZZffKlJNwjsSA8c4m3TfNEKscsdYdD5YTZULfYPvCspwmbJZK/7yE8At5qSK
         pqtVmiyiSrLlx2Svwqiuzah1mTdiu1Ux0VC55HBIVUfb8A3YXED+V33kq4wvi9Rabjhy
         lSiXr+8bLMzLuv5rZ4Z78FnocdoSqGZRxXbvB+0PzbCQEEponxQ3rZcRC4ppD1khJECY
         ul/HAB1/e/YFLMqim0DzJfOEPttW15MN3ZnLNgQE7BZmARGTu9WAha3oRO+UhAHG1+2w
         V8Ag==
X-Gm-Message-State: AOAM5306IT+4AQidrSjk8rk/ivVl4ddMgprOj3wiaTlKW6fBfK4NsBAE
        4N8Ixs19sfU/g/lJev1u+rIfj98UbjrRAg+2WHzHeg==
X-Google-Smtp-Source: ABdhPJxG/hbjpmTL1YQ381eU5lGuZOv26lNJsxR8TERRv8KL32iz05WLLHB20+S1O8yQ1tCbLMakKbwgsVMAnM+6ICg=
X-Received: by 2002:a67:6241:: with SMTP id w62mr2785782vsb.9.1632132336887;
 Mon, 20 Sep 2021 03:05:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org>
In-Reply-To: <87zgs7vavl.wl-maz@kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Mon, 20 Sep 2021 19:05:26 +0900
Message-ID: <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
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

On Mon, 20 Sept 2021 at 18:45, Marc Zyngier <maz@kernel.org> wrote:
> > +static void ssd20xd_gpi_unmask_irq(struct irq_data *data)
> > +{
> > +     irq_hw_number_t hwirq = irqd_to_hwirq(data);
> > +     struct ssd20xd_gpi *gpi = irq_data_get_irq_chip_data(data);
> > +     int offset_reg = REG_OFFSET(hwirq);
> > +     int offset_bit = BIT_OFFSET(hwirq);
> > +
> > +     regmap_update_bits(gpi->regmap, REG_MASK + offset_reg, offset_bit, 0);
>
> Is this regmap call atomic? When running this, you are holding a
> raw_spinlock already. From what I can see, this is unlikely to work
> correctly with the current state of regmap.

I didn't even think about it. I will check.

> > +static void ssd20x_gpi_chainedhandler(struct irq_desc *desc)
> > +{
> > +     struct ssd20xd_gpi *intc = irq_desc_get_handler_data(desc);
> > +     struct irq_chip *chip = irq_desc_get_chip(desc);
> > +     unsigned int irqbit, hwirq, virq, status;
> > +     int i;
> > +
> > +     chained_irq_enter(chip, desc);
> > +
> > +     for (i = 0; i < NUM_IRQ / IRQS_PER_REG; i++) {
> > +             int offset_reg = STRIDE * i;
> > +             int offset_irq = IRQS_PER_REG * i;
> > +
> > +             regmap_read(intc->regmap, REG_STATUS + offset_reg, &status);
>
> Does this act as an ACK in the HW?

Not that I'm aware of. The status registers have the interrupt bits
set until the EOI callback is called from what I can tell.
Technically I think the EOI callback should actually be ACK instead
but from my fuzzy memory with the stack of IRQ controllers that
resulted in a null pointer dereference.

> > +
> > +             while (status) {
> > +                     irqbit = __ffs(status);
> > +                     hwirq = offset_irq + irqbit;
> > +                     virq = irq_find_mapping(intc->domain, hwirq);
> > +                     if (virq)
> > +                             generic_handle_irq(virq);
>
> Please replace this with generic_handle_domain_irq().

Ok.

> > +IRQCHIP_DECLARE(ssd20xd_gpi, "sstar,ssd20xd-gpi", ssd20xd_gpi_of_init);
>
> Is there any reason why this isn't a standard platform device? In
> general, irqchips that are not part of the root hierarchy shouldn't
> need this anymore.

Nope. I can switch that over.

Cheers,

Daniel
