Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1C66950B67
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 15:03:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728375AbfFXNDb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 09:03:31 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:43795 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730576AbfFXNDb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 09:03:31 -0400
Received: by mail-ed1-f68.google.com with SMTP id e3so21649436edr.10
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 06:03:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sK9KCYx7Y79q1UCICxqVkwuoIa7WisAwW4VdXFnFOXM=;
        b=qmlYQ1c0yafVlEXWjfNhfi6Omm0S6GkQyz6gVS0O64H9FKmQ6kr0ymDdwrjxHY2d3a
         zcyJH9/5NOlCGbgDdYWeo4mxFeInXO6J+TJ2SyW+o63FlQDQKILhygtnqPQbGLHs98TB
         6HMXkBLuUEODOoEzBUo0BaN8/fuv5IgGzmY74/uL7Up+H9uluapZ1mEycajjdEZkAcbl
         7jfP9ZDUUVmqRcze5gEmkO9xoE/fQN5NfI7oH2kVR3dEeIgV9RhQsg1TBL7gyY5TDacP
         6iIxv9Sfn1kU/p/x3Wbz5q8Xk+djFFPV8KK0L/PQN8iDmj4zP/nkstj2riWGYyHvGd9q
         /4WQ==
X-Gm-Message-State: APjAAAWpyB4yNsoM+fgkYchITcHyPE/FDWYRsvETLuhUT75rHZn8ccZd
        2sMajWNKLxmJCQ9siZINGFoXAJjzyaA=
X-Google-Smtp-Source: APXvYqyDANIHM+yQRwWuyTCiQri/gFslGS6VPwojapwB7LLtOCuAg/y39cdOqAncqR2W7G/V8HJQNg==
X-Received: by 2002:aa7:d909:: with SMTP id a9mr111763793edr.261.1561381409166;
        Mon, 24 Jun 2019 06:03:29 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id a8sm3674346edt.56.2019.06.24.06.03.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Jun 2019 06:03:28 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id x17so13803638wrl.9
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 06:03:28 -0700 (PDT)
X-Received: by 2002:a05:6000:114b:: with SMTP id d11mr42808528wrx.167.1561381408587;
 Mon, 24 Jun 2019 06:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190620010127.12071-1-andre.przywara@arm.com>
 <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com> <20190624135806.7bc78378@donnerap.cambridge.arm.com>
In-Reply-To: <20190624135806.7bc78378@donnerap.cambridge.arm.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Mon, 24 Jun 2019 21:03:17 +0800
X-Gmail-Original-Message-ID: <CAGb2v66vNndnXXfQfF4tnkEfqPjom7e=kuWVzWggjcTSeDPWsA@mail.gmail.com>
Message-ID: <CAGb2v66vNndnXXfQfF4tnkEfqPjom7e=kuWVzWggjcTSeDPWsA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port 0
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh@kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 24, 2019 at 8:58 PM Andre Przywara <andre.przywara@arm.com> wrote:
>
> On Mon, 24 Jun 2019 16:25:47 +0800
> Chen-Yu Tsai <wens@csie.org> wrote:
>
> Hi,
>
> > On Thu, Jun 20, 2019 at 9:02 AM Andre Przywara <andre.przywara@arm.com> wrote:
> > >
> > > In recent Allwinner SoCs the first USB host controller (HCI0) shares
> > > the first PHY with the MUSB controller. Probably to make this sharing
> > > work, we were avoiding to declare this in the DT. This has two
> > > shortcomings:
> > > - U-Boot (which uses the same .dts) cannot use this port without a PHY
> > >   linked, so we were loosing one USB port there.
> > > - It requires the MUSB driver to be enabled and loaded, although we
> > >   don't actually use it.
> > >
> > > For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
> > > a "phys" property pointing to the USB PHY 0.
> > >
> > > This makes it work in U-Boot, also improves compatiblity when no MUSB
> > > driver is loaded (for instance in distribution installers).
> > >
> > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > ---
> > > Hi,
> > >
> > > I have the feeling this belongs into the .dtsi, but cant't tell for sure
> > > how this interacts with the MUSB driver. If need be, we can always pull
> > > this up later, I guess.
> >
> > Have you tried if gadget mode and switching between gadget/host mode on
> > an otg port still works? AFAICT that would be the main thing to worry
> > about.
>
> I briefly tried gadget mode on a BPi-M64, and that still seemed to work,
> but I couldn't switch it to host mode. IIRC that didn't even work without
> this patch, but I didn't find the time to investigate yet.
>
> Is it supposed to switch automatically when the ID pin changes state? Do
> you know a board/kernel combination which is known to work?

Yes it's supposed to switch automatically when you insert or remove the
OTG host mode cable.

I think it worked during the last release cycle while I was adding support
for VBUS polling. I'll do some tests on the current sunxi-next tomorrow
and let you know.

ChenYu
