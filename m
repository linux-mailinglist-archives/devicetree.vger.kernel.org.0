Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 170B94693FE
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 11:33:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236406AbhLFKhN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 05:37:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231678AbhLFKhM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 05:37:12 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66737C061746
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 02:33:44 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id v15-20020a9d604f000000b0056cdb373b82so12996095otj.7
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 02:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=idIIka1mu53auPQEDeeVp+5SHwt5ecOY/qD1zuhwjP0=;
        b=s5NKI1vfcVcdP/hgX0slg1LbmFOYHQvdD54qDsKNlTuEvjhDieF2KBOa+m4AJP+fWa
         I6RwTWbgikEHoDk4duW2ogZ2n52/99cLU3ebklMcUtRyP6+YA0fkIzvdq7saaWZ6UZug
         o9PhAa6H+jEGHi+GOkzvgWG8YOYoXcn51hnBPXFiwgD+59Y4Zby8JmtM0LT/ZuPaLAkH
         qIU2KlnrMrHRd1jjAtSQtQVWmd0+rFjqzBjCOseUfUtuqfA3uqWBAPpht7a+DEE4vXQ2
         0rR8ORLRyw5ryR0t5ccRd6IYuAdObQzB2mS6cOVGNWdJfxywDzwvbr2Q1W5FuZUwU5BZ
         bzkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=idIIka1mu53auPQEDeeVp+5SHwt5ecOY/qD1zuhwjP0=;
        b=QgqVlbINuXKFquN5+/f8afljGkVu7MUkltdCbJx08omuTpQ2WZkFNLqtG40UgyhpOu
         Ku2ERW35rz9gcdfoxDvPGoc9hWBpu4lN0uxAEK0ADAB3Kkcfp+kfOstoM1JNjA4x3T4w
         0y6htot0PxXfVVWxn0p+jl+i9HFNj3olaB6yC5t3NEeVN2lH4AuYyMvcsucftBDzepxb
         WZNNM/BZyKyxGFlT5K/MGnDnTC4umj6Vmw2BrosqWfrekARNDaM2zvv+Y9fY6DE+6nPq
         tycdmCfdYI4fXSpCZNuMs94h2jDwTIqJI49AXlbhjcaxO+1IAFmowSfnMNDPHUhw0xdO
         7H8A==
X-Gm-Message-State: AOAM531+Ls9e95ZXXm0YxssiU2Q4V9IpS2jp30v+5B9Mo6CC2K1OEEUe
        1Za65FIzqXYCYEo+naqOTuvVvtUuixjkitHPl6CEGw==
X-Google-Smtp-Source: ABdhPJy+tsCtsj+QeIrqAMtkmf9IDd2UQ+HzcP4FYj0UXeDJ4SMyh01L0lrgFs/yzvW1/CttamvXLsS+qFDoNkAkXEg=
X-Received: by 2002:a9d:74d0:: with SMTP id a16mr27600057otl.237.1638786823769;
 Mon, 06 Dec 2021 02:33:43 -0800 (PST)
MIME-Version: 1.0
References: <20211206092237.4105895-1-phil@raspberrypi.com> <20211206092237.4105895-3-phil@raspberrypi.com>
In-Reply-To: <20211206092237.4105895-3-phil@raspberrypi.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 6 Dec 2021 11:33:31 +0100
Message-ID: <CACRpkdYJAZcr_PPCGPYcitfcwd9GDFf+7hPJkOmjomqCrruNfw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: gpio-ranges property is now required
To:     Phil Elwell <phil@raspberrypi.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Thierry Reding <treding@nvidia.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 6, 2021 at 10:22 AM Phil Elwell <phil@raspberrypi.com> wrote:

> Since [1], added in 5.7, the absence of a gpio-ranges property has
> prevented GPIOs from being restored to inputs when released.
> Add those properties for BCM283x and BCM2711 devices.
>
> [1] commit 2ab73c6d8323 ("gpio: Support GPIO controllers without
>     pin-ranges")
>
> Fixes: 2ab73c6d8323 ("gpio: Support GPIO controllers without pin-ranges")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this patch through the SoC tree.

Yours,
Linus Walleij
