Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39CF42B315F
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 00:24:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726140AbgKNXX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 18:23:57 -0500
Received: from mail.kernel.org ([198.145.29.99]:58494 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726125AbgKNXX5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 18:23:57 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 58F2224137;
        Sat, 14 Nov 2020 23:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605396236;
        bh=evQsjOa3IJ8xqgSUSrTCJWla/pA/y2KDvSuAf6i5J24=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=vGfMDDBeO3fNCB2onjL6UHqmIJ5vK/mSpf1JLwwW9AjzxshzasAt5MyIohsauGzYz
         X4Zgb70IGPa16Q3YTP7V3Nsu4EVc5uG6PE5bdT45lrnzl3c2PUlBj1hlHtORysRtjk
         CKGNaPhbYbj5l8EWuIGhZ2jpx2qHXjrX3u/H+RVA=
Date:   Sun, 15 Nov 2020 00:23:51 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>
Cc:     arm@kernel.org,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH mvebu-dt v2 5/6] ARM: dts: turris-omnia: add LED
 controller node
Message-ID: <20201115002351.7a752599@kernel.org>
In-Reply-To: <75e7fb40-be64-3d1a-c3ac-c705f9f6a4b1@suse.de>
References: <20201114183217.1352-1-kabel@kernel.org>
        <20201114183217.1352-6-kabel@kernel.org>
        <75e7fb40-be64-3d1a-c3ac-c705f9f6a4b1@suse.de>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 22:58:45 +0100
Andreas F=C3=A4rber <afaerber@suse.de> wrote:

Hi Andreas,

> >  			/* STM32F0 command interface at address 0x2a */
> >  			/* leds device (in STM32F0) at address 0x2b */ =20
>=20
> Update and move this comment now that the node documents the address?

Sounds reasonable.

> > +				 *   in most cases users have wifi cards in
> > +				 *   these slots =20
>=20
> Doesn't U-Boot detect mSATA and switches SerDes configuration? You could
> then have it set LED_FUNCTION_DISK in case of mSATA detected.

Yes, but this also needs to be changed by u-boot. And current version
of MCU firmware on Omnia doesn't connect the mSATA/PCI3 LED when in HW
controlled mode, so the LED has to be blinked in software anyway, for
now.

Another problem is that user can put non wireless/disk PCIe device into
this slot. What should the LED function be then? ...

> I recently didn't find any DT binding for the netdev LED trigger, but
> you could set trigger-sources to associate the LEDS with PCIe nodes even
> if unused. Same for the LAN LEDs and switch port nodes, if you give them
> labels.

I am also working with Pavel in LED subsystem. Trigger-sources does not
work currently - you can put it in device tree, but the drivers ignore
it. I am currently also working on transparent HW offloading of LED
triggers: if you set netdev trigger for lan1 LED, the system will
just enable HW controlled mode on Omnia, instead of blinking this LED
in software.

So please wait till this is done.

BTW, another issue is the devicename and function part of LED:
The `linux,default-trigger` property is deprecated in favor of
`function`.
So somehow the system should enable netdev trigger on the LED is
trigger-source points to a network device and function is compatible
with netdev trigger. What should this functions be? We have:
  LED_FUNCTION_ACTIVITY
  LED_FUNCTION_RX
  LED_FUNCTION_TX
  LED_FUNCTION_WAN
  LED_FUNCTION_LAN

Jacek thinks that
  LED_FUNCTION_ACTIVITY should be used for system activity trigger
  LED_FUNCTION_RX/TX    on uart
  LED_FUNCTION_LAN      on a network device

But I and Pavel think that if the LED_FUNCTION_ACTIVITY is used, the
trigger should be selected depending on trigger-source:
- if it points to a network device, "netdev"
- if it points to a block device, a potential "blkdev" trigger which
  does not exist now
- ...
Also RX/TX should be IMO used this way: for the netdev trigger you can
use whether it should blink only on rx, only on tx, or on both.

Please look at:
https://www.spinics.net/lists/linux-leds/msg16632.html

>=20
> > +				 * - there are 2 LEDs dedicated for user: A and
> > +				 *   B. Again there is no such function defined.
> > +				 *   For now we use LED_FUNCTION_DEBUG =20
>=20
> I'd suggest the more neutral LED_FUNCTION_INDICATOR.

Hmm, that sounds reasonable.

Thanks.

Marek
