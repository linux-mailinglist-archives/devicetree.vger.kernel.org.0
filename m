Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 206A03F7D07
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 22:10:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242572AbhHYUKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 16:10:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238571AbhHYUKm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 16:10:42 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5800C061757
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:09:55 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id r21so511762qtw.11
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 13:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Pu2xclqe7askIqOaX+3mGYeofnSrKHiQ+1H01tiDNNo=;
        b=WA0UqVD0DFbRWs0oGB0v6KxL2unOUDAyqUFBkJk6ECN7553RznecQg642BcLi4XuC4
         tLHNZCS5w2JcqAMbWPmT4id9F0nUPk10j39/fes2AG9QUADi0+pond/w0WrlPqqt0TbR
         I2gM64EUlr13An2yJFMdVIYp748VFyyQJlupo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Pu2xclqe7askIqOaX+3mGYeofnSrKHiQ+1H01tiDNNo=;
        b=Ghsw/To1zHV+CV7b8bCNv5UXx9D2D8paxZrQnLs5PrUwpxE95loSyKSHb83HuPNQI4
         ek539kzHDb8LdJ04cIilJoj8DvoY5gvKWfzh5IY5pDnVmoUttwS8sdpVNl3F9Nm55Ob9
         P3ZYRDpFZcdvz4d7UauWs1Ysguu3gPRd6J90bcv6GMQyQYS0PqECLqQVFjyZS5GBmBYZ
         B9ZzeGxm5drtApdY20seoWVfkcuq21h44j5HUWeJrj1ke9j2KetOQcbrCfoot5xRLqPw
         5l/PuU1G65kVNhwA/kBOa6tOM9+3kwXzWLw8/3jpuLarZ9Nw5jFZE5FM5f5pcGakGKGJ
         R+jw==
X-Gm-Message-State: AOAM530ebjXTrFoVF/FK6tk2nrDipxQ2Oiv1PLPEYxl3cTrw1mQD/crG
        c0YKl9M2vkIij/2F7MDTn9tz9w==
X-Google-Smtp-Source: ABdhPJw9UpZh9hcvLm3e118ijL/heMkJ6B4mioRRJ6vf3Myj3yv76bz/zvj9oi9LZveSuHUYsxYgBQ==
X-Received: by 2002:a05:622a:106:: with SMTP id u6mr20601qtw.288.1629922193984;
        Wed, 25 Aug 2021 13:09:53 -0700 (PDT)
Received: from bill-the-cat (2603-6081-7b01-cbda-519a-4843-2801-9790.res6.spectrum.com. [2603:6081:7b01:cbda:519a:4843:2801:9790])
        by smtp.gmail.com with ESMTPSA id g7sm496227qtj.28.2021.08.25.13.09.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Aug 2021 13:09:53 -0700 (PDT)
Date:   Wed, 25 Aug 2021 16:09:50 -0400
From:   Tom Rini <trini@konsulko.com>
To:     Vladimir Oltean <olteanv@gmail.com>
Cc:     Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Michael Walle <michael@walle.cc>,
        Priyanka Jain <priyanka.jain@nxp.com>, u-boot@lists.denx.de,
        heiko.thiery@gmail.com
Subject: Re: incompatible device trees between u-boot and linux
Message-ID: <20210825200950.GY858@bill-the-cat>
References: <51c2a92f6bf771769f1e2da5157727e8@walle.cc>
 <20210825140045.GR858@bill-the-cat>
 <20210825141816.qfn25xlech55rwsg@skbuf>
 <20210825142610.GU858@bill-the-cat>
 <20210825151220.xkpxxucce2oicfvy@skbuf>
 <20210825152408.GW858@bill-the-cat>
 <20210825154323.reksf2nyncech6so@skbuf>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="q2KifZ2SSffcbUVw"
Content-Disposition: inline
In-Reply-To: <20210825154323.reksf2nyncech6so@skbuf>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--q2KifZ2SSffcbUVw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 25, 2021 at 06:43:23PM +0300, Vladimir Oltean wrote:
> On Wed, Aug 25, 2021 at 11:24:08AM -0400, Tom Rini wrote:
> > On Wed, Aug 25, 2021 at 06:12:20PM +0300, Vladimir Oltean wrote:
> > > On Wed, Aug 25, 2021 at 10:26:10AM -0400, Tom Rini wrote:
> > > > On Wed, Aug 25, 2021 at 05:18:16PM +0300, Vladimir Oltean wrote:
> > > > > On Wed, Aug 25, 2021 at 10:00:45AM -0400, Tom Rini wrote:
> > > > > > On Wed, Aug 25, 2021 at 03:58:10PM +0200, Michael Walle wrote:
> > > > > >
> > > > > > > Hi,
> > > > > > >
> > > > > > > I noticed that there is a fallback to the u-boot device tree =
for linux
> > > > > > > (esp. EFI boot) if no other device tree was found, see [1]. I=
t seems this
> > > > > > > is working fine for imx devices, for example, where you can j=
ust boot a
> > > > > > > stock installer iso via EFI. It will just work and it is quit=
e a nice
> > > > > > > feature as a fallback.
> > > > > > >
> > > > > > > Now for the layerscape architecture, the ls1028a in my case, =
things are
> > > > > > > more difficult because the bindings differ between u-boot and=
 linux - one
