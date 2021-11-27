Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C492345FC1B
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 03:37:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348939AbhK0CkR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 21:40:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348058AbhK0CiQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 21:38:16 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2A06C061A18
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 17:36:19 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id bk14so21990174oib.7
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 17:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rEMAgFe1xF4hp22LENWc/j6FIq+ETQTSR6aU0f7r36o=;
        b=tjtWbMgGWuTrP5zCPfw2SeFF2ANp/JlXdUyAn+MuI808Dr8uagTwNpDVG2cPjUUpjs
         kkoWblWb40HPkRBPNhqtPag9Z+NbsfzMqBIspVrzgRFXPj2/CJ6R+lJ0HB+xNRRoXUke
         cjDFJpDuDoGSwaCz0LpcN7tzIChNVMUC+uElQ6HXrQY3x1ExhQHcQB5qMRKnOEyuEHcA
         Ey8fOw2C1GosodK7JLKwQ1y1Wpa22r3c3coLMvsMpQ4BBPsq4d7xOjkpVAwJWq2s4vtG
         zugFCeG7kIjPbp5lHcAxMjrVOkXmwKN+6va0lEahet0oTI5AKsVF7ENlm0a5gMN8F2h7
         2tDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rEMAgFe1xF4hp22LENWc/j6FIq+ETQTSR6aU0f7r36o=;
        b=kswIfK/iWzbMCgng47pjwgHEJiclawZQ3rlo+VuG/EUZBQwrFgS/SQlUZS76GFQU6I
         i+LqxF78WfKlouMryN2vcEYRQqS8CE5WhUnf93kXTdBoZSuowCGtzdQCWhm343VkSYNM
         ZmmYn8EfB+N+WcXsc3fdyYUHo15AovnYniwtu+o+dYI+p/bqiXH9fwrJRFqmru+YTrO+
         6x42zmcdng5p2cHKoWApiYBBf2ZnHTP9o2HnZ1A05i3QEOuSq2pCMqM1vHrIQ9ntlgTL
         fAIsuR6tv3aaMXMGfZJKk2wLiH8sOTv0VWYcvQObuFZrwuaNDvoxBB4bGpvjpYZ6p6Oc
         vadA==
X-Gm-Message-State: AOAM532f4FuTdyH2u8IJHy15NmxMrS73/5Z2bYWmZqk17mAyLCLhExPv
        c6hSKl8tIh0ORQFpT2Ul9h8T71iYBndUyGMgTNubzuZKypN+Vg==
X-Google-Smtp-Source: ABdhPJwSs5s2sLCzpFnvMDUBE0FB/x7d32Nh2tYWwrvGI9v+b6rBjLQ+IcD3ohO6BwPg0fhdCSc0bEDKfkUUuDbBNIU=
X-Received: by 2002:a54:4791:: with SMTP id o17mr27768305oic.114.1637976978838;
 Fri, 26 Nov 2021 17:36:18 -0800 (PST)
MIME-Version: 1.0
References: <20211126160219.674665-1-demonsingur@gmail.com> <20211126160219.674665-4-demonsingur@gmail.com>
In-Reply-To: <20211126160219.674665-4-demonsingur@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 27 Nov 2021 02:36:06 +0100
Message-ID: <CACRpkdawb_WWdjg0J-AmXBk3N2JZUb1yptrqD4sOnh_+unwR1Q@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] iio: addac: add AD74413R driver
To:     Cosmin Tanislav <demonsingur@gmail.com>
Cc:     cosmin.tanislav@analog.com, Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <michael.hennerich@analog.com>,
        Rob Herring <robh+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        linux-gpio@vger.kernel.org, Michael Walle <michael@walle.cc>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Cosmin,

thanks for your patch!

I noticed this has a GPIO chip inside of it :)

On Fri, Nov 26, 2021 at 5:03 PM Cosmin Tanislav <demonsingur@gmail.com> wrote:

These:

> +static void ad74413r_gpio_set(struct gpio_chip *chip,
> +                             unsigned int offset, int val)
> +static void ad74413r_gpio_set_multiple(struct gpio_chip *chip,
> +                                      unsigned long *mask,
> +                                      unsigned long *bits)
> +static int ad74413r_gpio_get(struct gpio_chip *chip, unsigned int offset)
> +static int ad74413r_gpio_get_multiple(struct gpio_chip *chip,
> +                                     unsigned long *mask,
> +                                     unsigned long *bits)

(...)
> +       if (st->num_gpo_gpios) {
> +               st->gpo_gpiochip.owner = THIS_MODULE;
> +               st->gpo_gpiochip.label = st->chip_info->name;
> +               st->gpo_gpiochip.base = -1;
> +               st->gpo_gpiochip.ngpio = st->num_gpo_gpios;
> +               st->gpo_gpiochip.parent = st->dev;
> +               st->gpo_gpiochip.can_sleep = true;
> +               st->gpo_gpiochip.set = ad74413r_gpio_set;
> +               st->gpo_gpiochip.set_multiple = ad74413r_gpio_set_multiple;
> +               st->gpo_gpiochip.set_config = ad74413r_gpio_set_gpo_config;
> +               st->gpo_gpiochip.get_direction =
> +                       ad74413r_gpio_get_gpo_direction;
> +
> +               ret = devm_gpiochip_add_data(st->dev, &st->gpo_gpiochip, st);
> +               if (ret)
> +                       return ret;
> +       }
> +
> +       if (st->num_comparator_gpios) {
> +               st->comp_gpiochip.owner = THIS_MODULE;
> +               st->comp_gpiochip.label = st->chip_info->name;
> +               st->comp_gpiochip.base = -1;
> +               st->comp_gpiochip.ngpio = st->num_comparator_gpios;
> +               st->comp_gpiochip.parent = st->dev;
> +               st->comp_gpiochip.can_sleep = true;
> +               st->comp_gpiochip.get = ad74413r_gpio_get;
> +               st->comp_gpiochip.get_multiple = ad74413r_gpio_get_multiple;
> +               st->comp_gpiochip.set_config = ad74413r_gpio_set_comp_config;
> +               st->comp_gpiochip.get_direction =
> +                       ad74413r_gpio_get_comp_direction;

Look a bit like the generic drivers/gpio/gpio-regmap.c
GPIO_REGMAP.

Example:
drivers/gpio/gpio-sl28cpld.c
drivers/pinctrl/bcm/pinctrl-bcm63xx.c

Or is it too particular for this?

I don't know if the regmap gpio can deal with adding a few functions
like a custom .set_config() on top of the templates to be honest, maybe
that is something we can fix in that case?

Cc:ing Michael Walle so he can pitch in if I'm onto something here or not.

Anyways the GPIO portions look good otherwise.

Yours,
Linus Walleij
