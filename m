Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD9F5342891
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 23:14:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231181AbhCSWNu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 18:13:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231157AbhCSWNU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 18:13:20 -0400
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EF85C061760
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 15:13:20 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id 7so4562048qka.7
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 15:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=akhwgBZwBqYs1E9EdtzwjwkaNd6XJZskQMI9Lvw5iuM=;
        b=oTwgt8i8faM+MHywMtUJEPpchwSSKMJ0jEG+SgCu+9kd+WIfS0MWTovDMaqNUS1/qQ
         V+vyN7USl8NnSrbZsJU6+hhvwvKBNJAOsBfez6B4yrLS0/Lhe+9I9brWbckJkc9sZtnH
         xpbIkyNrZ5Tm+eRlBhWoxc7Mbz1hgY0hXfWW7Pp3uJzF2f6v/zE4Sv3cmxB1piAtF8Pl
         hgVmL93yzB57fpepYfom/XmDw/iAPAOtZrPdQnh6m1+QmuEoCpU0jGVszH0r03WWadLV
         1Db5T666S43Yx0kBtQfV2LZyyucWORJaLsli3WIj544uYDSvQ6ae0VFcVvRtT0dSxwbw
         Z7og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=akhwgBZwBqYs1E9EdtzwjwkaNd6XJZskQMI9Lvw5iuM=;
        b=EDjNFGUyY5bix0BPPvaB6Ww1Fthg1XgdaI4YhvyRUmlBsBYBlhDblthJTq3iUcMRtV
         sdly/Tl386zwA196DFfC7l/OA76ONOtDELSNNuZ7g+h+zbP5e+1H42hAMGg55hIwOWht
         6qQIebAluxBwgRBOahhyYOQ9jk3+r049hIb77NVxlTSzfdvPKoOEncTFA+YtB2SacdAF
         ymNT5AAFSaR7wgHGR4JEYAyUEmuZWopTCyIgeNq+jqmVjdVu66ApSyyWN4iHGshXkWwl
         Iy/Tw5zJR+1CudTLj9MyC+3AYeyW51E+H96e7j+GBRcszwe447nxblopzDZsd04WhJiE
         yn3g==
X-Gm-Message-State: AOAM5317jlCdwj+SaXwVWGNN85CjT/0jt9UQpKtY9pUv9lL/vU/pIfNr
        QC+gj7r9e5xszi9deda35jdDQlyF9wBIxIPKSvuagscqdNSaR2MX
X-Google-Smtp-Source: ABdhPJznRAnFkGewB8R17TJbOZMWszFPk7NtesKeWagtbDQoOr3Hn35s9vADEAKDDhvHVVGNiwXO6wxMKq7oFQCRAsQ=
X-Received: by 2002:a37:9fce:: with SMTP id i197mr742271qke.155.1616191999457;
 Fri, 19 Mar 2021 15:13:19 -0700 (PDT)
MIME-Version: 1.0
References: <20201109173948.96663-1-sven.auhagen@voleatech.de>
 <20210227105723.7i42cw376qmnozcp@SvensMacBookAir-2.local> <CAPv3WKfH_-ydZ4GXW8UUNuvWyT7xAXjPOLGVxt+X2svXt=PYdg@mail.gmail.com>
 <87czvviok9.fsf@BL-laptop> <CAPv3WKfiuV5h2m=579-3UajwBFtHB2MP5tdSvzxTZo+0MPnZNA@mail.gmail.com>
 <87wnu3h4hw.wl-maz@kernel.org> <CAPv3WKdfywQpBx0HpeBTAZ2G5U+jFVQ6We8J_WeK7sYgWNiuJg@mail.gmail.com>
 <c1bcbd5402f4af12@bloch.sibelius.xs4all.nl> <YFUPTlR/pFjxoKiF@lunn.ch>
In-Reply-To: <YFUPTlR/pFjxoKiF@lunn.ch>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Fri, 19 Mar 2021 23:13:09 +0100
Message-ID: <CAPv3WKct6PZq32-wLXrpwA+_0gU3nrA3ieMnvFWqda+GnQ2jyQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/9] Armada8k enable per-port SATA interrupts and drop
 a hack in the IRQ subsystem
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Mark Kettenis <mark.kettenis@xs4all.nl>, maz@kernel.org,
        =?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>,
        Sven Auhagen <sven.auhagen@voleatech.de>, axboe@kernel.dk,
        Hans de Goede <hdegoede@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        devicetree@vger.kernel.org,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        viresh.kumar@linaro.org, rjw@rjwysocki.net,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        linux-ide@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
        linux-arm-kernel@lists.infradead.org,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Jon Nettleton <jon@solid-run.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,

pt., 19 mar 2021 o 21:53 Andrew Lunn <andrew@lunn.ch> napisa=C5=82(a):
>
> > Unfortunately ACPI doesn't describe how the SFP cages are connected.
>
> Nor MDIO busses and Ethernet PHYs.
>
> ACPI is missing a lot of support for basic elements of networking. I
> guess this is because it expects firmware in the NIC to be controlling
> these parts, not Linux.
>
> >
> > As soon as GPIOs and I2C busses are involved device trees are so much
> > better than ACPI
>
> Yes, ACPI has along way to go before it is usable for SoCs with
> integrated Ethernet.
>

I agree, however hopefully the MDIO + ACPI patchset, that currently
seems to be pretty advanced on the lists, will land - it will be a big
step forward and open a path for full SFP support. However, my point
is, that in case of MacchiatoBin, I prefer to use a bit limited link
IRQs, just for having a guarantee to boot each Linux kernel with mvpp2
starting from v4.16 until today and being sure to install various
distros/OSs/ESXI. For DT one have to find a matching version, that
luckily won't break the boot.

Of course the DT is more flexible and offers huge possibilities (e.g.
DSA), but the way it's been done, inherited straight from armv7
embedded-hacking times is imo a burden. Unstable, constantly changing
ABI, extending drivers rather than describe HW is too often a problem.
This patchset is a bright example that there is a field for
improvement.

In my ideal world DT should be properly designed (vendors+community),
out of Linux tree, reviewed by maintainers from different projects,
backward compatible and ensuring proper information/heads-up when
planning to do a meaningful change. I know how it looks and I'm aware
it is hard, but we should at least try :)

Best regards,
Marcin
