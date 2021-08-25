Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 536763F7836
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 17:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240785AbhHYPY6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 11:24:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237885AbhHYPY5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 11:24:57 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED231C061757
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 08:24:11 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id f22so17920566qkm.5
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 08:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H0ghoveux1w92Tv1Xbgp0jkm3vbidxnG08FvZPEJ+58=;
        b=svHa7XsSfe2uGPN+i1WlATfXatXb1xwkBgglOhAWqhv50zYTFwHekWuL3oTp4nWisf
         k8GYBQfW7r5x6XGQvNYtDkahGhFMFRERs2HXuMS8B/HYfWMCAb7PSYtDSk+JmVpZNgRR
         xMqiL5ke2uJY4mHtAUjcUP/JXJPqNFjO7aQwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H0ghoveux1w92Tv1Xbgp0jkm3vbidxnG08FvZPEJ+58=;
        b=W9S/lKZplXSmExUh9VW7D2lY238+e1U27lMPLq9bWyBUFKNMLkGaT8uCiw2FUytlBN
         DWs96MO5PfRqPc5Z+SF0GD4QRZRr7Yni2doz+p5WZHfaNfxGRe6ccbxGUy/cT/rmvzK8
         RlUPXH6D7Ug91gooVV2HcrJaihu7NwfI5HfJPNs5BA8h+cFSGwsi+xXu+ZzTljjKVITc
         F2EMy1K0jEEG06bUgHDRWhyN/cpi5NzKoyfJcNXtjEN7zLYvCBiQvx2HQ5xcAwLvYgFS
         7I547g2MCbEJZQOVBKDY025KLHJwSmkUS2T6Em6RkoJW94bRifuCONQOU3S2NYPLfuAy
         WWfw==
X-Gm-Message-State: AOAM532yeN+ZwYMhAFvYsXm2gdRh1pEBTDrAVIDeVZ278gPUgNilGOQY
        uIG6K4IlFYB5V5nLgSxTOCbJYw==
X-Google-Smtp-Source: ABdhPJzpogAOiQ620Ssn5gySlS6dStC4Avl5opH4crfgHg8MfzizoVs24+m182KMr3yblCADm+oFqA==
X-Received: by 2002:a05:620a:1495:: with SMTP id w21mr32042979qkj.443.1629905051120;
        Wed, 25 Aug 2021 08:24:11 -0700 (PDT)
Received: from bill-the-cat (2603-6081-7b01-cbda-519a-4843-2801-9790.res6.spectrum.com. [2603:6081:7b01:cbda:519a:4843:2801:9790])
        by smtp.gmail.com with ESMTPSA id b21sm22622qte.38.2021.08.25.08.24.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Aug 2021 08:24:10 -0700 (PDT)
Date:   Wed, 25 Aug 2021 11:24:08 -0400
From:   Tom Rini <trini@konsulko.com>
To:     Vladimir Oltean <olteanv@gmail.com>, Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Michael Walle <michael@walle.cc>,
        Priyanka Jain <priyanka.jain@nxp.com>, u-boot@lists.denx.de,
        heiko.thiery@gmail.com
Subject: Re: incompatible device trees between u-boot and linux
Message-ID: <20210825152408.GW858@bill-the-cat>
References: <51c2a92f6bf771769f1e2da5157727e8@walle.cc>
 <20210825140045.GR858@bill-the-cat>
 <20210825141816.qfn25xlech55rwsg@skbuf>
 <20210825142610.GU858@bill-the-cat>
 <20210825151220.xkpxxucce2oicfvy@skbuf>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sl+idFkU0FkJcHWh"
Content-Disposition: inline
In-Reply-To: <20210825151220.xkpxxucce2oicfvy@skbuf>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--sl+idFkU0FkJcHWh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 25, 2021 at 06:12:20PM +0300, Vladimir Oltean wrote:
> On Wed, Aug 25, 2021 at 10:26:10AM -0400, Tom Rini wrote:
> > On Wed, Aug 25, 2021 at 05:18:16PM +0300, Vladimir Oltean wrote:
> > > On Wed, Aug 25, 2021 at 10:00:45AM -0400, Tom Rini wrote:
> > > > On Wed, Aug 25, 2021 at 03:58:10PM +0200, Michael Walle wrote:
> > > >
> > > > > Hi,
> > > > >
> > > > > I noticed that there is a fallback to the u-boot device tree for =
linux
> > > > > (esp. EFI boot) if no other device tree was found, see [1]. It se=
ems this
> > > > > is working fine for imx devices, for example, where you can just =
boot a
> > > > > stock installer iso via EFI. It will just work and it is quite a =
nice
> > > > > feature as a fallback.
> > > > >
> > > > > Now for the layerscape architecture, the ls1028a in my case, thin=
gs are
> > > > > more difficult because the bindings differ between u-boot and lin=
ux - one
> > > > > which comes to mind is DSA and ethernet.
> > > > >
> > > > > Which begs the general question, is it encouraged to have both bi=
ndings
> > > > > diverge? To me it seems, that most bindings in u-boot are ad-hoc =
and there
> > > > > is no real review or alignment but just added as needed, which is=
 ok if
