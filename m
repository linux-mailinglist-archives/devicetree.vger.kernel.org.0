Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1ABFB31F27C
	for <lists+devicetree@lfdr.de>; Thu, 18 Feb 2021 23:47:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbhBRWqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Feb 2021 17:46:42 -0500
Received: from wout3-smtp.messagingengine.com ([64.147.123.19]:39087 "EHLO
        wout3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229535AbhBRWql (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 18 Feb 2021 17:46:41 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 0BE82A97;
        Thu, 18 Feb 2021 17:45:54 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute3.internal (MEProxy); Thu, 18 Feb 2021 17:45:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type:content-transfer-encoding; s=fm2; bh=3Adeo
        CZo/e1nupDF2SsrnnZdG1t0VUOq9VAegY+HPNA=; b=CcM/jorGk0D9ov1yI+8qj
        Pz141a0DwduD7mqJl71W294/CfxWMG9RLsfvGGbxoxUF2KYRNqxWLzdyHdhgA7ia
        4u30BcuXNU9rEE6ib41JHUuZ02kpjZN/b0MunuWgfkAYrbx3XPP9KGMr4tNqF5+r
        BUO82LzJE9WhWWbrrI00KzMTnHaZyFaOKqzunPCvOifRNsIvyRxJO0goS35ShAsY
        yZtqIq8d7/XHFHzw7kfHwizoOwRi+hVqlSbnAzO6chSBy6mF+Q9dxgp+irQGWGQB
        BQhyzyBp7CuQM1p5q8LYNuHY1P+R/uJP8am6ofgM9+LEQxjdOWUElcETCqrgrrBI
        w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; bh=3AdeoCZo/e1nupDF2SsrnnZdG1t0VUOq9VAegY+HP
        NA=; b=jZDvb62XxQkzB2j7bdk8WbXJ5Tb9bX6S7HE32v3cOq7AOSxsIvNfUTlMj
        pb3KVv14BXE0qZg1BYz22bWws6Ayn+iNqgsHhTEJcBc0d/KFJjLzqy6fQ2GC6t4r
        t6VuNSBA1ecS22yyMaipYYiTYmPfhy9pBqYGy/0t/dFxbHgTBGB1pz9tualSHjeC
        FE5q5jKMw75/+xijuZ5Y3oeukSu8dVZSPRGjd3uzwfOx5we0smbZvgxn0V8cF0sE
        VFfiM6uoLFtADmOYIut4qT5PQyuBUBBC/80SZIEXBYm/MHT+uNh8XwsvcRYdHyG9
        8pst480/E+2Isay/L1yr+vBlnEx0Q==
X-ME-Sender: <xms:Ie4uYPLWJqK0ECvY-qZWYveDfNcI9-e1WLBuQC75AQQx2LmDpIrECQ>
    <xme:Ie4uYDINtTqfHz1S395y231wTO-dDruZLE3kWYOoQncOyORjNw52bm6Kd-Xu9lXP7
    B9eIEVsDx_voagfSg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeehgddtvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtgfesthhqredtreerjeenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhepvdegkeehgeefvdfhteehhfduteetgeeugefgieeigeeuheekudegtdek
    gfelgfehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:Ie4uYHviaSZfQbo1RZefs38oUgM5RZBmhdPS5i51YYnGCRfpInJD6A>
    <xmx:Ie4uYIZc1zSc7kkzteA8ViTonoHhTdAECbi6QDbgGSA3gqVxdvV1VA>
    <xmx:Ie4uYGaNnrj6VFgjnbHgy-SC8CW9c2hflfwvLHl2DbmmqmXQUT83cw>
    <xmx:Iu4uYNW4Mq2KEbY3i5H9NRzXk7Xyf6BPbvqNXMyd4w7j877HJ2yc-Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 11861A00060; Thu, 18 Feb 2021 17:45:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-141-gf094924a34-fm-20210210.001-gf094924a
Mime-Version: 1.0
Message-Id: <944d22cc-ea6f-4368-8253-61f9b663dbba@www.fastmail.com>
In-Reply-To: <14C0B6E9-0724-42FE-89BA-1FA0262B9BBB@linux.vnet.ibm.com>
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com>
 <1605247168-1028-6-git-send-email-vishwa@linux.vnet.ibm.com>
 <CACPK8XfttMptuYFsocBaj2v4z1vzNjDUfe18FeDcAbmZjWKjfQ@mail.gmail.com>
 <6CFB3D8D-CF5A-4E33-8D57-6A4034DDC49E@linux.vnet.ibm.com>
 <30e6c20b-1f00-4209-960c-8de1d70c8a4e@www.fastmail.com>
 <14C0B6E9-0724-42FE-89BA-1FA0262B9BBB@linux.vnet.ibm.com>
Date:   Fri, 19 Feb 2021 09:15:27 +1030
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     vishwa <vishwa@linux.vnet.ibm.com>
Cc:     "Joel Stanley" <joel@jms.id.au>,
        "Eddie James" <eajames@linux.ibm.com>,
        "Brad Bishop" <bradleyb@fuzziesquirrel.com>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Rob Herring" <robh+dt@kernel.org>
Subject: =?UTF-8?Q?Re:_[PATCH_6/6]_ARM:_dts:_aspeed:_rainier:_Add_leds_that_are_o?=
 =?UTF-8?Q?n_optional_PCI_cable_cards?=
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Mon, 15 Feb 2021, at 17:14, vishwanatha subbanna wrote:
>=20
>=20
> > On 15-Feb-2021, at 4:38 AM, Andrew Jeffery <andrew@aj.id.au> wrote:
> >=20
> >=20
> >=20
> > On Wed, 10 Feb 2021, at 21:46, vishwanatha subbanna wrote:
> >>=20
> >>=20
> >>> On 16-Nov-2020, at 11:43 AM, Joel Stanley <joel@jms.id.au> wrote:
> >>>=20
> >>> On Fri, 13 Nov 2020 at 05:59, Vishwanatha Subbanna
> >>> <vishwa@linux.vnet.ibm.com> wrote:
> >>>>=20
> >>>> These are LEDs on the cable cards that plug into PCIE slots.
> >>>> The LEDs are controlled by PCA9552 I2C expander
> >>>>=20
> >>>> Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
> >>>> ---
> >>>> arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 288 ++++++++++++++=
+++++++++++++
> >>>> 1 file changed, 288 insertions(+)
> >>>>=20
> >>>> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/=
arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> >>>> index 67c8c40..7de5f76 100644
> >>>> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> >>>> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> >>>> @@ -696,6 +696,70 @@
> >>>>                      gpios =3D <&pca4 7 GPIO_ACTIVE_LOW>;
> >>>>              };
> >>>>      };
> >>>> +
> >>>> +       leds-optional-cablecard0 {
> >>>=20
> >>> Is it necessary to have separate nodes for each of the different G=
PIO devices?
> >>>=20
> >>> Would it make sense to combine them, or is it better to be separat=
e?
> >>>=20
> >>> Andrew, Eddie, Brad: please review this one before I merge it.
> >>=20
> >> I answered this in previous patch set.  If I express =E2=80=98em al=
l in one=20
> >> node that is =E2=80=9Cleds {", then if any of the GPIO is not seen =
because of=20
> >> not having the card, then the current leds-gpio driver knocks off a=
ll=20
> >> the ones on which it successfully acquired the GPIOs also, leaving=20=

> >> nothing.
> >=20
> > I'm struggling to follow this sentence. Can you please explain what =
you're=20
> > trying to say in a less colloquial way?
>=20
>=20
> Okay.. So, let me give a bit of background. We have some cards that ar=
e=20
> optional. What that means is, if the cards are to be inserted, then th=
e=20
> system needs to be brought down to put =E2=80=98em. Now, there can be =
N such=20
> cards in our system and any of =E2=80=98em can be populated or none of=
 =E2=80=98em can=20
> be populated depending on what user wants.
>=20
> Now, let us assume I put global =E2=80=9Cleds { , compatible =3D "gpio=
-leds"; =E2=80=9D=20
> section and I describe LEDs of all these N cards along with all the=20=

> other LEDs on the planar, then leds-gpio driver would populate all the=
=20
> entries in /sys/class/leds/ __if__ all of the N cards that I mentioned=
=20
> are plugged in and their GPIOs can be detected.
>=20
> However, take for instance where 1 or more of those cards are not=20
> plugged in, then, because there is a failure in detecting those GPIOs,=
=20
> leds-gpio driver will
> discard all other LEDs on which it could successfully acquire the=20
> GPIOs. So, there will not be anything in =E2=80=9C/sys/class/leds=E2=80=
=9D. So, the way=20
> it works is : either -all- or -none-.

Right.

So what's happening is we're using the static description of the hardwar=
e in=20
the devicetree to describe non-static data. That makes the patch a bit o=
f a=20
hack. I'm not terribly enthused about it. Reliance on a specific probe=20=

behaviour of the leds-gpio driver is not ideal.

The alternative is runtime device creation and driver binding, but then =
we have=20
issues describing the device configuration to the kernel. For LED config=
uration=20
I don't think that's a solved problem, but I'm keen for others to weigh =
in with=20
ideas here.

I think where I land is the devicetree approach is quite distasteful, bu=
t=20
pragmatic?

I'm torn so I'm going to punt to the maintainer.

Andrew