> > > > > > > which comes to mind is DSA and ethernet.
> > > > > > >
> > > > > > > Which begs the general question, is it encouraged to have bot=
h bindings
> > > > > > > diverge? To me it seems, that most bindings in u-boot are ad-=
hoc and there
> > > > > > > is no real review or alignment but just added as needed, whic=
h is ok if
> > > > > > > they are local to u-boot. But since they are nowadays passed =
to linux
> > > > > > > (by default!) I'm not so sure anymore.
> > > > > > >
> > > > > > > OTOH The whole structure around a .dts{,i} and -u-boot.dtsi l=
ooks like
> > > > > > > they should (could?) be shared between linux and u-boot.
> > > > > > >
> > > > > > > -michael
> > > > > > >
> > > > > > > [1]
> > > > > > > https://elixir.bootlin.com/u-boot/v2021.10-rc2/source/common/=
board_r.c#L471
> > > > > >
> > > > > > The U-Boot device tree is supposed to be able to be passed on t=
o Linux
> > > > > > and Just Work.  The bindings are not supposed to be different b=
etween
> > > > > > the two (except for when we take the binding while it's being h=
ashed out
> > > > > > upstream BUT THEN RESYNCED).
> > > > >
> > > > > You might need to spell that out a bit clearer.
> > > > >
> > > > > You are saying that both U-Boot and Linux are allowed to have the=
ir own
> > > > > custom properties (like 'u-boot,dm-spl' for U-Boot, and 'managed =
=3D "in-band-status"'
> > > > > for Linux), as long as the device tree files themselves are in sy=
nc, and
> > > > > the subset of the device tree blob understood by Linux (i.e. the =
U-Boot
> > > > > blob sans the U-Boot specifics) is compatible with the Linux DT b=
lob?
> > > >
> > > > I don't know what about the Linux example makes it Linux specific. =
 But
