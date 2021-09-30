Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED0C341DBA1
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 15:59:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351595AbhI3OBU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 10:01:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351594AbhI3OBT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 10:01:19 -0400
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com [IPv6:2607:f8b0:4864:20::92e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7A78C06176A
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:59:36 -0700 (PDT)
Received: by mail-ua1-x92e.google.com with SMTP id i8so4261816uae.7
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Om8no/2SyMr+ZFU7kT3RzTdTECQ48yOn5szzAaS26GE=;
        b=QknXTcFUivTKE1/gx5taCpS3UPA4wZ3WPG9GhgNL9VG7eSiogJ9BssfgsKo+QFhJpo
         8+QWXnn+vAGfxvNwCa+Mq4874S83Y7+Db8RW8usudhPe+2JSyn9RTtOyoVJx76Ox4Wg3
         MLoaX0/3jsSp8Cr56Aysjrv+z61Q0H2QxXuOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Om8no/2SyMr+ZFU7kT3RzTdTECQ48yOn5szzAaS26GE=;
        b=7hPwkwChNUGkaAC54fm9BZ8NEgiCiT/Lhb0aR0fNLJHVi3fNHsgk68eg9RjxbzOzYu
         yACd+nP0PO7shKHBmuaGs8oOQGPvCbpDSMRs57f4iE4OVBlUhcFiiToxFH3e53Ne8vML
         OCG4XAnfSh0DhwLkc6emsO7iRedeFFyZtgBgRdzRy72CXCK/9m8V5B8XNM0i9ZQinREO
         QhlPM/jovTFqlBYwIWfwewXO5Lg9cNGHNGjx/AfpOeNkocjoP8H2NGynQEqL/3914kaE
         VMN5SOBbnEi6saOMZ2K2I75vgsciCAgI+vcl1xIF6xDL/Kx48NOZOzMZst+9GFHS48WC
         kekA==
X-Gm-Message-State: AOAM532pSRrjMfoVVcIQJxyyGcKbjTuszs5NCah7mJ0BsE5YavashoHg
        4C+73sJHmJbNG3/scQXULBuKR7CmmvDrwqfNa2nKtw==
X-Google-Smtp-Source: ABdhPJx6wz2/ujHJOTtRhJB2uxtKK1YQ8dFIeHcLgGPWjexj0atcY0x+hIG3kIhrTCZK03jO1hA4iu7rr8DlEFe0ty8=
X-Received: by 2002:a9f:3881:: with SMTP id t1mr5445135uaf.127.1633010375712;
 Thu, 30 Sep 2021 06:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org> <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
 <874ka2tdqe.wl-maz@kernel.org> <CAFr9PXmu2JRSK9==MjpwgWTCET4iqj5U=egQQ2TciN0=B_UwNw@mail.gmail.com>
 <871r56tbir.wl-maz@kernel.org>
In-Reply-To: <871r56tbir.wl-maz@kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Thu, 30 Sep 2021 22:59:24 +0900
Message-ID: <CAFr9PXn5BiN1mqeZYcVMfDKWx3Re9BkY_miE34669XivCpmrCg@mail.gmail.com>
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

On Thu, 30 Sept 2021 at 22:53, Marc Zyngier <maz@kernel.org> wrote:
> Somehow, the handler for this interrupt is set to handle_bad_irq(),
> which probably isn't what you want. You'll have to find out who sets
> this (there is a comment about that in gpiolib.c, but I haven't had a
> chance to find where this is coming from).
>
> Do you happen to set it in your driver?

The gpio driver (gpio-msc313.c) sets it during probe:

gpioirqchip = &gpiochip->irq;
gpioirqchip->chip = &msc313_gpio_irqchip;
gpioirqchip->fwnode = of_node_to_fwnode(dev->of_node);
gpioirqchip->parent_domain = parent_domain;
gpioirqchip->child_to_parent_hwirq = match_data->child_to_parent_hwirq;
gpioirqchip->populate_parent_alloc_arg = match_data->populate_parent_fwspec;
gpioirqchip->handler = handle_bad_irq;
gpioirqchip->default_type = IRQ_TYPE_NONE;

Cheers,

Daniel
