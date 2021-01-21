Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D9EC2FEC75
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 14:58:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729347AbhAUN6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 08:58:02 -0500
Received: from mout.gmx.net ([212.227.15.15]:36961 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726427AbhAUNkc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 21 Jan 2021 08:40:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1611236325;
        bh=m6qKMnH5Rh7C8WKydAeDn5ZLGZSTdrd+y3h31CvJaXw=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
        b=YnsxD6IPIWywl4OCg0aheB/Ap+2jBzZqLwJGHvU6S7AWqybi6+ugjcgUL43KHqyuY
         Y08G3SI8NUy/FPVRzaU4lk+4FsqUYeYNpSqJsythbRu6eWWygfAgyp2/CpYlj3Bk0C
         vybRRI607dOuxC6XhXdCMud6RKZxieESZmQCCafI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.215.209]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MQ5vW-1lOfOn2yYq-00M1z1; Thu, 21
 Jan 2021 14:38:45 +0100
Date:   Thu, 21 Jan 2021 14:38:42 +0100
From:   Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To:     Conor.Dooley@microchip.com
Cc:     j.neuschaefer@gmx.net, robh+dt@kernel.org, damien.lemoal@wdc.com,
        jassisinghbrar@gmail.com, aou@eecs.berkeley.edu,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Lewis.Hanly@microchip.com, Cyril.Jean@microchip.com,
        Daire.McNamara@microchip.com, atish.patra@wdc.com,
        anup.patel@wdc.com, david.abdurachmanov@gmail.com
Subject: Re: [PATCH v3 1/5] mbox: add polarfire soc system controller mailbox
Message-ID: <YAmD4h9vssAQlXPh@latitude>
References: <20201223163247.28923-1-conor.dooley@microchip.com>
 <20201223163255.28992-1-conor.dooley@microchip.com>
 <X/BuucfqPGpE/S1r@latitude>
 <3425400b-889f-5393-6c26-bf708f2734f1@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Z8R9FYvCpqVMARl9"
Content-Disposition: inline
In-Reply-To: <3425400b-889f-5393-6c26-bf708f2734f1@microchip.com>
X-Provags-ID: V03:K1:zDJIKr9tFywt30l8s1XGjz9gQyZUTSl93guw5L+Qgm4G/SpGErn
 s3oNEn2k5zlf2Qq6qi8WIxjmTJVMJuZ2MAAyk5IyUrcZyr7lCg4XDfEouH/7O9VTo78/9Y7
 M/GxCO/CTDi9iUrv6s5XPcaeArsbfT+Sc73rYLmjDCUYq4n0pws6VZFtQhDC4B9Z2GnmBuT
 vCji8WC5IdwAabHKvFTNg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:g0LPXy86K5k=:XRoQ0fs5PIE5H6NSS4zlTS
 MgfYcLaX6QgtALwY1hQRUL1XUVO7m5ZTOQxegYUX4NCXPt4cBvyoytqw0EMqqySfvvCxZdP4Q
 OsgGY/XLwXTNoNYK6jj861y2q1GaKFk8RDgYUEfUPwHJyq4DCdK7dJ6NHKtquexkJGAc9o8d+
 SwE+VmUtpBdJkj7qjdpWHRcEJNS8/t1iyof9yQvkCB4hfilqk19j8i18/zCy9XRU8ZdwBRC1e
 BMrllrlEYGkObGkzIbzAOm1jTu353eF1+5pfg/+XD/UKyYDJ3uFGdHzvkmi2loT3pzS6KC6+Y
 qrMdcH2Th9YD7n7t3UwZYnD3VoRc6M8pY0VMQIs5NgwmIWJjL0TC2DJaSTKcrdoXSDSs4MJY0
 0SIBdn6u8X6tMOpcVpnAhfgL5q0huAsTfenOwCyANIOasr+z7Nt9Gb3nYtvg2AbnHeRALKsCB
 PR/6fSr2vZWep1njUsAFTYbcr2rt9tZrMNeEImDDQuziKoQH3SwNFg9bvPTYdfmyCsrAgukUA
 Vjzl0TC7L2z5Kns6aQoS9PaZQOY4D/R4e6s++q1M9YUZHr0+CqPADm+gaZshS8RmexizsisDm
 AKa2e/1xYgnAdYVzjlAFs4F0KnwX7S1VNqiOLNVhQK7u6Jq8Psl+jxEZ5xx39P3Kxbt7rfd5s
 IoPGhZAwO/8mySlIcKIKpJM5/E3X7r50FV5nPkutaFpHkjLrax1fKqLEA29Y5GiCwsYK6K6QU
 fUGi2TiRsMQzwsmp813je1z7WjdXl/a3obY3S7GkEAK29xCb2OSb9Y18OQLkMSX6Z2p+y2wtM
 +mygkLHsNQVTKwDiy1cEaBuJlNPnu2dtI/FOItujzbIGLbEpcGvPXNvRSn1w1rss19j0m01j0
 hb5amxdwfKhYIgXs3FHg==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--Z8R9FYvCpqVMARl9
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 21, 2021 at 12:46:42PM +0000, Conor.Dooley@microchip.com wrote:
> On 02/01/2021 13:01, Jonathan Neusch=C3=A4fer wrote
>=20
> >Hello,
> >
> >I've added review comments below. Some of them might be more detailed
> >than necessary, and reflect my opinion rather than something that must
> >be fixed. Anyway, I hope my comments make sense.
> >
> the more detailed feedback the better in my book, if i dont mention it yo=
ull probably see in changed in the next day or two

