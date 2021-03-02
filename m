Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C33EC32AB7D
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:35:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1836956AbhCBU3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:29:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347661AbhCBQc0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 11:32:26 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DBC9C06178A
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 08:21:36 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id u4so24671060ljh.6
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 08:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dDtVuAUG8eYI5Eln5QS/TclUSCWz1TjGe2OhWQ2Hzok=;
        b=if3nP/oZALnybjJAUkUtzqsvs3YK7lJTKnmGNAKAtkwkVzIB8mFHuhnw39Age4qxUS
         UXw4iYbDW54LVkGsJpSlpCufhFpXSXWrspZnZVQvzvmbL4hoMK6k1yEd5RN5BV+l0zKp
         tXtWk5HPWV2fweqJVtX8sHIWvuZWbxVoSpCFOUKgPtdFaCV2kH7EuRSveUN20qcFG1og
         wyrqlkSN21mX7hX7xxtgzoot8V4HzSFxwkYFb/OJ+vf7aE1D4NJTbKYunNSiNEI9kP9y
         s+wCBi42PEGQZkVQoauPMQTxxO1r/MHtP+jvcnpmfUsTbIdbT4RlvrpKFT5uBgM18SPw
         Mw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dDtVuAUG8eYI5Eln5QS/TclUSCWz1TjGe2OhWQ2Hzok=;
        b=WGFENyhsGGqdAladeAJB2ZgBtlzTUDMwfoAzwNb1FO3kG1IkL3/Ai733n4FgUD9xTC
         WOWivvjSJPUf/qglm1BWp0T6dyvvDKIPYaHJqE+Jk4stixJUo+N2/lwlPua5oQyAmYmP
         kuEe6VASCbZuZ4mQOsYT0Z7qkwQ8RxtwwsT0pDP3t1hfLp83fNiZc8IS5eQQcK4nDAUl
         qsXoGIg9nzHKH1Cv3LDetDmTK9XJDMPaE0TRCsD+GIGfdSqFjN/1RAGZ5hAIOZ93btUV
         Saf8DUljLS0BHCHn/OJ709agac9/qr+9ucaLcCtz4j2zOQ9TbDo8hf4HNYWAWzk6yZ7w
         7uSQ==
X-Gm-Message-State: AOAM5314iFjow31DZb+7gIzE/a13uhyG/gpIvITApmPM9TCSEH5mpDV+
        p9LW2GNhctvRAEu0wnsyfyLTB18toLw0arNfWs0/ag==
X-Google-Smtp-Source: ABdhPJzXqrYBkkHlZel98Kbs7UOBikTi+iuddAEEWTpHvvJw+VnT+XciCztoznAVqXpZN+sKledBjpv4CVaTd6nqOkQ=
X-Received: by 2002:a2e:9041:: with SMTP id n1mr12550220ljg.273.1614702094699;
 Tue, 02 Mar 2021 08:21:34 -0800 (PST)
MIME-Version: 1.0
References: <20210302011813.2331879-1-alexander.sverdlin@gmail.com>
In-Reply-To: <20210302011813.2331879-1-alexander.sverdlin@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 17:21:23 +0100
Message-ID: <CACRpkdYErJH5RUjL+jPC5vnaqGiOqBwHsr0E42wOWrpBGrpS3w@mail.gmail.com>
Subject: Re: [PATCH] gpio: omap: Honor "aliases" node
To:     Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc:     Linux-OMAP <linux-omap@vger.kernel.org>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Kevin Hilman <khilman@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 2, 2021 at 2:18 AM Alexander Sverdlin
<alexander.sverdlin@gmail.com> wrote:

> Currently the naming of the GPIO chips depends on their order in the DT,
> but also on the kernel version (I've noticed the change from v5.10.x to
> v5.11). Honor the persistent enumeration in the "aliases" node like other
> GPIO drivers do.
>
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
> Yes, I noticed checkpatch "WARNING: DT binding docs and includes should be
> a separate patch."
> However, the parts below are tiny and barely make sense separately.

I've shut it down in the past because the instance ordering is a
linuxism and the needs are in the Linux userspace somehow.
It is different from a UART for example, which always need to
be at the same place on any operating system, hence it has an
alias.

For kernelspace the instance order should not matter, since
all resources are obtained from the device tree anyway
by phandle.

For userspace:
The way to determine topology in Linux userspace is to use sysfs,
and combined with the GPIO character device this provides a
unique ID for each GPIO chip and line on the system.

/sys/bus/gpio/devices/gpiochip0/
/sys/bus/gpio/devices/gpiochip1/

etc can change, but these appear as PCI, I2C, SPI, platform
etc nodes as well. On my PC:

/sys/devices/pci0000:00/0000:00:1a.0/usb1/1-1/1-1.5/1-1.5:1.0/gpiochip0

It's pretty clear where that gpiochip sits.

Yours,
Linus Walleij
