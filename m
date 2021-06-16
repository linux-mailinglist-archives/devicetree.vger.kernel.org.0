Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05B633A9527
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 10:37:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231468AbhFPIjz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 04:39:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231318AbhFPIjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 04:39:54 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C378CC06175F
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 01:37:48 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id b37so2624693ljr.13
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 01:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QJAc8B1lD7Sm5QPOtcUYZkUpiddw4Ax/wj4Rau0Ixfg=;
        b=qvu43AOLgb3xHnM0yXAUrjFaCzKTcpte7hy9TbY39f5F7QzZ+wiTPUmavQMpx+Rt5R
         45g7i68kXrjq53DeA4k7zOhUGKPahmopZKU6RqXDfO+rcsj5B1xwLjwMpAHCkhu3eEby
         53qMKhYFGsFMJ/qHD/OyZ2e3+4xcFXjqL4f9uSlbQxC56dx18Lahm3U8atB60kgX6sif
         EqYAUsWW8YdBB38HoPBiiP7BhjvjZ8mWG34htxZzmS+FZ68Eze0+llgFpBggaJfGNLxm
         S9B78k6IYF+bpKFfw7mjvqJqrA0SdS7fd3H/EByu9Fs8yoTpFn1xPbTmeZ/qRocYSzK2
         L6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QJAc8B1lD7Sm5QPOtcUYZkUpiddw4Ax/wj4Rau0Ixfg=;
        b=Jx/b9rm2vPiQMvARQ47xPjzI+rc/dT7t46j6+EgICQyyif9iaf5R0wopUXqWUW1ZJv
         9GfO3Z2XXrh8ANV0WNeqWelP6Oo/93Rg+IzVs947cjlHrB+rXh+GIwLmNr6uxfq/6V24
         AN5ILa4aKeevX1CrHkIlDnu5WQNSi/tjZGuBAai5di9gZUEjGj+ZNqLqx8TZHHa9WuJD
         BsvWh/2+fT4jBaU3QZiFOtYwPJw3NdoM5vNnM1/v3pJjID5gQREGEc6zvw33hb6/3DHt
         m5Ze8DSqp7QYzrIXnY7q0+HL4ozpbyoX5FNGc2klDSTZgzIg/VTOVSVfMWHLAlFylU1M
         88kg==
X-Gm-Message-State: AOAM531hsBAxqSCPyR8+NzNAhOcWnSMDn2yarLScoetn0qfrMwthKGaM
        cIshugwue3UDkuIqJxplgZ4fQwEDEgjV3VCnjz8aig==
X-Google-Smtp-Source: ABdhPJyGIIdMSJ7t5SYz1eX75j4utxyINk0hmhiwDZUkZw41Hdi0Yqko84xoZfLmn+D4f2IStcf6VQ88KZ/LjsmVKlE=
X-Received: by 2002:a2e:9483:: with SMTP id c3mr3514844ljh.273.1623832667026;
 Wed, 16 Jun 2021 01:37:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210614163150.7774-1-stephan@gerhold.net> <20210614163150.7774-2-stephan@gerhold.net>
In-Reply-To: <20210614163150.7774-2-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 16 Jun 2021 10:37:36 +0200
Message-ID: <CACRpkdYPz4JOWgzynVzAmJXH1MWAXjvH16k_kwi0KqGE9_NnSQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: iio: accel: bma255: Fix interrupt type
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 14, 2021 at 6:34 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Bosch accelerometers similar to BMA255 are initially configured to
> emit an active-high interrupt signal. This is currently not re-configured
> in the bmc150-accel driver so the interrupt should most certainly be
> IRQ_TYPE_EDGE_RISING (or potentially IRQ_TYPE_LEVEL_HIGH).
> (Unless there is some kind of inverter installed on the board...)
>
> At the moment the bmc150-accel driver forcefully requests the IRQ
> using IRQF_TRIGGER_RISING, which means that the IRQ type is currently
> ignored in all existing device trees.
>
> Fixes: 6259551 ("iio: accel: bmc150-accel: Add DT bindings")
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

> However:
>   1. We need to fix up several broken device trees first (I found
>      IRQ_TYPE_LEVEL_LOW in some device trees).

Oh this situation... Some are mine I bet (I can fix those,
just poke me with something sharp.)

>   2. Similarly, I'm not sure if this might break some ACPI devices
>      in case they have the wrong IRQ type listed?

I never figured this out but Andy and maybe Bastien Nocera
knows more about this.

> As a first step this patch just fixes the documentation.

Fair enough, it makes things better.

Yours,
Linus Walleij
