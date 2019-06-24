Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9054D50B37
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2019 14:58:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726557AbfFXM6L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 08:58:11 -0400
Received: from foss.arm.com ([217.140.110.172]:49460 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725916AbfFXM6L (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 Jun 2019 08:58:11 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BB65344;
        Mon, 24 Jun 2019 05:58:10 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9745D3F718;
        Mon, 24 Jun 2019 05:58:09 -0700 (PDT)
Date:   Mon, 24 Jun 2019 13:58:06 +0100
From:   Andre Przywara <andre.przywara@arm.com>
To:     Chen-Yu Tsai <wens@csie.org>
Cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh@kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port
 0
Message-ID: <20190624135806.7bc78378@donnerap.cambridge.arm.com>
In-Reply-To: <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
References: <20190620010127.12071-1-andre.przywara@arm.com>
        <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Jun 2019 16:25:47 +0800
Chen-Yu Tsai <wens@csie.org> wrote:

Hi,

> On Thu, Jun 20, 2019 at 9:02 AM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > In recent Allwinner SoCs the first USB host controller (HCI0) shares
> > the first PHY with the MUSB controller. Probably to make this sharing
> > work, we were avoiding to declare this in the DT. This has two
> > shortcomings:
> > - U-Boot (which uses the same .dts) cannot use this port without a PHY
> >   linked, so we were loosing one USB port there.
> > - It requires the MUSB driver to be enabled and loaded, although we
> >   don't actually use it.
> >
> > For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
> > a "phys" property pointing to the USB PHY 0.
> >
> > This makes it work in U-Boot, also improves compatiblity when no MUSB
> > driver is loaded (for instance in distribution installers).
> >
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> > Hi,
> >
> > I have the feeling this belongs into the .dtsi, but cant't tell for sure
> > how this interacts with the MUSB driver. If need be, we can always pull
> > this up later, I guess.  
> 
> Have you tried if gadget mode and switching between gadget/host mode on
> an otg port still works? AFAICT that would be the main thing to worry
> about.

I briefly tried gadget mode on a BPi-M64, and that still seemed to work,
but I couldn't switch it to host mode. IIRC that didn't even work without
this patch, but I didn't find the time to investigate yet.

Is it supposed to switch automatically when the ID pin changes state? Do
you know a board/kernel combination which is known to work?

Cheers,
Andre.
