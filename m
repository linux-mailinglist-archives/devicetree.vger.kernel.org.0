Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EF812F4CCF
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 15:12:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725772AbhAMOKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 09:10:23 -0500
Received: from mx.blih.net ([212.83.155.74]:62651 "EHLO mx.blih.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725771AbhAMOKX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 09:10:23 -0500
X-Greylist: delayed 398 seconds by postgrey-1.27 at vger.kernel.org; Wed, 13 Jan 2021 09:10:21 EST
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bidouilliste.com;
        s=mx; t=1610546580;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=CuqQ41+62E3abvZbC8uW3gX+FOM+gTQ2HpvaMFDLcLQ=;
        b=OoJe4m2Exg8BfzoMcur+70eZU1JhnApLcVEzjZvp1KbcShn5wfjLdzV1ZzqxFv0MluuX5y
        7zvxMiFRztmGufwEjHmWm7zohCl4YulKCUeQzLmu/viY3zuY4tuBvU0N25rxFBzrUmprmL
        uLuLS1b5msA6zdMcQ5p/nI3ppdSsgYc=
Received: from skull.home.blih.net (lfbn-idf2-1-745-114.w86-247.abo.wanadoo.fr [86.247.192.114])
        by mx.blih.net (OpenSMTPD) with ESMTPSA id b98bc92a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Wed, 13 Jan 2021 14:03:00 +0000 (UTC)
Date:   Wed, 13 Jan 2021 15:02:57 +0100
From:   Emmanuel Vadot <manu@bidouilliste.com>
To:     =?ISO-8859-1?Q?Andr=E9?= Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        devicetree <devicetree@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [linux-sunxi] [PATCH 2/7] arm64: dts: allwinner: Pine64-LTS:
 Add status LED
Message-Id: <20210113150257.39cc69538ef4b4f09ebfabb2@bidouilliste.com>
In-Reply-To: <93863b7a-27c5-d1bc-78e8-e02dfb583653@arm.com>
References: <20210106150525.15403-1-andre.przywara@arm.com>
        <20210106150525.15403-3-andre.przywara@arm.com>
        <CAGb2v65oDBjO2dgcTfhe5Dephc6KBN9-epBieQ4mV0cwMizNvw@mail.gmail.com>
        <93863b7a-27c5-d1bc-78e8-e02dfb583653@arm.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; amd64-portbld-freebsd13.0)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 6 Jan 2021 16:08:30 +0000
Andr=E9 Przywara <andre.przywara@arm.com> wrote:

> On 06/01/2021 15:53, Chen-Yu Tsai wrote:
>=20
> Hi,
>=20
> > On Wed, Jan 6, 2021 at 11:05 PM Andre Przywara <andre.przywara@arm.com>=
 wrote:
> >>
> >> The Pine64-LTS board features a blue status LED on pin PL7.
> >=20
> > I'd like some clarification about this.
> >=20
> > My Pine64-LTS was a used unit personally given to me by TL Lim, which c=
ame
> > with LEDs that I assume were soldered on by hand as their mounting angl=
es
> > are slightly off. My Pine64+ (the original from the Kickstarter campaig=
n)
> > and SoPine baseboard (a new unit, also given to me by TL Lim) came with=
out
> > LEDs soldered on.
>=20
> The situation is similar here ;-), and that's why I checked the pictures
> in the store. The LEDs look slightly different (not angled), but the
> location of the pads is the same and I see two LEDs on the picture. The
> schematic seems to confirm both the pins, the polarity and the colour.
> Hence I am highly confident that it's a blue LED on PL7, active low.
>=20
> But we can wait for other people to confirm.
>=20
> Thanks!
> Andre

 I have three boards :

 - Pine64, no led (bought after the kickstarter)
 - A64-LTS, blue color, and active low, no weird mounting angles here
(don't remember if I bought this one or not)
 - Sopine Baseboard, no led (definitly bought this myself)

> > I'm OK with adding the LED to the device tree. I'm just not sure about =
the
> > color.
> >=20
> >=20
> > ChenYu
> >=20
> >> Describe it in the DT.
> >>
> >> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> >> ---
> >>  .../boot/dts/allwinner/sun50i-a64-pine64-lts.dts      | 11 +++++++++++
> >>  1 file changed, 11 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts b=
/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> >> index 302e24be0a31..55bf4a0fc31c 100644
> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-lts.dts
> >> @@ -1,10 +1,21 @@
> >>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >>  // Copyright (c) 2018 ARM Ltd.
> >>
> >> +#include <dt-bindings/leds/common.h>
> >>  #include "sun50i-a64-sopine-baseboard.dts"
> >>
> >>  / {
> >>         model =3D "Pine64 LTS";
> >>         compatible =3D "pine64,pine64-lts", "allwinner,sun50i-r18",
> >>                      "allwinner,sun50i-a64";
> >> +
> >> +       leds {
> >> +               compatible =3D "gpio-leds";
> >> +
> >> +               status {
> >> +                       function =3D LED_FUNCTION_STATUS;
> >> +                       color =3D <LED_COLOR_ID_BLUE>;
> >> +                       gpios =3D <&r_pio 0 7 GPIO_ACTIVE_LOW>; /* PL7=
 */
> >> +               };
> >> +       };
> >>  };
> >> --
> >> 2.17.5
> >>
> >> --
> >> You received this message because you are subscribed to the Google Gro=
ups "linux-sunxi" group.
> >> To unsubscribe from this group and stop receiving emails from it, send=
 an email to linux-sunxi+unsubscribe@googlegroups.com.
> >> To view this discussion on the web, visit https://groups.google.com/d/=
msgid/linux-sunxi/20210106150525.15403-3-andre.przywara%40arm.com.
>=20
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


--=20
Emmanuel Vadot <manu@bidouilliste.com> <manu@freebsd.org>
