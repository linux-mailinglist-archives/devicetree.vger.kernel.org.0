Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D02C84829D1
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:00:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbiABGAI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:00:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230049AbiABGAH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:00:07 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FDB1C061401
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 22:00:07 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id h21so39110208ljh.3
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 22:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rjti7d90WP8Xg6Hp0kYEpjGAZMuupp9s0gpIcrJvVXQ=;
        b=L1tmfP4ShxzOgVIz2PEl+IiE+pc1ShqKkzJJ3FuYtfcWHhlrJjkBbrlzQHfZfIdCUM
         PXAkJt+SUZEoMSaVFBM3Nq06zF4p2yiOFu7CRXwL5CtCCJa1tzVSU5SW2HmWTE4Y0Vom
         MGbq/EvQRtsdpZ8mkfr+feE+xoqZk4AVLIt9U2HW06NUr1jOQ82yEcjRbpe9tprarXF4
         BoDEEUZ/qPvEThxmwys0ZFwWAh4kYjvLJ43MsSpmPzAa+EoHrzVb7nspqlRkMVUpuW4d
         WSoB4RqbFdaXgtm3ufJy+Rjle+oc1q5LstR9kV6Jnr2vNbOE2iUpez/gxylWrX2HZOC0
         lqMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rjti7d90WP8Xg6Hp0kYEpjGAZMuupp9s0gpIcrJvVXQ=;
        b=uTsVnQUougkq0RiSpLk1iCc6asAwqi8+H388EFMQ0lzpb8qman2HCYoMdSSv88qZqk
         HoJJ3Gy/Y+DdnhQ4pf13iPr3GkSAFGoRJYGUKy3myuTPzg98pCCHGFC3nkgpsoPL1fyh
         /st1a372ZuXaTeE5CirbaSdtDVyxttH/dfXxb5RGPeKRCx3kaVgB7Vo2u8MRp0azr7Io
         snydXT2gWFlrh2NYt6k3PQDVfS71UZwQXBS7muZz8hA2nD9r8/97agOZ5JPpH7yqBpNn
         9VIbDggYt0PCLsUPsYWygg9IdAK1mg05y7ysw840Xjqy6jLRf20sFS/qpFvvepNI8Pod
         CLBw==
X-Gm-Message-State: AOAM533miQ+tkHo7m5bxcDr1bOxRPisN7EsPQUeQmeBbGFPWXv9q+hdu
        g+c1nmSgnOVvsfILsHzKuD8p1Vb1xUafziXu7kah2w==
X-Google-Smtp-Source: ABdhPJyv1Mvd6Mp+D18WKgLy8no0MQSmte5uMFeAHGA5tMcWXaralMbmZV5qMWOi9pa6EMdURgIDyO+USZ9oJ0EGv5k=
X-Received: by 2002:a2e:b808:: with SMTP id u8mr24152647ljo.282.1641103205129;
 Sat, 01 Jan 2022 22:00:05 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st> <20211226153624.162281-18-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-18-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 06:59:52 +0100
Message-ID: <CACRpkda=bD6BRVko5MZOnfLbKxLVbrwYmv4T4NSwY1vq9AGoTw@mail.gmail.com>
Subject: Re: [PATCH 17/34] brcmfmac: pcie: Provide a buffer of random bytes to
 the device
To:     Hector Martin <marcan@marcan.st>
Cc:     Kalle Valo <kvalo@codeaurora.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>,
        Arend van Spriel <aspriel@gmail.com>,
        Franky Lin <franky.lin@broadcom.com>,
        Hante Meuleman <hante.meuleman@broadcom.com>,
        Chi-hsien Lin <chi-hsien.lin@infineon.com>,
        Wright Feng <wright.feng@infineon.com>,
        Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Mark Kettenis <kettenis@openbsd.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Pieter-Paul Giesberts <pieter-paul.giesberts@broadcom.com>,
        Hans de Goede <hdegoede@redhat.com>,
        "John W. Linville" <linville@tuxdriver.com>,
        "Daniel (Deognyoun) Kim" <dekim@broadcom.com>,
        "brian m. carlson" <sandals@crustytoothpaste.net>,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-acpi@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com,
        SHA-cyfmac-dev-list@infineon.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 26, 2021 at 4:38 PM Hector Martin <marcan@marcan.st> wrote:

> Newer Apple firmwares on chipsets without a hardware RNG require the
> host to provide a buffer of 256 random bytes to the device on
> initialization. This buffer is present immediately before NVRAM,
> suffixed by a footer containing a magic number and the buffer length.
>
> This won't affect chips/firmwares that do not use this feature, so do it
> unconditionally.
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
