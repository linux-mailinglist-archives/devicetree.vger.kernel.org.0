Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78BA52CA562
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 15:18:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729233AbgLAOPZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 09:15:25 -0500
Received: from mout.gmx.net ([212.227.15.15]:53319 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729277AbgLAOPY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Dec 2020 09:15:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1606832015;
        bh=l5QbF6xOGKc4x8zAs8vjuIjnCCSeS/QenCxa/1DVlbI=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
        b=i+oV1QvSArc/D0OsTzqzu3au1xQ+RB4CLJZ6R1m5FT/P4X0fP5IABHiC4nMLKIKva
         2o0J+14UN1auWK9ulMl93TA0zDhX8dwgU7kxV+F+x41Wg8svew1fhrJ9RVxx0P3U+6
         T4eIgyCXsBaotDRaZZ9qXTLqbSsa8zvQRhxGJyCk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.214.162]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MjS5A-1kLVy83v7i-00kwOK; Tue, 01
 Dec 2020 15:13:35 +0100
Date:   Tue, 1 Dec 2020 15:13:28 +0100
From:   Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To:     conor.dooley@microchip.com
Cc:     robh+dt@kernel.org, damien.lemoal@wdc.com,
        jassisinghbrar@gmail.com, aou@eecs.berkeley.edu,
        paul.walmsley@sifive.com, palmer@dabbelt.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        cyril.jean@microchip.com, david.abdurachmanov@gmail.com,
        daire.mcnamara@microchip.com, anup.patel@wdc.com,
        atish.patra@wdc.com, lewis.hanly@microchip.com
Subject: Re: [PATCH v2 1/5] mbox: add polarfire soc system controller mailbox
Message-ID: <20201201141328.GJ456020@latitude>
References: <20201201110242.28369-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="YrQNB5Deg1WGKZi3"
Content-Disposition: inline
In-Reply-To: <20201201110242.28369-1-conor.dooley@microchip.com>
X-Provags-ID: V03:K1:37pHlLEsoLHtPL7pyVcuzsHHd8XEuhHoKSZiTsSXcfIpElIfo37
 /z9NgeUST6MhZlvyOSqi2rQxgmcD4qYHWwksr6sBuRnvGEPpu2043vVFoiQ29ZRYxNZkuVA
 DMokTDJXoi93oZLrfJA9gCqrsKE4Bwq/4rlFl650SdsrgAX9EVSck70ODQSUB4Rcxinklv/
 RQ1uYI7TI2a5E10UxHUWg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9Y/UJe4bFbU=:43MWcI7119WJd3yzIcJ1UC
 tUNwLdMUDueJ8d5gzH7hBww0c5T3nh9HnRUtOtzLxtfG1MfLWN4NsfljZN5uY3ZlHnXl8bEx+
 +d0psYG8K8ezvIEIbNkFAeKIMjPwzTLozXdKjLADA0nVd4Jy57/qp7wBZe2gTDSojVySt7Jfk
 GsEYUj4kwPaKGaHQqnPylR5tINKBMFO9k56tnylQO6/9Tee2iYdjVbz5t67ezupagqfwfoZF+
 X5Cu2ltmDK+hr6apONjUn1JUOEibPrQorASHBaV+95Shof2ab4clIfOT2UTVP+t2gcfARcRMn
 REqQUVsrTELJty2Pu7sSOn+zO4jW+qV2ktqGwydUO7XGu26SQpEqo915bQ40uH1Kr7Mh7BEDR
 QheL6cnAxMQG3B4KjnD75UIR7/qvj/6aQiIj6SD22S3qmHOBRp6TJtM1Fo+H0ATwbJeaZWK7Z
 VgXaanpFEoxG0wgYVmQrkThfQtBLF7UIgL2ntuCUzDI02/aoGL4dRN+oYf5PWvTm411MkjZ1o
 zdlgjnzf/FhGarqHhe4DMeKiYb3cEPZjsSzXo3/qdQ2gTtqeHy9tqQ+411CfgmU53rgsOAtZ+
 jc38nhHde0gxwqxItpOF//rS5R4OboBa8b69rhPoalaQov6XTo3hpLLOimnoaP3QhtIEaHNOe
 3A8hz0YTTz7oyAZy2IF1nkDxCHYn7/0QVSjX1/pJootgJNpdMQadcOdDevdrqw7ThIiXEoKAe
 WtHATPTeP2Q4ogZa7WjS2mZ/8JKYxWAt46ABCgf6ogHUopfF7odK/gA4mrl8dkz1fdSeJ2vkQ
 Uk+eJ7k1zfSkO6sswU5SyGG7d2kOo2ctVGDLeWbs07I3LOG0QL3jp0drodhDmQTEfpD2vTXw8
 W11PxG2O0zEK2e0STGtQ==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--YrQNB5Deg1WGKZi3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 01, 2020 at 11:02:42AM +0000, conor.dooley@microchip.com wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> This driver adds support for the single mailbox channel of the MSS
> system controller on the Microchip PolarFire SoC.

Out of my curiosity: What is MSS? Is it the Microprocessor Subsystem in
the SoC?

(It isn't quite clear from the PolarFire documentation I could find)

>=20
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
[...]
> +config MPFS_MBOX
> +	tristate "MPFS Mailbox"

"MPFS" in the title seems (to me) a bit too obscure for the uninitiated.
Perhaps you could use something slightly longer that mentions Microchip
and/or the PolarFire series?

> +++ b/drivers/mailbox/mailbox-mpfs.c
> @@ -0,0 +1,285 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Microchip MPFS system controller/mailbox controller driver

The same might apply here.


Best regards,
Jonathan Neusch=C3=A4fer

--YrQNB5Deg1WGKZi3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl/GT24ACgkQCDBEmo7z
X9vLPg/9HXIgvL+0QiHxk0z5m2E2vboBkUMD91d2NyxSgHg3M1m1IObVvevEguHI
ixifEXKpXgMIAnxqwGRZZ66PZCrFvBRfEpumMf1bVnylLfpuFJKPF6PjSDoJXvED
4GsUQhJwkrHxwm3ADPOh4fSqiRl+QSP1h6FckdZnhBabfF/wTZ3whYyJ22pV9brB
5zPLDiRob/LxzRlr9ba22HgpFEn28VZa/kC2OWF9cXfrU5HLA9+63hU44+9yBc2P
d4V1990W0y1nT9GNqJZuB3YZJlps+cSzrghUU1s1FuBTeSZMxJK/dqq18eqLjVtr
UZybZGy0ZUntpYJ2Z5V0/bE1Gb69QW0vR6urR3AdWzkLjGNh7hnCZ8JB61eFHMEH
ucLtV2W6v9utNBWrasbKMrbrxQnjRefEOoMj3XBw8MOOUdu99yiQwa+NVSNxJIZb
0NHJF0KaCAeNRJKEGhYi8WVbxCTNSwwHpg6CW0Ung7OwFKDkXjGyAL9F7gnFKqRO
zM1pzWm55Dro7la/7ZE9Y5oUrjamDKzhVK3VFTYQo+ieREnVnuaUxmtcCtHrp8G0
a8mCmqFQK5k6scsm6YvcFfI+JilklC4jndFc4G9S8oKv9FLwpSbtKe79NnrszUK3
9ZQXg9rRIHTbRxNpMXBJVSFMENDli4W6pieSWM+yNqq+KN/nwzo=
=13L1
-----END PGP SIGNATURE-----

--YrQNB5Deg1WGKZi3--