> > > > > they are local to u-boot. But since they are nowadays passed to l=
inux
> > > > > (by default!) I'm not so sure anymore.
> > > > >
> > > > > OTOH The whole structure around a .dts{,i} and -u-boot.dtsi looks=
 like
> > > > > they should (could?) be shared between linux and u-boot.
> > > > >
> > > > > -michael
> > > > >
> > > > > [1]
> > > > > https://elixir.bootlin.com/u-boot/v2021.10-rc2/source/common/boar=
d_r.c#L471
> > > >
> > > > The U-Boot device tree is supposed to be able to be passed on to Li=
nux
> > > > and Just Work.  The bindings are not supposed to be different betwe=
en
> > > > the two (except for when we take the binding while it's being hashe=
d out
> > > > upstream BUT THEN RESYNCED).
> > >
> > > You might need to spell that out a bit clearer.
> > >
> > > You are saying that both U-Boot and Linux are allowed to have their o=
wn
> > > custom properties (like 'u-boot,dm-spl' for U-Boot, and 'managed =3D =
"in-band-status"'
> > > for Linux), as long as the device tree files themselves are in sync, =
and
> > > the subset of the device tree blob understood by Linux (i.e. the U-Bo=
ot
> > > blob sans the U-Boot specifics) is compatible with the Linux DT blob?
> >
> > I don't know what about the Linux example makes it Linux specific.  But
> > yes, 'u-boot,dm-spl' is clearly in our namespace and should be ignored
> > by Linux.  The whole reason we have the -u-boot.dtsi automatic drop-in
> > logic (as much as it can be used is that device trees are device trees
>         ^
>         I don't think this parenthesis ever closes...

Ah, whoops.  Should have been "(as much as it can be used)" because it
does get #included instead in some cases, for reasons.

>=20
> > and describe the hardware and developers don't need to write a device
> > tree for Linux and a device tree for U-Boot and a device tree for
> > FreeBSD and ...  So yes, you're supposed to use the device tree for a
>                 ^
>                 so I never get the answer to "the whole reason is...".
>=20
> > platform and it works here and there and every where.
>=20
> The fact that only Linux uses it makes it Linux specific.
>=20
> > > To expand even further on that, it means we should put 'managed =3D "=
in-band-status"'
> > > in U-Boot, which is a Linux phylink device tree property, even if U-B=
oot
> > > does not use phylink?
> >
> > We should be able to drop in the device trees from Linux and use them.
> > Custodians should be re-syncing them periodically.  Some are, even.
>=20
> Are you ready to take up device tree bindings for PTP timers, PCIe root
> complex event collectors, cascaded interrupt controllers, things which
> U-Boot will never ever need to support?
>=20
> At least in Linux there is a policy to not add device tree nodes that do
> not have drivers. Is the same policy not true for U-Boot? At least your
> ./scripts/checkpatch.pl does have the same "check for DT compatible
> documentation" section as Linux. You might consider removing it if you
> want people to not strip the DTs they submit to U-Boot.
>=20
> And why do we even maintain the device tree bindings in Linux at all?
> It seems rather counter-productive for both ends to do that, if it is
> expected that the kernel works with DT blobs provided by third parties to=
o,
> and if all third parties need to resync with it (there are other boot
> loaders too beyond U-Boot, and other kernels beyond Linux). Somehow it
> doesn't feel right for the reference to be the Linux kernel. Maybe this
> is something that needs to be brought up with higher-level Linux maintain=
ers.
>=20
> I have no problem at all with structuring the device tree in the same
> way in U-Boot as in Linux, as long as that proves to not be a foolish
> endeavor.

DT is ABI is hardware description and OS-agnostic has been the rule for
10+ years.  If that's no longer the case, can someone please tell me?

--=20
Tom

--sl+idFkU0FkJcHWh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmEmYI0ACgkQFHw5/5Y0
tyxNQwv+KQnth7PN7dHoqEOYIbl2Nl/EHT1KNp8VVcE8KNf7FBZ8V25WCpKZM6AQ
LxTIuaLKNvdAQlc9HD+f+U4C+RJ07x1DmBt9oiD3RZ5qwZ+JlJtqGrNH1rVUlAtH
RkToyyRC2RjxK+twgiNc6475FDPX7XRKuKXJ1xqF62sYX7GDN117rLkKzXcYJOLP
7yzK/q1o9PicoYsGCac8gRcOz4fLSR8kW9ah5sUiSHES2VuYkHAb5wRE6i1JIt9F
kAWAWWzyiJ6VWqSxkJNnnOPsAHM9mG076LuYN1ucaxPITgzvnTPdeukHZOM1beAZ
cDU5Dxpxlq8xx43FIl/7UH4Ltd56oYuWjW8gIeLljT51GeYaKzgfBqaVESzm0PQI
F693yydka7IonKKon4REmyIpu3voMLIw76X1SCMo1cX0nTbfyw0Xnl/g/GM7hfqr
m0bJTQYfE/iWxZGGWhob9WS4oMacohpbMuOjO0J6Rqo+EcTCwSWwLf8jNXtTp2rK
F+xqgzIL
=zZhQ
-----END PGP SIGNATURE-----

--sl+idFkU0FkJcHWh--
