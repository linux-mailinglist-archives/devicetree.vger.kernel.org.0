Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C166E26CDC4
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 23:05:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726389AbgIPVE5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 17:04:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726316AbgIPQPB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 12:15:01 -0400
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com [IPv6:2607:f8b0:4864:20::743])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51130C0F26CB
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 08:13:59 -0700 (PDT)
Received: by mail-qk1-x743.google.com with SMTP id n133so8479448qkn.11
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 08:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UwdE407eW2BFHe5kx2AckV/Q6Zp6aBVdsxXq4mQKS1E=;
        b=U4vItbxLqH9boJSGFGd3Zp+H4W037yontlZBqdCzzt4amivAVGHVYcD8oqNicmtwRB
         Xhfib8aSKxbm13rFgCIGqpu5E8z8m+6TWXngEuwEaNXtlgxkCWK62VeZWnlIBDnDy/gL
         HyvjZ9Lm8IWjbKW4j9Z5bjcnvIjp1N6JLD8/o5nI4kfQZ91HvKhqUmQAzN/nU3z8xuoW
         J40XfX66hbsJdnabZvjhnnuQgUE2QYmTxjBYKQR62W+wAo4C7AQRMozPj48mkgfM5HQd
         ySgrxqADILnBYn1SCa6RSWBAiNTjIfR6vKLroTpm0QePnVSayIH8Ai+SK0IPknhdiP8g
         kg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UwdE407eW2BFHe5kx2AckV/Q6Zp6aBVdsxXq4mQKS1E=;
        b=MC4fnaNIbsq0tiHhHQoceuCBHFlO+VhrSeAhs3kjz3CIcJcSNNfvOYC7xTGP2h7g+Y
         dnKU8Faz6h8FpHBg3dq02H5OKcUrtB731+M4aWVNfIe73dLp4AVLrHprOf30qTy89W/I
         1uPHEwJ3HnZis2vskQAjE7khQN37djJFUuExq4iXfCDaAROzNEG4wDtuYIh/Qd+aLqHK
         D55nhwxYtUH5dBk4/ODBokCv2whLLtc1SYWgWJra5TmS6OWc+vUkYhkuyuRIM3jpspNP
         Ro0CWaMGoOzuwOeYq5vzS3G9+2rKhyubBJMkxTUyEu3nCm6/7wQFu9hxPhcVcA6NGDsr
         rBkQ==
X-Gm-Message-State: AOAM532wtJhZ2ArPQjOL+InH/9tyu/gzvne6IZcbuO+0CUN5gWrpP94w
        n0dcYj3+DaQNNZJtd61qOfLfK26BohM3GCrH28TqoQ==
X-Google-Smtp-Source: ABdhPJyDjMKo3SJBXU8S0LBbq3zj6+wYtpwozZxS4NNNxPrr6WaxZGly6KqgjGLlz9/S/81ImQGyA1ZsfDZ/9XpIVOo=
X-Received: by 2002:a05:620a:a92:: with SMTP id v18mr23309499qkg.498.1600269237995;
 Wed, 16 Sep 2020 08:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <1600167651-20851-1-git-send-email-grzegorz.jaszczyk@linaro.org>
 <1600167651-20851-3-git-send-email-grzegorz.jaszczyk@linaro.org> <ab6858f56cf47e48f167d6893bcd3043@kernel.org>
In-Reply-To: <ab6858f56cf47e48f167d6893bcd3043@kernel.org>
From:   Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
Date:   Wed, 16 Sep 2020 17:13:46 +0200
Message-ID: <CAMxfBF6=eu+o8ZLOra16X8M=Yv4QmSgr1umk2hVO7jANEfN9Jw@mail.gmail.com>
Subject: Re: [PATCH v6 2/5] irqchip/irq-pruss-intc: Add a PRUSS irqchip driver
 for PRUSS interrupts
To:     Marc Zyngier <maz@kernel.org>
Cc:     tglx@linutronix.de, jason@lakedaemon.net,
        "Anna, Suman" <s-anna@ti.com>, robh+dt@kernel.org,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        David Lechner <david@lechnology.com>,
        "Bajjuri, Praneeth" <praneeth@ti.com>,
        Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Sep 2020 at 17:19, Marc Zyngier <maz@kernel.org> wrote:
