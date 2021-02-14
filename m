Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3677F31B332
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 00:09:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230064AbhBNXJ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Feb 2021 18:09:26 -0500
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:57295 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229959AbhBNXJX (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 14 Feb 2021 18:09:23 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 023E35C0083;
        Sun, 14 Feb 2021 18:08:35 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute3.internal (MEProxy); Sun, 14 Feb 2021 18:08:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type:content-transfer-encoding; s=fm2; bh=+8YY3
        5cIjK+he6xPTLasCyk4tcJcDanUyT03SHxt1zU=; b=TTaW2aJFZqiOiqf7YTeG/
        AUwOq9KltRQVQnQ/WVT3+fsIYwzQcd7aOeNvPjXRO22bPnAjkmZqdrChi8IXMt6S
        d0Ho+rbg3p0bPsXTsD8mHss7S88GgRmwBt3W/l7pNVCd4P3eFXGLxbWabEuFPWLG
        2YSqm9dv8RcSS2Gh4YS/CsMFtDLN4RkE6/UneiT7uE7B6PhguBW7EBQi+5ohoc7v
        fH6/Lwjd5XCiUM+KvhDD8uj+xc81jZTAQg0rpOnJCodPCaPayvu8zq1O+hVPPr+G
        xzsV/shfcoTJlj0q+ftKrBVIZD4T0PVXFpWsM8xOWLxygrxmmo5a6ZZLqw0XEnea
        Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm2; bh=+8YY35cIjK+he6xPTLasCyk4tcJcDanUyT03SHxt1
        zU=; b=m0CW3Boc80YCk7w+JrCRveRB2a5bfZNiwzLcX98pty6TphdXTl/XIXwMI
        hNjwPZb6FCWAQ4FvRaK/cZHVueRwY99CowTVzokDJCtp44AZaA+dPKQYKikUEcPo
        6tZ5xDh8PAkp+hfGMETinFqET12JYbTM5xHlTuXAGh5b52AcHU2pPUAv6nN48ZMV
        0xlyNTwONQHqmMQ0PmNjUXSgExqwo90sLlC9sQ0RbhulEQHCjuBoyF9mximnf7vI
        GT9mm7Cfb2nqfnp1sxaDqwbKo3ZSG1+20i3GA0QlOo1d97k4Mrqf9KbrknrdI3IN
        vgRrNwBb/uMtFu1767p83qgLU6k+Q==
X-ME-Sender: <xms:ca0pYLWb4weOsqGq5Nfa1J-JQyJTvMHrpJd3RVwpAQAVBuNjIZVBsA>
    <xme:ca0pYDkGoKIWqaRagU2rr_-D7s25RpKp8_fIR0HxG6fJ1eGsG9aeKOpQORP73Qsld
    TxlN0gQ-fw3LUfFZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrieeigddthecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtgfesthhqredtreerjeenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhepvdegkeehgeefvdfhteehhfduteetgeeugefgieeigeeuheekudegtdek
    gfelgfehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:ca0pYHY0piUqc6SUfG5R6zE2dA49lmp3t5vbLwpexLRAgeobj35Fkw>
    <xmx:ca0pYGXGkVCOjSO5BJy6eo4WodkBueuUmyDX1uHSPBYVnrr5SWSN-A>
    <xmx:ca0pYFn7r_3AjAXHEy1PYAdguYWzHuEW643_e5RX7jOZyoZU6rR_0g>
    <xmx:cq0pYOBZQmEvGFo7qyrhnr_H0sYJR8dhb2m6zhF4WT81FChWfJhnCw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 54F9EA0005E; Sun, 14 Feb 2021 18:08:33 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-141-gf094924a34-fm-20210210.001-gf094924a
Mime-Version: 1.0
Message-Id: <30e6c20b-1f00-4209-960c-8de1d70c8a4e@www.fastmail.com>
In-Reply-To: <6CFB3D8D-CF5A-4E33-8D57-6A4034DDC49E@linux.vnet.ibm.com>
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com>
 <1605247168-1028-6-git-send-email-vishwa@linux.vnet.ibm.com>
 <CACPK8XfttMptuYFsocBaj2v4z1vzNjDUfe18FeDcAbmZjWKjfQ@mail.gmail.com>
 <6CFB3D8D-CF5A-4E33-8D57-6A4034DDC49E@linux.vnet.ibm.com>
Date:   Mon, 15 Feb 2021 09:38:13 +1030
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     vishwa <vishwa@linux.vnet.ibm.com>, "Joel Stanley" <joel@jms.id.au>
Cc:     "Eddie James" <eajames@linux.ibm.com>,
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



On Wed, 10 Feb 2021, at 21:46, vishwanatha subbanna wrote:
>=20
>=20
> > On 16-Nov-2020, at 11:43 AM, Joel Stanley <joel@jms.id.au> wrote:
> >=20
> > On Fri, 13 Nov 2020 at 05:59, Vishwanatha Subbanna
> > <vishwa@linux.vnet.ibm.com> wrote:
> >>=20
> >> These are LEDs on the cable cards that plug into PCIE slots.
> >> The LEDs are controlled by PCA9552 I2C expander
> >>=20
> >> Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
> >> ---
> >> arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 288 ++++++++++++++++=
+++++++++++
> >> 1 file changed, 288 insertions(+)
> >>=20
> >> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/ar=
m/boot/dts/aspeed-bmc-ibm-rainier.dts
> >> index 67c8c40..7de5f76 100644
> >> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> >> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> >> @@ -696,6 +696,70 @@
> >>                        gpios =3D <&pca4 7 GPIO_ACTIVE_LOW>;
> >>                };
> >>        };
> >> +
> >> +       leds-optional-cablecard0 {
> >=20
> > Is it necessary to have separate nodes for each of the different GPI=
O devices?
> >=20
> > Would it make sense to combine them, or is it better to be separate?=

> >=20
> > Andrew, Eddie, Brad: please review this one before I merge it.
>=20
> I answered this in previous patch set.  If I express =E2=80=98em all i=
n one=20
> node that is =E2=80=9Cleds {", then if any of the GPIO is not seen bec=
ause of=20
> not having the card, then the current leds-gpio driver knocks off all=20=

> the ones on which it successfully acquired the GPIOs also, leaving=20
> nothing.

I'm struggling to follow this sentence. Can you please explain what you'=
re=20
trying to say in a less colloquial way?

> I did speak to the maintainer and it looked like the behaviour=20
> was existing since long time and changing it would break old code.
>=20

Break how?

Andrew
