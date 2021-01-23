Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EDB53018CC
	for <lists+devicetree@lfdr.de>; Sun, 24 Jan 2021 00:01:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726400AbhAWXAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jan 2021 18:00:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726388AbhAWXAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jan 2021 18:00:25 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5657DC061793
        for <devicetree@vger.kernel.org>; Sat, 23 Jan 2021 14:59:45 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id p21so7554569lfu.11
        for <devicetree@vger.kernel.org>; Sat, 23 Jan 2021 14:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5sd27o0ULTlZ3D/LwNE5ATuhVJKEaDj8IKxEHxs/DWY=;
        b=waLW7xR2wqrSAt8xfwNa1xcBOmt8wXwU5pu7RArop4szuT4hcsrhMvOTifJ5AFyqhE
         eY3qgShI3Bw1WU+TPtmGuLK6C9+C/V8hSHtXtUNxwTHczvplVmBlttzf2i3f1z8kUFn3
         MMKxZ2liqGA6dtxbgVch9u5We1c5CtqaXwyT+1udKheHvJ5N0L+id5ZSTk/rYpHjSDpc
         +1I7Mp4rvpJsraM7SuvhREuqLHvNrA6LGSeotYc/vrq/SFoUdk8tj58bx6ETkGiZC1MA
         i/P59NcD3u1JwjZDo7Bz5fH7jMk8hPlqo/4kz13y5MSnw5Ya/Ei79eHoe7UEqTQnoJII
         8Igw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5sd27o0ULTlZ3D/LwNE5ATuhVJKEaDj8IKxEHxs/DWY=;
        b=gccwaCsL+v9JIK8kWAkJY0GsbYRgK/Zo5sw246mJQQ5PyiO+j7Txo2gx3FPzg9rJ1d
         kfcCIbQXpLd+rX1Zujx8jWgKX3ifIqc+YAqlS4s0srktz7LJxl/KCWlr+Ay26CKACJfA
         /b/rvEoZck8OpAEJASNcR+xHyemLANcn+UcwL8mRJ1i05ek8r1VpCvOLxL3huYXxAWxS
         xM+F7eILtTT0PHM0OKjgAkdtFXAeDuIFhfYOo5e1ZNtCoQ/mWkSqdFD2yGp4+JOxsryz
         XxWkdqdPKGbWfJBV3RransG5dkblhOPk8rTGCCnyNJQ75p5iGbuZeNbIZcl7gVQSaWcB
         wVZg==
X-Gm-Message-State: AOAM533FjYM59/YMEwlzTOzzc+GyPJnKbinz1TSv9JhT68ImXkngOZIX
        +EcV7Wb/PU7t8jFmmWBZRxUAeT1dje7ULreRJNIYkw==
X-Google-Smtp-Source: ABdhPJyDNDGCqP2Bd1AdnHhAXHNuNpfFuS/5NG0c2yWkXKQF+uPmhZnSFD5ts5Fh/vSnt2I87AwTpBGxL+DEu8Q1GCw=
X-Received: by 2002:a19:6557:: with SMTP id c23mr1720677lfj.157.1611442783800;
 Sat, 23 Jan 2021 14:59:43 -0800 (PST)
MIME-Version: 1.0
References: <20210122200659.7404-1-digetx@gmail.com> <20210122200659.7404-3-digetx@gmail.com>
In-Reply-To: <20210122200659.7404-3-digetx@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 23 Jan 2021 23:59:33 +0100
Message-ID: <CACRpkda+wjjr3+=taNmKgj4HH8A6pSAmMwtB3CZh4ixnhDt_Dw@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] Input: atmel_mxt_ts - support wakeup methods
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Nick Dyer <nick@shmanahar.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Jiada Wang <jiada_wang@mentor.com>,
        Linux Input <linux-input@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-tegra <linux-tegra@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 22, 2021 at 9:07 PM Dmitry Osipenko <digetx@gmail.com> wrote:

> According to datasheets, chips like mXT1386 have a WAKE line, it is used
> to wake the chip up from deep sleep mode before communicating with it via
> the I2C-compatible interface.
>
> If the WAKE line is connected to a GPIO line, the line must be asserted
> 25 ms before the host attempts to communicate with the controller. If the
> WAKE line is connected to the SCL pin, the controller will send a NACK on
> the first attempt to address it, the host must then retry 25 ms later.
>
> Implement the wake-up methods in the driver. Touchscreen now works
> properly on devices like Acer A500 tablet, fixing problems like this:
>
>  atmel_mxt_ts 0-004c: __mxt_read_reg: i2c transfer failed (-121)
>  atmel_mxt_ts 0-004c: mxt_bootloader_read: i2c recv failed (-121)
>  atmel_mxt_ts 0-004c: Trying alternate bootloader address
>  atmel_mxt_ts 0-004c: mxt_bootloader_read: i2c recv failed (-121)
>  atmel_mxt_ts: probe of 0-004c failed with error -121
>
> Signed-off-by: Jiada Wang <jiada_wang@mentor.com>
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
