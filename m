Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA750332BCC
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 17:21:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbhCIQVP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 11:21:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231853AbhCIQU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 11:20:58 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69DCAC06175F
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 08:20:58 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id i26so9773085ljn.1
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 08:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=NdXOG6ljmNbXTOPX+64Dn7agKNrrC7wRclWk4pldd2Y=;
        b=bft3qeAE0HV4abBfBNN7i/Jlucff/PRs0/gz+DAi0q8jM9HDngjw5PTq70PFqJO2cU
         9COJjgpOU+cnTXssQT5aRrCnYcqOWzh4SFsKHgo0tFhj2AfNuro3Rbfe6sZywa6CJ54i
         3ol4XrTE0EXS/Ole3GKZnLAbaroDSmYj93ArmU/QxnW5Ga4KskiA2PX95g61DiRKAUcR
         fcsWvxApQyJhjLeaWVxd38KtRHMPxA9Cku6ZV7BLG19R6fP2TbCPTJHwxKcyQq0JmU5a
         oWj5up5CIec5oV6hKdbmNsC9S/A+RLYwZcCVM+OhIaVuTgYY0etUiqpo68y793Lj2oko
         FBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=NdXOG6ljmNbXTOPX+64Dn7agKNrrC7wRclWk4pldd2Y=;
        b=uTIq679n7O3oJfUSz4w4LjNLkURA77WbJp/QDBCiD72lIRvC2Z4OrxkELVSNhHdr8C
         0sFrZTWsZVCatcdHAp4OptdKtDX4GrbhkvJZq0j30pdxsrtzHtrhP4u/pSjoEnF6mL16
         YmysMhdjj4dQUUPPBxXatGmJ1KpC228Q8E4XBZlSnYb/3/I/BnmJFY4XCMe2dY38IptJ
         cpkOGlD5cHYnHINYNbHcWXeBCj5K6sxKi4+VD/XGhbPEP3S7uOeyaFUgskFc1MZ2UgAr
         BGJ9/i0mnswKCSzMac/Sb3I0s3zDsSFWCzu5eZ0wDSyDEb7wFfn3J790OneS/LGx2ndu
         6wrw==
X-Gm-Message-State: AOAM530dmoeejezHvfMQC1OiuSAppHqKeMUOH0glv3CdO4kXhrPSE6sX
        6BUE6cbyrf4Jy0tONI0JJlxWrP8OjS9VdaBjsJVWGQ==
X-Google-Smtp-Source: ABdhPJyLt9jyso+VXasOTjFab8SOjODUUCl5Vd/Ei53FhkTvbc2ysPMRM+bDSgOsBF0fSf5wY0kI0Sj0kqsOhtoXu3w=
X-Received: by 2002:a2e:700a:: with SMTP id l10mr17590963ljc.368.1615306856856;
 Tue, 09 Mar 2021 08:20:56 -0800 (PST)
MIME-Version: 1.0
References: <20210304085710.7128-1-noltari@gmail.com> <20210304085710.7128-2-noltari@gmail.com>
In-Reply-To: <20210304085710.7128-2-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 9 Mar 2021 17:20:45 +0100
Message-ID: <CACRpkdZEuorg-uVS6JZwTzM0Q-gC=BXiyvkk4bV8P_GCEdgB1A@mail.gmail.com>
Subject: Re: [PATCH v4 01/15] gpio: guard gpiochip_irqchip_add_domain() with GPIOLIB_IRQCHIP
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Michael Walle <michael@walle.cc>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 4, 2021 at 9:57 AM =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gm=
ail.com> wrote:

> The current code doesn't check if GPIOLIB_IRQCHIP is enabled, which resul=
ts in
> a compilation error when trying to build gpio-regmap if CONFIG_GPIOLIB_IR=
QCHIP
> isn't enabled.
>
> Fixes: 6a45b0e2589f ("gpiolib: Introduce gpiochip_irqchip_add_domain()")
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
