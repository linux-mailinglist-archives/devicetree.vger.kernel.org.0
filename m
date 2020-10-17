Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 885782914B4
	for <lists+devicetree@lfdr.de>; Sat, 17 Oct 2020 23:25:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439443AbgJQVZB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Oct 2020 17:25:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2439436AbgJQVZB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Oct 2020 17:25:01 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60508C061755
        for <devicetree@vger.kernel.org>; Sat, 17 Oct 2020 14:25:01 -0700 (PDT)
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
        by metis.ext.pengutronix.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1kTthB-0006ny-87; Sat, 17 Oct 2020 23:24:57 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
        (envelope-from <ukl@pengutronix.de>)
        id 1kTthA-0004xe-QU; Sat, 17 Oct 2020 23:24:56 +0200
Date:   Sat, 17 Oct 2020 23:24:53 +0200
From:   Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Masahiro Yamada <masahiroy@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>
Subject: Re: [PATCH] scripts/dtc: only append to HOST_EXTRACFLAGS instead of
 overwriting
Message-ID: <20201017212453.6ovoxoop74z5rmtn@pengutronix.de>
References: <20200917094024.17215-1-u.kleine-koenig@pengutronix.de>
 <20200919143922.22793-1-u.kleine-koenig@pengutronix.de>
 <CAK7LNAT5f6RxFjOTOm8RvzZ3N2-48fr5e7wVoiE9hVeMBLSKBA@mail.gmail.com>
 <CAL_JsqJDPq-7V-JkeVEQh8J9dUd8uCqp0u5LnP6pYXmpzLRcwg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rkjaumq6t3tkmbrc"
Content-Disposition: inline
In-Reply-To: <CAL_JsqJDPq-7V-JkeVEQh8J9dUd8uCqp0u5LnP6pYXmpzLRcwg@mail.gmail.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--rkjaumq6t3tkmbrc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 16, 2020 at 09:30:00AM -0500, Rob Herring wrote:
> On Fri, Oct 16, 2020 at 2:11 AM Masahiro Yamada <masahiroy@kernel.org> wr=
ote:
> >
> > On Sat, Sep 19, 2020 at 11:39 PM Uwe Kleine-K=F6nig
> > <u.kleine-koenig@pengutronix.de> wrote:
> > >
> > > When building with
> > >
> > >         $ HOST_EXTRACFLAGS=3D-g make
> >
> >
> > I do not think this is the intended usage
> > of HOST_EXTRACFLAGS.
>=20
> Okay, but I looked at all the other instances of HOST_EXTRACFLAGS and
> they do '+=3D'. Are they all wrong?

Hmm, I just tested that and indeed

	HOSTCFLAGS=3D-g make

has the intended effect. Then the commit log is not optimal. I'd still
say the patch is good even though the reasoning is now only aligning the
assignment to others in the kernel tree.

@Rob: Assuming you agree, do you throw out hte patch again and I resend
with an improved commit log?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--rkjaumq6t3tkmbrc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl+LYSMACgkQwfwUeK3K
7Aka+Qf/eIe3SDDReD6gXUQ9G1AXEtGR/8JpnHBstfr18g6LDUC3PweLewjhVUUr
aMGvOhUhlfL7Wj+sZOW3C8EWuaTm3QfPvANCBFKzQWk7s38lOJJlycpOPEbTKEIi
O2bvajZ7pLidgfuN0UiDjwvowt9rGgVNf0ad80w5/Rnp9jaJNffJkkiiEyFo80Xn
ypj/9Rzlp94TqxAgDfAnpqU/K/rEe0tZiCr76zxqcz3frcIx/UeKwudLOXF7p+CP
zkUB2HdDMfQoiMhC5si/BVX8XdTQC9C+yfoKhy00+DU6odCKWgOcUK21EQ1o5yAa
u6tZr2RtyXJbXAwskceiFFiObZ9AAA==
=S9mL
-----END PGP SIGNATURE-----

--rkjaumq6t3tkmbrc--
