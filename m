Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B4D0430569
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 00:32:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235410AbhJPWen (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 18:34:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235315AbhJPWen (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 18:34:43 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B19FC061766
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 15:32:34 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id q16so1029676ljg.3
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 15:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=UtJXPylnX11GkvYRHwpQ9M8Up+4cWJ1bvMpKXPGprlI=;
        b=n6anFbpSUftSxcsMXPh8ItyBCtV+0rO75hUjfjB4e8pPllEc0yeKjwNe7LYg7288UX
         SEg6S0Vp+0mj1RdSCRmcKaVdeFFRMGg4qlJUMzT5+2Z+Xnd6wDwlff3YWT6+7fz5+c88
         RPjPOCxhtwUHkzhYQZV0HMESHs7JoIwRCct+zE0CF1G0XjUGvKrRHCJx/LfY+MBsQ6uy
         Kd43O6JSsKwPUyFKzV78r/2nyPtLyJP5P4VqGMiST2CzTenTvs5LbCo3cSCe2ZQnWiZz
         ZhdHUAUDbNQAHX1HGVeYWs63taAgmgLkVoPxK2OTspECFntckDBsGiMd1cN83PcZI2FA
         eGFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=UtJXPylnX11GkvYRHwpQ9M8Up+4cWJ1bvMpKXPGprlI=;
        b=zctlpem/yd/Ol5VwOmYQwV7r4mSJXvll73/+1b872YFFGIOeZ8vkvfvb+4BBKNSUKW
         yIV2cZRwz/5qwCeT/rLCuQ7ombD/KkST2XRkyrFlKRvBPscGp78J1Ep6Mo8apDnyFcMI
         55yfpPfB7a/cRIKjozf9h62whIIRBHmHspFLKi0sL9Uu3IDBo63spWyKFpa6AjTJ3d3s
         V/o00I9QDHHyRSOMkDm1KG69jpBsf9ZXwqKdsypmc4yM9aH5xu9+XXOWru+p1WU5Z4a1
         w/toN+LhKXySnD/2HDXn7/xIQmXjnJuShBBfgr12BOLAgZJ/1tNiYDz3+LGI2E1JBkuX
         D+0A==
X-Gm-Message-State: AOAM530+Xx8zJUE4wcTGQwolEcy4Hvg+sAwBa7wDJ6ERUaaTeYT6M37o
        HRJ+meN7zTAbsVP+kfJn3691hVqgGiR1QYMWnIAAUA==
X-Google-Smtp-Source: ABdhPJwedWlUh8TIcRSs+WMCQYe85uSJ0oToOyXYtkBzY4Va0J9vsvC5qfjuRPsSIEKYAhK0d4QJOf1gZpxc0A/NcUQ=
X-Received: by 2002:a2e:7f05:: with SMTP id a5mr21483042ljd.261.1634423552726;
 Sat, 16 Oct 2021 15:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20211015171030.2713493-1-alvin@pqrs.dk> <20211015171030.2713493-7-alvin@pqrs.dk>
In-Reply-To: <20211015171030.2713493-7-alvin@pqrs.dk>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 17 Oct 2021 00:32:21 +0200
Message-ID: <CACRpkdbQyZcEYRdt=QusrKYufgBf7ROEc0eQY_MN559hM40naw@mail.gmail.com>
Subject: Re: [PATCH v3 net-next 6/7] net: dsa: realtek-smi: add rtl8365mb
 subdriver for RTL8365MB-VC
To:     =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        Michael Rasmussen <mir@bang-olufsen.dk>,
        netdev <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 15, 2021 at 7:11 PM Alvin =C5=A0ipraga <alvin@pqrs.dk> wrote:

> This patch adds a realtek-smi subdriver for the RTL8365MB-VC 4+1 port
> 10/100/1000M switch controller. The driver has been developed based on a
> GPL-licensed OS-agnostic Realtek vendor driver known as rtl8367c found
> in the OpenWrt source tree.

This version is really nice!

> v2 -> v3:
>   - following the stats change, it became apparent that the rtl8366
>     helper library is no longer that helpful; scrap it and implement
>     the ethtool ops specifically for this chip

I wonder if I should just scrap it in general when I convert RTL8366RB over
to use your new nice callbacks? Just push that part down into the
driver for each chip.

I vaguely remember the RTL8366S having the same counters though...
(I think this is why it is in the shared library at all.)

Yours,
Linus Walleij
