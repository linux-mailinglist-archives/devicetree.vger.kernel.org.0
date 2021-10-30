Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 495D6440989
	for <lists+devicetree@lfdr.de>; Sat, 30 Oct 2021 16:30:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbhJ3Oc2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Oct 2021 10:32:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbhJ3Oc2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Oct 2021 10:32:28 -0400
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E43BBC061766
        for <devicetree@vger.kernel.org>; Sat, 30 Oct 2021 07:29:57 -0700 (PDT)
Received: by mail-vk1-xa2e.google.com with SMTP id b125so5176077vkb.9
        for <devicetree@vger.kernel.org>; Sat, 30 Oct 2021 07:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VMhKSdU6XagNLXTgt9QjxAYogFasaRabTgH/D5jR5AM=;
        b=wk4c0Top+HACPm4/cX6Jg9EnZZnbUAD1f7LYK/iZiY50ThuaUqmmSeyOIwmhqsqXG4
         7xXtrJ55s1G1N/VPfXw7Rlim8Ug0ucHpq751UaXmtKoaHAlm2NS12k02E8C0ao0cK2ig
         8aOu6Nh7yatfeP1mxj9DshqTTDh5d9hW8Dt5Lc2cpMMEF+2K1IS1beaes+WaBIuV0jq+
         ZukKhnAmRABQ4iLbTpS6AHmzBYAz8atWqGEjNPnl+oOmtlIrOxD9Y8nEGbZ8XqHe8bxR
         nwkhuRSNMZTuhbc2b9n7veZyxxE/1IVLxXqbMxhYuuNRy1oiekZlonNLckjYudYC/LpS
         o/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VMhKSdU6XagNLXTgt9QjxAYogFasaRabTgH/D5jR5AM=;
        b=APfgFpqOwLPdKvkP0S8/vdajr3RKscwY1mTiZevFzwC1dED8vnW4yqtCMD23GDl2zp
         GaMdUmJ3tLc1A1K3Mhp5Xd9ZeEimeIW14LOdb2RPn2JA240+pgSDO7Z4AtfwYgjdXu7l
         tAgfXNpNNZXH5AmlEF50gfaxGh7MsLA0Jsc71PYcd9sNGpb2KPMYjV3XHix2L+FJhGE2
         ikLp4v2ZlQFQlszLfLEfm5KjRDQeOubSrNkkb9Q3lCkpjtr11Qry9IrcgQy/O6NZMnjv
         jXmvEE4YtVm0bUj16Eus5GWbQopQ+fVBFYmcxNKZB9IgqIzGeX49CP44cCOCy+7dllSB
         eIpA==
X-Gm-Message-State: AOAM530SeQO9YJeIqYr9jobMzrnJ9aMWg4BOgQqWtTeoKDLy7jqxOL8x
        eghsdPCs+QPYRjtGm7ej6BhQ0YqNkEV8vdtEGgVxGw==
X-Google-Smtp-Source: ABdhPJxaZ8cFeixxgFJVOy/L0An8U8TaIKGXQZ6pfcVVK7L6np/koDpst87RmD2gtupsxTmqOU30TOwNGydmoikZF6g=
X-Received: by 2002:a05:6122:130c:: with SMTP id e12mr7364332vkp.12.1635604196137;
 Sat, 30 Oct 2021 07:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <20211028183527.3050-1-semen.protsenko@linaro.org>
 <20211028183527.3050-8-semen.protsenko@linaro.org> <1ad6b625-4388-bc78-e258-eae0b9357b96@roeck-us.net>
In-Reply-To: <1ad6b625-4388-bc78-e258-eae0b9357b96@roeck-us.net>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Sat, 30 Oct 2021 17:29:44 +0300
Message-ID: <CAPLW+4kphtac24fcpVUENAMUAdHp2fkzJ0N_r_63Soq6R2VZBg@mail.gmail.com>
Subject: Re: [PATCH 7/7] watchdog: s3c2410: Let kernel kick watchdog
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-watchdog@vger.kernel.org,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Oct 2021 at 03:30, Guenter Roeck <linux@roeck-us.net> wrote:
>
> On 10/28/21 11:35 AM, Sam Protsenko wrote:
> > When "tmr_atboot" module param is set, the watchdog is started in
> > driver's probe. In that case, also set WDOG_HW_RUNNING bit to let
> > watchdog core driver know it's running. This way wathcdog core can kick
> > the watchdog for us (if CONFIG_WATCHDOG_HANDLE_BOOT_ENABLED option is
> > enabled), until user space takes control.
> >
> > Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> > ---
> >   drivers/watchdog/s3c2410_wdt.c | 26 +++++++++++++++-----------
> >   1 file changed, 15 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
> > index ca082b1226e3..9af014ff1468 100644
> > --- a/drivers/watchdog/s3c2410_wdt.c
> > +++ b/drivers/watchdog/s3c2410_wdt.c
> > @@ -732,6 +732,21 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
> >       wdt->wdt_device.bootstatus = s3c2410wdt_get_bootstatus(wdt);
> >       wdt->wdt_device.parent = dev;
> >
> > +     /*
> > +      * If "tmr_atboot" param is non-zero, start the watchdog right now. Also
> > +      * set WDOG_HW_RUNNING bit, so that watchdog core can kick the watchdog.
> > +      *
> > +      * If we're not enabling the watchdog, then ensure it is disabled if it
> > +      * has been left running from the bootloader or other source.
> > +      */
> > +     if (tmr_atboot && started == 0) {
> > +             dev_info(dev, "starting watchdog timer\n");
> > +             s3c2410wdt_start(&wdt->wdt_device);
> > +             set_bit(WDOG_HW_RUNNING, &wdt->wdt_device.status);
> > +     } else if (!tmr_atboot) {
> > +             s3c2410wdt_stop(&wdt->wdt_device);
> > +     }
> > +
>
> This doesn't cover the case where the watchdog is already enabled by the BIOS.
> In that case, WDOG_HW_RUNNING won't be set, and the watchdog will time out
> if the userspace handler is not loaded fast enough. The code should consistently
> set WDOG_HW_RUNNING if the watchdog is running.
>

As I understand, in the case when bootloader started the watchdog, the
driver just stops it. You can see it in the code you replied to.

    } else if (!tmr_atboot) {
            s3c2410wdt_stop(&wdt->wdt_device);

In other words, having "tmr_atboot" module param makes it irrelevant
whether bootloader enabled WDT or no.

> Guenter
>
> >       ret = watchdog_register_device(&wdt->wdt_device);
> >       if (ret)
> >               goto err_cpufreq;
> > @@ -740,17 +755,6 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
> >       if (ret < 0)
> >               goto err_unregister;
> >
> > -     if (tmr_atboot && started == 0) {
> > -             dev_info(dev, "starting watchdog timer\n");
> > -             s3c2410wdt_start(&wdt->wdt_device);
> > -     } else if (!tmr_atboot) {
> > -             /* if we're not enabling the watchdog, then ensure it is
> > -              * disabled if it has been left running from the bootloader
> > -              * or other source */
> > -
> > -             s3c2410wdt_stop(&wdt->wdt_device);
> > -     }
> > -
> >       platform_set_drvdata(pdev, wdt);
> >
> >       /* print out a statement of readiness */
> >
>
