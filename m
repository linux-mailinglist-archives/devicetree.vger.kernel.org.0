Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 090B357A0E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 05:34:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726563AbfF0DeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 23:34:22 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:35060 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726447AbfF0DeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 23:34:21 -0400
Received: by mail-ed1-f67.google.com with SMTP id w20so5644375edd.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 20:34:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y22CNeS4I4ip2/omKMWln+BWupj7xZ1w+7CB2TiUth0=;
        b=ED7HpSI8UcZP2/kKz3FQvR40V8tUaiw93mKV6D3rpS0m+iePwzqYdQIgJ43+Kb13qz
         377M0Yi5fYTf2qcLCftzO8EvSf2ATsj5XBUftN8K9+ju1hqLGa4YnhpxssE0eAaztemX
         9jhmMPxDhenccnXzT+IpA+wXea3VOzs7NJO1TGMga3aEUasJWFegzLLoW0g3P0y095dW
         BhgtYKPEJAdF8H9fnmHJ77T+2TzlZkVoBb18zIseB4roaAq+nAuWl5brr45/wPdcZnID
         58lwnX+EjmTeVcKz262RZJ0kwvPSFkDXcYxmu4lc9Pp/Tn4i4C1j9yQyGy7wE0ketqny
         sa/A==
X-Gm-Message-State: APjAAAXgLicxPx9OKCq1s0F/XR+2L3tHI3YyKXCFlIM8hvqrfzt5Se2z
        CdKg6T6Yf/l4yThqiT1CN+MLMT5Q+Z8=
X-Google-Smtp-Source: APXvYqwICjNNjZSqL+j7VfLPX0WbxgC52tZH8Bq//Bi3pKrwHrderC3NPs27YAzK6q0400Ofwbgj+w==
X-Received: by 2002:a50:a5b7:: with SMTP id a52mr1386431edc.237.1561606460009;
        Wed, 26 Jun 2019 20:34:20 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com. [209.85.128.50])
        by smtp.gmail.com with ESMTPSA id 43sm284765edz.87.2019.06.26.20.34.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Jun 2019 20:34:19 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id 207so4147730wma.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 20:34:19 -0700 (PDT)
X-Received: by 2002:a7b:c051:: with SMTP id u17mr1290734wmc.25.1561606459379;
 Wed, 26 Jun 2019 20:34:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190620010127.12071-1-andre.przywara@arm.com>
 <CAGb2v66WOTFvXWSSGwtLh3hD+N4CeJkFEPnCMXp0FuU2h=LS9Q@mail.gmail.com>
 <20190624135806.7bc78378@donnerap.cambridge.arm.com> <CAGb2v66vNndnXXfQfF4tnkEfqPjom7e=kuWVzWggjcTSeDPWsA@mail.gmail.com>
In-Reply-To: <CAGb2v66vNndnXXfQfF4tnkEfqPjom7e=kuWVzWggjcTSeDPWsA@mail.gmail.com>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Thu, 27 Jun 2019 11:34:09 +0800
X-Gmail-Original-Message-ID: <CAGb2v67woLtn4bdD8YbCN9CyLPm_9r9+wd_Cxp8AUeVed0O-pA@mail.gmail.com>
Message-ID: <CAGb2v67woLtn4bdD8YbCN9CyLPm_9r9+wd_Cxp8AUeVed0O-pA@mail.gmail.com>
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

On Mon, Jun 24, 2019 at 9:03 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Mon, Jun 24, 2019 at 8:58 PM Andre Przywara <andre.przywara@arm.com> wrote:
> >
> > On Mon, 24 Jun 2019 16:25:47 +0800
> > Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > Hi,
> >
> > > On Thu, Jun 20, 2019 at 9:02 AM Andre Przywara <andre.przywara@arm.com> wrote:
> > > >
> > > > In recent Allwinner SoCs the first USB host controller (HCI0) shares
> > > > the first PHY with the MUSB controller. Probably to make this sharing
> > > > work, we were avoiding to declare this in the DT. This has two
> > > > shortcomings:
> > > > - U-Boot (which uses the same .dts) cannot use this port without a PHY
> > > >   linked, so we were loosing one USB port there.
> > > > - It requires the MUSB driver to be enabled and loaded, although we
> > > >   don't actually use it.
> > > >
> > > > For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
> > > > a "phys" property pointing to the USB PHY 0.
> > > >
> > > > This makes it work in U-Boot, also improves compatiblity when no MUSB
> > > > driver is loaded (for instance in distribution installers).
> > > >
> > > > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > > > ---
> > > > Hi,
> > > >
> > > > I have the feeling this belongs into the .dtsi, but cant't tell for sure
> > > > how this interacts with the MUSB driver. If need be, we can always pull
> > > > this up later, I guess.
> > >
> > > Have you tried if gadget mode and switching between gadget/host mode on
> > > an otg port still works? AFAICT that would be the main thing to worry
> > > about.
> >
> > I briefly tried gadget mode on a BPi-M64, and that still seemed to work,
> > but I couldn't switch it to host mode. IIRC that didn't even work without
> > this patch, but I didn't find the time to investigate yet.
> >
> > Is it supposed to switch automatically when the ID pin changes state? Do
> > you know a board/kernel combination which is known to work?
>
> Yes it's supposed to switch automatically when you insert or remove the
> OTG host mode cable.
>
> I think it worked during the last release cycle while I was adding support
> for VBUS polling. I'll do some tests on the current sunxi-next tomorrow
> and let you know.

So it works properly for me on the Bananapi M64 with the latest sunxi-next
branch. I have the gadget drivers built-in.

ChenYu
