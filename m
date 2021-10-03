Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D3B0420455
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 00:35:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231886AbhJCWh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 18:37:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231862AbhJCWh1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Oct 2021 18:37:27 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 048B7C0613EC
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 15:35:39 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id i24so15383149lfj.13
        for <devicetree@vger.kernel.org>; Sun, 03 Oct 2021 15:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RHGeEwkIPlVKp2DkB8YqxMW8FnFDM4r2igt5Qp9dN4s=;
        b=k7r+x8Xy/bDeEtEp+kWyr4wo2AfQkY6Pp8IIal9DKhw50f62urOlbb3Ogzq2wVaf5i
         3DGmihVkCTOS1ZlViVKfJWrE1BLvQ90yyaiDVcivzxXDS+TDeHdKMoW2Dac7ouQ8PbgH
         IBmt1D1z2da2hI4lMxwsYYXafcqSCdLdE+471la3kKVL4uv7x4y94LBYuVRugQTEiWOe
         Y9+ieTu3wb1VGDosEmfUG+AoqU8kqxbpi5hZspr7WSvEFvm1Frfga1ahzp+fYFtmJu6K
         6zqSszs/VIn039z2otrSwcVKRxuR1Fg3ap6OgbWLPXfEFPhP7wqczmv09Q1l63x4TV60
         psDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RHGeEwkIPlVKp2DkB8YqxMW8FnFDM4r2igt5Qp9dN4s=;
        b=GmIdQYuLuhl6MpyPloGfGK6ldSSQFzXbKAkiSmBzj5EsRJ0YXIz28khUbCLIGusimw
         LqFyOpB3qLMUn3zt4Esp1mrst07/8bjwVE3wERuzDdYj0AYLZ+tG1Y5PAyulwU5yXC+D
         NJLGMvVTe6QCaoAavN9XOVUgbSkaxJyoq4PT3wUArPrIer1ipmvN+njohorGDS7D6QsS
         5Gz2VhpwT5wXSbn/aun4txkYrXSqVVmvVu0rH3QdQRkHysrRN6vetwW+uJJFRqPraM4C
         t0WBwuBNqZThe3mE+lcOlkFjlYKlXgG27VRWfWXSCBbhpS3wTw9yJjxuBpFTPhr03Wnk
         lBjg==
X-Gm-Message-State: AOAM532hjh072YvNVo5a5XP0dez4H/SBlrCynGXcR8Pf5vvTpZACsAKL
        OC27WTgFLy+8G+G7f8fkovUU8eFS9px4C5D8AuJL+w==
X-Google-Smtp-Source: ABdhPJx+Frrq+M4YcxtIzR0gTJZJddtI5aGk+nl4ThYz0rplVevirj2+Hlj6ZhzlTcNsw8/Z8tLJ0uJFlkdFANW8nOs=
X-Received: by 2002:a05:651c:4d2:: with SMTP id e18mr12201887lji.432.1633300537365;
 Sun, 03 Oct 2021 15:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <20211001191209.29988-1-joey.gouly@arm.com> <20211001191209.29988-4-joey.gouly@arm.com>
In-Reply-To: <20211001191209.29988-4-joey.gouly@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 4 Oct 2021 00:35:26 +0200
Message-ID: <CACRpkdYC0js+++Q4dFL4P0WiMfPOJthaH3kkf8T31UUb3OBDqQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] pinctrl: add pinctrl/GPIO driver for Apple SoCs
To:     Joey Gouly <joey.gouly@arm.com>, Mark Brown <broonie@kernel.org>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Hector Martin <marcan@marcan.st>,
        Marc Zyngier <maz@kernel.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Sven Peter <sven@svenpeter.dev>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Kettenis <kettenis@openbsd.org>, nd <nd@arm.com>,
        Stan Skowronek <stan@corellium.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Joey!

over all this driver is much improved and using a lot of stock functions
in the pin control core and getting really clean and compact.
I have one major nit below:

On Fri, Oct 1, 2021 at 9:12 PM Joey Gouly <joey.gouly@arm.com> wrote:

> +struct apple_gpio_pinctrl {
> +       // Shadow the pin values, the REG_GPIOx_DATA bit can read back stale values.
> +       u32 *pin_shadow;
(...)
> +// No locking needed to mask/unmask IRQs as the interrupt mode is per pin-register.
> +static void apple_gpio_set_reg(struct apple_gpio_pinctrl *pctl,
> +                              unsigned int pin, uint32_t clr, uint32_t set)
> +{
> +       void __iomem *ppin = pctl->base + REG_GPIO(pin);
> +       uint32_t prev, cfg;
> +
> +       prev = pctl->pin_shadow[pin];
> +       cfg = (prev & ~clr) | set;
> +
> +       if (!(prev & REG_GPIOx_CFG_DONE))
> +               writel_relaxed(cfg & ~REG_GPIOx_CFG_DONE, ppin);
> +       writel_relaxed(cfg, ppin);
> +       pctl->pin_shadow[pin] = cfg;
> +}

Are you not simply reinventing regmap-mmio here?

Keeping shadows of registers including write-only registers
is exactly what regmap does.

Check it out, if in doubt consult Mark Brown, I'm pretty
sure we can add what you need to regmap if it is missing.

> +static uint32_t apple_gpio_get_reg(struct apple_gpio_pinctrl *pctl,
> +                                  unsigned int pin)
> +{
> +       return readl_relaxed(pctl->base + REG_GPIO(pin));
> +}

If you use regmap-mmio I am pretty sure this will also
return the right value for the shadowed registers which it
currently does not IIUC.

> +               apple_gpio_set_reg(pctl, group, 0,
> +                                  REG_GPIOx_PERIPH | REG_GPIOx_CFG_DONE);
> +       else
> +               apple_gpio_set_reg(pctl, group, REG_GPIOx_PERIPH,
> +                                  REG_GPIOx_CFG_DONE);

I think all calls to apple_gpio_set_reg() could be replaced with
regmap_update_bits() or similar.

Yours,
Linus Walleij
