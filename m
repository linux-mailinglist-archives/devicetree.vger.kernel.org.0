Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D2D841DE76
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 18:11:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348696AbhI3QNB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 12:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348067AbhI3QNA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 12:13:00 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54B62C06176A
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:11:17 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id g41so27289247lfv.1
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0z3z3kola63LGzlac8PULfdPcItjbLQMU6+VKpeGXhc=;
        b=Ow8AXi7KHrHIabtRoCsd6XNykukzuLpKuGXA5SSp3DJdMWGmry0YhwEre3qRNrk1ZR
         QPJ3DGMQyaJquGQyo7d9b9LDdGA9U9v+9OZSsqsWsZ++cYImoV/i7bqe6ypmY5LG3qBE
         49To2gaktz9YOU/r2DZgHPdRGf/C+sJFiLMHWsE6O5V5BxLFZqNmV8FRl4YthxE6Lzpf
         zq4dhu9FeLgDgBX4Yap+zIL3ZNvkJOSUEH0I2h5bmzvFMIIhRa4iGwc1xTG7vTAwUlws
         zEb6gn9C7eHwfEjSS2XCd2/DEnG0zW19koZ+lYiw2fB3jroYNFWBXa6odW56vHTU/SzS
         cW7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0z3z3kola63LGzlac8PULfdPcItjbLQMU6+VKpeGXhc=;
        b=deVbGAGLwroaY5VDWizIwhN5TWaLKqFgnbkmAKZhvbRH2XGXOkDLmdMqLqWQmZT8kd
         zrAMdj5bZRtiM5vxGRS3y17NYtxw37sEBZJ7SA4Jyn+xO/hpuHmRRPAsIxlBdrSkFh+P
         d7ewT8YRGGDBD7XJwWkhfinuV8J24slmFo331XkcTu/lOiSwD5S+3S19D9zKqSM9MCP5
         vPyxhrZnXtovft4WX0GS1ZZfrbSecOq+GnoRntFEbaCS9hFMaKmlUHzs57l1XJoLM8yA
         PKD3QI99CBeQL7mWhg2d2aZUNy/AK5rfgvLdHll/QSkfTZ42i4sh6KEZ5Oob92v9YnfY
         Dh2A==
X-Gm-Message-State: AOAM530KkSD7kdvAPzY5ZexlBhMiu5ssm37j1xSNaTxQpkqDvd+Qz29h
        eOJmDt/71HQwJEHFyiGKpmiGnEbbaxbiTypTtZguAA==
X-Google-Smtp-Source: ABdhPJzXcqjlwSnBUEg1mIJg/WPn+1oa7h/EfU4mgGfJGhWkDWkkyZBwWdu6LQXfoiuOC+LvKgkq15A8Z/nm+6MwTTU=
X-Received: by 2002:a05:6512:10cc:: with SMTP id k12mr105409lfg.72.1633018271311;
 Thu, 30 Sep 2021 09:11:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org> <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
 <874ka2tdqe.wl-maz@kernel.org> <CAFr9PXmu2JRSK9==MjpwgWTCET4iqj5U=egQQ2TciN0=B_UwNw@mail.gmail.com>
 <871r56tbir.wl-maz@kernel.org> <CAFr9PXn5BiN1mqeZYcVMfDKWx3Re9BkY_miE34669XivCpmrCg@mail.gmail.com>
 <87y27erw4r.wl-maz@kernel.org>
In-Reply-To: <87y27erw4r.wl-maz@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Sep 2021 18:10:59 +0200
Message-ID: <CACRpkdYvvm8HPdA6gfiV_Gm4DqiS_S5dHX9V2zt2Rn8fAkT=pQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
To:     Marc Zyngier <maz@kernel.org>
Cc:     Daniel Palmer <daniel@0x0f.com>, DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 30, 2021 at 4:11 PM Marc Zyngier <maz@kernel.org> wrote:
> On Thu, 30 Sep 2021 14:59:24 +0100,
> Daniel Palmer <daniel@0x0f.com> wrote:

> > gpioirqchip->handler = handle_bad_irq;
> > gpioirqchip->default_type = IRQ_TYPE_NONE;
>
> Right. I have no idea why this is a requirement, and I would normally
> set it to whatever is the normal flow handler on this HW, but this
> looks like the GPIO subsystem has some expectations here.
>
> I'll let Linus comment on it.

The handle_bad_irq() as default handler is because many GPIO
IRQ controllers in difference from on-chip IRQ controllers support
two levels and two edges of triggers, and there is nothing "normal"
(it is "general purpose" after all) so we need to defer the selection
of a suitable flow handler to .set_type().

With device tree the trigger is often specified in the second cell in the
DTS, so .set_type() will be called for any consumer as part of
the request_irq() and the appropriate handler is set from .set_type().

In my mind this is following the DT (ACPI) usage model of allocating
and initializing resources dynamically as they are requested.

I don't know if this reasoning is wrong in some way, what should we
do otherwise? (Confused...)

Yours,
Linus Walleij
