Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B79CC294B9E
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 13:07:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439274AbgJULHu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 07:07:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2410564AbgJULHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 07:07:50 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5170C0613CE
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 04:07:49 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id i1so2671102wro.1
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 04:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sgdeaNLeFEVMNHVsrJv3x64Nz+VLWwYYdWEYLLEMUbs=;
        b=IhXAiczrLAmLzfqCcMtKKPHk3ybKQgdIvRyQ6PGaU2vUCiU4ByB7X2ZKVBDnfXc4yo
         C7K1uGXUd4VsnHgdwrT4fJvbiujw76q/UssPT40uFnaT5qUdTVw8P49APGQ30C1E5pdU
         pMU5JePGUTWu9GT/wP7q+aIsfJ9pTcio0W6EU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sgdeaNLeFEVMNHVsrJv3x64Nz+VLWwYYdWEYLLEMUbs=;
        b=mdGG0e4QeEXpRP0/fKFi4hPtI9AiiCYLu4m5UugNeWdcDHMFALi2LlDRmxBeSwnjNs
         dlpxzUfDjzkBK3yctKsHLdJE6tBhHeqMLALnLdbn9NqopYj3UWm+gVA3cYBJJ2+HB0A+
         Fqwyo5b3Z7CsxpPDDoQJ8th52dOTHL21zmSatmMhoiEvyqx3GMwhQxm2v+ktIhOpfQhC
         fS36RfZucLSFUnQBUhyOFPFzWgcrHG4xTnm/su/OXtfl27UR6pC2xXJbAgUk90k43FS2
         q1PVsxczF+F8T+/o2HcVOzTYpsRbTOeMuxKZ+c3zX7llqDa0vrsKaBkrTTzwITMtWPdc
         oo4g==
X-Gm-Message-State: AOAM530JhkcS0ypFzp2m3PNW4AU8oAgAgoG1hIipEZoFrTMV49rqwUJm
        JSwpKgGVN4BeMDy/AjV/40aKeZ/UmV5nZiaJxFCePQ==
X-Google-Smtp-Source: ABdhPJw+HhaN1MBMrtUAxgBjuYJJ1eHTqVJ9uPe2N7F1GAMJZY5AKc7YNQzeJeS7Q54exwag/RUOdaF2fZsZyv8WoKU=
X-Received: by 2002:a5d:4d8a:: with SMTP id b10mr4210682wru.5.1603278468446;
 Wed, 21 Oct 2020 04:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20201011024831.3868571-1-daniel@0x0f.com> <20201011024831.3868571-4-daniel@0x0f.com>
 <CACRpkdYmdZ81q_tsXRQ56aFjGsvV3AwJ8_hiu31mD14DGiK84A@mail.gmail.com>
In-Reply-To: <CACRpkdYmdZ81q_tsXRQ56aFjGsvV3AwJ8_hiu31mD14DGiK84A@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 21 Oct 2020 20:07:37 +0900
Message-ID: <CAFr9PXnX7QyM0VUmosFYueSe4ewA7uT2VZMfxFPaFt6-jUhoSw@mail.gmail.com>
Subject: Re: [PATCH 3/5] gpio: msc313: MStar MSC313 GPIO driver
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

Sorry to pester you again...

On Sat, 17 Oct 2020 at 01:56, Linus Walleij <linus.walleij@linaro.org> wrote:

> > +       gpiochip->to_irq = msc313_gpio_to_irq;
> > +       gpiochip->base = -1;
> > +       gpiochip->ngpio = gpio->gpio_data->num;
> > +       gpiochip->names = gpio->gpio_data->names;
> > +
> > +       for (i = 0; i < gpiochip->ngpio; i++)
> > +               gpio->irqs[i] = of_irq_get_byname(pdev->dev.of_node, gpio->gpio_data->names[i]);
>
> Use hierarchical generic GPIO IRQs for these.
>
> Assign ->fwnode, ->parent_domain, ->child_to_parent_hwirq,
> and probably also ->handler on the struct gpio_irq_chip *.
>
> Skip assigning gpiochip->to_irq, the generic code will
> handle that.
>
> Again see gpio-ixp4xx.c for an example.

I sent a v2 with this conversion already and it looks a lot better.
Based on Andy Shevchenko's comments[0] I'll be sending a v3 that fixes
up all style and other issues he found.
Before I do that I have a question that maybe you could help me with:
Andy noted a few times that I have this driver as a built in driver
and not a module.
The gpio-ixp4xx.c driver is also a built in driver. Is there a reason
why it's ok there but not this driver?
I've actually changed it to allow building as a module already but I
don't want to push a v3 if something like the interrupt handling means
it should actually be a built in and I'm just missing something.

Thanks,

Daniel

0 - https://lore.kernel.org/linux-gpio/CAHp75Vf5iUzKp32CqBbv_5MRo8q8CyBPsBcgzKsww6BFtGJwUA@mail.gmail.com/