> > > > yes, 'u-boot,dm-spl' is clearly in our namespace and should be igno=
red
> > > > by Linux.  The whole reason we have the -u-boot.dtsi automatic drop=
-in
> > > > logic (as much as it can be used is that device trees are device tr=
ees
> > >         ^
> > >         I don't think this parenthesis ever closes...
> >
> > Ah, whoops.  Should have been "(as much as it can be used)" because it
> > does get #included instead in some cases, for reasons.
> >
> > >
> > > > and describe the hardware and developers don't need to write a devi=
ce
> > > > tree for Linux and a device tree for U-Boot and a device tree for
> > > > FreeBSD and ...  So yes, you're supposed to use the device tree for=
 a
> > >                 ^
> > >                 so I never get the answer to "the whole reason is...".
> > >
> > > > platform and it works here and there and every where.
> > >
> > > The fact that only Linux uses it makes it Linux specific.
> > >
> > > > > To expand even further on that, it means we should put 'managed =
=3D "in-band-status"'
> > > > > in U-Boot, which is a Linux phylink device tree property, even if=
 U-Boot
> > > > > does not use phylink?
> > > >
> > > > We should be able to drop in the device trees from Linux and use th=
em.
> > > > Custodians should be re-syncing them periodically.  Some are, even.
> > >
> > > Are you ready to take up device tree bindings for PTP timers, PCIe ro=
ot
> > > complex event collectors, cascaded interrupt controllers, things which
> > > U-Boot will never ever need to support?
> > >
> > > At least in Linux there is a policy to not add device tree nodes that=
 do
> > > not have drivers. Is the same policy not true for U-Boot? At least yo=
ur
> > > ./scripts/checkpatch.pl does have the same "check for DT compatible
> > > documentation" section as Linux. You might consider removing it if you
> > > want people to not strip the DTs they submit to U-Boot.
> > >
> > > And why do we even maintain the device tree bindings in Linux at all?
> > > It seems rather counter-productive for both ends to do that, if it is
> > > expected that the kernel works with DT blobs provided by third partie=
s too,
> > > and if all third parties need to resync with it (there are other boot
> > > loaders too beyond U-Boot, and other kernels beyond Linux). Somehow it
> > > doesn't feel right for the reference to be the Linux kernel. Maybe th=
is
> > > is something that needs to be brought up with higher-level Linux main=
tainers.
> > >
> > > I have no problem at all with structuring the device tree in the same
> > > way in U-Boot as in Linux, as long as that proves to not be a foolish
> > > endeavor.
> >
> > DT is ABI is hardware description and OS-agnostic has been the rule for
> > 10+ years.  If that's no longer the case, can someone please tell me?
>=20
> So if Michael's board with DT provided by U-Boot doesn't work for some
> stupid reason like "Linux expects the pcie node to be under /soc", or
> "Linux wants all PCIe BARs of a RCIEP ECAM to be spelled out in the
> 'ranges' property, because it's too dumb to detect them itself", or
> something like that, I've got no argument against that, let's go ahead
> and resync U-Boot with Linux.
>=20
> But "DT is ABI is hardware description" is a pretty vague truism that
> does not actually help here.

I'm saying that because it's what's been said for what feels like 10+
years.  I don't want to think how many countless hours have been spent
on that point at conferences over the years.  It's not even a Linux
thing.  I would swear you can (or could, unless it got broken) take the
same DTB for some platforms and boot Linux or FreeBSD or some other BSD
or maybe even VxWorks and it works.

> Will you accept device trees with devices for which a driver will never
> probe in U-Boot,

Yes, I will absolutely take device trees that have devices we don't need
in U-Boot since the point is, and many SoC vendors are doing (and the
ones that aren't are, I am not happy about / with) right now.

> and will you remove the checkpatch warnings about those,
> to not discourage people from submitting them prior to the actual public
> review?

With respect to checkpatch.pl, maybe I'm just missing the line in
question?  Or maybe it's a kernel-related warning we need to disable in
our .checkpatch.conf.  But I don't want to side-track over this part.

> If a U-Boot driver will be written for a device that does not have a
> driver yet in Linux, then the Linux driver will be written but with
> DT bindings incompatible with what was established in U-Boot, will you
> wake up the U-Boot developer from the grave and ask them to resync the
> driver to follow Linux? Or will you accept drivers at all for hardware
> that is not supported by Linux?

What I've said for years (but yes, I've missed changes, maybe the yaml
dt binding stuff would help so I could make CI fail or at least require
manual override?) is that U-Boot will take immature bindings but it's on
the developer to re-sync once the bindings are fully reviewed.  This is
to help with the chicken-and-egg problem.  But old bindings are not
intended to be supported, once it's finalized.  That is part of the
bargain.

> I also think there are various degrees of what it means "to work" with a
> device tree provided directly by U-Boot. Distros like Arch Linux ARM
> have a package for device tree blobs, and it is expected that these are
> updated by the distro, and U-Boot just loads them. As Michael points out,
> the DT provided by U-Boot is just a fallback. The OS should boot to
> prompt and have a network connection to set itself up properly again.
> But we need to draw a harder line on what we _actually_ desire to work
> beyond that.

Every distribution has a package for device tree binaries, because
that's how you get a device tree on the still vast majority of platforms
that don't ship one in-flash (RPis being the modern exception) and to my
knowledge none of them are happy about having to build and pass and make
sure the right one is used on a given board at boot.  So yes, U-Boot
being able to pass a device tree on to the next stage is one of those
things to help everything Just Work and be boring.

--=20
Tom

--q2KifZ2SSffcbUVw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmEmo4cACgkQFHw5/5Y0
tyyspwv/X1fIjk+OXTy/Nk/CwwlO8ua2HP4smgf1dSy00rdPIWyUD5Se9EZi1Fq6
aqKc7624hCGiZhvIe5CbO4xvUEW0gN4LO64jkzQeimSKkSnzC0unvvFXbpA6ycNh
/gwYAOgglBxu7brAlxfbWHSdaoW1DYtOK8nD+ADxymtCUsmUfjvMcCQguRC4687i
EG8gaYZGaO5fCXn2Q8RlXRuKkQ80XEFTK86EHgp27anHLlInpHeiWM7jI+gxbrFR
7wrKHddSD9DMgwioqYDh3O/GaxlRXiLuXd8Nra8walnh2ygNeO6L4s4R00H1v9Rs
sSJcgsmRXeixH6Pf6gDG8ZlGt4IpS6JpjYAW6s1BV3m6KeHiAo/OPu0qH/XXn8Xy
WdMaSsvZiUCqfB46mQFzNvgvmwxuF2lgvzf2H7x4LGH6pI4Tbd18B3ldQFQSJsIo
3BZbDbHkDzO7RxaVPwx9V0kfiQSAunigpy3Tl72/tnYn+foueMwFQIV8Z6nPxYyK
jbSfuQTj
=nv6B
-----END PGP SIGNATURE-----

--q2KifZ2SSffcbUVw--