>
> [ Dropping afd@ti.com from the Cc list, as this address bounces]
>
> On 2020-09-15 12:00, Grzegorz Jaszczyk wrote:
> > The Programmable Real-Time Unit Subsystem (PRUSS) contains a local
> > interrupt controller (INTC) that can handle various system input events
> > and post interrupts back to the device-level initiators. The INTC can
> > support upto 64 input events with individual control configuration and
> > hardware prioritization. These events are mapped onto 10 output
> > interrupt
> > lines through two levels of many-to-one mapping support. Different
> > interrupt lines are routed to the individual PRU cores or to the host
> > CPU, or to other devices on the SoC. Some of these events are sourced
> > from peripherals or other sub-modules within that PRUSS, while a few
> > others are sourced from SoC-level peripherals/devices.
> >
> > The PRUSS INTC platform driver manages this PRUSS interrupt controller
> > and implements an irqchip driver to provide a Linux standard way for
> > the PRU client users to enable/disable/ack/re-trigger a PRUSS system
> > event. The system events to interrupt channels and output interrupts
> > relies on the mapping configuration provided either through the PRU
> > firmware blob (for interrupts routed to PRU cores) or via the PRU
> > application's device tree node (for interrupt routed to the main CPU).
> > In the first case the mappings will be programmed on PRU remoteproc
> > driver demand (via irq_create_fwspec_mapping) during the boot of a PRU
> > core and cleaned up after the PRU core is stopped.
> >
> > Reference counting is used to allow multiple system events to share a
> > single channel and to allow multiple channels to share a single host
> > event.
> >
> > The PRUSS INTC module is reference counted during the interrupt
> > setup phase through the irqchip's irq_request_resources() and
> > irq_release_resources() ops. This restricts the module from being
> > removed as long as there are active interrupt users.
> >
> > The driver currently supports and can be built for OMAP architecture
> > based AM335x, AM437x and AM57xx SoCs; Keystone2 architecture based
> > 66AK2G SoCs and Davinci architecture based OMAP-L13x/AM18x/DA850 SoCs.
> > All of these SoCs support 64 system events, 10 interrupt channels and
> > 10 output interrupt lines per PRUSS INTC with a few SoC integration
> > differences.
> >
> > NOTE:
> > Each PRU-ICSS's INTC on AM57xx SoCs is preceded by a Crossbar that
> > enables multiple external events to be routed to a specific number
> > of input interrupt events. Any non-default external interrupt event
> > directed towards PRUSS needs this crossbar to be setup properly.
> >
> > Signed-off-by: Suman Anna <s-anna@ti.com>
> > Signed-off-by: Andrew F. Davis <afd@ti.com>
> > Signed-off-by: Roger Quadros <rogerq@ti.com>
> > Signed-off-by: David Lechner <david@lechnology.com>
> > Signed-off-by: Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>
>
> Please see the use of the Co-developed-by: tag.

Ok, thank you.

>
> > ---
> > v5->v6:
> > 1) Address Marc Zyngier comments:
> > - Use unsigned types for variables used to compute masks/shifts (ch,
> >   evt, host).
> > - Move part responsible for enabling global interrupt from
> >   pruss_intc_map to pruss_intc_init.
> > - Improve coding style in pruss_intc_init with regards to variable
> >   assignments.
> > - Align the '=' signs vertically in pruss_irqchip structure.
> > - Change the irq type in xlate handler from IRQ_TYPE_NONE to
> >   IRQ_TYPE_LEVEL_MASK
>
> Gruik? (yes, that's approximately the noise I made reading this)
>
> [...]
>
> > +static void pruss_intc_init(struct pruss_intc *intc)
> > +{
> > +     const struct pruss_intc_match_data *soc_config = intc->soc_config;
> > +     int num_chnl_map_regs, num_host_intr_regs, num_event_type_regs, i;
> > +
> > +     num_chnl_map_regs = DIV_ROUND_UP(soc_config->num_system_events,
> > +                                      CMR_EVT_PER_REG);
> > +     num_host_intr_regs = DIV_ROUND_UP(soc_config->num_host_events,
> > +                                       HMR_CH_PER_REG);
> > +     num_event_type_regs = DIV_ROUND_UP(soc_config->num_system_events,
> > 32);
> > +
> > +     /*
> > +      * configure polarity (SIPR register) to active high and
> > +      * type (SITR register) to level interrupt for all system events
> > +      */
>
> So I read this...
>
> [...]
>
> > +static int
> > +pruss_intc_irq_domain_xlate(struct irq_domain *d, struct device_node
> > *node,
> > +                         const u32 *intspec, unsigned int intsize,
> > +                         unsigned long *out_hwirq, unsigned int *out_type)
> > +{
> > +     struct pruss_intc *intc = d->host_data;
> > +     struct device *dev = intc->dev;
> > +     int ret, sys_event, channel, host;
> > +
> > +     if (intsize < 3)
> > +             return -EINVAL;
> > +
> > +     sys_event = intspec[0];
> > +     if (sys_event < 0 || sys_event >=
> > intc->soc_config->num_system_events) {
> > +             dev_err(dev, "%d is not valid event number\n", sys_event);
> > +             return -EINVAL;
> > +     }
> > +
> > +     channel = intspec[1];
> > +     if (channel < 0 || channel >= intc->soc_config->num_host_events) {
> > +             dev_err(dev, "%d is not valid channel number", channel);
> > +             return -EINVAL;
> > +     }
> > +
> > +     host = intspec[2];
> > +     if (host < 0 || host >= intc->soc_config->num_host_events) {
> > +             dev_err(dev, "%d is not valid host irq number\n", host);
> > +             return -EINVAL;
> > +     }
> > +
> > +     /* check if requested sys_event was already mapped, if so validate it
> > */
> > +     ret = pruss_intc_validate_mapping(intc, sys_event, channel, host);
> > +     if (ret)
> > +             return ret;
> > +
> > +     *out_hwirq = sys_event;
> > +     *out_type = IRQ_TYPE_LEVEL_MASK;
>
> ... and then I see that.
>
> What does IRQ_TYPE_LEVEL_MASK even mean? Can the interrupt be triggered
> as
> level high and low *at the same time*? (this is a rhetorical question).

Really sorry for that, my mistake. I will change it to
IRQ_TYPE_LEVEL_HIGH in v7.

Thank you for your review,
Grzegorz
