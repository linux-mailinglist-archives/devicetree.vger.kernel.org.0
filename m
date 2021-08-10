Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2790B3E58D6
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 13:04:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238026AbhHJLFH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 07:05:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233264AbhHJLFG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 07:05:06 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D92C0613D3
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 04:04:45 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id k24so12063077vsg.9
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 04:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7G6Ytc0pL75dT7oBzRYQRV/PqpL3MiLjj11SQTrmI/w=;
        b=ATyV9Hkb/32GLHbt4+s0SijWAQfOMigNeNWFIUo9kj8nEwAgSLI46Wq70CaiWa3Dw6
         OfL9JyOkJIU7SkJaaiArzpbiz79MXkx7s16Xx4FBgjZCpOJ+CCrceeHfK570NhKrgYFV
         eafHiLvQ3CzZ17UNqE0FY2Pg0sMMvEInvv/pyIv9mQLbOmsUzcmEnEmOAgCkd3hV/tWz
         hDZGLTJIDV/mDF5DasZWsy5x6Zi89gdecqPSivy049vL8FWPosiHn+8EfzhCHiwocfTK
         4NuGnPsgfPrfYl8qJQMVk1qh015w5xhIDtj4vPfqLX6/00R7TAHJFbMUYFlrskNfMuEw
         Q3XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7G6Ytc0pL75dT7oBzRYQRV/PqpL3MiLjj11SQTrmI/w=;
        b=XqJV5WyUG5ASjeHKHAG4z8pWKxxiRYXgY5Vdjyoa0Vq8yg1ReUWNIhxmMz0wqlnkAI
         DesFLvAL1qHWrpgaosJ+UUN5W5Vt5gq+XOsEI4vxbcM4mMKWPZN5gxY5Sr/ORfjKKeVD
         lmieymgBCTmj1D9UMkYehMEPGvXSrtsqfpBNCZ7IlJlleMXrSKxt4ePcJ786hSkOjv9W
         TLTnqj2RF8JR6C1qtkXZ1J/RSXZdqn/1o7x5jQF2DwCLvqqkwko2KsE6TltLk2B2A20q
         +UixTLwLP9pG+iRB1oVhoi28EGMqyEh6Ob86oeaOwtZt3VNjXQ6S4ynRW5lzPn138xek
         /ZUQ==
X-Gm-Message-State: AOAM53079Tkzz8Kpb8Z2inPcuawjsR7qV8+2gTn1/yFlTwi3ablaeyBK
        G83UM2dXgFsOOXqShXQ3bfu8Tsyau9Wn9m4kCdqSww==
X-Google-Smtp-Source: ABdhPJwceVyJX3DPlFP+mrX17PzCp6nVuJo1728/yo4SGqlaa2irpTqgqKxr3bksTV0NDNdGscj/YgQDyft6YTcKhOo=
X-Received: by 2002:a67:328f:: with SMTP id y137mr20625440vsy.34.1628593484132;
 Tue, 10 Aug 2021 04:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210802062212.73220-1-icenowy@sipeed.com>
In-Reply-To: <20210802062212.73220-1-icenowy@sipeed.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 10 Aug 2021 13:04:08 +0200
Message-ID: <CAPDyKFrOcoFi4iTYSkbTAyZaXkfPb4RV=zMPm9j1dmK88=mgpA@mail.gmail.com>
Subject: Re: [PATCH 00/17] Basical Allwinner R329 support
To:     Icenowy Zheng <icenowy@sipeed.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andre Przywara <andre.przywara@arm.com>,
        Samuel Holland <samuel@sholland.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@lists.linux.dev,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2 Aug 2021 at 08:24, Icenowy Zheng <icenowy@sipeed.com> wrote:
>
> This patchset tries to add basical support for Allwinner R329 SoC to the
> Linux kernel, including clock/pintrl driver and MMC support.
>
> Three patches from the H616 patchset, which are used to support the RTC
> with linear day, are attached into this patchset. Other RTC-related
> patches of that patchset is not included, because the binding of the
> clock part there is still under discussion.
>
> Then I added RTC binding and support (which is now only a struct
> addition). I added RTC into this patchset, with the same reason that
> H616 patchset contains RTC, which is to make the clock tree correct at
> the first inclusion.
>
> After RTC, main basical SoC-specific part, pinctrl and CCU, come. The
> R329 CCU is something special because PLLs are in R-CCU, no main CCU.
>
> MMC support is added here because it's also a simple struct addition
> work, no main driver code change needed.

It sounds like the MMC updates can be posted separately to linux-mmc.
Please do so I can pick them up.

[...]

Kind regards
Uffe
