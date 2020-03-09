Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5785417E9C2
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2020 21:15:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726096AbgCIUPf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Mar 2020 16:15:35 -0400
Received: from mx2.suse.de ([195.135.220.15]:42238 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725992AbgCIUPf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 9 Mar 2020 16:15:35 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx2.suse.de (Postfix) with ESMTP id 909BEAC37;
        Mon,  9 Mar 2020 20:15:33 +0000 (UTC)
Message-ID: <8609efe72001a183452c4bd4f1f1a827eb789406.camel@suse.de>
Subject: Re: ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
From:   Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To:     nick.hudson@gmx.co.uk, linux-rpi-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     Nick Hudson <skrll@netbsd.org>
Date:   Mon, 09 Mar 2020 21:15:32 +0100
In-Reply-To: <20200309164842.8184-1-nick.hudson@gmx.co.uk>
References: <20200309164842.8184-1-nick.hudson@gmx.co.uk>
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-ft9tqa9x20+veMJWC9gx"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--=-ft9tqa9x20+veMJWC9gx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Nick,

On Mon, 2020-03-09 at 16:48 +0000, nick.hudson@gmx.co.uk wrote:
> From: Nick Hudson <nick.hudson@gmx.co.uk>
>=20
> Define the sdhci pinctrl state as "default" so it gets applied
> correctly and to match all other RPis.
>=20
> Signed-off-by: Nick Hudson <skrll@netbsd.org>
> ---

you should add the [PATCH] prefix in your subject when submitting patches. =
Also
make sure you CC everyone listed by ./sripts/get_maintainer.pl, so they can
properly review the patch.

Thanks!
Nicolas


--=-ft9tqa9x20+veMJWC9gx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5mo+QACgkQlfZmHno8
x/5X0AgApDlJn2d4OsuBK7Pi9nkv3wl+RM56/ZMeEECpSeVCg7joYzLQkxZZU0nn
OYsmMeD3MSoqcUH8UClWCix7dxpZbr72zX5x9pZ5/bj3ZCEdndlnCQRILRWK2gd+
KyV1sQVAKy0BZIdfRw5j+ILKYCt5zGkyylleM/W7gFO5ozZhs2koLxuAgevjXwgJ
wzwLMfinFDjSMsyJGverO/We488zzG4nEf/3R0Aj2V1829JB+tHo2qormHllZaB6
oAu8+AdBMaNZjkWNJpiP40lUUfWXMO5Zwm8da7HtdBC9+PMwdOokgv71EJfRPAS3
OwYRT9IMnNpBXWSPvv+kOZfP2ofe4A==
=3CIk
-----END PGP SIGNATURE-----

--=-ft9tqa9x20+veMJWC9gx--

