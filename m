Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E44C39B603
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 11:32:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229962AbhFDJeF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 05:34:05 -0400
Received: from mail-lf1-f46.google.com ([209.85.167.46]:38455 "EHLO
        mail-lf1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229936AbhFDJeF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 05:34:05 -0400
Received: by mail-lf1-f46.google.com with SMTP id r5so13141022lfr.5
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 02:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=WqJtAEUyp1Bxzc5hAO9Tv+8VBm2svR4HUjAof0o85e0=;
        b=qkwDxkW1kfmJwJ7ndr3HTnaDKSWLTjA6xKL8JMiX1eMOCXTTZGQ2m2TgMArQ4L4aXx
         uHsCtRSZH0GDtdg9QSVua6H+8pssQAPi1mIXM5IdlJQIbbp+X2PtZ/0NJw/GKmUKJUnn
         AgTD1opvfRSRWW7crbgeuj+mZEvYOP1GlPBNudcy8ToaiQIIjg3X+AIYg8FiMnqa1ClK
         SlYcnbfJnns9hZuETArk9zBRx98aTc1TVlv4iSS70t/HuBQrZ115S+5m6U7nQVauO00X
         U3+ZzTu/8Zlu0wgE1HWNZT0iqO1CrUcWA3ZCpG7qhK0xMEP4l1CnYrigYuNIil6dEGde
         NejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=WqJtAEUyp1Bxzc5hAO9Tv+8VBm2svR4HUjAof0o85e0=;
        b=WbzqHnPYnqpRRX637Sgur8brfvLoI6KHh1je0L1rRxN1TPi5CRuMVfErCqFX53yH4e
         wz3OWGAPYWXr3Cy8fPYM39oCwrF46gLOKNRsHpo+Ihq/oKjMeaM/Xr+wDj+wGcpHTDD2
         m1iFCQvgolm8r8zg6wp6gYRBFvoeoI4a4B92shwVojHNbMaf9eDiWL/iFRzskCx2J/WK
         53X1RN4y9jdTShSz0HfqdqKAltXoejjFaNRSsbQLUjQb32h0Cti4/LPVwOn2a9hpZRS0
         221WnBlcaIgrWCVT08TPfx7JOuz1S9Vy50lqZgXza8DCQDl1Ak54ufWgbliyOwZ+nC3y
         w4KQ==
X-Gm-Message-State: AOAM531nXYQtqA+0IpPig4n/LCXaFLvdEy7SzS7oMVLH3YXsIBglXu8e
        gS8YS8JhfGXZ2vn/MrMKm6WAXMBBwsc7rZJGDwd39A==
X-Google-Smtp-Source: ABdhPJwjZUEUDLRMcFr5fmvHzeRRlf27zfb0dhKyXB4D2fLxv43UZy+tITmNzSY/BfIouz9XXQhzAbVXMbqMYiWx1qI=
X-Received: by 2002:a05:6512:2105:: with SMTP id q5mr2110635lfr.649.1622799078510;
 Fri, 04 Jun 2021 02:31:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210602120329.2444672-1-j.neuschaefer@gmx.net> <20210602120329.2444672-6-j.neuschaefer@gmx.net>
In-Reply-To: <20210602120329.2444672-6-j.neuschaefer@gmx.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Jun 2021 11:31:07 +0200
Message-ID: <CACRpkdb=8e=D9JdwxA+oPGj80WnsV86apuECBp1m-Edd+hKPFQ@mail.gmail.com>
Subject: Re: [PATCH 5/8] pinctrl: nuvoton: Add driver for WPCM450
To:     =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Joel Stanley <joel@jms.id.au>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jonathan!

thanks for your patch!

On Wed, Jun 2, 2021 at 2:04 PM Jonathan Neusch=C3=A4fer
<j.neuschaefer@gmx.net> wrote:
>
> This driver is heavily based on the one for NPCM7xx, because the WPCM450
> is a predecessor of those SoCs.
>
> The biggest difference is in how the GPIO controller works. In the
> WPCM450, the GPIO registers are not organized in multiple banks, but
> rather placed continually into the same register block, and the driver
> reflects this.

This is unfortunate because now you can't use GPIO_GENERIC anymore.

> Some functionality implemented in the hardware was (for now) left unused
> in the driver, specifically blinking and pull-up/down.
>
> Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>

(...)

> +config PINCTRL_WPCM450
> +       bool "Pinctrl and GPIO driver for Nuvoton WPCM450"
> +       depends on (ARCH_WPCM450 || COMPILE_TEST) && OF
> +       select PINMUX
> +       select PINCONF
> +       select GENERIC_PINCONF
> +       select GPIOLIB
> +       select GPIO_GENERIC

You are not using GPIO_GENERIC

> +struct wpcm450_port {
> +       /* Range of GPIOs in this port */
> +       u8 base;
> +       u8 length;
> +
> +       /* Register offsets (0 =3D register doesn't exist in this port) *=
/
> +       u8 cfg0, cfg1, cfg2;
> +       u8 blink;
> +       u8 dataout, datain;
> +};

If you used to have "GPIO banks" and you now have
"GPIO ports" what is the difference? Why can't these ports
just be individula gpio_chip:s with their own device tree
nodes inside the pin controller node?

If you split it up then you can go back to using
GPIO_GENERIC with bgpio_init() again which is a
big win.

All you seem to be doing is setting consecutive
bits in a register by offset, which is what GPIO_GENERIC
is for, just that it assumes offset is always from zero.
If you split it into individual gpio_chips per register
then you get this nice separation and code reuse.

> +static const struct wpcm450_port *to_port(int offset)
> +{
> +       int i;
> +
> +       for (i =3D 0; i < ARRAY_SIZE(wpcm450_ports); i++)
> +               if (offset >=3D wpcm450_ports[i].base &&
> +                   offset - wpcm450_ports[i].base < wpcm450_ports[i].len=
gth)
> +                       return &wpcm450_ports[i];
> +       return NULL;
> +}

Then you would also get away from this awkward thing.

> +static u32 port_mask(const struct wpcm450_port *port, int offset)
> +{
> +       return BIT(offset - port->base);
> +}

And awkwardness like this.

Generally splitting up gpio_chips is a very good idea.

> +static int event_bitmask(int gpio)
> +{
> +       if (gpio >=3D 0 && gpio < 16)
> +               return BIT(gpio);
> +       if (gpio =3D=3D 24 || gpio =3D=3D 25)
> +               return BIT(gpio - 8);
> +       return -EINVAL;
> +}
> +
> +static int event_bitnum_to_gpio(int num)
> +{
> +       if (num >=3D 0 && num < 16)
> +               return num;
> +       if (num =3D=3D 16 || num =3D=3D 17)
> +               return num + 8;
> +       return -EINVAL;
> +}

This is also a sign that you have several gpio_chips in practice
and now you need all this awkwardness to get back to which
GPIO is which instead of handling it in a per-chip manner.

This can be done in different ways, the most radical is to have
the pin control driver spawn child devices for each GPIO
block/bank/port with its own driver, but it can also just register
the individual gpio_chips.

Yours,
Linus Walleij