Great.


> >> +static irqreturn_t mpfs_mbox_inbox_isr(int irq, void *data)
> >> +{
> >> +=C2=A0=C2=A0=C2=A0 struct mbox_chan *chan =3D (struct mbox_chan *)dat=
a;
> >
> >This cast and the one at the end of mpfs_mbox_rx_data are somewhat
> >uncessary, because C allows implicit conversion of void pointers to and
> >from other pointer types.
> >
>=20
> true, i had put them in thinking it made it more clear, but on reflection=
 it doesnt.

The main problem that I personally have with explicit pointer casts is
that they are accepted by the compiler even when they would be a bad
idea (casting from one non-void pointer type to another (incompatible)
non-void pointer type), so they can hide a class of bugs.



Thanks,
Jonathan Neusch=C3=A4fer

--Z8R9FYvCpqVMARl9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAmAJg9EACgkQCDBEmo7z
X9t9YBAAhvyAmTwOyAFdkDT1o54Z2auXNT9IW9/rT4Cbd1wFFpS0Zm2KABkKGTug
MGANNMYZCAwMwKclayzGgGLRegIOII03LeTVaTJJHlhnNpgvDv6BXAl3GuuhcWvK
guPfLuj8F4tlb/t/DH4oAnq7F2oL460MpSovrVUi5sXQtC8qM3iJkRoN2yXTicGq
c3drOTaWXmm1FcrQCl5tklcRhitVuG/PZALRsxFjU/wTOI05PXEmI8RcQLWlFeSW
6/9N0r5HXBu9lBPRjqHjtmFgLQMo1TcBvPotmxDyxpMSsSRU2d5WMqnNfX4n+zr+
m2NsfHpvUalCpd14G144uSY+mWtqv2N+WwAHw89gQhVTBmqaC+4+qlWNFT1kAU1N
wlL4J0abJITEpnwRSFVugU5S5Ia/Z8rB0glkAEQRdAGkXc+0ZgYOZKF+JHwtmPJz
FTXmN/nX5YVQYdy1XKKY1aOH67cda89yUmHiVlRpLheQ/Vkr8o2AowvIs3VICa2H
kA0BqtAWasEDSAQCuO2jlAtuMdHiEnhW1WLfGnjybbr5AOLYcxtOvX3j/v+/fAWe
DG1lpRQsqX2oWkIwgtkPYEQt1vgEdl0b0s97oWibwS07fNTJv6sH58pNyC/AUoXQ
g49iSh1okNdw2Qk5MjNEYY3LD8cCGxJr2xzvFyiMJjujdYncvV8=
=3qcO
-----END PGP SIGNATURE-----

--Z8R9FYvCpqVMARl9--
