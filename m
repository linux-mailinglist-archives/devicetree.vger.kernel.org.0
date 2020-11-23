Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 438542C0DB1
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 15:41:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731540AbgKWObE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 09:31:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730854AbgKWObD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 09:31:03 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30268C061A4D
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:31:03 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id s27so4036089lfp.5
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GE6v8E2ojBT8gyIKpzNyRNdjMuQFL5/ViCcNT+Rjg/Y=;
        b=lO+ZSMajGkyqdB+ed1LvkbDiWTdMQ5lpQrmd+cYlUO6ZUMTJgs7EZPvj17uhGlPNo9
         BDoyL1p0Y8v+j/qlZ/6k92qK6LRPnc9gtLEfewLqoeMY9FKuxaEs5zJb81yzSnEmebFw
         GMy6FqbmkfDcI7Ug75EoxBORformeKkrHQinFOD/B6wLIwThTPPqJAyMr1BktKbrLFdk
         6yJKzysU6FPNILBdRutTAFNCljRwgswHMQjSRZrBKxVyTZISXg4tYiKFYShL88H2NAEu
         HjYGTPA4XabQHMe7eE19/J9fXT1+A8phcgzHCr0xWSAdOxaErty1158Sdbp0w7NIw7SZ
         fZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GE6v8E2ojBT8gyIKpzNyRNdjMuQFL5/ViCcNT+Rjg/Y=;
        b=CenJ39IilI8/dwNbvmlIlroEM0fHoQvASAzHnE248z2jZEXNz1q9nu77Nj6ynvueOH
         GzKD+qJ9RWmON5ycqLvMEhIWHvB7zDrpMdKm4cDT6r/pZtrrTAKQ5VXXkUtqVH6Ta8hA
         K0i0C94b8FzKGJV3OOunB5bRIckxVZWITdywp34kBRtdi7mzJeP1iQzdcsAjSbuhnk9n
         vFgZVfblCZdpVySd4WkaqLkbkCZeEMpTN19QwtKorF0zzzX6CI/iuOF8D0m7S+HwRBRr
         0ajS/0DUOlWdrNBqjhr8a/Ra1zsZk7TispukFDSG9kP/1p3z+Zk67UuOBKo8Ytim/7RL
         qdgg==
X-Gm-Message-State: AOAM531UV+JDcDGxOO/dIxfaXeVExppeDRepMFqJb8/kL4hwCthdn2sv
        0NH33m4ra8hxGPrMbRGulsvgbUDmz621B0q4FsqyQw==
X-Google-Smtp-Source: ABdhPJyZJqXr+dLHqStiKgw3ORarJdbm/HNFkaqvJjCidCi/ORD+fr97rDZI555wKcii44p9glt8qeYLc/ezHvDZTxs=
X-Received: by 2002:a19:8d8:: with SMTP id 207mr829367lfi.441.1606141861442;
 Mon, 23 Nov 2020 06:31:01 -0800 (PST)
MIME-Version: 1.0
References: <20201113145151.68900-1-lars.povlsen@microchip.com>
In-Reply-To: <20201113145151.68900-1-lars.povlsen@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 23 Nov 2020 15:30:50 +0100
Message-ID: <CACRpkdZAc2yKFpngBHCdxjFBpc0XCVAYWyEERMSHX+7sL7Fgrg@mail.gmail.com>
Subject: Re: [PATCH v10 0/3] Adding support for Microchip/Microsemi serial
 GPIO controller
To:     Lars Povlsen <lars.povlsen@microchip.com>
Cc:     Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 13, 2020 at 3:52 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> The series add support for the serial GPIO controller used by
> Microchip Sparx5, as well as (MSCC) ocelot/jaguar2 SoCs.
>
> v10 changes - anniversary edition (from Andy):
>  - Fixed "Author" comment
>  - Added missing "break;" in default switch case
>  - Return -EINVAL when requesting pin disabled in bitstream
>  - Change bank consistency check to return -ERANGE if failed (-EINVAL
>    previously)

Patches 1 & 2 applied to the GPIO tree!

Patch 3 needs to go to the SoC tree.

Thanks for your hard work!

Yours,
Linus Walleij
