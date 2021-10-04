Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04A18421285
	for <lists+devicetree@lfdr.de>; Mon,  4 Oct 2021 17:20:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234792AbhJDPVw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 11:21:52 -0400
Received: from mail.kernel.org ([198.145.29.99]:48528 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233561AbhJDPVw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 4 Oct 2021 11:21:52 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id B15A361213;
        Mon,  4 Oct 2021 15:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633360803;
        bh=NG/Wy5XIrpVSoMYEmEB2A64wk7yYUtdnVHnG1Itjeb8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fl61qGbE43aaXJB16PkDauG+7QifrchZOcJ8Q1UIv0KhMEEAG0gLHD58BCtjOQDnl
         b4kCe1t5aK4K/QBK/ZgLtzMtbkh69rWWB5Tnfykf2ifdIQbEOUqUTlV6u9xxC5FPaN
         CJ6Yai/KKRHJLslXxkzTu+gWaKZ15xRmdeKobfV0kPrWZk8OhvyR0Os8Z/1/PSIMXL
         sGyDEbsA96Br6jPhRh/qv3GvoFtq29F0Q9Y8xHyIXbuSQSn9JCY0DEM6YAXSdjE5+X
         YT+TvaY8ff9UYHCoUfhAek0D4TSGQRPg3pBtde0y4FXzGhDRPrzz7sBZDC/uaPy7Uv
         SNiL2RR1AZCeQ==
Date:   Mon, 4 Oct 2021 16:20:00 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Ricard Wanderlof <ricardw@axis.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        alsa-devel <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: sound: tlv320adc3xxx: New codec driver
Message-ID: <YVsboGxNmu1aMgS/@sirena.org.uk>
References: <alpine.DEB.2.21.2110041115070.14472@lnxricardw1.se.axis.com>
 <YVr8tqRoyyiWR4xl@sirena.org.uk>
 <alpine.DEB.2.21.2110041656220.14472@lnxricardw1.se.axis.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="swq8DQvSRbS3kp74"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2110041656220.14472@lnxricardw1.se.axis.com>
X-Cookie: If it heals good, say it.
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--swq8DQvSRbS3kp74
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 04, 2021 at 05:16:04PM +0200, Ricard Wanderlof wrote:
> On Mon, 4 Oct 2021, Mark Brown wrote:
> > On Mon, Oct 04, 2021 at 11:17:47AM +0200, Ricard Wanderlof wrote:

> > > +  ti,pll-mode:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    enum:
> > > +      - 0 # ADC3XXX_PLL_DONT_SET - leave mode unchanged
> > > +      - 1 # ADC3XXX_PLL_ENABLE - use the on-chip PLL
> > > +      - 2 # ADC3XXX_PLL_BYPASS - do not use the on-chip PLL
> > > +      - 3 # ADC3XXX_PLL_AUTO - use on-chip PLL if possible

> > Why is this configured through the DT binding and not via the machine
> > driver as done for other drivers?

> The reason is that I want to be able to use this driver with the=20
> simple-card machine driver which doesn't have any PLL control options=20
> AFAIK, as the .set_sysclk callback clk_id parameter is always set to 0=20
> by simple-card.

That's not a good reason to define ABI.  If you absolutely can't arrange
for your machine driver to do something sensible then you could make the
CODEC driver default to auto mode.  This is configuration, not hardware
description.

--swq8DQvSRbS3kp74
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFbG58ACgkQJNaLcl1U
h9AoNwf+MRnncNdTj123hjjeS6rrwA7o+66KuwNTIk1j8OTX4DEaJpBCcRG5dWaX
1wSI+rYODNQZJSL34nqZOgAZ4g45gJdo26XUGdPfeL5VHLSRBLtHWS/xD3nHKo47
vzVHpzmie4Jy38LpiaA0iLu4/AcI/cM5i18q1f/VcnWcpXGNoEZrlrqgalOX0sLv
3kxtK3es8v2m5gWbgSXHdPdG32DcntmTy8Degr/7BHgSjq3WuGEW93IkA+MWmcpv
riEOKKdxdhp6t3cJSuOgTetce/k8kOlkNizJkDiGq/1bXFkrlBBLRv4qhjB7JRyW
F9IziIARjCeWlkg9VM/LYtjzwUO9tA==
=EbzI
-----END PGP SIGNATURE-----

--swq8DQvSRbS3kp74--
