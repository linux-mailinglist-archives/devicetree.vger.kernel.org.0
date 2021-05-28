Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0012393ED7
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 10:35:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235299AbhE1Ih0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 04:37:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235154AbhE1Ih0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 04:37:26 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1C1CC061760
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 01:35:50 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id v8so4158530lft.8
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 01:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qXzQIPasUcthmSDz8eSF+P9ruKadFcmRFPG5VSNQtL8=;
        b=eKWJz4art9JMWcy6y6iWK9LFwP2pQvAov+Vsbn1np7ccpJfXlVE+B9uDjzPJkkISWg
         2jHaOl5Oe3gGxfXA6LgeTrMqL3Gcw59pnwKpxvt8qVyoVD3gBZ5kgubk2uIVa3+XtnMV
         2V92ED5sEIA5YUZIqSGlECauLUkp+VLy0BPS29E5R4b1OW/oEDzMGfRYxzM+31d+6868
         uf5AXz1khjan90xUAKlOHv+5eb4/32xWzgjOA4a4yMZ67GancPJwneDU6vE1rcZ2041T
         2ZfGpbwNnxRzyB+Cw/7D8H11DdXHZHN53I7V1Mhgpvu3OZ8ELlLXIA0P4KJczeoWtWpC
         AsSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qXzQIPasUcthmSDz8eSF+P9ruKadFcmRFPG5VSNQtL8=;
        b=JxjjMrkwxx7vZ5ScIFKrd9LbT0bsv+a5pOB7vPCheMSfPblquOUGNE1+hO//DrHukz
         04WkMLUV3/FXBINg42UPjGbn2HgZsnAXZuyad/mRIi2FOWUGMIlPcp/1gm7E3YtSnlPj
         bkQl4TlLBmXbhlxf55UhUEJ/uFTSj1iL7GmTAyJj5YQv5X+HcIGVSPi+rw7V0es2Hz9k
         dEnNXmBoBGvSC6rbJj6p9kri8XrYv7PwnrbbKYayfRKd71YTgytUy24Hg+mlRABShneT
         760BBleCWYAJ1Pk1R2kmRB9rsqmITsB4t0+g5YPp1FY92/ykY9BIf09pAE8srcbAyxoy
         QxQg==
X-Gm-Message-State: AOAM532Fkw8i85VmxouKTuqXtvPmPnrEKIB4vgdiEwzZYjGYDUduCAX3
        jqPo9sWOUhgK4ITId9EFfc66vRGIU5BSIfUxJKuawA==
X-Google-Smtp-Source: ABdhPJx7fY2eoo3ewpiwsQcdfnOZOMZDOGzICz8TqAeiPIIG9rFXZg0ycCOFOJyYz6YC0EypW/bfzb3UTuupkbD3PwU=
X-Received: by 2002:ac2:47e6:: with SMTP id b6mr5005230lfp.649.1622190949032;
 Fri, 28 May 2021 01:35:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210527005455.25758-1-steven_lee@aspeedtech.com>
 <20210527005455.25758-2-steven_lee@aspeedtech.com> <CACRpkdZFcFuT9rdrc8BfEBmhy0--9uLMSJWfr=A+nU117_BT8A@mail.gmail.com>
 <20210528040934.GA28403@aspeedtech.com>
In-Reply-To: <20210528040934.GA28403@aspeedtech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 May 2021 10:35:37 +0200
Message-ID: <CACRpkdYnvzOW_86QgLAsNpNXWZXpaMiE7g9_jHZ0ZsFyhOjjAg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: aspeed-sgpio: Convert txt bindings to yaml.
To:     Steven Lee <steven_lee@aspeedtech.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/ASPEED MACHINE SUPPORT" 
        <linux-aspeed@lists.ozlabs.org>,
        open list <linux-kernel@vger.kernel.org>,
        Hongwei Zhang <Hongweiz@ami.com>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 28, 2021 at 6:10 AM Steven Lee <steven_lee@aspeedtech.com> wrote:
> The 05/28/2021 07:51, Linus Walleij wrote:
> > On Thu, May 27, 2021 at 2:55 AM Steven Lee <steven_lee@aspeedtech.com> wrote:
> >
> > > +  max-ngpios:
> > > +    description:
> > > +      represents the number of actual hardware-supported GPIOs (ie,
> > > +      slots within the clocked serial GPIO data). Since each HW GPIO is both an
> > > +      input and an output, we provide max_ngpios * 2 lines on our gpiochip
> > > +      device. We also use it to define the split between the inputs and
> > > +      outputs; the inputs start at line 0, the outputs start at max_ngpios.
> > > +    minimum: 0
> > > +    maximum: 128
> >
> > Why can this not be derived from the compatible value?
> >
> > Normally there should be one compatible per hardware variant
> > of the block. And this should be aligned with that, should it not?
> >
> > If this is not the case, maybe more detailed compatible strings
> > are needed, maybe double compatibles with compatible per
> > family and SoC?
> >
>
> Thanks for your suggestion.
> I add max-ngpios in dt-bindings as there is ngpios defined in
> dt-bindings, users can get the both max-ngpios and ngpios information
> from dtsi without digging sgpio driver.
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/aspeed-g5.dtsi#n354
>
> If adding more detailed compatibles is better, I will add them to sgpio driver
> in V3 patch and remove max-ngpios from dt-bindings.
>
> Since AST2600 has 2 sgpio controller one with 128 pins and another one with 80 pins.
> For supporting max-ngpios in compatibles, 2 platform data for each
> ast2600 sgpio controller as follows are necessary.
>
> ```
> static const struct aspeed_sgpio_pdata ast2600_sgpiom1_pdata = {
>         .max_ngpios = 128;
> };
> static const struct aspeed_sgpio_pdata ast2600_sgpiom2_pdata = {
>         .max_ngpios = 80;
> };
>
> { .compatible = "aspeed,ast2500-sgpio" , .data = &ast2400_sgpio_pdata, },
> { .compatible = "aspeed,ast2600-sgpiom1", .data = &ast2600_sgpiom1_pdata, },
> { .compatible = "aspeed,ast2600-sgpiom2", .data = &ast2600_sgpiom2_pdata, },

There is a soft border between two IP blocks being "compatible"
and parameterized and two IP blocks being different and having
unique compatibles.

For example we know for sure we don't use different compatibles
because of how interrupt lines or DMA channels are connected.

So if this is an external thing, outside of the IP itself, I might back
off on this and say it shall be a parameter.

But max-ngpios? It is confusingly similar to ngpios.

So we need to think about this name.

Something like gpio-hardware-slots or something else that
really describe what this is.

Does this always strictly follow ngpios so that the number
of gpio slots == ngpios * 2? In that case only put ngpios into
the device tree and multiply by 2 in the driver, because ngpios
is exactly for this: parameterizing hardware limitations.

Yours,
Linus Walleij
