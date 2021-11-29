Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 598D9460B4D
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 00:56:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359733AbhK1X7s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Nov 2021 18:59:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344104AbhK1X5s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Nov 2021 18:57:48 -0500
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D316DC061748
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 15:54:31 -0800 (PST)
Received: by mail-vk1-xa36.google.com with SMTP id e27so9801604vkd.4
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 15:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W6GUPGDBtJn+odYJ5HX9HLZbUxWJ488arHtw5A2QE5I=;
        b=mAP+xUXoJdAGw+3jgnscKZG1chXc/PKkk929pxX1NBvMUcqxq416PnF1Q9LV+y3IAH
         12zWR5H/rkQUsU4Ij9XRDMWaJAXtvb8ARK8LY9wX0jSohw630SZ1bmXfflhCNq8dzyXe
         jHyXLwDdLEFdHXLFa/Zs8bysH52SDcnXQ62X3lUeIGMr3f4NR5dmQh59b79ucjYIrz+6
         3DOZQwQRfdgU6lZU9gGDWNWh6ssUZAIL4/qevnIc0rZSZGCLS7ePw8Y4ozoKybFD2S2I
         zx07pvwbYJJvK9oVwWtY6Yst+A2bwCJWTn+2z6N4tfCN6ZpFbmIXWUC6R+4GXH383tS8
         wH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W6GUPGDBtJn+odYJ5HX9HLZbUxWJ488arHtw5A2QE5I=;
        b=glA6c9KPpC+t/x+mghD8YGPLzKnhxOBAX2tKJ2NslaQmiunhf++rEq0bsu4WaJtkhH
         RmWw9wDuNTQLmkLmelNYdbIdIYSiuXkEgyd66mBBgWTXtt6hBq1yvHAcsHI3PCGA9FuM
         uKb0UGAMduZiPsnYqZ31Tzl9fYYgyG8rYZgYKal9PwLIXumuF0bL2VdTxZ0MUs6siBFR
         qBcJCFk99dDPbqM6FbbSAox78Uxh1L5Lob7/TAK2d60NjPDWMrUTUaiELiyIe/nBim4j
         qsg8zH5UbjzD8+I775ITGnHtgVlXsyogDsFr6g7b8EHhHJEq8XrKX8rIXmrSKHqsl7Pq
         kgqQ==
X-Gm-Message-State: AOAM533YK3yI4L//dWno4bYLKPgF9CHURQWrmTbWYmanm+dSLXkn8jFn
        zF4yIF75rlBp547O/9TokR4xxa7yzsOmboIc+KQCCA==
X-Google-Smtp-Source: ABdhPJwpbsu1iP889kCFOoQxvKA0CIJwmiMq5+VFnpzr9X3v6KVdGvWK3BRzk6bWKvLGWCwFUfT3lgvPVfWQ4zhRTEY=
X-Received: by 2002:a05:6122:2158:: with SMTP id m24mr33410783vkd.1.1638143670173;
 Sun, 28 Nov 2021 15:54:30 -0800 (PST)
MIME-Version: 1.0
References: <20211127223253.19098-1-semen.protsenko@linaro.org>
 <20211127223253.19098-7-semen.protsenko@linaro.org> <YaORtBO4b9AyFYyd@kroah.com>
In-Reply-To: <YaORtBO4b9AyFYyd@kroah.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Mon, 29 Nov 2021 01:54:18 +0200
Message-ID: <CAPLW+4=mL6ZV73zY+AoF6mo8Tka0cO8pst2mBYOoEHpX4nrRbA@mail.gmail.com>
Subject: Re: [PATCH 6/8] tty: serial: Make SERIAL_SAMSUNG=y impossible when EXYNOS_USI_V2=m
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 28 Nov 2021 at 16:27, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sun, Nov 28, 2021 at 12:32:51AM +0200, Sam Protsenko wrote:
> > When UART is encapsulated in USIv2 block (e.g. in Exynos850), USIv2
> > driver must be loaded first, as it's preparing USI hardware for
> > particular protocol use. Make it impossible for Samsung serial driver to
> > be built-in when USIv2 driver is built as a module, to prevent incorrect
> > booting order for those drivers.
> >
> > Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> > ---
> >  drivers/tty/serial/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> > index 0e5ccb25bdb1..47bc24e74041 100644
> > --- a/drivers/tty/serial/Kconfig
> > +++ b/drivers/tty/serial/Kconfig
> > @@ -237,6 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
> >  config SERIAL_SAMSUNG
> >       tristate "Samsung SoC serial support"
> >       depends on PLAT_SAMSUNG || ARCH_S5PV210 || ARCH_EXYNOS || ARCH_APPLE || COMPILE_TEST
> > +     depends on EXYNOS_USI_V2 || !EXYNOS_USI_V2
>
> That's odd, and is not going to help if everything is built as a module
> and loaded that way.
>
> This needs to be done properly in code to handle the issues if the
> "wrong" code is loaded first.  Please trigger off of the hardware type
> correctly so you don't have to worry about this at all.
>

You are right. The only thing that should be done is "__init" should
be removed from s3c24xx_serial_console_setup() and
s3c24xx_serial_get_options() functions. Because in case when USIv2
driver instantiates the serial driver via of_platform_populate(), when
USI_V2=m and SERIAL_SAMSUNG=y, those symbols will be thrown away
already. And of course "[PATCH 5/8] tty: serial: samsung: Enable
console as module" is needed as well. Correct init order (USI vs
serial) is already ensured by embedding serial node in USI node (as a
child node).

We'll still have some weird init order in that case (USI_V2=m and
SERIAL_SAMSUNG=y), like doing serial console init first (and
earlycon), then registering USI driver as a module (reconfiguring USI
IP-core), and then doing serial probe. But at least that doesn't crash
and works fine (only causing some delay once, in the middle of dmesg
output). But I guess that would be a problem of people who decided to
go with such weird config.

Bottom line is, this patch is not needed. I'll re-send v2 soon,
excluding it from there, and will also add that mentioned "__init"
removal.

Thanks for review!

> thanks,
>
> greg k-h
