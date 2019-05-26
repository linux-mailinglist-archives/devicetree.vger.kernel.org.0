Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 580A62A993
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2019 14:19:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727638AbfEZMS7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 May 2019 08:18:59 -0400
Received: from heliosphere.sirena.org.uk ([172.104.155.198]:32834 "EHLO
        heliosphere.sirena.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726296AbfEZMS7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 May 2019 08:18:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
        MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=YfXyoQZlm5MqY8USsw+ov0v7XDLahgCClEbBvFsM7XQ=; b=IRTKSRTqjC/3qW+KX2yIZeC//
        riYsJqcjbaVeRCg00mNW7zukiNEa1y12pRFiQol02JcW9TGp/SKIHTuoZmr4S+LAWW4DO0A3Y90mE
        Wsji6LF7QNDnNnIqvnCelikF2VmJ1PKgBiL37jw9+W0Kaar1gRSHhDe2OppFN3UOA72rU=;
Received: from 92.40.249.190.threembb.co.uk ([92.40.249.190] helo=finisterre.sirena.org.uk)
        by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <broonie@sirena.org.uk>)
        id 1hUs70-0002an-Hb; Sun, 26 May 2019 12:18:51 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
        id AC349440046; Sun, 26 May 2019 13:18:46 +0100 (BST)
Date:   Sun, 26 May 2019 13:18:46 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Richard Fitzgerald <rf@opensource.cirrus.com>
Cc:     Charles Keepax <ckeepax@opensource.cirrus.com>,
        lgirdwood@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
        lee.jones@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, patches@opensource.cirrus.com
Subject: Re: [PATCH 2/5] ASoC: madera: Add common support for Cirrus Logic
 Madera codecs
Message-ID: <20190526121846.GG2456@sirena.org.uk>
References: <20190524104158.30731-1-ckeepax@opensource.cirrus.com>
 <20190524104158.30731-2-ckeepax@opensource.cirrus.com>
 <20190524145603.GE2456@sirena.org.uk>
 <2f4ab4ff-5b1e-8ef5-3ef7-8dfe413b4b95@opensource.cirrus.com>
 <ae5eee88-0b79-1e58-5812-9e46e5bf3b75@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ahP6B03r4gLOj5uD"
Content-Disposition: inline
In-Reply-To: <ae5eee88-0b79-1e58-5812-9e46e5bf3b75@opensource.cirrus.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--ahP6B03r4gLOj5uD
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 24, 2019 at 04:24:10PM +0100, Richard Fitzgerald wrote:
> On 24/05/19 16:21, Richard Fitzgerald wrote:
> > On 24/05/19 15:56, Mark Brown wrote:

Please fix your mail client to word wrap within paragraphs at something
substantially less than 80 columns.  Doing this makes your messages much
easier to read and reply to.  You've also got some replies inserted at
the wrong quote level.

> > > So we read the register a few times then add a few hundred us of delay
> > > after?=A0 Surely that delay is going to be negligable compared to the=
 time
> > > spent on I/O?

> > The register reads are to create clock cycles in the silicon, not to ge=
nerate delay.

> Sorry, just re-read your comment and realized I'd misread it. It's a hard=
ware requirement
> that after generating the internal clocks there must be a delay. I.e. we =
require a combination
> of a guaranteed number of SYSCLKs followed by a guaranteed minimum delay.

OK, the comment could use a bit of clarification then to say that reads
are explicitly required as opposed to being purely to generate a delay.

> > > This will delay both before and after every power up and power down.
> > > Are you sure that makes sense?

> > I think that's correct but we can re-check with hardware people. It's n=
ot just a delay,
> > it needs to ensure there are always a certain number of SYSCLK cycles i=
n the hardware to
> > avoid leaving certain state machines in limbo.

That sounds like you might want both _POST_PMU and _POST_PMD but do you
really need the _PREs as well?

--ahP6B03r4gLOj5uD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzqhCMACgkQJNaLcl1U
h9DOhwgAhDksiW9yjH8yooxPN3hj1N+V0lboEL78jKG6kcbvt/kdfC1BOIZJ0lwe
oDz/Il+ccMgEYmjMAHQvgUZ0hUlcZdQnBth1oCe14DD6O/MaxlYFInfvktbZ2M8N
unIk0xE0C/ltGelh9TkWaf3y/RuWRcvdXiqvRFmeoF/wSjBBWZqPUVoo+bSqjuwA
0tn+vHON5yknqIcNjM02LhHs9nEQCv1MuRvkGcfQCXLV4x4Faek6wrLLtxgFwAMt
sluBoLv3USop5kZReo0OdaVqcIoeTNij61l0F3alt+eoDkn9ov5ioecdlWUoLSti
F4pd242aR/RYEPGyDHfwdPrcDGbPNA==
=5UyU
-----END PGP SIGNATURE-----

--ahP6B03r4gLOj5uD--
