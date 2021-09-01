Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FB2F3FDDE3
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 16:40:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244220AbhIAOlZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 10:41:25 -0400
Received: from mail.kernel.org ([198.145.29.99]:47626 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S245279AbhIAOlV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 Sep 2021 10:41:21 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6FD236103A;
        Wed,  1 Sep 2021 14:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630507225;
        bh=gW7gQRqtu48//sdUXUb60qqTbaW4Xb1X9H2hO7nOZ2w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mO8SBRhBWVI0fL76IzyqQYUKgUOKn6KUgUUThnriQj5Nd97FL5zYL/YhqJCVha6s4
         zv18x+pUY/CcF+e6WRd2TJMbLxQuenGKiH78xj3BuA5ZxcIUSd2Z1FBTofmHdiySDV
         ZkmcrvtRsW3CB5Cg8HBIUg2oxi6HLLVhf0UaMjdxlQG58uQsK996ppMIr8aCsdxdGU
         3ZIKJDYdAqmYtmuG4Im+lTBIb1RNbbXSoQfPUV574QQfVBM1lXrCr2XPEOQPCgAQi+
         HAw2kbpAkW7VB+n6sw+fnUR44Vu6o1gp9pWyvaB+chmbt5p/QfNcG6oPdc87F1jgpc
         4REP9xj23chAw==
Date:   Wed, 1 Sep 2021 15:39:50 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
        alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
        patches@opensource.cirrus.com, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 01/52] ASoC: dt-bindings: Add WM8978 Binding
Message-ID: <20210901143950.GE5976@sirena.org.uk>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="jho1yZJdad60DJr+"
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-2-maxime@cerno.tech>
X-Cookie: Who was that masked man?
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--jho1yZJdad60DJr+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 01, 2021 at 11:18:01AM +0200, Maxime Ripard wrote:
> Even though we had the wm8978 driver for some time and a number of
> boards using it already, we never had a binding for it. Let's add it
> based on what the driver expects and the boards are providing.

What's the story with dependencies here?  I don't have a cover letter or
anything and there seem to be a bunch of tangentially related patches in
a series here.

--jho1yZJdad60DJr+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEvkLYACgkQJNaLcl1U
h9COjgf/fijxSc6om+F3lPh/ILpcm5YNkeHiwuGd2TmlFOi6zDZeXDwiybEHRkbH
ZmU32/tzm9PAR4yOJi4KNUojOtJTFF3leZ8aEsxzdHzcfIeYUabUIDQOaK/MhxvA
3je7g87V/sSKnH42SWdWlXQRedNYqIsgldGiaG8yBqqK9RKoKv+GXUONjeMolCiq
i7faNvg1DcfxdLGT7SOL42eQNNPUr7/Dn9hP+mDapYMQ644tY2/ShqzCOr1tMmvi
ylN1/xe8BdIZCLKT8O8Swu5s6lYDCw+BFPA4ZBix0fds4G+ANU63U8XMDfE9qHKh
aETbtlWwCRiqEAYQtlX2hvdmz6Sr+g==
=Z6PP
-----END PGP SIGNATURE-----

--jho1yZJdad60DJr+--
