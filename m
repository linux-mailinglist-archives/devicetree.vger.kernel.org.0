Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0289A34A7E3
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 14:15:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230153AbhCZNOm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 09:14:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbhCZNOZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 09:14:25 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A81CC0613AA
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 06:14:24 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id e7so6227306edu.10
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 06:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KmOPujpceCwNBwq8q46MhKQlq/vNV8oRKdM5lmTSaUY=;
        b=rvFEbOCl8LSLZytnyKzqWkcEr+KE+lxvzCPOYoASrny6KeCKHT3ZjYS7wCyM+1oAwH
         0glED00sVC4ECqCSQqjeFS59sQgLuAU+7a8mKVK1N2X6zGPqP/AwoOXTEaSZnOmZu0Gg
         r2mljKEo66AVk4gQNEv+mgPlXKintjMJBVtIU1F4PkT3EJw6T1bB8RBxpG+/4Rdv4MBh
         sTIuT5yqeftWODVBHKsaIaRPRDat4kKJsuyyJjNyNpKZ0cKoTQj4vomdWLPkq+kb/FZv
         wVMD7DcmhHH3M3CoWOdkCgotl5r7d6BtW9QOgRB4pLFvxvG53nhubG8801D4EIisco0P
         Vtqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KmOPujpceCwNBwq8q46MhKQlq/vNV8oRKdM5lmTSaUY=;
        b=GrW6f5RDX+V/pFeVr6AVemUvcfp75Pa4h4p8nFzkQb7Oqk/PZ+M7c8UgIbKpQD+6bd
         SdfKBEZFEr8UMDPSBx5nam/RSp65d4QsKWf/2xZU26ttN8W1Mmrbg1ktSJ8IP17mtr8A
         usGp62YXTB4qEwknT2H+tPNt5dirk7qSqrO/0ya5v3pt7i2p6uFxkwqM1H186pMLJcEJ
         jqnJgBj+0A4z3DTbZlnx1bgqdtGqs+shwq4mGwBRgWPBrdpE0NOsOKLz1750/KjEAlRy
         u90xFERSE8wR93Em2N2K6zL+WHanb4gqNfkVFWmo8eNuXk3hDZkqGnr5nowFifCGlIMt
         GK5A==
X-Gm-Message-State: AOAM531DP1NJHnnFnKQMQWyMCpuMx3CcZZcWCmMWLhGBuCG21sKVIT2k
        Vh4sp6f8LvKSL6QG/L19OwhZxLQVqTmHntbrNqXoKQ==
X-Google-Smtp-Source: ABdhPJzsPw0ybVJ9vSPBV1/CGr4FJVplRv3la+GUn0T+lu9wzMlLtHQYCZ+Q2QoQt4qrsbx1BvUjw/Q44M+P3iS2eTM=
X-Received: by 2002:aa7:d813:: with SMTP id v19mr15022627edq.213.1616764463432;
 Fri, 26 Mar 2021 06:14:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210324081923.20379-1-noltari@gmail.com> <20210324081923.20379-2-noltari@gmail.com>
In-Reply-To: <20210324081923.20379-2-noltari@gmail.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Fri, 26 Mar 2021 14:14:12 +0100
Message-ID: <CAMpxmJXVnKHXvvaaObTiHemxfC77u-zikPfEtprQ7qdDn9Z0cg@mail.gmail.com>
Subject: Re: [PATCH v9 01/22] gpio: guard gpiochip_irqchip_add_domain() with GPIOLIB_IRQCHIP
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Michael Walle <michael@walle.cc>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 24, 2021 at 9:19 AM =C3=81lvaro Fern=C3=A1ndez Rojas
<noltari@gmail.com> wrote:
>
> The current code doesn't check if GPIOLIB_IRQCHIP is enabled, which resul=
ts in
> a compilation error when trying to build gpio-regmap if CONFIG_GPIOLIB_IR=
QCHIP
> isn't enabled.
>
> Fixes: 6a45b0e2589f ("gpiolib: Introduce gpiochip_irqchip_add_domain()")
> Suggested-by: Michael Walle <michael@walle.cc>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Michael Walle <michael@walle.cc>
> ---

Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

I suppose this will go through the pinctrl tree.

Bartosz
