Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DE32482A58
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:55:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232163AbiABGzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:55:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232057AbiABGzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:55:07 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88A97C06173E
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 22:55:06 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id t14so22729765ljh.8
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 22:55:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Kv12+WA1jF2AlUYCYjHHAd0Tak6OQnSLGxoOqQxBcsE=;
        b=MMYztllzlunmdM37HH5SQJYnNQp0UHBgLBTr4Uubc0iM98H2hKuzyFFHXvaLCXp6Te
         V7KAB4YpJmbXNGSBxfEiIxJBZ23vqt+YSfRGjRI0QRl7gBBGl2MqqifF96+Tu3C+KbUP
         QC2SNNapjEfmdRW9VtZPWVZPDI1XugXnUnxh1dY7Y80jVsjAh8ldxyPYFQakzy/fbiKC
         FL037rwKrbGVFar+G2M2bxVG7MdquM/S06ltvOcv2+TpNBXtbVK14Vdfx5IGczJ/dzwa
         1H/Y7Grs89A5aq5Zc4+O1f9w+EWLhn9hhTi2AjFncCC9sQ3Gg4N5Cgd6KVCqY0udBSyY
         QhCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Kv12+WA1jF2AlUYCYjHHAd0Tak6OQnSLGxoOqQxBcsE=;
        b=L1SnesO+3YDxp7p6697B5Yc7hqysC9h+5yT4/atRh0qdnsRLordk9i+fa7H59UU76r
         0Mfinil4rInEKe0hXuf9E704rSl2Fs0HBkIEhTpoxgPtxoLV6PTl/IeIEDMgOHYkc0k9
         c33aUfoLk8KzYkQauggVjBfanvpok5Fk6/Np6UQoRcVHQ9olN1m02xUnpQvGtN7Cw5Xs
         cpO3F06RYizH4E8Epl+9BymPNdNhOnCcvEZ1+bi8DaCKhYXlo2pFlyAgMEhHp4Wlui9E
         ibci33C/urgJtgpxQHnl4aiupcEKHs19oejs23drDX3MHsMrZzAmM3g2/z3rVGsZeH/N
         Cakg==
X-Gm-Message-State: AOAM531kjmIbQHIm34Bn+B2VA+LIUA2iRbejRIuk1t4VIdO28Kl7L34U
        Pxye4KkMW7/C4bTEgwqdpmFc2cr15Jb1mQq6ymkvRC94AFk=
X-Google-Smtp-Source: ABdhPJy8SkMIUaCPL6CnGGjDRlohYgjTkCinX6ZY/84Heq8ow6XZzJ/W29u8OwYNDi5J8uzA1XvXExN5gXYnFs0i7QY=
X-Received: by 2002:a05:651c:623:: with SMTP id k35mr35632707lje.133.1641106504873;
 Sat, 01 Jan 2022 22:55:04 -0800 (PST)
MIME-Version: 1.0
References: <20211206092237.4105895-1-phil@raspberrypi.com>
 <20211206092237.4105895-2-phil@raspberrypi.com> <CACRpkdZ95bCJVDo4tCXsMnsXax4+ZydoLS7AsM-yzMjXbONk=w@mail.gmail.com>
 <95851343-2887-1e04-9598-e8c8ae74a99a@i2se.com>
In-Reply-To: <95851343-2887-1e04-9598-e8c8ae74a99a@i2se.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 07:54:52 +0100
Message-ID: <CACRpkdbnqq+hwXt1oUWZfyxFjdd4aSAz0MzhzYVWuqqVAe4Eig@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] pinctrl: bcm2835: Change init order for gpio hogs
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-gpio@vger.kernel.org,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        Thierry Reding <treding@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 29, 2021 at 8:07 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
> Am 10.12.21 um 00:24 schrieb Linus Walleij:
> > On Mon, Dec 6, 2021 at 10:22 AM Phil Elwell <phil@raspberrypi.com> wrote:
> >
> >> ...and gpio-ranges
> >>
> >> pinctrl-bcm2835 is a combined pinctrl/gpio driver. Currently the gpio
> >> side is registered first, but this breaks gpio hogs (which are
> >> configured during gpiochip_add_data). Part of the hog initialisation
> >> is a call to pinctrl_gpio_request, and since the pinctrl driver hasn't
> >> yet been registered this results in an -EPROBE_DEFER from which it can
> >> never recover.
> >>
> >> Change the initialisation sequence to register the pinctrl driver
> >> first.
> >>
> >> This also solves a similar problem with the gpio-ranges property, which
> >> is required in order for released pins to be returned to inputs.
> >>
> >> Fixes: 73345a18d464b ("pinctrl: bcm2835: Pass irqchip when adding gpiochip")
> >> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> > This patch (1/2) applied for fixes.
>
> Unfortunately this change breaks all GPIO LEDs at least on the Raspberry
> Pi 3 Plus (Linux 5.16-rc7, multi_v7_defconfig). The ACT LED for instance
> stays in the last state instead of the configured heartbeat behavior.
> Also there are no GPIO LEDs in /sys/class/leds/ directory.
>
> After reverting this change everything is back to normal.

Oh what a mess. OK I reverted the fix.

Yours,
Linus Walleij
