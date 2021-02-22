Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3AA53210C5
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 07:18:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbhBVGR6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 01:17:58 -0500
Received: from bilbo.ozlabs.org ([203.11.71.1]:43529 "EHLO ozlabs.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229953AbhBVGR4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 22 Feb 2021 01:17:56 -0500
Received: by ozlabs.org (Postfix, from userid 1007)
        id 4DkX5j2bPcz9sVR; Mon, 22 Feb 2021 17:17:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
        d=gibson.dropbear.id.au; s=201602; t=1613974633;
        bh=1W9LiaJGLjM7wbnYMcAqV0heEgeXKP7T2MmbMSl84WA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oXAQMk4VdNEMPxz4wLaIEXxAgWSudbQR2ObU3wjS9YuRAozdr4Se0Lfpp1qfAftCX
         PTbfFj3AjIc+f/mUhy7G6uPWYr2h+OW7UF4PBNa+04zX9tc1u2uYw/HDixDLeuyasb
         TUXZ0ovEcMsg1fBIScxHfHS2gea0S6D/P8WSGA8U=
Date:   Mon, 22 Feb 2021 17:12:39 +1100
From:   David Gibson <david@gibson.dropbear.id.au>
To:     Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bill Mills <bill.mills@linaro.org>, devicetree@vger.kernel.org,
        Jon Loeliger <loeliger@gmail.com>,
        devicetree-compiler@vger.kernel.org
Subject: Re: [DTC][RFC] dtc: Allow better error reporting
Message-ID: <YDNLV9/wnuIL8rxe@yekko.fritz.box>
References: <3950d7da35130a850ba9217ac7bfef781fa850b2.1613042485.git.viresh.kumar@linaro.org>
 <YCyknRMDNA4+pd59@yekko.fritz.box>
 <20210219053753.xtikm3ixfhq3bukr@vireshk-i7>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="V4BOb2yEi2yZdWCI"
Content-Disposition: inline
In-Reply-To: <20210219053753.xtikm3ixfhq3bukr@vireshk-i7>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--V4BOb2yEi2yZdWCI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 19, 2021 at 11:07:53AM +0530, Viresh Kumar wrote:
> On 17-02-21, 16:07, David Gibson wrote:
> > > diff --git a/dtc.h b/dtc.h
> > > index d3e82fb8e3db..b8ffec155263 100644
> > > --- a/dtc.h
> > > +++ b/dtc.h
> > > @@ -29,6 +29,12 @@
> > >  #define debug(...)
> > >  #endif
> > > =20
> > > +#ifdef VERBOSE
> > > +#define dtc_err(fmt, ...)	fprintf(stderr, "DTC: %s: %d: " fmt, __fun=
c__, __LINE__, ##__VA_ARGS__)
> > > +#else
> > > +#define dtc_err(fmt, ...)
> > > +#endif
> >=20
> > Actually, the natural way to handle this is to make dtc_err() -
> > hrm... bad name, since this is libfdt - be something that must be
> > provided by libfdt_env.h.  The default version would have it be a
> > no-op, with a define that makes it use stdio.
> >=20
> > This has the additional advantage that it would be relatively
> > straightfoward to enable the rich reporting in a non-POSIXish
> > environment (these should provide their own libfdt_env.h and it can
> > implement the error reporting callback in a way that makes sense in
> > that environment.
>=20
> Okay, I will move it to libfdt_env.h. And using -DVERBOSE to enable
> rich errors look fine to you, right ?

Well, using -DVERBOSE looks like an option worth considering further
to me.  I'm not yet totally convinced its the best approach.

> > You will also definitely need Makefile changes, because you'll need to
> > make the fdtoverlay binary link to the verbose-compiled version of
> > libfdt not the normal one.
>=20
> Actually it worked for me because of how we compile this in kernel, we
> don't link different libraries there.
>=20
> libfdt-objs     :=3D fdt.o fdt_ro.o fdt_wip.o fdt_sw.o fdt_rw.o fdt_strer=
ror.o fdt_empty_tree.o fdt_addresses.o fdt_overlay.o
> libfdt          =3D $(addprefix libfdt/,$(libfdt-objs))
> fdtoverlay-objs :=3D $(libfdt) fdtoverlay.o util.o
>=20
> HOST_EXTRACFLAGS :=3D -DVERBOSE

Um.. I think this is only working because the objects are compiled one
way for the target and another for the host.  If you ever wanted to
build any other host side tools that shouldn't have -DVERBOSE, this
would break.

> > Except.... it might make more sense to do this in dtc rather than
> > libfdt, more on that in different mails.
>=20
> I am not sure about this comment, are you going to send more emails on
> this ?

Sorry, I got sidetracked and didn't get around to following that up.
I'm still trying to do that.

--=20
David Gibson			| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
				| _way_ _around_!
http://www.ozlabs.org/~dgibson

--V4BOb2yEi2yZdWCI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEdfRlhq5hpmzETofcbDjKyiDZs5IFAmAzS1YACgkQbDjKyiDZ
s5Ki0A/9GMnThGNdS7G1uY0H9SjaEL2jwoq6/pGjGk1uWba/xmqw3Y9tRvf/dLQe
PgzI91dDvlEmWo02zZr+wpn7J1r1S3w1xpeoxY7egI+VGU1zd11R2gST1iE8YCQ5
v9OxeYBBdYpV7Kd0duMYp61d5Ai1iHHYnCPKwikOFdqLrUzCU50obRxusQNzXFMM
xxIiejOVuKKZ8GBFlGFnonN3tE93c2bnRGa6V0xYbobbxCxfBRr22ODZLZIpA+8+
ZFAojkYi8ApCWkpO8DY8nel8eHAHyApZYwvTMqJZg8x0VMoP0QzIzWKC/klh6XNb
/7bWBI6Dc0pUH09k927nLW6RoaXanjEtElLZcE8zL+dkwoTtACG3jaRJRm8KbtcD
WpH5kPpE3LZQmrkdDJddBDme3JXuL+1ldyZNusU/Je9gmOq2ktjCrTUF+g3lyCSn
LFaksXZtJy8yjuLcQ/gAl/RNtdrGsxpjRE5ZzoFGd2EWPynam0tQpUzcM/vVwlko
p1DIwpqc2xbVneLc1zSY0hW0pEyDVq/PsbbOoIs3nAFRMAEr5faGWq+wljbv7MQ+
wfqwaChynDu/5cv93hDNu49v6Joi32aI/x67M7Y5niYobyyLJyHYd8yM8yTYqNiw
o2WvNvB9HZmdhj9BNkGicmvhEINRXOlVlTncVhl9sSyLxRmvXWc=
=nl5V
-----END PGP SIGNATURE-----

--V4BOb2yEi2yZdWCI--
